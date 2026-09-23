package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Bc {
    public static boolean a = true;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f491c = false;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f492d = false;

    /* renamed from: e, reason: collision with root package name */
    public static float f493e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    public static int f494f = 0;

    /* renamed from: g, reason: collision with root package name */
    public static int f495g = 0;
    public static boolean h = false;
    public static boolean i = false;
    public static boolean j = false;
    public static boolean k = false;
    public static boolean l = false;
    public static boolean m = false;
    public static boolean n = false;
    public static boolean o = false;
    public static boolean p = false;
    public static boolean[] q = new boolean[8];
    public static java.util.Stack<java.lang.Integer> r = new java.util.Stack<>();
    public static boolean s = true;
    public static boolean b = true;

    static {
        com.huawei.hms.scankit.util.a.c("BUILDING FLAG", "use lite sdk");
    }

    public static void a() {
        f492d = false;
        f493e = -1.0f;
        f494f = 0;
        k = false;
        l = false;
        m = false;
        o = false;
        h = false;
        i = false;
        j = false;
        n = false;
        q = new boolean[8];
        r = new java.util.Stack<>();
        s = true;
    }

    public static void a(int i2) {
        if (i2 % 2 == 1) {
            k = true;
        }
        if (i2 % 3 == 2) {
            l = true;
        }
        if (i2 % 5 == 4) {
            m = true;
        }
    }

    public static void a(com.huawei.hms.scankit.E e2) {
        a();
        boolean z = e2.f351e;
        f491c = z;
        s = e2.f353g;
        a(!z ? e2.f352f : 1);
    }
}
