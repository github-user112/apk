package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class c {
    public android.content.Context a;
    public com.huawei.hms.framework.network.grs.GrsBaseInfo b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.a.a f313c;

    public c(android.content.Context context, com.huawei.hms.framework.network.grs.a.a aVar, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        this.a = context;
        this.b = grsBaseInfo;
        this.f313c = aVar;
    }

    public java.lang.String a(boolean z) {
        java.lang.String strA;
        java.lang.String strA2 = com.huawei.hms.framework.network.grs.a.a(this.f313c.a().a("geoipCountryCode", ""), "geoip.countrycode", "ROOT");
        com.huawei.hms.framework.common.Logger.i("GeoipCountry", "geoIpCountry is: " + strA2);
        java.lang.String strA3 = this.f313c.a().a("geoipCountryCodetime", "0");
        long j = 0;
        if (!android.text.TextUtils.isEmpty(strA3) && strA3.matches("\\d+")) {
            try {
                j = java.lang.Long.parseLong(strA3);
            } catch (java.lang.NumberFormatException e2) {
                com.huawei.hms.framework.common.Logger.w("GeoipCountry", "convert urlParamKey from String to Long catch NumberFormatException.", e2);
            }
        }
        if (android.text.TextUtils.isEmpty(strA2) || com.huawei.hms.framework.network.grs.d.e.a(java.lang.Long.valueOf(j))) {
            com.huawei.hms.framework.network.grs.c.b.c cVar = new com.huawei.hms.framework.network.grs.c.b.c(this.b, this.a);
            cVar.a("geoip.countrycode");
            com.huawei.hms.framework.network.grs.a.c cVarC = this.f313c.c();
            if (cVarC != null) {
                try {
                    strA = com.huawei.hms.framework.network.grs.c.n.a(cVarC.a("services", ""), cVar.c());
                } catch (org.json.JSONException e3) {
                    com.huawei.hms.framework.common.Logger.w("GeoipCountry", "getGeoipCountry merge services occure jsonException.", e3);
                    strA = null;
                }
                if (!android.text.TextUtils.isEmpty(strA)) {
                    cVarC.b("services", strA);
                }
            }
            if (z) {
                com.huawei.hms.framework.network.grs.c.f fVarA = this.f313c.b().a(cVar, "geoip.countrycode", cVarC);
                if (fVarA != null) {
                    strA2 = com.huawei.hms.framework.network.grs.a.a(fVarA.i(), "geoip.countrycode", "ROOT");
                }
                com.huawei.hms.framework.common.Logger.i("GeoipCountry", "sync request to query geoip.countrycode is:" + strA2);
            } else {
                com.huawei.hms.framework.common.Logger.i("GeoipCountry", "async request to query geoip.countrycode");
                this.f313c.b().a(cVar, null, "geoip.countrycode", cVarC);
            }
        }
        return strA2;
    }
}
