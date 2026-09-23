package f.a.i.m;

/* loaded from: classes.dex */
public class h {
    public static int a = 50;

    public static android.graphics.Bitmap a(java.lang.String str) {
        return b(str, 500);
    }

    public static android.graphics.Bitmap b(java.lang.String str, int i) throws java.lang.NumberFormatException, java.io.UnsupportedEncodingException {
        try {
            java.util.Hashtable hashtable = new java.util.Hashtable();
            hashtable.put(e.c.c.b.CHARACTER_SET, "utf-8");
            hashtable.put(e.c.c.b.ERROR_CORRECTION, e.c.c.e.b.a.H);
            hashtable.put(e.c.c.b.MARGIN, 1);
            e.c.c.d.b bVarA = new e.c.c.e.a().a(str, e.c.c.a.QR_CODE, i, i, hashtable);
            int[] iArr = new int[i * i];
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < i; i3++) {
                    if (bVarA.a(i3, i2)) {
                        iArr[(i2 * i) + i3] = -16777216;
                    } else {
                        iArr[(i2 * i) + i3] = -1;
                    }
                }
            }
            android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(i, i, android.graphics.Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i);
            return bitmapCreateBitmap;
        } catch (e.c.c.c e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static android.graphics.Bitmap c(java.lang.String str, int i, android.graphics.Bitmap bitmap, int i2) {
        try {
            a = i2;
            java.util.Hashtable hashtable = new java.util.Hashtable();
            hashtable.put(e.c.c.b.CHARACTER_SET, "utf-8");
            hashtable.put(e.c.c.b.ERROR_CORRECTION, e.c.c.e.b.a.H);
            hashtable.put(e.c.c.b.MARGIN, 1);
            e.c.c.d.b bVarD = d(new e.c.c.e.a().a(str, e.c.c.a.QR_CODE, i, i, hashtable));
            int i3 = bVarD.a;
            int i4 = i3 / 2;
            int i5 = bVarD.b / 2;
            android.graphics.Matrix matrix = new android.graphics.Matrix();
            matrix.setScale((a * 2.0f) / bitmap.getWidth(), (a * 2.0f) / bitmap.getHeight());
            android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
            int[] iArr = new int[i3 * i3];
            for (int i6 = 0; i6 < i3; i6++) {
                for (int i7 = 0; i7 < i3; i7++) {
                    if (i7 > i4 - a && i7 < a + i4 && i6 > i5 - a && i6 < a + i5) {
                        iArr[(i6 * i3) + i7] = bitmapCreateBitmap.getPixel((i7 - i4) + a, (i6 - i5) + a);
                    } else if (bVarD.a(i7, i6)) {
                        iArr[(i6 * i3) + i7] = -16777216;
                    } else {
                        iArr[(i6 * i3) + i7] = -1;
                    }
                }
            }
            android.graphics.Bitmap bitmapCreateBitmap2 = android.graphics.Bitmap.createBitmap(i3, i3, android.graphics.Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap2.setPixels(iArr, 0, i3, 0, 0, i3, i3);
            return bitmapCreateBitmap2;
        } catch (e.c.c.c e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static e.c.c.d.b d(e.c.c.d.b bVar) {
        int i = bVar.a;
        int i2 = bVar.b;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < bVar.b; i5++) {
            int i6 = 0;
            while (true) {
                int i7 = bVar.f2778c;
                if (i6 < i7) {
                    int i8 = bVar.f2779d[(i7 * i5) + i6];
                    if (i8 != 0) {
                        if (i5 < i2) {
                            i2 = i5;
                        }
                        if (i5 > i4) {
                            i4 = i5;
                        }
                        int i9 = i6 << 5;
                        if (i9 < i) {
                            int i10 = 0;
                            while ((i8 << (31 - i10)) == 0) {
                                i10++;
                            }
                            int i11 = i10 + i9;
                            if (i11 < i) {
                                i = i11;
                            }
                        }
                        if (i9 + 31 > i3) {
                            int i12 = 31;
                            while ((i8 >>> i12) == 0) {
                                i12--;
                            }
                            int i13 = i9 + i12;
                            if (i13 > i3) {
                                i3 = i13;
                            }
                        }
                    }
                    i6++;
                }
            }
        }
        int[] iArr = (i3 < i || i4 < i2) ? null : new int[]{i, i2, (i3 - i) + 1, (i4 - i2) + 1};
        int i14 = iArr[2] + 2;
        int i15 = iArr[3] + 2;
        e.c.c.d.b bVar2 = new e.c.c.d.b(i14, i15);
        int length = bVar2.f2779d.length;
        for (int i16 = 0; i16 < length; i16++) {
            bVar2.f2779d[i16] = 0;
        }
        for (int i17 = 1; i17 < i14; i17++) {
            for (int i18 = 1; i18 < i15; i18++) {
                if (bVar.a(iArr[0] + i17, iArr[1] + i18)) {
                    int i19 = (i17 / 32) + (bVar2.f2778c * i18);
                    int[] iArr2 = bVar2.f2779d;
                    iArr2[i19] = iArr2[i19] | (1 << (i17 & 31));
                }
            }
        }
        return bVar2;
    }
}
