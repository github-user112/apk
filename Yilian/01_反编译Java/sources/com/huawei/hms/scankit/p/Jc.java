package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Jc extends java.text.SimpleDateFormat {
    public final /* synthetic */ com.huawei.hms.scankit.p.Kc a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Jc(com.huawei.hms.scankit.p.Kc kc, java.lang.String str) {
        super(str);
        this.a = kc;
        setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
    }
}
