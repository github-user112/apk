package com.boottask;

import android.content.Context;

/**
 * v1.6.73：重启车机。
 *
 * 为什么不用 PowerManager.reboot()：它要 android.permission.REBOOT（signature 级），
 * 只有 platform 签名的系统 App 才有；本 App 是 appsinstall 装进去的，拿不到。
 * 为什么不用 su：这台车机根本没有 su 二进制（mksu 也是假的，见 APP_CHANGE.md）。
 *
 * 于是走和热点自启同一条已经上车验收过的通道：App 进程被 zygote 打了
 * PR_SET_NO_NEW_PRIVS，自己提不了权；但本机 adbd 以 root 跑着（eng 版，
 * 监听 0.0.0.0:5555），把命令交给 adbd 执行，reboot 就以 root 身份落地。
 *
 * 【为什么是前台 echo + sleep 1 + reboot，而不是 nohup 后台延迟】
 * MuMu 实测：`busybox nohup sh -c "sleep 2; reboot" &` 这种后台写法，adb 会话一关
 * 后台进程就被杀，2 秒还没到 reboot 就没了 —— 回执收到了，车机纹丝不动。
 * 前台写法则没有这个竞态：echo 的回执先发回 App，sleep 1 给它留出送达时间，
 * 然后 reboot 生效、adbd 自己被带走、连接断开 —— AdbBridge 读到回执就算成功，
 * 连接不是「干净 CLSE」结束完全没关系。
 *
 * reboot 三级兜底：① /system/bin/reboot（4.4 toolbox 自带，root 可用，MuMu 实测有效）
 * ② busybox reboot ③ setprop sys.powerctl reboot。全失败补一行 REBOOT_FAILED，
 * App 端据此区分「真失败」和「回执到了但连接被重启掐断」。
 */
public final class DevicePower {

    private static final String REBOOT_SH =
            "echo REBOOT_SCHEDULED; sleep 1; "
                    + "reboot || busybox reboot || setprop sys.powerctl reboot "
                    + "|| echo REBOOT_FAILED";

    private DevicePower() {
    }

    /**
     * 发起重启。同步阻塞（要等 adbd 侧结果），调用方必须在后台线程执行。
     *
     * @return 给用户看的一句话（Toast）
     */
    public static String rebootNow(Context ctx) {
        try {
            // 连接只等 12 秒：这是人手动点的动作，车机早就起来了，
            // adbd 连不上就是真连不上（热点那边同理，实测 150 秒会像卡死）。
            // 命令阶段 15 秒足够：正常 1 秒内连接就会随重启断开。
            String out = AdbBridge.exec(REBOOT_SH, 15000L, 12000L);
            BootDiagnostics.log(ctx, "DevicePower.reboot out=" + out);
            if (out != null && out.indexOf("REBOOT_FAILED") >= 0) {
                return "重启命令被设备拒绝（三条路都失败了）；请手动重启车机";
            }
            if (out != null && out.indexOf("REBOOT_SCHEDULED") >= 0) {
                return "已发出重启命令：车机约 1 秒后重启，1~2 分钟恢复"
                        + "（开着热点自启的话会自动重开热点）";
            }
            if (out == null) {
                return "连不上本机 adbd（127.0.0.1:5555），没重启成；"
                        + "看下顶部『无线 ADB』状态再试";
            }
            String s = out.trim();
            if (s.length() > 120) {
                s = s.substring(0, 120);
            }
            return "没收到回执（" + (s.length() == 0 ? "空输出" : s) + "），车机若没动请手动重启";
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "DevicePower.reboot failed: " + t);
            return "重启失败：" + t;
        }
    }
}
