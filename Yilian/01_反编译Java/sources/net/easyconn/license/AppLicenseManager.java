package net.easyconn.license;

/* loaded from: classes.dex */
public class AppLicenseManager extends f.a.i.e.a {
    public static final int AUTH_FAIL_ERROR_CODE_UNEXPECTED_UUID = -101;
    public static final java.lang.String ERROR_PASSWORD = "error_password";
    public java.lang.String mUuid;

    public AppLicenseManager(android.content.Context context) {
        super(context);
        this.mUuid = null;
    }

    private int generateAuthCheckCode() {
        int iIntValue = (!f.a.i.m.g.h0(this.mContext) ? java.lang.Integer.valueOf("0") : java.lang.Integer.valueOf(f.a.i.m.g.f2936c.getProperty("AUTH_LICENSE_MODE", "0"))).intValue();
        boolean zBooleanValue = (!f.a.i.m.g.h0(this.mContext) ? java.lang.Boolean.valueOf("ENABLE_DOWNLOAD_LICENSE_VIA_CAR_NETWORK") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("ENABLE_DOWNLOAD_LICENSE_VIA_CAR_NETWORK", "false"))).booleanValue();
        e.e.a.g.c("AppLicenseManager generateAuthCheckCode mode = " + iIntValue + " , enableDownloadLicenseViaCarNetwork = " + zBooleanValue, new java.lang.Object[0]);
        if (iIntValue != 1) {
            if (iIntValue == 3) {
                return 2;
            }
            if (!zBooleanValue) {
                return 0;
            }
        }
        return 1;
    }

    @Override // f.a.i.e.a
    public net.easyconn.ecsdk.ECTypes.ECAuthentication getEcAuthentication() {
        e.e.a.g.a("getEcAuthentication start");
        this.ecAuthentication.uuid = getUuid();
        this.ecAuthentication.pwd = getLicensePwd();
        this.ecAuthentication.authCheckMode = generateAuthCheckCode();
        net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication = this.ecAuthentication;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("tocfree.");
        sbO.append("7.0.1-9011d330b-202404121051".split("-")[0]);
        eCAuthentication.versionName = sbO.toString();
        java.lang.String strN = f.a.i.m.g.N(this.mContext);
        net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication2 = this.ecAuthentication;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("easy_conn");
        sbO2.append(android.text.TextUtils.isEmpty(strN) ? "" : e.a.c.a.a.e(",", strN));
        eCAuthentication2.clientSet = sbO2.toString();
        net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication3 = this.ecAuthentication;
        d.s.y.m = eCAuthentication3.uuid;
        return eCAuthentication3;
    }

    @Override // f.a.i.e.a
    public net.easyconn.ecsdk.ECTypes.ECAuthentication getEcAuthentication(java.lang.String str) {
        e.a.c.a.a.w("getEcAuthentication start, has uuid = ", str);
        this.mUuid = str;
        net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication = this.ecAuthentication;
        eCAuthentication.uuid = str;
        eCAuthentication.pwd = getLicensePwd();
        this.ecAuthentication.authCheckMode = generateAuthCheckCode();
        net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication2 = this.ecAuthentication;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("tocfree.");
        sbO.append("7.0.1-9011d330b-202404121051".split("-")[0]);
        eCAuthentication2.versionName = sbO.toString();
        java.lang.String strN = f.a.i.m.g.N(this.mContext);
        net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication3 = this.ecAuthentication;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("easy_conn");
        sbO2.append(android.text.TextUtils.isEmpty(strN) ? "" : e.a.c.a.a.e(",", strN));
        eCAuthentication3.clientSet = sbO2.toString();
        net.easyconn.ecsdk.ECTypes.ECAuthentication eCAuthentication4 = this.ecAuthentication;
        d.s.y.m = eCAuthentication4.uuid;
        return eCAuthentication4;
    }

    @Override // f.a.i.e.a
    public java.lang.String getLicensePwd() {
        return "ASDF!@#$asdf1234";
    }

    @Override // f.a.i.e.a
    public java.lang.String getUuid() {
        return !android.text.TextUtils.isEmpty(this.mUuid) ? this.mUuid : "";
    }
}
