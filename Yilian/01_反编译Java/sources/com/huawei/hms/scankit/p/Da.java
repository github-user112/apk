package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Da {
    public static final java.lang.String a = "Da";
    public java.lang.String b = "UNKNOWN";

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f508c;

    public Da(android.content.Context context, boolean z) {
        this.f508c = "UNKNOWN";
        b(context, z);
        this.f508c = this.f508c.toUpperCase(java.util.Locale.ENGLISH);
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) throws java.lang.ClassNotFoundException {
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2) || android.text.TextUtils.isEmpty(str3)) {
            android.util.Log.w(a, "reflect class for method has exception.");
            return str4;
        }
        try {
            java.lang.Class<?> cls = java.lang.Class.forName(str3);
            return (java.lang.String) cls.getMethod(str, java.lang.String.class, java.lang.String.class).invoke(cls, str2, str4);
        } catch (java.lang.RuntimeException e2) {
            throw e2;
        } catch (java.lang.Exception e3) {
            android.util.Log.e(a, "getProperty catch exception: ", e3);
            return str4;
        }
    }

    private void a(android.content.Context context, boolean z) {
        java.lang.String str;
        java.lang.StringBuilder sb;
        android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getApplicationContext().getSystemService("phone");
        if (telephonyManager != null) {
            if (!z || telephonyManager.getPhoneType() == 2) {
                this.f508c = telephonyManager.getSimCountryIso();
                this.b = "SIM_COUNTRY";
                str = a;
                sb = new java.lang.StringBuilder("getSimCountryCode by not enableNetwork, countryCode=");
            } else {
                this.f508c = telephonyManager.getNetworkCountryIso();
                this.b = "NETWORK_COUNTRY";
                str = a;
                sb = new java.lang.StringBuilder("getSimCountryCode by enableNetwork, countryCode=");
            }
            sb.append(this.f508c);
            android.util.Log.e(str, sb.toString());
        }
        b();
    }

    private void b() {
        java.lang.String str = this.f508c;
        if (str == null || str.length() != 2) {
            this.f508c = "UNKNOWN";
            this.b = "UNKNOWN";
        }
    }

    private void b(android.content.Context context, boolean z) {
        if (context == null) {
            throw new java.lang.NullPointerException("context must be not null.Please provide app's Context");
        }
        try {
            d();
            if (e()) {
                android.util.Log.d(a, "getCountryCode get country code from {%s}VENDOR_COUNTRY");
                return;
            }
            a(context, z);
            if (e()) {
                android.util.Log.d(a, "getCountryCode get country code from {%s}SIM_COUNTRY");
                return;
            }
            c();
            if (e()) {
                android.util.Log.d(a, "getCountryCode get country code from {%s}LOCALE_INFO");
            }
        } catch (java.lang.Exception unused) {
            android.util.Log.w(a, "get CountryCode error");
        }
    }

    private void c() {
        this.f508c = a("get", "ro.product.locale.region", "android.os.SystemProperties", "UNKNOWN");
        this.b = "LOCALE_INFO";
        android.util.Log.d(a, "getLocaleCountryCode=" + this.f508c);
        if ("cn".equalsIgnoreCase(this.f508c)) {
            return;
        }
        android.util.Log.e(a, "getLocaleCountryCode from system language is not reliable.");
        this.f508c = "UNKNOWN";
        this.b = "UNKNOWN";
    }

    private void d() {
        this.b = "VENDOR_COUNTRY";
        this.f508c = a("get", "ro.hw.country", "android.os.SystemProperties", "UNKNOWN");
        android.util.Log.e(a, "getVendorCountry=" + this.f508c);
        if (!"eu".equalsIgnoreCase(this.f508c) && !"la".equalsIgnoreCase(this.f508c)) {
            b();
            return;
        }
        android.util.Log.e(a, "getVendorCountry equals eu or la ,not reliable");
        this.f508c = "UNKNOWN";
        this.b = "UNKNOWN";
    }

    private boolean e() {
        return !"UNKNOWN".equals(this.f508c);
    }

    public java.lang.String a() {
        return this.f508c;
    }
}
