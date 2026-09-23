package com.huawei.hms.ml.common.utils;

/* loaded from: classes.dex */
public class NV21ToBitmapConverter1 {
    public android.content.Context applicationContext;
    public android.renderscript.Allocation in;
    public android.renderscript.Allocation out;
    public android.renderscript.RenderScript renderScript;
    public android.renderscript.Type.Builder rgbaType;
    public android.renderscript.ScriptIntrinsicYuvToRGB yuvToRgbIntrinsic;
    public android.renderscript.Type.Builder yuvType;
    public int width = -1;
    public int height = -1;
    public int length = -1;

    public NV21ToBitmapConverter1(android.content.Context context) {
        if (context == null) {
            throw new java.lang.IllegalArgumentException("context can't be null");
        }
        android.content.Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            this.applicationContext = context;
        } else {
            this.applicationContext = applicationContext;
        }
        android.renderscript.RenderScript renderScriptCreate = android.renderscript.RenderScript.create(this.applicationContext);
        this.renderScript = renderScriptCreate;
        this.yuvToRgbIntrinsic = android.renderscript.ScriptIntrinsicYuvToRGB.create(renderScriptCreate, android.renderscript.Element.U8_4(renderScriptCreate));
    }

    private void recreateIfNeed(byte[] bArr, int i, int i2, int i3) {
        if (this.width == i && this.height == i2 && this.length == bArr.length) {
            return;
        }
        this.width = i;
        this.height = i2;
        this.length = bArr.length;
        this.yuvType = null;
        this.rgbaType = null;
    }

    public android.graphics.Bitmap convert(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        return convert(bArr, i, i2, i3, i4, i5, false, false, false);
    }

    public android.graphics.Bitmap convert(byte[] bArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        recreateIfNeed(bArr, i, i2, i5);
        android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(i3, i4, android.graphics.Bitmap.Config.ARGB_8888);
        new android.graphics.Canvas(bitmapCreateBitmap).drawBitmap(convertYUVtoRGB(bArr, i, i2), getTransformationMatrix(i, i2, i3, i4, i5, z, z2, z3), null);
        return bitmapCreateBitmap;
    }

    public android.graphics.Bitmap convertYUVtoRGB(byte[] bArr, int i, int i2) {
        if (this.yuvType == null) {
            android.renderscript.RenderScript renderScript = this.renderScript;
            android.renderscript.Type.Builder x = new android.renderscript.Type.Builder(renderScript, android.renderscript.Element.U8(renderScript)).setX(bArr.length);
            this.yuvType = x;
            this.in = android.renderscript.Allocation.createTyped(this.renderScript, x.create(), 1);
            android.renderscript.RenderScript renderScript2 = this.renderScript;
            android.renderscript.Type.Builder y = new android.renderscript.Type.Builder(renderScript2, android.renderscript.Element.RGBA_8888(renderScript2)).setX(i).setY(i2);
            this.rgbaType = y;
            this.out = android.renderscript.Allocation.createTyped(this.renderScript, y.create(), 1);
        }
        this.in.copyFrom(bArr);
        this.yuvToRgbIntrinsic.setInput(this.in);
        this.yuvToRgbIntrinsic.forEach(this.out);
        android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(i, i2, android.graphics.Bitmap.Config.ARGB_8888);
        this.out.copyTo(bitmapCreateBitmap);
        return bitmapCreateBitmap;
    }

    public android.content.Context getApplicationContext() {
        android.content.Context context = this.applicationContext;
        if (context != null) {
            return context;
        }
        throw new java.lang.IllegalStateException("initial must be called first");
    }

    public android.graphics.Matrix getTransformationMatrix(int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        if (i5 != 0) {
            if (i5 % 90 != 0) {
                throw new java.lang.IllegalArgumentException(java.lang.String.format(java.util.Locale.ENGLISH, "Rotation of %d", java.lang.Integer.valueOf(i5)));
            }
            matrix.postTranslate((-i) / 2.0f, (-i2) / 2.0f);
            matrix.postRotate(i5);
        }
        boolean z4 = (java.lang.Math.abs(i5) + 90) % 180 == 0;
        int i6 = z4 ? i2 : i;
        if (!z4) {
            i = i2;
        }
        int i7 = z ? -1 : 1;
        int i8 = z2 ? -1 : 1;
        if (i6 != i3 || i != i4) {
            float f2 = (i7 * i3) / i6;
            float f3 = (i8 * i4) / i;
            if (z3) {
                float fMax = java.lang.Math.max(java.lang.Math.abs(f2), java.lang.Math.abs(f3));
                matrix.postScale(fMax, fMax);
            } else {
                matrix.postScale(f2, f3);
            }
        }
        if (i5 != 0) {
            float f4 = i3 / 2.0f;
            float f5 = i4 / 2.0f;
            matrix.postTranslate(f4, f5);
            matrix.postScale(i7, i8, f4, f5);
        }
        return matrix;
    }
}
