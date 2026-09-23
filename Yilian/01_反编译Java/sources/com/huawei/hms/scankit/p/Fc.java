package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Fc extends java.text.SimpleDateFormat {
    public final /* synthetic */ com.huawei.hms.scankit.p.Hc a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Fc(com.huawei.hms.scankit.p.Hc hc, java.lang.String str) {
        super(str);
        this.a = hc;
        setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
    }
}
