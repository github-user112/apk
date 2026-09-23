package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class l extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "utdid";
    public android.content.Context b;

    public l(android.content.Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        try {
            if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.u)) {
                return (java.lang.String) java.lang.Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", android.content.Context.class).invoke(null, this.b);
            }
        } catch (java.lang.Exception unused) {
        }
        return null;
    }
}
