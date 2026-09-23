package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public final class ViewfinderView extends android.view.View {
    public int[] A;
    public float[] B;
    public android.graphics.Rect C;
    public boolean D;
    public android.graphics.Point E;
    public boolean F;
    public android.graphics.Paint a;
    public android.text.TextPaint b;

    /* renamed from: c, reason: collision with root package name */
    public int f354c;

    /* renamed from: d, reason: collision with root package name */
    public int f355d;

    /* renamed from: e, reason: collision with root package name */
    public int f356e;

    /* renamed from: f, reason: collision with root package name */
    public int f357f;

    /* renamed from: g, reason: collision with root package name */
    public int f358g;
    public float h;
    public com.huawei.hms.scankit.ViewfinderView.b i;
    public java.lang.String j;
    public int k;
    public float l;
    public int m;
    public int n;
    public boolean o;
    public int p;
    public int q;
    public int r;
    public int s;
    public com.huawei.hms.scankit.ViewfinderView.a t;
    public int u;
    public int v;
    public android.graphics.Rect w;
    public int x;
    public android.animation.ValueAnimator y;
    public android.graphics.Paint z;

    public enum a {
        NONE(0),
        LINE(1),
        GRID(2);


        /* renamed from: e, reason: collision with root package name */
        public int f361e;

        a(int i) {
            this.f361e = i;
        }

        public static com.huawei.hms.scankit.ViewfinderView.a b(int i) {
            for (com.huawei.hms.scankit.ViewfinderView.a aVar : values()) {
                if (aVar.f361e == i) {
                    return aVar;
                }
            }
            return LINE;
        }
    }

    public enum b {
        TOP(0),
        BOTTOM(1);


        /* renamed from: d, reason: collision with root package name */
        public int f363d;

        b(int i) {
            this.f363d = i;
        }

        public static com.huawei.hms.scankit.ViewfinderView.b b(int i) {
            for (com.huawei.hms.scankit.ViewfinderView.b bVar : values()) {
                if (bVar.f363d == i) {
                    return bVar;
                }
            }
            return TOP;
        }
    }

    public ViewfinderView(android.content.Context context) {
        this(context, null);
    }

    public ViewfinderView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewfinderView(android.content.Context context, android.util.AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.m = 0;
        this.n = 0;
        this.w = new android.graphics.Rect();
        this.z = new android.graphics.Paint();
        this.A = new int[]{android.graphics.Color.parseColor("#FFFFFFFF"), android.graphics.Color.parseColor("#72FFFFFF"), android.graphics.Color.parseColor("#58FFFFFF"), android.graphics.Color.parseColor("#40FFFFFF"), android.graphics.Color.parseColor("#28FFFFFF"), android.graphics.Color.parseColor("#13FFFFFF"), android.graphics.Color.parseColor("#00FFFFFF")};
        this.B = new float[]{0.0f, 0.5f, 0.6f, 0.7f, 0.8f, 0.9f, 1.0f};
        this.D = true;
        this.F = true;
        a(context, attributeSet);
    }

    public static int a(android.content.Context context, int i) {
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void a(android.content.Context context, android.util.AttributeSet attributeSet) {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.huawei.hms.scankit.R.styleable.ViewfinderView);
        this.f354c = typedArrayObtainStyledAttributes.getColor(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_maskColor, b(context, com.huawei.hms.scankit.R.color.scankit_viewfinder_mask));
        this.f355d = typedArrayObtainStyledAttributes.getColor(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_frameColor, b(context, com.huawei.hms.scankit.R.color.scankit_viewfinder_frame));
        this.f357f = typedArrayObtainStyledAttributes.getColor(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_cornerColor, b(context, com.huawei.hms.scankit.R.color.scankit_viewfinder_corner));
        this.f356e = typedArrayObtainStyledAttributes.getColor(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_laserColor, b(context, com.huawei.hms.scankit.R.color.scankit_viewfinder_lasers));
        this.f358g = typedArrayObtainStyledAttributes.getColor(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_resultPointColor, b(context, com.huawei.hms.scankit.R.color.scankit_viewfinder_result_point_color));
        this.j = typedArrayObtainStyledAttributes.getString(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_labelText);
        this.k = typedArrayObtainStyledAttributes.getColor(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_labelTextColor, b(context, com.huawei.hms.scankit.R.color.scankit_viewfinder_text_color));
        this.l = typedArrayObtainStyledAttributes.getDimension(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_labelTextSize, android.util.TypedValue.applyDimension(2, 14.0f, getResources().getDisplayMetrics()));
        this.h = typedArrayObtainStyledAttributes.getDimension(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_labelTextPadding, android.util.TypedValue.applyDimension(1, 24.0f, getResources().getDisplayMetrics()));
        this.i = com.huawei.hms.scankit.ViewfinderView.b.b(typedArrayObtainStyledAttributes.getInt(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_labelTextLocation, 0));
        this.o = typedArrayObtainStyledAttributes.getBoolean(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_showResultPoint, false);
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_frameWidth, 0);
        this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_frameHeight, 0);
        this.t = com.huawei.hms.scankit.ViewfinderView.a.b(typedArrayObtainStyledAttributes.getInt(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_laserStyle, com.huawei.hms.scankit.ViewfinderView.a.LINE.f361e));
        this.u = typedArrayObtainStyledAttributes.getInt(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_gridColumn, 20);
        this.v = (int) typedArrayObtainStyledAttributes.getDimension(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_gridHeight, android.util.TypedValue.applyDimension(1, 40.0f, getResources().getDisplayMetrics()));
        this.F = typedArrayObtainStyledAttributes.getBoolean(com.huawei.hms.scankit.R.styleable.ViewfinderView_scankit_line_anim, true);
        typedArrayObtainStyledAttributes.recycle();
        this.a = new android.graphics.Paint(1);
        this.b = new android.text.TextPaint(1);
        this.x = a(context, 136);
        this.q = getDisplayMetrics().heightPixels;
        this.p = getDisplayMetrics().widthPixels;
    }

    private void a(android.graphics.Canvas canvas) {
        android.graphics.Point point;
        int i;
        int i2;
        float f2;
        float f3;
        if (this.C == null) {
            return;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.D) {
            android.graphics.Point point2 = this.E;
            point = new android.graphics.Point(point2.y, point2.x);
        } else {
            android.graphics.Point point3 = this.E;
            point = new android.graphics.Point(point3.x, point3.y);
        }
        int i3 = point.x;
        float f4 = width / i3;
        int i4 = point.y;
        float f5 = height / i4;
        double d2 = i4;
        java.lang.Double.isNaN(d2);
        int i5 = (int) (d2 * 0.1d);
        double d3 = i3;
        java.lang.Double.isNaN(d3);
        int i6 = (int) ((d3 * 0.15d) / 2.0d);
        android.graphics.RectF rectF = new android.graphics.RectF();
        if (!this.D ? f4 > f5 : f4 > f5) {
            canvas.translate((width / 2) - (r10 / 2), 0.0f);
            i2 = (int) (point.x * f5);
            i = height;
        } else {
            i = (int) (point.y * f4);
            canvas.translate(0.0f, (height / 2) - (i / 2));
            i2 = width;
        }
        android.graphics.Rect rect = this.C;
        float f6 = rect.left + i6;
        float f7 = point.x;
        float f8 = rect.top + i5;
        float f9 = point.y;
        float f10 = f8 / f9;
        float f11 = (rect.bottom + i5) / f9;
        float f12 = i2;
        float f13 = (f6 / f7) * f12;
        rectF.left = f13;
        float f14 = ((rect.right + i6) / f7) * f12;
        rectF.right = f14;
        float f15 = i;
        float f16 = f10 * f15;
        rectF.top = f16;
        float f17 = f11 * f15;
        rectF.bottom = f17;
        float f18 = (f13 + f14) / 2.0f;
        float f19 = (f16 + f17) / 2.0f;
        this.z.setStyle(android.graphics.Paint.Style.FILL);
        this.z.setColor(-1);
        java.lang.Double.isNaN(getDisplayMetrics().density * 24.0f);
        canvas.drawCircle(f18, f19, ((int) (r8 + 0.5d)) / 2, this.z);
        this.z.setColor(android.graphics.Color.parseColor("#007DFF"));
        java.lang.Double.isNaN(getDisplayMetrics().density * 22.0f);
        canvas.drawCircle(f18, f19, ((int) (r8 + 0.5d)) / 2, this.z);
        if (!this.D) {
            f2 = 0.0f;
            if (f4 > f5) {
                f3 = (i / 2) - (height / 2);
                canvas.translate(f2, f3);
            }
            canvas.translate((i2 / 2) - (width / 2), f2);
        }
        if (f4 <= f5) {
            f2 = 0.0f;
            canvas.translate((i2 / 2) - (width / 2), f2);
        } else {
            f3 = (i / 2) - (height / 2);
            f2 = 0.0f;
            canvas.translate(f2, f3);
        }
    }

    private void a(android.graphics.Canvas canvas, boolean z) {
        android.graphics.Rect rect;
        int i;
        this.a.setStyle(android.graphics.Paint.Style.FILL);
        this.a.setColor(this.f356e);
        if (com.huawei.hms.scankit.q.b || z) {
            rect = this.w;
            int i2 = this.p / 2;
            rect.left = i2 - 540;
            int i3 = this.m;
            rect.top = i3;
            rect.bottom = i3 + this.x;
            i = i2 + 540;
        } else {
            rect = this.w;
            rect.left = 0;
            int i4 = this.m;
            rect.top = i4;
            rect.bottom = i4 + this.x;
            i = this.p;
        }
        rect.right = i;
        float f2 = this.p / 2;
        float f3 = this.w.bottom + 500;
        this.a.setShader(new android.graphics.RadialGradient(f2, f3, 690, this.A, this.B, android.graphics.Shader.TileMode.CLAMP));
        this.a.setStrokeWidth(10.0f);
        android.graphics.Rect rect2 = this.w;
        float f4 = rect2.left;
        float f5 = rect2.bottom;
        canvas.drawLine(f4, f5, rect2.right, f5, this.a);
        canvas.clipRect(this.w);
        canvas.drawCircle(f2, f3, r12 + 200, this.a);
    }

    public static int b(android.content.Context context, int i) {
        java.lang.String str;
        try {
            return android.os.Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
        } catch (android.content.res.Resources.NotFoundException unused) {
            str = "getColor: Resources.NotFoundException";
            android.util.Log.e("ViewfinderView", str);
            return 16777215;
        } catch (java.lang.Exception unused2) {
            str = "getColor: Exception";
            android.util.Log.e("ViewfinderView", str);
            return 16777215;
        }
    }

    private android.util.DisplayMetrics getDisplayMetrics() {
        return getResources().getDisplayMetrics();
    }

    public void a() {
        this.n = com.huawei.hms.scankit.q.b ? this.q : this.q - a(getContext(), 139);
        android.animation.ValueAnimator valueAnimatorOfInt = android.animation.ValueAnimator.ofInt(0, this.n - this.x);
        this.y = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        this.y.setInterpolator(new android.view.animation.AccelerateDecelerateInterpolator());
        this.y.setRepeatMode(1);
        this.y.setRepeatCount(-1);
        this.y.addUpdateListener(new com.huawei.hms.scankit.G(this));
        this.y.start();
    }

    public void a(android.graphics.Rect rect, boolean z, android.graphics.Point point) {
        this.D = z;
        this.E = point;
        if (this.C == null) {
            this.C = rect;
            invalidate();
        }
    }

    public void a(com.huawei.hms.scankit.aiscan.common.z zVar) {
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        android.animation.ValueAnimator valueAnimator = this.y;
        if (valueAnimator != null) {
            valueAnimator.pause();
            this.y.removeAllListeners();
            this.y.cancel();
        }
    }

    @Override // android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    public void onDraw(android.graphics.Canvas canvas) {
        if (this.F) {
            canvas.save();
            a(canvas, "HWTAH".equals(android.os.Build.DEVICE) || android.os.Build.DEVICE.equals("HWTAH-C"));
            canvas.restore();
        }
        a(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.p = i;
        this.q = i2;
        a();
    }
}
