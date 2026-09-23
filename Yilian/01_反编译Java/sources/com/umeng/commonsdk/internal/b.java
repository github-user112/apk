package com.umeng.commonsdk.internal;

/* loaded from: classes.dex */
public class b {
    public static com.umeng.commonsdk.internal.b b;
    public android.content.Context a;

    /* renamed from: c, reason: collision with root package name */
    public com.umeng.commonsdk.internal.c f1463c;

    public b(android.content.Context context) {
        this.a = context;
        this.f1463c = new com.umeng.commonsdk.internal.c(context);
    }

    public static synchronized com.umeng.commonsdk.internal.b a(android.content.Context context) {
        if (b == null) {
            b = new com.umeng.commonsdk.internal.b(context.getApplicationContext());
        }
        return b;
    }

    public com.umeng.commonsdk.internal.c a() {
        return this.f1463c;
    }
}
