package com.huawei.hms.scankit.drawable;

/* loaded from: classes.dex */
public class ScanDrawable extends android.graphics.drawable.Drawable implements android.graphics.drawable.Animatable {
    public static final int[] a = {13625597, 357325};
    public static final android.view.animation.Interpolator b = new com.huawei.hms.scankit.drawable.a(0.4f, 0.0f, 0.4f, 1.0f);

    /* renamed from: c, reason: collision with root package name */
    public static final android.view.animation.Interpolator f435c = new com.huawei.hms.scankit.drawable.a(0.4f, 0.0f, 0.7f, 1.0f);

    /* renamed from: d, reason: collision with root package name */
    public static final android.view.animation.Interpolator f436d = new com.huawei.hms.scankit.drawable.a(0.25f, 0.0f, 0.4f, 1.0f);
    public android.animation.AnimatorSet A;

    /* renamed from: e, reason: collision with root package name */
    public final android.animation.ValueAnimator f437e;

    /* renamed from: f, reason: collision with root package name */
    public final android.animation.ValueAnimator f438f;

    /* renamed from: g, reason: collision with root package name */
    public final android.graphics.Matrix f439g;
    public final android.graphics.Paint h;
    public final android.graphics.Paint i;
    public final android.graphics.ColorMatrix j;
    public final android.graphics.Matrix k;
    public final android.graphics.Rect l;
    public final android.graphics.Rect m;
    public final android.graphics.Rect n;
    public final android.graphics.Rect o;
    public int p;
    public int q;
    public float r;
    public boolean s;
    public float t;
    public int u;
    public com.huawei.hms.scankit.p.re v;
    public float w;
    public boolean x;
    public android.graphics.Bitmap y;
    public android.graphics.Bitmap z;

    public ScanDrawable() {
        this.f437e = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f438f = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f439g = new android.graphics.Matrix();
        this.h = new android.graphics.Paint();
        this.i = new android.graphics.Paint();
        this.j = new android.graphics.ColorMatrix();
        this.k = new android.graphics.Matrix();
        this.l = new android.graphics.Rect();
        this.m = new android.graphics.Rect();
        this.n = new android.graphics.Rect();
        this.o = new android.graphics.Rect();
        this.r = 0.5f;
        this.s = false;
        this.t = 0.0f;
        this.x = true;
        this.A = new android.animation.AnimatorSet();
        d();
    }

    public ScanDrawable(android.content.res.Resources resources) {
        this();
        a(resources);
    }

