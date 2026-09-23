package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class N {
    public java.util.List<com.huawei.hms.scankit.p.J> a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f593c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f594d;

    public N(java.util.List<com.huawei.hms.scankit.p.J> list, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.a = list;
        this.b = str;
        this.f593c = str2;
        this.f594d = str3;
    }

    private void a(java.util.List<com.huawei.hms.scankit.p.J> list, java.lang.String str, java.lang.String str2) throws java.io.IOException {
        if (list.isEmpty()) {
            return;
        }
        int size = (list.size() / 500) + 1;
        for (int i = 0; i < size; i++) {
            int i2 = i * 500;
            java.util.List<com.huawei.hms.scankit.p.J> listSubList = list.subList(i2, java.lang.Math.min(list.size(), i2 + 500));
            java.lang.String strReplace = java.util.UUID.randomUUID().toString().replace("-", "");
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            long jM = com.huawei.hms.scankit.p.AbstractC0125c.m(str2, str) * 86400000;
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (com.huawei.hms.scankit.p.J j : listSubList) {
                if (!com.huawei.hms.scankit.p.C0165k.a(j.c(), jCurrentTimeMillis, jM)) {
                    arrayList.add(j);
                }
            }
            if (arrayList.size() > 0) {
                new com.huawei.hms.scankit.p.O(str2, str, this.f594d, arrayList, strReplace).a();
            } else {
                com.huawei.hms.scankit.p.T.c("DataOrganizeHandler", "No data to report handler");
            }
        }
    }

    public void a() {
        if (!"_default_config_tag".equals(this.f593c)) {
            a(this.a, this.f593c, this.b);
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        java.util.ArrayList arrayList4 = new java.util.ArrayList();
        for (com.huawei.hms.scankit.p.J j : this.a) {
            java.lang.String strB = j.b();
            if (android.text.TextUtils.isEmpty(strB) || "oper".equals(strB)) {
                arrayList4.add(j);
            } else if ("maint".equals(strB)) {
                arrayList.add(j);
            } else if ("preins".equals(strB)) {
                arrayList2.add(j);
            } else if ("diffprivacy".equals(strB)) {
                arrayList3.add(j);
            }
        }
        a(arrayList4, "oper", "_default_config_tag");
        a(arrayList, "maint", "_default_config_tag");
        a(arrayList2, "preins", "_default_config_tag");
        a(arrayList3, "diffprivacy", "_default_config_tag");
    }
}
