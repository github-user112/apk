package com.huawei.hms.framework.network.grs.local.model;

/* loaded from: classes.dex */
public class b {
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Set<java.lang.String> f341c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f342d;

    public java.util.Set<java.lang.String> a() {
        return this.f341c;
    }

    public void a(java.lang.String str) {
        this.f342d = str;
    }

    public void a(java.util.Set<java.lang.String> set) {
        this.f341c = set;
    }

    public java.lang.String b() {
        return this.a;
    }

    public void b(java.lang.String str) {
        this.a = str;
    }

    public void c(java.lang.String str) {
        this.b = str;
    }
}
