package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class c extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "idfa";
    public android.content.Context b;

    public c(android.content.Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        java.lang.String strA = com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.w) ? com.umeng.commonsdk.statistics.common.a.a(this.b) : null;
        return strA == null ? "" : strA;
    }
}
