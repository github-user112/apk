package f.a.i.e;

/* loaded from: classes.dex */
public abstract class a {
    public static final int AUTH_LICENSE_MODE_AUTO = 1;
    public static final int AUTH_LICENSE_MODE_PHONE = 0;
    public static final int AUTH_LICENSE_MODE_PHONEAUTO = 2;
    public static final int AUTH_LICENSE_MODE_QR = 3;
    public net.easyconn.ecsdk.ECTypes.ECAuthentication ecAuthentication;
    public android.content.Context mContext;
    public net.easyconn.ecsdk.ECTypes.ECOptions options;

    public a(android.content.Context context) {
        this.mContext = context;
        this.options = f.a.i.m.g.d(context);
        if (this.ecAuthentication == null) {
            this.ecAuthentication = new net.easyconn.ecsdk.ECTypes.ECAuthentication();
        }
    }

    public abstract net.easyconn.ecsdk.ECTypes.ECAuthentication getEcAuthentication();

    public abstract net.easyconn.ecsdk.ECTypes.ECAuthentication getEcAuthentication(java.lang.String str);

    public abstract java.lang.String getLicensePwd();

    public abstract java.lang.String getUuid();
}
