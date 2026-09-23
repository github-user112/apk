package androidx.core.graphics.drawable;

/* loaded from: classes.dex */
public class IconCompat extends androidx.versionedparcelable.CustomVersionedParcelable {
    public static final android.graphics.PorterDuff.Mode k = android.graphics.PorterDuff.Mode.SRC_IN;
    public java.lang.Object b;
    public java.lang.String j;
    public int a = -1;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f101c = null;

    /* renamed from: d, reason: collision with root package name */
    public android.os.Parcelable f102d = null;

    /* renamed from: e, reason: collision with root package name */
    public int f103e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f104f = 0;

    /* renamed from: g, reason: collision with root package name */
    public android.content.res.ColorStateList f105g = null;
    public android.graphics.PorterDuff.Mode h = k;
    public java.lang.String i = null;

    public static android.graphics.Bitmap a(android.graphics.Bitmap bitmap, boolean z) {
        int iMin = (int) (java.lang.Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(iMin, iMin, android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
        android.graphics.Paint paint = new android.graphics.Paint(3);
        float f2 = iMin;
        float f3 = 0.5f * f2;
        float f4 = 0.9166667f * f3;
        if (z) {
            float f5 = 0.010416667f * f2;
            paint.setColor(0);
            paint.setShadowLayer(f5, 0.0f, f2 * 0.020833334f, 1023410176);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.setShadowLayer(f5, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        android.graphics.Shader.TileMode tileMode = android.graphics.Shader.TileMode.CLAMP;
        android.graphics.BitmapShader bitmapShader = new android.graphics.BitmapShader(bitmap, tileMode, tileMode);
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2, (-(bitmap.getHeight() - iMin)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f3, f3, f4, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public int b() {
        int i;
        if (this.a != -1 || (i = android.os.Build.VERSION.SDK_INT) < 23) {
            if (this.a == 2) {
                return this.f103e;
            }
            throw new java.lang.IllegalStateException("called getResId() on " + this);
        }
        android.graphics.drawable.Icon icon = (android.graphics.drawable.Icon) this.b;
        if (i >= 28) {
            return icon.getResId();
        }
        try {
            return ((java.lang.Integer) icon.getClass().getMethod("getResId", new java.lang.Class[0]).invoke(icon, new java.lang.Object[0])).intValue();
        } catch (java.lang.IllegalAccessException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException e2) {
            android.util.Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        }
    }

    public android.net.Uri c() {
        int i;
        if (this.a == -1 && (i = android.os.Build.VERSION.SDK_INT) >= 23) {
            android.graphics.drawable.Icon icon = (android.graphics.drawable.Icon) this.b;
            if (i >= 28) {
                return icon.getUri();
            }
            try {
                return (android.net.Uri) icon.getClass().getMethod("getUri", new java.lang.Class[0]).invoke(icon, new java.lang.Object[0]);
            } catch (java.lang.IllegalAccessException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException e2) {
                android.util.Log.e("IconCompat", "Unable to get icon uri", e2);
                return null;
            }
        }
        int i2 = this.a;
        if (i2 == 4 || i2 == 6) {
            return android.net.Uri.parse((java.lang.String) this.b);
        }
        throw new java.lang.IllegalStateException("called getUri() on " + this);
    }

    @java.lang.Deprecated
    public android.graphics.drawable.Icon d() {
        return e(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.drawable.Icon e(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.e(android.content.Context):android.graphics.drawable.Icon");
    }

    public java.lang.String toString() {
        java.lang.String str;
        int height;
        if (this.a == -1) {
            return java.lang.String.valueOf(this.b);
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder("Icon(typ=");
        switch (this.a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((android.graphics.Bitmap) this.b).getWidth());
                sb.append("x");
                height = ((android.graphics.Bitmap) this.b).getHeight();
                sb.append(height);
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.j);
                sb.append(" id=");
                sb.append(java.lang.String.format("0x%08x", java.lang.Integer.valueOf(b())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f103e);
                if (this.f104f != 0) {
                    sb.append(" off=");
                    height = this.f104f;
                    sb.append(height);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.b);
                break;
        }
        if (this.f105g != null) {
            sb.append(" tint=");
            sb.append(this.f105g);
        }
        if (this.h != k) {
            sb.append(" mode=");
            sb.append(this.h);
        }
        sb.append(")");
        return sb.toString();
    }
}
