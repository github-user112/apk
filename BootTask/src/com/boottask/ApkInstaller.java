package com.boottask;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;

import java.io.File;

/**
 * v1.6.14：把手机传过来的 APK 装上车机。
 *
 * 两条路，权限决定走哪条：
 *
 * 1) 静默安装（有 root）：`pm install -r <path>`。
 *    pm 需要系统权限，第三方 App 直接调会被拒，必须 su。无 root 时这条路不存在。
 *
 * 2) 系统安装界面（免 root）：ACTION_VIEW + file:// + application/vnd.android.package-archive
 *    拉起 PackageInstaller，用户点一下「安装」。
 *    ⚠ 4.4 上 file:// 跨包传递是允许的（7.0 才禁），所以这条在车机上可用。
 *    ⚠ 前提是「未知来源」开关打开（Settings.Secure install_non_market_apps）。
 *       第三方 App 只能读不能写这个开关 —— 关着就提示用户去设置里开（root 时帮其打开）。
 *
 * 不做的事：不声明 INSTALL_PACKAGES（要系统签名，第三方声明了也拿不到，
 * 反而可能被某些 ROM 标记为危险）；不调用隐藏 API PackageManager.installPackage()
 * （反射调用在 4.4 上多半被 SELinux/权限拦，且易触发 VerifyError）。
 */
public final class ApkInstaller {

    private ApkInstaller() {
    }

    /** 是否已开启「未知来源」（第三方 App 只读得到，写不了） */
    public static boolean unknownSourcesOn(Context ctx) {
        try {
            int v = Settings.Secure.getInt(ctx.getContentResolver(),
                    Settings.Secure.INSTALL_NON_MARKET_APPS, 0);
            return v != 0;
        } catch (Throwable t) {
            // 读不到（精简 ROM）时就当开着，交给真实的安装流程去报错
            return true;
        }
    }

    /**
     * 安装。@param preferSilent true 时优先走 su 静默安装，失败自动回落到系统界面。
     * @return 结果摘要（给 Toast / 界面显示）
     */
    public static String install(Context ctx, File f, boolean preferSilent) {
        if (f == null || !f.exists()) {
            return "文件不存在，无法安装";
        }
        String name = f.getName();
        if (!name.toLowerCase().endsWith(".apk")) {
            return "不是 APK 文件：" + name + "\n（已保存到收件箱，可手动处理）";
        }

        boolean root = isRoot();
        BootDiagnostics.log(ctx, "ApkInstaller: install " + f.getAbsolutePath()
                + " size=" + f.length() + " root=" + root + " silent=" + preferSilent);

        // 1) 静默安装（root）
        if (root && preferSilent) {
            String r = pmInstall(ctx, f, "-r");
            if (r == null) {
                // 4.4 的 pm 不认 -d 就再来一次不带降级参数；两条都失败才回落界面
                r = pmInstall(ctx, f, "-r -d");
            }
            if (r != null && r.indexOf("Success") >= 0) {
                return "已静默安装完成：" + name;
            }
            BootDiagnostics.log(ctx, "ApkInstaller: pm install failed -> " + r);
        }

        // 2) 系统安装界面（免 root 或静默失败）
        if (!unknownSourcesOn(ctx)) {
            if (root) {
                AdvActions.run(new String[]{"su", "-c",
                        "settings put secure install_non_market_apps 1"}, 8000L, 2048);
                BootDiagnostics.log(ctx, "ApkInstaller: enabled unknown sources via su");
            } else {
                return "「未知来源安装」没开，系统不让装。\n"
                        + "请到 设置 → 安全 → 勾选「未知来源」，再点一次安装。";
            }
        }
        try {
            Intent it = new Intent(Intent.ACTION_VIEW);
            it.setDataAndType(Uri.fromFile(f), "application/vnd.android.package-archive");
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(it);
            return "已拉起系统安装界面，在车机上点「安装」即可：" + name
                    + (root ? "" : "\n（无 root 只能走这一步，静默安装不可用）");
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "ApkInstaller: startActivity fail " + t);
            return "拉起安装界面失败：" + t + "\n文件已保存到 " + f.getAbsolutePath();
        }
    }

    /** su pm install，失败返回 null（4.4 上 -d 可能不被识别，故与 -r 分两次试） */
    private static String pmInstall(Context ctx, File f, String flags) {
        // 路径必须转义：文件名带空格会让 pm 拆成多个参数（静默装失败又莫名回落界面）；
        // 带 ; $ ` 则经 su -c 构成命令注入（v1.6.18 修）
        String out = AdvActions.run(new String[]{"su", "-c",
                "pm install " + flags + " " + FileOps.q(f.getAbsolutePath())}, 60000L, 8192);
        if (out == null) {
            return null;
        }
        String one = out.replace('\n', ' ').trim();
        BootDiagnostics.log(ctx, "ApkInstaller: pm install " + flags + " -> " + one);
        return one;
    }

    private static boolean isRoot() {
        String id = AdvActions.run(new String[]{"su", "-c", "id"}, 8000L, 4096);
        return id != null && id.indexOf("uid=0") >= 0;
    }

    /** 收件箱里最近收到的 APK（按修改时间倒序找第一个 .apk） */
    public static File[] listApks(Context ctx) {
        File dir = UploadServer.inboxDir();
        File[] fs = dir.listFiles();
        if (fs == null || fs.length == 0) {
            return new File[0];
        }
        // 冒泡按 mtime 倒序（小数组，不引 Comparator）
        for (int i = 0; i < fs.length - 1; i++) {
            for (int j = 0; j < fs.length - 1 - i; j++) {
                if (fs[j].lastModified() < fs[j + 1].lastModified()) {
                    File t = fs[j];
                    fs[j] = fs[j + 1];
                    fs[j + 1] = t;
                }
            }
        }
        java.util.ArrayList<File> out = new java.util.ArrayList<File>();
        for (int i = 0; i < fs.length; i++) {
            if (fs[i].isFile() && fs[i].getName().toLowerCase().endsWith(".apk")) {
                out.add(fs[i]);
            }
        }
        return out.toArray(new File[out.size()]);
    }
}
