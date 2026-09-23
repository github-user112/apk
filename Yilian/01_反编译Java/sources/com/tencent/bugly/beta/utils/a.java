package com.tencent.bugly.beta.utils;

/* loaded from: classes.dex */
public class a {
    public static long a = -1;
    public static long b = 0;

    /* renamed from: c, reason: collision with root package name */
    public static long f924c = 1;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f925d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f926e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f927f;

    /* renamed from: g, reason: collision with root package name */
    public long f928g;
    public java.lang.String h;
    public java.io.BufferedInputStream i;
    public long j;
    public long k;

    public a(java.lang.String str) {
        this.f925d = new byte[2];
        this.f926e = new byte[4];
        this.f927f = new byte[8];
        this.f928g = f924c;
        this.h = null;
        this.i = null;
        this.j = 0L;
        this.k = 0L;
        this.h = str;
        this.i = new java.io.BufferedInputStream(new java.io.FileInputStream(this.h));
        this.j = 0L;
        this.k = 0L;
    }

    public a(java.lang.String str, long j) {
        this.f925d = new byte[2];
        this.f926e = new byte[4];
        this.f927f = new byte[8];
        this.f928g = f924c;
        this.h = null;
        this.i = null;
        this.j = 0L;
        this.k = 0L;
        this.h = str;
        this.f928g = j;
        this.i = new java.io.BufferedInputStream(new java.io.FileInputStream(this.h));
        this.j = 0L;
        this.k = 0L;
    }

    public static int a(byte[] bArr, long j) {
        return j == f924c ? c(bArr) : b(bArr);
    }

    public static int b(byte[] bArr) {
        if (bArr == null || bArr.length > 4) {
            return -1;
        }
        return (int) d(bArr);
    }

    public static long b(byte[] bArr, long j) {
        return j == f924c ? e(bArr) : d(bArr);
    }

    public static int c(byte[] bArr) {
        if (bArr == null || bArr.length > 4) {
            return -1;
        }
        return (int) e(bArr);
    }

    public static short c(byte[] bArr, long j) {
        return j == f924c ? g(bArr) : f(bArr);
    }

    public static long d(byte[] bArr) {
        if (bArr == null || bArr.length > 8) {
            return -1L;
        }
        long j = 0;
        for (byte b2 : bArr) {
            j = (j << 8) | (b2 & 255);
        }
        return j;
    }

    public static long e(byte[] bArr) {
        if (bArr == null || bArr.length > 8) {
            return -1L;
        }
        long j = 0;
        for (int length = bArr.length - 1; length >= 0; length--) {
            j = (j << 8) | (bArr[length] & 255);
        }
        return j;
    }

    public static short f(byte[] bArr) {
        if (bArr == null || bArr.length > 2) {
            return (short) -1;
        }
        return (short) b(bArr);
    }

    public static short g(byte[] bArr) {
        if (bArr == null || bArr.length > 2) {
            return (short) -1;
        }
        return (short) c(bArr);
    }

    public synchronized void a(long j) {
        this.f928g = j;
    }

    public synchronized boolean a() {
        boolean z;
        try {
            if (this.i != null) {
                this.i.close();
            }
            this.i = null;
            this.h = null;
            this.j = 0L;
            this.k = 0L;
            z = true;
        } catch (java.io.IOException e2) {
            android.util.Log.e("BinaryFileReader", e2.getMessage());
            z = false;
        }
        return z;
    }

    public synchronized boolean a(byte[] bArr) {
        boolean z;
        try {
            this.i.read(bArr);
            this.j += bArr.length;
            this.k += bArr.length;
            z = true;
        } catch (java.io.IOException e2) {
            android.util.Log.e("BinaryFileReader", e2.getMessage());
            z = false;
        }
        return z;
    }

    public synchronized byte b() {
        java.io.BufferedInputStream bufferedInputStream = this.i;
        if (bufferedInputStream == null) {
            android.util.Log.e("BinaryFileReader", "Failed to skip file pointer！");
            return (byte) 0;
        }
        byte b2 = (byte) bufferedInputStream.read();
        this.j++;
        this.k++;
        return b2;
    }

    public synchronized boolean b(long j) {
        if (this.i == null) {
            android.util.Log.e("BinaryFileReader", "Please open file first！");
            return false;
        }
        if (j == 0) {
            return true;
        }
        long jSkip = j;
        while (jSkip > 0) {
            try {
                jSkip -= this.i.skip(jSkip);
            } catch (java.io.IOException unused) {
                android.util.Log.e("BinaryFileReader", "Failed to skip file pointer！");
                return false;
            }
        }
        this.j += j;
        return true;
    }

    public synchronized int c() {
        java.io.BufferedInputStream bufferedInputStream = this.i;
        if (bufferedInputStream == null) {
            android.util.Log.e("BinaryFileReader", "Failed to skip file pointer！");
            return 0;
        }
        bufferedInputStream.read(this.f926e);
        int iA = a(this.f926e, this.f928g);
        this.j += 4;
        this.k += 4;
        return iA;
    }

    public synchronized long d() {
        java.io.BufferedInputStream bufferedInputStream = this.i;
        if (bufferedInputStream == null) {
            android.util.Log.e("BinaryFileReader", "Failed to skip file pointer！");
            return 0L;
        }
        bufferedInputStream.read(this.f927f);
        long jB = b(this.f927f, this.f928g);
        this.j += 8;
        this.k += 8;
        return jB;
    }

    public synchronized short e() {
        java.io.BufferedInputStream bufferedInputStream = this.i;
        if (bufferedInputStream == null) {
            android.util.Log.e("BinaryFileReader", "Failed to skip file pointer！");
            return (short) 0;
        }
        bufferedInputStream.read(this.f925d);
        short sC = c(this.f925d, this.f928g);
        this.j += 2;
        this.k += 2;
        return sC;
    }

    public synchronized long f() {
        return b() & 255;
    }

    public synchronized long g() {
        return c() & 4294967295L;
    }

    public synchronized long h() {
        return d();
    }

    public synchronized long i() {
        return e() & 65535;
    }
}
