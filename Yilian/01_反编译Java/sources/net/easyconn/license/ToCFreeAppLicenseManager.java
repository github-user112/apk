package net.easyconn.license;

/* loaded from: classes.dex */
public class ToCFreeAppLicenseManager extends net.easyconn.license.AppLicenseManager {
    public ToCFreeAppLicenseManager(android.content.Context context) {
        super(context);
    }

    @Override // net.easyconn.license.AppLicenseManager, f.a.i.e.a
    public java.lang.String getUuid() {
        java.lang.String string = android.provider.Settings.Secure.getString(this.mContext.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
        if (android.text.TextUtils.isEmpty(string)) {
            string = android.os.Build.SERIAL;
        }
        e.a.c.a.a.w("getUuid uuid = ", string);
        return string;
    }
}
