package net.easyconn.broadcast;

/* loaded from: classes.dex */
public class UsbIntentReceiver extends android.content.BroadcastReceiver {
    public static final java.lang.String ACTION_USB_DEVICE_PERMISSION = "ACTION_USB_DEVICE_PERMISSION";
    public static boolean isPermissionRequesting;

    public void handlePermissionResult(android.content.Context context, android.content.Intent intent) {
        isPermissionRequesting = false;
        synchronized (this) {
            android.hardware.usb.UsbDevice usbDevice = (android.hardware.usb.UsbDevice) intent.getParcelableExtra("device");
            if (intent.getBooleanExtra("permission", false)) {
                startActivity(context, usbDevice);
            }
        }
    }

    public boolean handleUsbDeviceAttached(android.content.Context context, android.hardware.usb.UsbDevice usbDevice) {
        return false;
    }

    public boolean handleUsbDeviceDetached(android.content.Context context, android.hardware.usb.UsbDevice usbDevice) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r11, android.content.Intent r12) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.broadcast.UsbIntentReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }

    public void requestUsbPermission(android.content.Context context, android.hardware.usb.UsbManager usbManager, android.hardware.usb.UsbDevice usbDevice) {
        e.e.a.g.a("requestUsbPermission");
        if (!net.easyconn.EcApplication.isForeground) {
            e.e.a.g.c("requestUsbPermission background, return", new java.lang.Object[0]);
            return;
        }
        if (net.easyconn.EcApplication.isCurrentMirror) {
            e.e.a.g.a("requestUsbPermission now isInMirror = true, return");
            return;
        }
        if (isPermissionRequesting) {
            e.e.a.g.c("now requestUsbPermission ing, return", new java.lang.Object[0]);
            return;
        }
        isPermissionRequesting = true;
        android.content.Intent intent = new android.content.Intent(ACTION_USB_DEVICE_PERMISSION);
        intent.setPackage(context.getPackageName());
        usbManager.requestPermission(usbDevice, android.app.PendingIntent.getBroadcast(context, 0, intent, 1073741824));
    }

    public java.lang.Class<? extends android.app.Activity> startActivity() {
        return f.a.k.g0.class;
    }

    public void startActivity(android.content.Context context, android.hardware.usb.UsbDevice usbDevice) {
        android.content.Intent intent;
        if (!net.easyconn.EcApplication.isForeground) {
            e.e.a.g.c("start MainActivity background, return", new java.lang.Object[0]);
            return;
        }
        if (net.easyconn.EcApplication.isCurrentMirror) {
            e.e.a.g.c("start MainActivity now isInMirror = true, return", new java.lang.Object[0]);
            return;
        }
        java.lang.Class<? extends android.app.Activity> clsStartActivity = startActivity();
        if (clsStartActivity == null || clsStartActivity.getName().equals(f.a.k.g0.class.getName())) {
            intent = new android.content.Intent();
            android.content.ComponentName component = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()).getComponent();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("find start activity = ");
            sbO.append(component.getClassName());
            e.e.a.g.a(sbO.toString());
            intent.setComponent(component);
        } else {
            intent = new android.content.Intent(context, clsStartActivity);
        }
        intent.setAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        intent.putExtra("device", usbDevice);
        intent.addFlags(268435456);
        context.startActivity(intent);
        e.e.a.g.a("start EcSdkActivity by myself");
    }
}