    private void a(android.content.res.Resources resources) {
        if (resources == null) {
            android.util.Log.e("ScanDrawable", "resources is null when init drawable");
            return;
        }
        android.graphics.Bitmap bitmapDecodeResource = android.graphics.BitmapFactory.decodeResource(resources, com.huawei.hms.scankit.R.drawable.scankit_scan_light);
        this.z = android.graphics.Bitmap.createBitmap(bitmapDecodeResource.getWidth() * 2, bitmapDecodeResource.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas();
        canvas.setBitmap(this.z);
        android.graphics.Paint paint = new android.graphics.Paint();
        android.graphics.Shader.TileMode tileMode = android.graphics.Shader.TileMode.MIRROR;
        paint.setShader(new android.graphics.BitmapShader(bitmapDecodeResource, tileMode, tileMode));
        canvas.drawRect(0.0f, 0.0f, bitmapDecodeResource.getWidth() * 2, bitmapDecodeResource.getHeight() * 2, paint);
        this.y = android.graphics.BitmapFactory.decodeResource(resources, com.huawei.hms.scankit.R.drawable.scankit_scan_tail);
        this.w = resources.getDisplayMetrics().density;
    }

    private void a(android.graphics.Canvas canvas) {
        int i;
        int i2;
        android.graphics.Bitmap bitmap = this.z;
        if (bitmap == null || bitmap.getWidth() == 0 || this.z.getHeight() == 0) {
            android.util.Log.e("ScanDrawable", "drawLight failed, light bitmap is null");
            return;
        }
        float fFloatValue = (((java.lang.Float) this.f437e.getAnimatedValue()).floatValue() * this.r) + (this.t * 0.5f);
        float f2 = (1.5f - fFloatValue) * 0.05f;
        float f3 = f2 + 1.0f;
        this.j.set(new float[]{1.0f, f2, f2, f2, 0.0f, f2, f3, f2, f2, 0.0f, f2, f2, f3, f2, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
        this.i.setColorFilter(new android.graphics.ColorMatrixColorFilter(this.j));
        int i3 = (int) (((fFloatValue * 0.2f) + 0.4f) * this.p);
        if (this.s) {
            int i4 = this.u;
            i = i4 + i3;
            i2 = i4 - i3;
        } else {
            int i5 = this.u;
            i = i5 - i3;
            i2 = i5 + i3;
        }
        this.l.set(0, i, getBounds().right, i2);
        this.k.setScale(this.l.width() / this.z.getWidth(), this.l.height() / this.z.getHeight());
        android.graphics.Matrix matrix = this.k;
        android.graphics.Rect rect = this.l;
        matrix.postTranslate(rect.left, rect.top);
        canvas.drawBitmap(this.z, this.k, this.i);
        this.k.reset();
    }

    private void a(android.graphics.Canvas canvas, android.graphics.Rect rect) {
        android.graphics.Bitmap bitmap = this.y;
        if (bitmap == null || bitmap.getWidth() == 0 || this.y.getHeight() == 0) {
            android.util.Log.e("ScanDrawable", "dawTail failed, input bitmap is null");
            return;
        }
        this.f439g.setScale(rect.width() / this.y.getWidth(), rect.height() / this.y.getHeight());
        this.f439g.postTranslate(rect.left, rect.top);
        canvas.drawBitmap(this.y, this.f439g, this.h);
        this.f439g.reset();
    }

    private void a(android.graphics.Rect rect) {
        if (rect.height() == 0) {
            android.util.Log.d("ScanDrawable", "initBounds bounds is null");
            return;
        }
        this.o.set(rect);
        this.o.inset(0, (int) (rect.height() * 0.1f));
        this.p = (int) (rect.height() * 0.18f);
        this.q = (int) (rect.height() * 0.36f);
        android.graphics.Rect rect2 = new android.graphics.Rect(rect);
        rect2.inset((int) (rect.width() * 0.2f), 0);
        float f2 = this.w;
        int iWidth = (int) ((f2 != 0.0f ? 0.001f / (f2 * f2) : 0.001f) * rect2.width() * rect2.height());
        this.v = new com.huawei.hms.scankit.p.re(new com.huawei.hms.scankit.p.se(iWidth, 500L).a(0.33f, 1.0f).a(0, -1, 0L, 100L, new android.view.animation.LinearInterpolator()).a(-1, 0, 400L, 500L, new android.view.animation.LinearInterpolator()), rect2, iWidth, this.w * 2.0f, a);
    }

    private void b(android.graphics.Canvas canvas) {
        com.huawei.hms.scankit.p.re reVar = this.v;
        if (reVar == null) {
            android.util.Log.e("ScanDrawable", "drawParticle failed, mParticle is null");
        } else {
            reVar.a(canvas, this.m);
        }
    }

    private void d() {
        f();
        e();
        android.animation.AnimatorSet animatorSet = new android.animation.AnimatorSet();
        this.A = animatorSet;
        animatorSet.playTogether(this.f438f, this.f437e);
    }

    private void e() {
        this.f437e.setInterpolator(new android.view.animation.LinearInterpolator());
        this.f437e.setRepeatMode(2);
        this.f437e.setRepeatCount(-1);
        this.f437e.setDuration(500L);
        this.f437e.setStartDelay(200L);
        this.f437e.addListener(new com.huawei.hms.scankit.drawable.d(this));
    }

    private void f() {
        this.f438f.setDuration(2000L);
        this.f438f.setInterpolator(new android.view.animation.LinearInterpolator());
        this.f438f.setRepeatCount(-1);
        this.f438f.setRepeatMode(2);
        this.f438f.addUpdateListener(new com.huawei.hms.scankit.drawable.b(this));
        this.f438f.addListener(new com.huawei.hms.scankit.drawable.c(this));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        int i;
        int i2;
        if (!isRunning() || canvas == null) {
            android.util.Log.w("ScanDrawable", "animator is not running or canvas is null.");
            return;
        }
        if (this.s) {
            int i3 = this.u;
            this.m.set(0, i3, getBounds().right, ((int) (this.q * this.t * 0.5f)) + i3);
            i = this.u;
            i2 = ((int) (this.q * this.t)) + i;
        } else {
            int i4 = this.u;
            this.m.set(0, i4, getBounds().right, i4 - ((int) ((this.q * this.t) * 0.5f)));
            i = this.u;
            i2 = i - ((int) (this.q * this.t));
        }
        this.n.set(0, i, getBounds().right, i2);
        a(canvas, this.n);
        b(canvas);
        a(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(android.content.res.Resources resources, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        if (resources == null || xmlPullParser == null || attributeSet == null) {
            android.util.Log.e("ScanDrawable", "resources, xmlPullParser or attributeSet is null when inflating drawable");
        } else {
            a(resources);
            super.inflate(resources, xmlPullParser, attributeSet, theme);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.A.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        if (rect == null) {
            android.util.Log.e("ScanDrawable", "on bounds change: bounds is null!");
        } else {
            super.onBoundsChange(rect);
            a(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        java.lang.String str;
        if (isRunning()) {
            str = "start failed, animator is running";
        } else {
            this.s = false;
            this.x = true;
            a(getBounds());
            this.A.start();
            str = "start scan animator success";
        }
        android.util.Log.i("ScanDrawable", str);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        java.lang.String str;
        if (isRunning()) {
            this.A.end();
            this.v = null;
            str = "stop scan animator success";
        } else {
            str = "stop failed, animator is not running";
        }
        android.util.Log.i("ScanDrawable", str);
    }
}
