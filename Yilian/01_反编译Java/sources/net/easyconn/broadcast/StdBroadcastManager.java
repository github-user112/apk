package net.easyconn.broadcast;

/* loaded from: classes.dex */
public class StdBroadcastManager extends net.easyconn.framework.broadcast.BroadcastManager {
    public static final java.lang.String BROADCAST_EAP_DEVICE_ATTACHED = "net.easyconn.eap.attached";
    public static final java.lang.String BROADCAST_EAP_DEVICE_DETACHED = "net.easyconn.eap.detached";
    public static final java.lang.String BROADCAST_EAP_DEVICE_INFO = "net.easyconn.eap.info";
    public static final java.lang.String BROADCAST_EAP_DEVICE_PATH = "net.easyconn.eap.path";
    public static final java.lang.String BROADCAST_EAP_LAUNCH_APP = "net.easyconn.eap.launchapp";
    public static final java.lang.String EAP_DEV_PATH = "eap_dev_path";
    public static final java.lang.String EAP_INFO_ExtAcceProtocolName = "EAP_INFO_ExtAcceProtocolName";
    public static final java.lang.String EAP_INFO_ExtAcceProtocolValue = "cn.carbit.ecprotocol";
    public static final java.lang.String EAP_INFO_TransCompName = "EAP_INFO_TransCompName";
    public static final java.lang.String EAP_INFO_TransCompValue = "CarBit";

    public StdBroadcastManager(android.content.Context context) {
        super(context);
    }

    private void launchApp() {
        android.content.Intent intent = new android.content.Intent(BROADCAST_EAP_DEVICE_INFO);
        intent.putExtra(EAP_INFO_ExtAcceProtocolName, EAP_INFO_ExtAcceProtocolValue);
        intent.putExtra(EAP_INFO_TransCompName, EAP_INFO_TransCompValue);
        sendBroadcast(intent);
        sendBroadcast(new android.content.Intent(BROADCAST_EAP_LAUNCH_APP));
    }

    @Override // net.easyconn.framework.broadcast.BroadcastManager
    public void onActionRegister(android.content.IntentFilter intentFilter) {
        super.onActionRegister(intentFilter);
        intentFilter.addAction(BROADCAST_EAP_DEVICE_ATTACHED);
        intentFilter.addAction(BROADCAST_EAP_DEVICE_PATH);
        intentFilter.addAction(BROADCAST_EAP_DEVICE_DETACHED);
        e.e.a.g.e("StdBroadcastManager onActionRegister", new java.lang.Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    @Override // net.easyconn.framework.broadcast.BroadcastManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onReceive(android.content.Context r6, android.content.Intent r7) {
        /*
            r5 = this;
            java.lang.String r6 = r7.getAction()
            int r0 = r6.hashCode()
            r1 = -1436567251(0xffffffffaa5fb92d, float:-1.9870625E-13)
            r2 = 2
            r3 = 0
            r4 = 1
            if (r0 == r1) goto L2f
            r1 = -1402155986(0xffffffffac6ccc2e, float:-3.365096E-12)
            if (r0 == r1) goto L25
            r1 = -930756869(0xffffffffc885c6fb, float:-273975.84)
            if (r0 == r1) goto L1b
            goto L39
        L1b:
            java.lang.String r0 = "net.easyconn.eap.detached"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L39
            r6 = 2
            goto L3a
        L25:
            java.lang.String r0 = "net.easyconn.eap.path"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L39
            r6 = 1
            goto L3a
        L2f:
            java.lang.String r0 = "net.easyconn.eap.attached"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L39
            r6 = 0
            goto L3a
        L39:
            r6 = -1
        L3a:
            if (r6 == 0) goto La2
            r0 = 0
            if (r6 == r4) goto L70
            if (r6 == r2) goto L42
            return r3
        L42:
            f.a.i.i.q r6 = net.easyconn.framework.broadcast.BroadcastManager.sdkManager
            net.easyconn.ecsdk.ECTypes$ECTransportType r7 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_EAP
            if (r6 == 0) goto L6f
            f.a.i.m.f.c()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "EcSdkManager unbindTransportDevice isAsync = "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            e.e.a.g.a(r0)
            android.os.Message r0 = android.os.Message.obtain()
            r0.obj = r7
            r7 = 15
            r0.what = r7
            android.os.Handler r6 = r6.r
            r6.sendMessageAtFrontOfQueue(r0)
            return r4
        L6f:
            throw r0
        L70:
            java.lang.String r6 = "eap_dev_path"
            java.lang.String r6 = r7.getStringExtra(r6)
            java.lang.String r7 = "开始绑定EAP设备"
            e.e.a.g.a(r7)
            f.a.i.i.q r7 = net.easyconn.framework.broadcast.BroadcastManager.sdkManager
            net.easyconn.ecsdk.ECTypes$ECTransportType r1 = net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_EAP
            if (r7 == 0) goto La1
            f.a.i.m.f.c()
            java.lang.String r0 = "EcSdkManager bindTransportDevice"
            e.e.a.g.a(r0)
            android.os.Message r0 = android.os.Message.obtain()
            r0.obj = r6
            int r6 = r1.getValue()
            r0.arg1 = r6
            r0.arg2 = r3
            r6 = 14
            r0.what = r6
            android.os.Handler r6 = r7.r
            r6.sendMessage(r0)
            return r4
        La1:
            throw r0
        La2:
            r5.launchApp()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.broadcast.StdBroadcastManager.onReceive(android.content.Context, android.content.Intent):boolean");
    }
}
