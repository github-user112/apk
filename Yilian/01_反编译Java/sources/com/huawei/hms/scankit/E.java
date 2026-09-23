package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class E {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f349c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f350d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f351e;

    /* renamed from: f, reason: collision with root package name */
    public int f352f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f353g;
    public int h;
    public int i;
    public boolean j;

    public E(int i, int i2, int i3) {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.a = i;
        this.b = i2;
        this.f349c = i3;
        this.f350d = false;
        this.f351e = false;
        this.f353g = true;
    }

    public E(int i, int i2, int i3, boolean z, boolean z2) {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.a = i;
        this.b = i2;
        this.f349c = i3;
        this.f350d = z;
        this.f351e = z2;
        this.f353g = true;
    }

    public E(int i, boolean z) {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.a = 0;
        this.b = 0;
        this.f349c = i;
        this.f350d = false;
        this.f351e = z;
        this.f353g = true;
    }

    public E(com.huawei.hms.scankit.E e2) {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.a = e2.a;
        this.b = e2.b;
        this.f349c = e2.f349c;
        this.f350d = e2.f350d;
        this.f351e = e2.f351e;
        this.f353g = e2.f353g;
        this.f352f = e2.f352f;
        this.h = e2.h;
        this.i = e2.i;
        this.j = e2.j;
    }

    public com.huawei.hms.scankit.E a(int i) {
        this.f352f = i;
        return this;
    }
}
