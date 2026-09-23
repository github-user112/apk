package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public class l {
    public static final int[] a = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 9, 9, 9, 10, 10, 11, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 20, 20, 21, 21, 22, 22, 23, 24, 24, 25, 26, 26, 27, 28, 28, 29, 30, 30, 31, 32, 32, 33, 34, 35, 35, 36, 37, 38, 38, 39, 40, 41, 42, 42, 43, 44, 45, 46, 47, 48, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 81, 82, 83, 84, 85, 86, 87, 89, 90, 91, 92, 93, 95, 96, 97, 98, 100, 101, 102, 103, 105, 106, 107, 109, 110, 111, 113, 114, 115, 117, 118, 119, 121, 122, 123, 125, 126, 128, 129, 131, 132, 133, 135, 136, 138, 139, 141, 142, 144, 145, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT, 148, 150, 151, 153, 154, 156, 158, 159, 161, 162, com.tencent.tinker.android.dx.instruction.Opcodes.SHR_LONG, 166, 167, 169, com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT, 172, 174, com.tencent.tinker.android.dx.instruction.Opcodes.REM_DOUBLE, 177, 179, 180, 182, 184, 185, 187, 189, com.tencent.tinker.android.dx.instruction.Opcodes.REM_LONG_2ADDR, 192, com.tencent.tinker.android.dx.instruction.Opcodes.XOR_LONG_2ADDR, com.tencent.tinker.android.dx.instruction.Opcodes.SHR_LONG_2ADDR, 198, 199, 201, 203, 205, 207, 208, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_INT_LIT16, com.tencent.tinker.android.dx.instruction.Opcodes.REM_INT_LIT16, com.tencent.tinker.android.dx.instruction.Opcodes.OR_INT_LIT16, com.tencent.tinker.android.dx.instruction.Opcodes.ADD_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.RSUB_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.AND_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.XOR_INT_LIT8, 225, 227, 229, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_TIME_CODE, 233, 234, 236, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_BLOCK_ADD_ID, 240, 242, 244, 246, net.easyconn.framework.broadcast.BroadcastManager.DIRECTION_248, 250, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_DEX, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_RESOURCE};
    public com.huawei.hms.scankit.p._a b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p._a f408c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.p._a f409d;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.scankit.p._a f410e;

    /* renamed from: f, reason: collision with root package name */
    public com.huawei.hms.scankit.p._a f411f;

    /* renamed from: g, reason: collision with root package name */
    public com.huawei.hms.scankit.p._a f412g;
    public com.huawei.hms.scankit.p._a h;
    public com.huawei.hms.scankit.p._a i;
    public com.huawei.hms.scankit.p._a j;
    public com.huawei.hms.scankit.p._a k;
    public com.huawei.hms.scankit.p._a l;
    public com.huawei.hms.scankit.p._a m;
    public com.huawei.hms.scankit.p._a n;
    public com.huawei.hms.scankit.p._a o;

    public static com.huawei.hms.scankit.p._a a(com.huawei.hms.scankit.p._a _aVar) {
        byte[] bArrB = _aVar.a().c().b();
        if (bArrB == null || bArrB.length <= 0) {
            return _aVar;
        }
        byte[] bArr = new byte[bArrB.length];
        for (int i = 0; i < bArrB.length; i++) {
            bArr[i] = (byte) (a[bArrB[i] & 255] & 255);
        }
        return new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(new com.huawei.hms.scankit.aiscan.common.r(bArr, _aVar.e(), _aVar.c(), 0, 0, _aVar.e(), _aVar.c(), false)));
    }

    public static com.huawei.hms.scankit.p._a h(com.huawei.hms.scankit.p._a _aVar) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        byte[] bArrB = _aVar.a().c().b();
        if (bArrB == null || bArrB.length <= 0) {
            return _aVar;
        }
        int length = bArrB.length;
        float[] fArr = new float[length];
        float f2 = 0.0f;
        float f3 = 255.0f;
        for (int i = 0; i < bArrB.length; i++) {
            fArr[i] = (bArrB[i] & 255) / 255.0f;
            if (fArr[i] < 0.5d) {
                fArr[i] = fArr[i] * 2.0f * fArr[i];
            } else if (fArr[i] > 0.5d) {
                fArr[i] = ((fArr[i] - 1.0f) * (fArr[i] - 1.0f) * (-2.0f)) + 1.0f;
            }
            if (fArr[i] > f2) {
                f2 = fArr[i];
            }
            if (fArr[i] < f3) {
                f3 = fArr[i];
            }
        }
        float f4 = f2 - f3;
        if (java.lang.Math.abs(f4) < 0.001d) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        byte[] bArr = new byte[bArrB.length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) (((int) (((fArr[i2] - f3) / f4) * 255.0f)) & 255);
        }
        return new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(new com.huawei.hms.scankit.aiscan.common.r(bArr, _aVar.e(), _aVar.c(), 0, 0, _aVar.e(), _aVar.c(), false)));
    }

    public com.huawei.hms.scankit.p._a a(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.b == null) {
            this.b = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.b;
    }

    public void a() {
        this.o = null;
        this.h = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
    }

    public com.huawei.hms.scankit.p._a b(com.huawei.hms.scankit.p._a _aVar) {
        if (this.f409d == null) {
            this.f409d = a(_aVar);
        }
        return this.f409d;
    }

    public com.huawei.hms.scankit.p._a b(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.f408c == null) {
            this.f408c = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.f408c;
    }

    public com.huawei.hms.scankit.p._a c(com.huawei.hms.scankit.p._a _aVar) {
        if (this.f410e == null) {
            this.f410e = a(_aVar);
        }
        return this.f410e;
    }

    public com.huawei.hms.scankit.p._a c(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.i == null) {
            this.i = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.i;
    }

    public com.huawei.hms.scankit.p._a d(com.huawei.hms.scankit.p._a _aVar) {
        if (this.f411f == null) {
            this.f411f = h(_aVar);
        }
        return this.f411f;
    }

    public com.huawei.hms.scankit.p._a d(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.f412g == null) {
            this.f412g = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.f412g;
    }

    public com.huawei.hms.scankit.p._a e(com.huawei.hms.scankit.p._a _aVar) {
        if (this.m == null) {
            this.m = a(_aVar);
        }
        return this.m;
    }

    public com.huawei.hms.scankit.p._a e(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.o == null) {
            this.o = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.o;
    }

    public com.huawei.hms.scankit.p._a f(com.huawei.hms.scankit.p._a _aVar) {
        if (this.n == null) {
            this.n = h(_aVar);
        }
        return this.n;
    }

    public com.huawei.hms.scankit.p._a f(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.l == null) {
            this.l = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.l;
    }

    public com.huawei.hms.scankit.p._a g(com.huawei.hms.scankit.p._a _aVar) {
        if (this.k == null) {
            this.k = h(_aVar);
        }
        return this.k;
    }

    public com.huawei.hms.scankit.p._a g(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.j == null) {
            this.j = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.j;
    }

    public com.huawei.hms.scankit.p._a h(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (this.h == null) {
            this.h = com.huawei.hms.scankit.p.Bc.a ? com.huawei.hms.scankit.aiscan.common.k.a(com.huawei.hms.scankit.p.Bc.b, _aVar, f2) : com.huawei.hms.scankit.aiscan.common.k.a(_aVar, f2);
        }
        return this.h;
    }
}
