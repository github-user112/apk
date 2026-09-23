package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class h extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "newumid";
    public android.content.Context b;

    public h(android.content.Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        return com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.b, com.umeng.analytics.pro.ai.f1220g, null);
    }
}
