package com.boottask;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/**
 * v1.6.15 应用管理（卸载 / 启动）——给手机遥控页用。
 *
 * 卸载两条路，和装 APK 是对称的：
 *
 * 1) 静默卸载（root）：`pm uninstall [-k] <pkg>`。-k 保留数据。
 *    第三方 App 直接调 pm 会被拒，必须 su。
 *
 * 2) 系统卸载界面（免 root）：ACTION_DELETE + package: URI。
 *    拉起后车机上要点一下确认，但这是没有 root 时的唯一路（也足够用）。
 *
 * 不做的事：不声明 DELETE_PACKAGES 权限（要系统签名，第三方声明了也拿不到）；
 * 不给「一键批量卸载系统应用」这种容易把车机搞砖的能力 ——
 * 系统应用仍可卸载，但会在返回文案里明确标注风险，让用户自己决定。
 */
public final class AppManager {

    private AppManager() {
    }

    /** 包是否已安装 */
    public static boolean installed(Context ctx, String pkg) {
        if (ctx == null || pkg == null) {
            return false;
        }
        try {
            ctx.getPackageManager().getPackageInfo(pkg, 0);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * 卸载。@param keepData true 用 -k 保留数据目录（下次重装还能恢复数据）。
     *
     * @return 结果摘要（给手机页面显示）
     */
    public static String uninstall(Context ctx, String pkg, boolean keepData) {
        if (!installed(ctx, pkg)) {
            return "包不存在（可能已经卸了）：" + pkg;
        }
        String label = null;
        try {
            label = String.valueOf(ctx.getPackageManager()
                    .getApplicationInfo(pkg, 0).loadLabel(ctx.getPackageManager()));
        } catch (Throwable ignored) {
        }
        BootDiagnostics.log(ctx, "AppManager: uninstall " + pkg + " keepData=" + keepData);

        boolean root = FileOps.suOk();
        if (root) {
            String flags = keepData ? "-k " : "";
            String out = AdvActions.run(new String[]{"su", "-c",
                    "pm uninstall " + flags + pkg}, 30000L, 8192);
            BootDiagnostics.log(ctx, "AppManager: pm uninstall -> " + out);
            if (out != null && (out.indexOf("Success") >= 0 || out.indexOf("DELETE_SUCCEEDED") >= 0)) {
                // 再确认一次：pm 偶发「成功」但包还在（多用户/延迟）
                if (!installed(ctx, pkg)) {
                    return "已静默卸载：" + (label == null ? pkg : label)
                            + (keepData ? "（保留了数据）" : "");
                }
            }
            String one = out == null ? "(su 无响应)" : out.replace('\n', ' ').trim();
            BootDiagnostics.log(ctx, "AppManager: silent uninstall unusable -> " + one);
        }

        try {
            Intent it = new Intent(Intent.ACTION_DELETE);
            it.setData(Uri.parse("package:" + pkg));
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(it);
            return "已拉起系统卸载确认界面，在车机上点「确定」："
                    + (label == null ? pkg : label)
                    + (root ? "" : "\n（无 root 只能走这一步）");
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "AppManager: startActivity fail " + t);
            return "卸载失败：" + t;
        }
    }

    /** 打开某个应用（车机桌面不好用时比找图标快） */
    public static String launch(Context ctx, String pkg) {
        if (!installed(ctx, pkg)) {
            return "包不存在：" + pkg;
        }
        try {
            Intent it = ctx.getPackageManager().getLaunchIntentForPackage(pkg);
            if (it == null) {
                return "该应用没有可启动的界面（可能是纯后台服务）：" + pkg;
            }
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(it);
            return "已打开 " + pkg;
        } catch (Throwable t) {
            return "打开失败：" + t;
        }
    }
}
