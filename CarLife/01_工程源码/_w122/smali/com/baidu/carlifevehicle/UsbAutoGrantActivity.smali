.class public final Lcom/baidu/carlifevehicle/UsbAutoGrantActivity;
.super Landroid/app/Activity;
.source "UsbAutoGrantActivity.java"


# ---------------------------------------------------------------------------
# patchQ: 触发系统自动授权的「锚点 Activity」
#
#   AOSP UsbHostManager.usbDeviceAdded() 里大致是:
#       ArrayList<String> matches = getDeviceMatches(device, intent);
#       if (matches.size() > 0) {
#           for (String pkg : matches) {
#               mSettingsManager.grantDevicePermission(device, uid);  // 自动授权
#               intent.setComponent(...); mContext.startActivity(intent);
#           }
#       } else {
#           // 没有 Activity 声明匹配的 device_filter -> 弹权限框
#       }
#   而 getDeviceMatches() 内部走 PackageManager.queryIntentActivities(),
#   **只认 Activity**。CarLife 原本把 USB_DEVICE_ATTACHED 只挂在
#   BroadcastReceiver 上, 所以 matches 恒为空 -> 必然弹框。
#
#   补上这个透明 Activity(立即 finish, 全程无感)之后, 手机一插上系统就自动
#   把权限授予本 App, 后续 hasPermission() 直接返回 true。
# ---------------------------------------------------------------------------

# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "CarLifeUsb"

    const-string v1, "USB_DEVICE_ATTACHED: system granted permission, no dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
