package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.qa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0196qa {
    public java.lang.String a;
    public com.huawei.hms.scankit.p.F b;

    public C0196qa(java.lang.String str) {
        this.a = str;
        this.b = new com.huawei.hms.scankit.p.F(str);
        com.huawei.hms.scankit.p.B.a().a(this.a, this.b);
    }

    private com.huawei.hms.scankit.p.D b(int i) {
        if (i == 0) {
            return this.b.b();
        }
        if (i == 1) {
            return this.b.a();
        }
        if (i == 2) {
            return this.b.c();
        }
        if (i != 3) {
            return null;
        }
        return this.b.d();
    }

    private boolean c(int i) {
        java.lang.String str;
        if (i != 2) {
            com.huawei.hms.scankit.p.D dB = b(i);
            if (dB != null && !android.text.TextUtils.isEmpty(dB.p())) {
                return true;
            }
            str = "verifyURL(): URL check failed. type: " + i;
        } else {
            if ("_default_config_tag".equals(this.a)) {
                return true;
            }
            str = "verifyURL(): type: preins. Only default config can report Pre-install data.";
        }
        com.huawei.hms.scankit.p.T.c("hmsSdk", str);
        return false;
    }

    public void a(int i) {
        com.huawei.hms.scankit.p.T.a("hmsSdk", "HiAnalyticsInstance.onReport() is execute.TAG: %s,TYPE: %d", this.a, java.lang.Integer.valueOf(i));
        com.huawei.hms.scankit.p.C0191pa.a().a(this.a, i);
    }

    public void a(int i, java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        com.huawei.hms.scankit.p.T.a("hmsSdk", "HiAnalyticsInstance.onEvent(int type, String eventId, Map<String, String> mapValue) is execute.TAG: %s,TYPE: %d", this.a, java.lang.Integer.valueOf(i));
        if (com.huawei.hms.scankit.p.C0170l.a(str) || !c(i)) {
            java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("onEvent() parameters check fail. Nothing will be recorded.TAG: ");
            sbA.append(this.a);
            sbA.append(", TYPE: ");
            sbA.append(i);
            com.huawei.hms.scankit.p.T.c("hmsSdk", sbA.toString());
            return;
        }
        if (!com.huawei.hms.scankit.p.C0170l.a(linkedHashMap)) {
            java.lang.StringBuilder sbA2 = com.huawei.hms.scankit.p.Oa.a("onEvent() parameter mapValue will be cleared.TAG: ");
            sbA2.append(this.a);
            sbA2.append(", TYPE: ");
            sbA2.append(i);
            com.huawei.hms.scankit.p.T.c("hmsSdk", sbA2.toString());
            linkedHashMap = null;
        }
        com.huawei.hms.scankit.p.C0191pa.a().a(this.a, i, str, linkedHashMap);
    }

    public void a(com.huawei.hms.scankit.p.D d2) {
        java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : ");
        sbA.append(this.a);
        com.huawei.hms.scankit.p.T.b("hmsSdk", sbA.toString());
        if (d2 != null) {
            this.b.a(d2);
        } else {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "HiAnalyticsInstanceImpl.setMaintConf(): config for maint is null!");
            this.b.a((com.huawei.hms.scankit.p.D) null);
        }
    }

    public void b(com.huawei.hms.scankit.p.D d2) {
        java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: ");
        sbA.append(this.a);
        com.huawei.hms.scankit.p.T.b("hmsSdk", sbA.toString());
        if (d2 != null) {
            this.b.b(d2);
        } else {
            this.b.b(null);
            com.huawei.hms.scankit.p.T.c("hmsSdk", "HiAnalyticsInstanceImpl.setOperConf(): config for oper is null!");
        }
    }
}
