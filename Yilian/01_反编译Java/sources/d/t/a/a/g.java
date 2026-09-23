package d.t.a.a;

/* loaded from: classes.dex */
public class g extends d.t.a.a.f {
    public static final android.graphics.PorterDuff.Mode j = android.graphics.PorterDuff.Mode.SRC_IN;
    public d.t.a.a.g.h b;

    /* renamed from: c, reason: collision with root package name */
    public android.graphics.PorterDuffColorFilter f2309c;

    /* renamed from: d, reason: collision with root package name */
    public android.graphics.ColorFilter f2310d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2311e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2312f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f2313g;
    public final android.graphics.Matrix h;
    public final android.graphics.Rect i;

    public static class b extends d.t.a.a.g.f {
        public b() {
        }

        public b(d.t.a.a.g.b bVar) {
            super(bVar);
        }

        @Override // d.t.a.a.g.f
        public boolean c() {
            return true;
        }
    }

    public static class c extends d.t.a.a.g.f {

        /* renamed from: e, reason: collision with root package name */
        public int[] f2314e;

        /* renamed from: f, reason: collision with root package name */
        public d.g.f.b.b f2315f;

        /* renamed from: g, reason: collision with root package name */
        public float f2316g;
        public d.g.f.b.b h;
        public float i;
        public float j;
        public float k;
        public float l;
        public float m;
        public android.graphics.Paint.Cap n;
        public android.graphics.Paint.Join o;
        public float p;

        public c() {
            this.f2316g = 0.0f;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = 0.0f;
            this.l = 1.0f;
            this.m = 0.0f;
            this.n = android.graphics.Paint.Cap.BUTT;
            this.o = android.graphics.Paint.Join.MITER;
            this.p = 4.0f;
        }

        public c(d.t.a.a.g.c cVar) {
            super(cVar);
            this.f2316g = 0.0f;
            this.i = 1.0f;
            this.j = 1.0f;
            this.k = 0.0f;
            this.l = 1.0f;
            this.m = 0.0f;
            this.n = android.graphics.Paint.Cap.BUTT;
            this.o = android.graphics.Paint.Join.MITER;
            this.p = 4.0f;
            this.f2314e = cVar.f2314e;
            this.f2315f = cVar.f2315f;
            this.f2316g = cVar.f2316g;
            this.i = cVar.i;
            this.h = cVar.h;
            this.f2322c = cVar.f2322c;
            this.j = cVar.j;
            this.k = cVar.k;
            this.l = cVar.l;
            this.m = cVar.m;
            this.n = cVar.n;
            this.o = cVar.o;
            this.p = cVar.p;
        }

        @Override // d.t.a.a.g.e
        public boolean a() {
            return this.h.c() || this.f2315f.c();
        }

        @Override // d.t.a.a.g.e
        public boolean b(int[] iArr) {
            return this.f2315f.d(iArr) | this.h.d(iArr);
        }

        public float getFillAlpha() {
            return this.j;
        }

        public int getFillColor() {
            return this.h.f1940c;
        }

        public float getStrokeAlpha() {
            return this.i;
        }

        public int getStrokeColor() {
            return this.f2315f.f1940c;
        }

        public float getStrokeWidth() {
            return this.f2316g;
        }

        public float getTrimPathEnd() {
            return this.l;
        }

        public float getTrimPathOffset() {
            return this.m;
        }

        public float getTrimPathStart() {
            return this.k;
        }

        public void setFillAlpha(float f2) {
            this.j = f2;
        }

        public void setFillColor(int i) {
            this.h.f1940c = i;
        }

        public void setStrokeAlpha(float f2) {
            this.i = f2;
        }

        public void setStrokeColor(int i) {
            this.f2315f.f1940c = i;
        }

        public void setStrokeWidth(float f2) {
            this.f2316g = f2;
        }

        public void setTrimPathEnd(float f2) {
            this.l = f2;
        }

        public void setTrimPathOffset(float f2) {
            this.m = f2;
        }

        public void setTrimPathStart(float f2) {
            this.k = f2;
        }
    }

    public static class d extends d.t.a.a.g.e {
        public final android.graphics.Matrix a;
        public final java.util.ArrayList<d.t.a.a.g.e> b;

        /* renamed from: c, reason: collision with root package name */
        public float f2317c;

        /* renamed from: d, reason: collision with root package name */
        public float f2318d;

        /* renamed from: e, reason: collision with root package name */
        public float f2319e;

        /* renamed from: f, reason: collision with root package name */
        public float f2320f;

        /* renamed from: g, reason: collision with root package name */
        public float f2321g;
        public float h;
        public float i;
        public final android.graphics.Matrix j;
        public int k;
        public int[] l;
        public java.lang.String m;

        public d() {
            super(null);
            this.a = new android.graphics.Matrix();
            this.b = new java.util.ArrayList<>();
            this.f2317c = 0.0f;
            this.f2318d = 0.0f;
            this.f2319e = 0.0f;
            this.f2320f = 1.0f;
            this.f2321g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = new android.graphics.Matrix();
            this.m = null;
        }

        public d(d.t.a.a.g.d dVar, d.e.a<java.lang.String, java.lang.Object> aVar) {
            d.t.a.a.g.f bVar;
            super(null);
            this.a = new android.graphics.Matrix();
            this.b = new java.util.ArrayList<>();
            this.f2317c = 0.0f;
            this.f2318d = 0.0f;
            this.f2319e = 0.0f;
            this.f2320f = 1.0f;
            this.f2321g = 1.0f;
            this.h = 0.0f;
            this.i = 0.0f;
            this.j = new android.graphics.Matrix();
            this.m = null;
            this.f2317c = dVar.f2317c;
            this.f2318d = dVar.f2318d;
            this.f2319e = dVar.f2319e;
            this.f2320f = dVar.f2320f;
            this.f2321g = dVar.f2321g;
            this.h = dVar.h;
            this.i = dVar.i;
            this.l = dVar.l;
            java.lang.String str = dVar.m;
            this.m = str;
            this.k = dVar.k;
            if (str != null) {
                aVar.put(str, this);
            }
            this.j.set(dVar.j);
            java.util.ArrayList<d.t.a.a.g.e> arrayList = dVar.b;
            for (int i = 0; i < arrayList.size(); i++) {
                d.t.a.a.g.e eVar = arrayList.get(i);
                if (eVar instanceof d.t.a.a.g.d) {
                    this.b.add(new d.t.a.a.g.d((d.t.a.a.g.d) eVar, aVar));
                } else {
                    if (eVar instanceof d.t.a.a.g.c) {
                        bVar = new d.t.a.a.g.c((d.t.a.a.g.c) eVar);
                    } else {
                        if (!(eVar instanceof d.t.a.a.g.b)) {
                            throw new java.lang.IllegalStateException("Unknown object in the tree!");
                        }
                        bVar = new d.t.a.a.g.b((d.t.a.a.g.b) eVar);
                    }
                    this.b.add(bVar);
                    java.lang.String str2 = bVar.b;
                    if (str2 != null) {
                        aVar.put(str2, bVar);
                    }
                }
            }
        }

        @Override // d.t.a.a.g.e
        public boolean a() {
            for (int i = 0; i < this.b.size(); i++) {
                if (this.b.get(i).a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // d.t.a.a.g.e
        public boolean b(int[] iArr) {
            boolean zB = false;
            for (int i = 0; i < this.b.size(); i++) {
                zB |= this.b.get(i).b(iArr);
            }
            return zB;
        }

        public final void c() {
            this.j.reset();
            this.j.postTranslate(-this.f2318d, -this.f2319e);
            this.j.postScale(this.f2320f, this.f2321g);
            this.j.postRotate(this.f2317c, 0.0f, 0.0f);
            this.j.postTranslate(this.h + this.f2318d, this.i + this.f2319e);
        }

        public java.lang.String getGroupName() {
            return this.m;
        }

        public android.graphics.Matrix getLocalMatrix() {
            return this.j;
        }

        public float getPivotX() {
            return this.f2318d;
        }

        public float getPivotY() {
            return this.f2319e;
        }

        public float getRotation() {
            return this.f2317c;
        }

        public float getScaleX() {
            return this.f2320f;
        }

        public float getScaleY() {
            return this.f2321g;
        }

        public float getTranslateX() {
            return this.h;
        }

        public float getTranslateY() {
            return this.i;
        }

        public void setPivotX(float f2) {
            if (f2 != this.f2318d) {
                this.f2318d = f2;
                c();
            }
        }

        public void setPivotY(float f2) {
            if (f2 != this.f2319e) {
                this.f2319e = f2;
                c();
            }
        }

        public void setRotation(float f2) {
            if (f2 != this.f2317c) {
                this.f2317c = f2;
                c();
            }
        }

        public void setScaleX(float f2) {
            if (f2 != this.f2320f) {
                this.f2320f = f2;
                c();
            }
        }

        public void setScaleY(float f2) {
            if (f2 != this.f2321g) {
                this.f2321g = f2;
                c();
            }
        }

        public void setTranslateX(float f2) {
            if (f2 != this.h) {
                this.h = f2;
                c();
            }
        }

        public void setTranslateY(float f2) {
            if (f2 != this.i) {
                this.i = f2;
                c();
            }
        }
    }

    public static abstract class e {
        public e() {
        }

        public e(d.t.a.a.g.a aVar) {
        }

        public boolean a() {
            return false;
        }

        public boolean b(int[] iArr) {
            return false;
        }
    }

    public static abstract class f extends d.t.a.a.g.e {
        public d.g.g.c[] a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public int f2322c;

        /* renamed from: d, reason: collision with root package name */
        public int f2323d;

        public f() {
            super(null);
            this.a = null;
            this.f2322c = 0;
        }

        public f(d.t.a.a.g.f fVar) {
            super(null);
            this.a = null;
            this.f2322c = 0;
            this.b = fVar.b;
            this.f2323d = fVar.f2323d;
            this.a = d.b.k.r.r(fVar.a);
        }

        public boolean c() {
            return false;
        }

        public d.g.g.c[] getPathData() {
            return this.a;
        }

        public java.lang.String getPathName() {
            return this.b;
        }

        public void setPathData(d.g.g.c[] cVarArr) {
            if (!d.b.k.r.c(this.a, cVarArr)) {
                this.a = d.b.k.r.r(cVarArr);
                return;
            }
            d.g.g.c[] cVarArr2 = this.a;
            for (int i = 0; i < cVarArr.length; i++) {
                cVarArr2[i].a = cVarArr[i].a;
                for (int i2 = 0; i2 < cVarArr[i].b.length; i2++) {
                    cVarArr2[i].b[i2] = cVarArr[i].b[i2];
                }
            }
        }
    }

    /* renamed from: d.t.a.a.g$g, reason: collision with other inner class name */
    public static class C0062g {
        public static final android.graphics.Matrix q = new android.graphics.Matrix();
        public final android.graphics.Path a;
        public final android.graphics.Path b;

        /* renamed from: c, reason: collision with root package name */
        public final android.graphics.Matrix f2324c;

        /* renamed from: d, reason: collision with root package name */
        public android.graphics.Paint f2325d;

        /* renamed from: e, reason: collision with root package name */
        public android.graphics.Paint f2326e;

        /* renamed from: f, reason: collision with root package name */
        public android.graphics.PathMeasure f2327f;

        /* renamed from: g, reason: collision with root package name */
        public int f2328g;
        public final d.t.a.a.g.d h;
        public float i;
        public float j;
        public float k;
        public float l;
        public int m;
        public java.lang.String n;
        public java.lang.Boolean o;
        public final d.e.a<java.lang.String, java.lang.Object> p;

        public C0062g() {
            this.f2324c = new android.graphics.Matrix();
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            this.p = new d.e.a<>();
            this.h = new d.t.a.a.g.d();
            this.a = new android.graphics.Path();
            this.b = new android.graphics.Path();
        }

        public C0062g(d.t.a.a.g.C0062g c0062g) {
            this.f2324c = new android.graphics.Matrix();
            this.i = 0.0f;
            this.j = 0.0f;
            this.k = 0.0f;
            this.l = 0.0f;
            this.m = 255;
            this.n = null;
            this.o = null;
            d.e.a<java.lang.String, java.lang.Object> aVar = new d.e.a<>();
            this.p = aVar;
            this.h = new d.t.a.a.g.d(c0062g.h, aVar);
            this.a = new android.graphics.Path(c0062g.a);
            this.b = new android.graphics.Path(c0062g.b);
            this.i = c0062g.i;
            this.j = c0062g.j;
            this.k = c0062g.k;
            this.l = c0062g.l;
            this.f2328g = c0062g.f2328g;
            this.m = c0062g.m;
            this.n = c0062g.n;
            java.lang.String str = c0062g.n;
            if (str != null) {
                this.p.put(str, this);
            }
            this.o = c0062g.o;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r11v11 */
        public final void a(d.t.a.a.g.d dVar, android.graphics.Matrix matrix, android.graphics.Canvas canvas, int i, int i2, android.graphics.ColorFilter colorFilter) {
            d.t.a.a.g.C0062g c0062g;
            d.t.a.a.g.C0062g c0062g2 = this;
            dVar.a.set(matrix);
            dVar.a.preConcat(dVar.j);
            canvas.save();
            ?? r11 = 0;
            int i3 = 0;
            while (i3 < dVar.b.size()) {
                d.t.a.a.g.e eVar = dVar.b.get(i3);
                if (eVar instanceof d.t.a.a.g.d) {
                    a((d.t.a.a.g.d) eVar, dVar.a, canvas, i, i2, colorFilter);
                } else {
                    if (eVar instanceof d.t.a.a.g.f) {
                        d.t.a.a.g.f fVar = (d.t.a.a.g.f) eVar;
                        float f2 = i / c0062g2.k;
                        float f3 = i2 / c0062g2.l;
                        float fMin = java.lang.Math.min(f2, f3);
                        android.graphics.Matrix matrix2 = dVar.a;
                        c0062g2.f2324c.set(matrix2);
                        c0062g2.f2324c.postScale(f2, f3);
                        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                        matrix2.mapVectors(fArr);
                        float fHypot = (float) java.lang.Math.hypot(fArr[r11], fArr[1]);
                        float fHypot2 = (float) java.lang.Math.hypot(fArr[2], fArr[3]);
                        float f4 = (fArr[r11] * fArr[3]) - (fArr[1] * fArr[2]);
                        float fMax = java.lang.Math.max(fHypot, fHypot2);
                        float fAbs = fMax > 0.0f ? java.lang.Math.abs(f4) / fMax : 0.0f;
                        if (fAbs == 0.0f) {
                            c0062g = this;
                        } else {
                            c0062g = this;
                            android.graphics.Path path = c0062g.a;
                            if (fVar == null) {
                                throw null;
                            }
                            path.reset();
                            d.g.g.c[] cVarArr = fVar.a;
                            if (cVarArr != null) {
                                d.g.g.c.b(cVarArr, path);
                            }
                            android.graphics.Path path2 = c0062g.a;
                            c0062g.b.reset();
                            if (fVar.c()) {
                                c0062g.b.setFillType(fVar.f2322c == 0 ? android.graphics.Path.FillType.WINDING : android.graphics.Path.FillType.EVEN_ODD);
                                c0062g.b.addPath(path2, c0062g.f2324c);
                                canvas.clipPath(c0062g.b);
                            } else {
                                d.t.a.a.g.c cVar = (d.t.a.a.g.c) fVar;
                                if (cVar.k != 0.0f || cVar.l != 1.0f) {
                                    float f5 = cVar.k;
                                    float f6 = cVar.m;
                                    float f7 = (f5 + f6) % 1.0f;
                                    float f8 = (cVar.l + f6) % 1.0f;
                                    if (c0062g.f2327f == null) {
                                        c0062g.f2327f = new android.graphics.PathMeasure();
                                    }
                                    c0062g.f2327f.setPath(c0062g.a, r11);
                                    float length = c0062g.f2327f.getLength();
                                    float f9 = f7 * length;
                                    float f10 = f8 * length;
                                    path2.reset();
                                    if (f9 > f10) {
                                        c0062g.f2327f.getSegment(f9, length, path2, true);
                                        c0062g.f2327f.getSegment(0.0f, f10, path2, true);
                                    } else {
                                        c0062g.f2327f.getSegment(f9, f10, path2, true);
                                    }
                                    path2.rLineTo(0.0f, 0.0f);
                                }
                                c0062g.b.addPath(path2, c0062g.f2324c);
                                d.g.f.b.b bVar = cVar.h;
                                if (bVar.b() || bVar.f1940c != 0) {
                                    d.g.f.b.b bVar2 = cVar.h;
                                    if (c0062g.f2326e == null) {
                                        android.graphics.Paint paint = new android.graphics.Paint(1);
                                        c0062g.f2326e = paint;
                                        paint.setStyle(android.graphics.Paint.Style.FILL);
                                    }
                                    android.graphics.Paint paint2 = c0062g.f2326e;
                                    if (bVar2.b()) {
                                        android.graphics.Shader shader = bVar2.a;
                                        shader.setLocalMatrix(c0062g.f2324c);
                                        paint2.setShader(shader);
                                        paint2.setAlpha(java.lang.Math.round(cVar.j * 255.0f));
                                    } else {
                                        paint2.setShader(null);
                                        paint2.setAlpha(255);
                                        paint2.setColor(d.t.a.a.g.a(bVar2.f1940c, cVar.j));
                                    }
                                    paint2.setColorFilter(colorFilter);
                                    c0062g.b.setFillType(cVar.f2322c == 0 ? android.graphics.Path.FillType.WINDING : android.graphics.Path.FillType.EVEN_ODD);
                                    canvas.drawPath(c0062g.b, paint2);
                                }
                                d.g.f.b.b bVar3 = cVar.f2315f;
                                if (bVar3.b() || bVar3.f1940c != 0) {
                                    d.g.f.b.b bVar4 = cVar.f2315f;
                                    if (c0062g.f2325d == null) {
                                        android.graphics.Paint paint3 = new android.graphics.Paint(1);
                                        c0062g.f2325d = paint3;
                                        paint3.setStyle(android.graphics.Paint.Style.STROKE);
                                    }
                                    android.graphics.Paint paint4 = c0062g.f2325d;
                                    android.graphics.Paint.Join join = cVar.o;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    android.graphics.Paint.Cap cap = cVar.n;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(cVar.p);
                                    if (bVar4.b()) {
                                        android.graphics.Shader shader2 = bVar4.a;
                                        shader2.setLocalMatrix(c0062g.f2324c);
                                        paint4.setShader(shader2);
                                        paint4.setAlpha(java.lang.Math.round(cVar.i * 255.0f));
                                    } else {
                                        paint4.setShader(null);
                                        paint4.setAlpha(255);
                                        paint4.setColor(d.t.a.a.g.a(bVar4.f1940c, cVar.i));
                                    }
                                    paint4.setColorFilter(colorFilter);
                                    paint4.setStrokeWidth(cVar.f2316g * fAbs * fMin);
                                    canvas.drawPath(c0062g.b, paint4);
                                }
                            }
                        }
                    }
                    i3++;
                    c0062g2 = c0062g;
                    r11 = 0;
                }
                c0062g = c0062g2;
                i3++;
                c0062g2 = c0062g;
                r11 = 0;
            }
            canvas.restore();
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.m;
        }

        public void setAlpha(float f2) {
            setRootAlpha((int) (f2 * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.m = i;
        }
    }

    public static class h extends android.graphics.drawable.Drawable.ConstantState {
        public int a;
        public d.t.a.a.g.C0062g b;

        /* renamed from: c, reason: collision with root package name */
        public android.content.res.ColorStateList f2329c;

        /* renamed from: d, reason: collision with root package name */
        public android.graphics.PorterDuff.Mode f2330d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2331e;

        /* renamed from: f, reason: collision with root package name */
        public android.graphics.Bitmap f2332f;

        /* renamed from: g, reason: collision with root package name */
        public android.content.res.ColorStateList f2333g;
        public android.graphics.PorterDuff.Mode h;
        public int i;
        public boolean j;
        public boolean k;
        public android.graphics.Paint l;

        public h() {
            this.f2329c = null;
            this.f2330d = d.t.a.a.g.j;
            this.b = new d.t.a.a.g.C0062g();
        }

        public h(d.t.a.a.g.h hVar) {
            this.f2329c = null;
            this.f2330d = d.t.a.a.g.j;
            if (hVar != null) {
                this.a = hVar.a;
                d.t.a.a.g.C0062g c0062g = new d.t.a.a.g.C0062g(hVar.b);
                this.b = c0062g;
                if (hVar.b.f2326e != null) {
                    c0062g.f2326e = new android.graphics.Paint(hVar.b.f2326e);
                }
                if (hVar.b.f2325d != null) {
                    this.b.f2325d = new android.graphics.Paint(hVar.b.f2325d);
                }
                this.f2329c = hVar.f2329c;
                this.f2330d = hVar.f2330d;
                this.f2331e = hVar.f2331e;
            }
        }

        public boolean a() {
            d.t.a.a.g.C0062g c0062g = this.b;
            if (c0062g.o == null) {
                c0062g.o = java.lang.Boolean.valueOf(c0062g.h.a());
            }
            return c0062g.o.booleanValue();
        }

        public void b(int i, int i2) {
            this.f2332f.eraseColor(0);
            android.graphics.Canvas canvas = new android.graphics.Canvas(this.f2332f);
            d.t.a.a.g.C0062g c0062g = this.b;
            c0062g.a(c0062g.h, d.t.a.a.g.C0062g.q, canvas, i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable() {
            return new d.t.a.a.g(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources) {
            return new d.t.a.a.g(this);
        }
    }

    public static class i extends android.graphics.drawable.Drawable.ConstantState {
        public final android.graphics.drawable.Drawable.ConstantState a;

        public i(android.graphics.drawable.Drawable.ConstantState constantState) {
            this.a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable() {
            d.t.a.a.g gVar = new d.t.a.a.g();
            gVar.a = (android.graphics.drawable.VectorDrawable) this.a.newDrawable();
            return gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources) {
            d.t.a.a.g gVar = new d.t.a.a.g();
            gVar.a = (android.graphics.drawable.VectorDrawable) this.a.newDrawable(resources);
            return gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources, android.content.res.Resources.Theme theme) {
            d.t.a.a.g gVar = new d.t.a.a.g();
            gVar.a = (android.graphics.drawable.VectorDrawable) this.a.newDrawable(resources, theme);
            return gVar;
        }
    }

    public g() {
        this.f2312f = true;
        this.f2313g = new float[9];
        this.h = new android.graphics.Matrix();
        this.i = new android.graphics.Rect();
        this.b = new d.t.a.a.g.h();
    }

    public g(d.t.a.a.g.h hVar) {
        this.f2312f = true;
        this.f2313g = new float[9];
        this.h = new android.graphics.Matrix();
        this.i = new android.graphics.Rect();
        this.b = hVar;
        this.f2309c = d(hVar.f2329c, hVar.f2330d);
    }

    public static int a(int i2, float f2) {
        return (i2 & 16777215) | (((int) (android.graphics.Color.alpha(i2) * f2)) << 24);
    }

    public static d.t.a.a.g b(android.content.res.Resources resources, int i2, android.content.res.Resources.Theme theme) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        int next;
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            d.t.a.a.g gVar = new d.t.a.a.g();
            gVar.a = d.g.f.b.h.b(resources, i2, theme);
            new d.t.a.a.g.i(gVar.a.getConstantState());
            return gVar;
        }
        try {
            android.content.res.XmlResourceParser xml = resources.getXml(i2);
            android.util.AttributeSet attributeSetAsAttributeSet = android.util.Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return c(resources, xml, attributeSetAsAttributeSet, theme);
            }
            throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
        } catch (java.io.IOException | org.xmlpull.v1.XmlPullParserException e2) {
            android.util.Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    public static d.t.a.a.g c(android.content.res.Resources resources, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        d.t.a.a.g gVar = new d.t.a.a.g();
        gVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return gVar;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null || android.os.Build.VERSION.SDK_INT < 21) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    public android.graphics.PorterDuffColorFilter d(android.content.res.ColorStateList colorStateList, android.graphics.PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new android.graphics.PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00db  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r11) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.t.a.a.g.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null) {
            return this.b.b.getRootAlpha();
        }
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.ColorFilter getColorFilter() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null) {
            return this.f2310d;
        }
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable.ConstantState getConstantState() {
        if (this.a != null && android.os.Build.VERSION.SDK_INT >= 24) {
            return new d.t.a.a.g.i(this.a.getConstantState());
        }
        this.b.a = getChangingConfigurations();
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.b.b.j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.b.b.i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(android.content.res.Resources resources, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(android.content.res.Resources resources, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        android.content.res.ColorStateList colorStateListC;
        int i2;
        java.util.ArrayDeque arrayDeque;
        d.t.a.a.g.C0062g c0062g;
        d.t.a.a.g.h hVar;
        java.util.ArrayDeque arrayDeque2;
        d.t.a.a.g.C0062g c0062g2;
        d.t.a.a.g.h hVar2;
        android.content.res.TypedArray typedArray;
        d.t.a.a.g.d dVar;
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                drawable.inflate(resources, xmlPullParser, attributeSet, theme);
                return;
            } else {
                drawable.inflate(resources, xmlPullParser, attributeSet);
                return;
            }
        }
        d.t.a.a.g.h hVar3 = this.b;
        hVar3.b = new d.t.a.a.g.C0062g();
        android.content.res.TypedArray typedArrayW = d.b.k.r.W(resources, theme, attributeSet, d.t.a.a.a.a);
        d.t.a.a.g.h hVar4 = this.b;
        d.t.a.a.g.C0062g c0062g3 = hVar4.b;
        int iF = d.b.k.r.F(typedArrayW, xmlPullParser, "tintMode", 6, -1);
        android.graphics.PorterDuff.Mode mode = android.graphics.PorterDuff.Mode.SRC_IN;
        int i3 = 3;
        if (iF == 3) {
            mode = android.graphics.PorterDuff.Mode.SRC_OVER;
        } else if (iF != 5) {
            if (iF != 9) {
                switch (iF) {
                    case 14:
                        mode = android.graphics.PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = android.graphics.PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = android.graphics.PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = android.graphics.PorterDuff.Mode.SRC_ATOP;
            }
        }
        hVar4.f2330d = mode;
        int i4 = 1;
        if (d.b.k.r.P(xmlPullParser, "tint")) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            typedArrayW.getValue(1, typedValue);
            int i5 = typedValue.type;
            if (i5 == 2) {
                throw new java.lang.UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            colorStateListC = (i5 < 28 || i5 > 31) ? d.g.f.b.a.c(typedArrayW.getResources(), typedArrayW.getResourceId(1, 0), theme) : android.content.res.ColorStateList.valueOf(typedValue.data);
        } else {
            colorStateListC = null;
        }
        if (colorStateListC != null) {
            hVar4.f2329c = colorStateListC;
        }
        boolean z = hVar4.f2331e;
        if (d.b.k.r.P(xmlPullParser, "autoMirrored")) {
            z = typedArrayW.getBoolean(5, z);
        }
        hVar4.f2331e = z;
        c0062g3.k = d.b.k.r.E(typedArrayW, xmlPullParser, "viewportWidth", 7, c0062g3.k);
        float fE = d.b.k.r.E(typedArrayW, xmlPullParser, "viewportHeight", 8, c0062g3.l);
        c0062g3.l = fE;
        if (c0062g3.k <= 0.0f) {
            throw new org.xmlpull.v1.XmlPullParserException(typedArrayW.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (fE <= 0.0f) {
            throw new org.xmlpull.v1.XmlPullParserException(typedArrayW.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        c0062g3.i = typedArrayW.getDimension(3, c0062g3.i);
        float dimension = typedArrayW.getDimension(2, c0062g3.j);
        c0062g3.j = dimension;
        if (c0062g3.i <= 0.0f) {
            throw new org.xmlpull.v1.XmlPullParserException(typedArrayW.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new org.xmlpull.v1.XmlPullParserException(typedArrayW.getPositionDescription() + "<vector> tag requires height > 0");
        }
        c0062g3.setAlpha(d.b.k.r.E(typedArrayW, xmlPullParser, "alpha", 4, c0062g3.getAlpha()));
        java.lang.String string = typedArrayW.getString(0);
        if (string != null) {
            c0062g3.n = string;
            c0062g3.p.put(string, c0062g3);
        }
        typedArrayW.recycle();
        hVar3.a = getChangingConfigurations();
        hVar3.k = true;
        d.t.a.a.g.h hVar5 = this.b;
        d.t.a.a.g.C0062g c0062g4 = hVar5.b;
        java.util.ArrayDeque arrayDeque3 = new java.util.ArrayDeque();
        arrayDeque3.push(c0062g4.h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != i4 && (xmlPullParser.getDepth() >= depth || eventType != i3)) {
            if (eventType == 2) {
                java.lang.String name = xmlPullParser.getName();
                d.t.a.a.g.d dVar2 = (d.t.a.a.g.d) arrayDeque3.peek();
                if (androidx.core.content.FileProvider.ATTR_PATH.equals(name)) {
                    d.t.a.a.g.c cVar = new d.t.a.a.g.c();
                    android.content.res.TypedArray typedArrayW2 = d.b.k.r.W(resources, theme, attributeSet, d.t.a.a.a.f2298c);
                    cVar.f2314e = null;
                    if (d.b.k.r.P(xmlPullParser, "pathData")) {
                        java.lang.String string2 = typedArrayW2.getString(0);
                        if (string2 != null) {
                            cVar.b = string2;
                        }
                        java.lang.String string3 = typedArrayW2.getString(2);
                        if (string3 != null) {
                            cVar.a = d.b.k.r.p(string3);
                        }
                        arrayDeque2 = arrayDeque3;
                        c0062g2 = c0062g4;
                        hVar2 = hVar5;
                        i2 = depth;
                        typedArray = typedArrayW2;
                        dVar = dVar2;
                        cVar.h = d.b.k.r.D(typedArrayW2, xmlPullParser, theme, "fillColor", 1, 0);
                        cVar.j = d.b.k.r.E(typedArray, xmlPullParser, "fillAlpha", 12, cVar.j);
                        int iF2 = d.b.k.r.F(typedArray, xmlPullParser, "strokeLineCap", 8, -1);
                        android.graphics.Paint.Cap cap = cVar.n;
                        if (iF2 == 0) {
                            cap = android.graphics.Paint.Cap.BUTT;
                        } else if (iF2 == 1) {
                            cap = android.graphics.Paint.Cap.ROUND;
                        } else if (iF2 == 2) {
                            cap = android.graphics.Paint.Cap.SQUARE;
                        }
                        cVar.n = cap;
                        int iF3 = d.b.k.r.F(typedArray, xmlPullParser, "strokeLineJoin", 9, -1);
                        android.graphics.Paint.Join join = cVar.o;
                        if (iF3 == 0) {
                            join = android.graphics.Paint.Join.MITER;
                        } else if (iF3 == 1) {
                            join = android.graphics.Paint.Join.ROUND;
                        } else if (iF3 == 2) {
                            join = android.graphics.Paint.Join.BEVEL;
                        }
                        cVar.o = join;
                        cVar.p = d.b.k.r.E(typedArray, xmlPullParser, "strokeMiterLimit", 10, cVar.p);
                        cVar.f2315f = d.b.k.r.D(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
                        cVar.i = d.b.k.r.E(typedArray, xmlPullParser, "strokeAlpha", 11, cVar.i);
                        cVar.f2316g = d.b.k.r.E(typedArray, xmlPullParser, "strokeWidth", 4, cVar.f2316g);
                        cVar.l = d.b.k.r.E(typedArray, xmlPullParser, "trimPathEnd", 6, cVar.l);
                        cVar.m = d.b.k.r.E(typedArray, xmlPullParser, "trimPathOffset", 7, cVar.m);
                        cVar.k = d.b.k.r.E(typedArray, xmlPullParser, "trimPathStart", 5, cVar.k);
                        cVar.f2322c = d.b.k.r.F(typedArray, xmlPullParser, "fillType", 13, cVar.f2322c);
                    } else {
                        arrayDeque2 = arrayDeque3;
                        c0062g2 = c0062g4;
                        hVar2 = hVar5;
                        dVar = dVar2;
                        i2 = depth;
                        typedArray = typedArrayW2;
                    }
                    typedArray.recycle();
                    dVar.b.add(cVar);
                    c0062g = c0062g2;
                    if (cVar.getPathName() != null) {
                        c0062g.p.put(cVar.getPathName(), cVar);
                    }
                    hVar = hVar2;
                    hVar.a |= cVar.f2323d;
                    arrayDeque = arrayDeque2;
                    z2 = false;
                } else {
                    java.util.ArrayDeque arrayDeque4 = arrayDeque3;
                    c0062g = c0062g4;
                    hVar = hVar5;
                    i2 = depth;
                    if ("clip-path".equals(name)) {
                        d.t.a.a.g.b bVar = new d.t.a.a.g.b();
                        if (d.b.k.r.P(xmlPullParser, "pathData")) {
                            android.content.res.TypedArray typedArrayW3 = d.b.k.r.W(resources, theme, attributeSet, d.t.a.a.a.f2299d);
                            java.lang.String string4 = typedArrayW3.getString(0);
                            if (string4 != null) {
                                bVar.b = string4;
                            }
                            java.lang.String string5 = typedArrayW3.getString(1);
                            if (string5 != null) {
                                bVar.a = d.b.k.r.p(string5);
                            }
                            bVar.f2322c = d.b.k.r.F(typedArrayW3, xmlPullParser, "fillType", 2, 0);
                            typedArrayW3.recycle();
                        }
                        dVar2.b.add(bVar);
                        if (bVar.getPathName() != null) {
                            c0062g.p.put(bVar.getPathName(), bVar);
                        }
                        hVar.a = bVar.f2323d | hVar.a;
                    } else if ("group".equals(name)) {
                        d.t.a.a.g.d dVar3 = new d.t.a.a.g.d();
                        android.content.res.TypedArray typedArrayW4 = d.b.k.r.W(resources, theme, attributeSet, d.t.a.a.a.b);
                        dVar3.l = null;
                        dVar3.f2317c = d.b.k.r.E(typedArrayW4, xmlPullParser, "rotation", 5, dVar3.f2317c);
                        dVar3.f2318d = typedArrayW4.getFloat(1, dVar3.f2318d);
                        dVar3.f2319e = typedArrayW4.getFloat(2, dVar3.f2319e);
                        dVar3.f2320f = d.b.k.r.E(typedArrayW4, xmlPullParser, "scaleX", 3, dVar3.f2320f);
                        dVar3.f2321g = d.b.k.r.E(typedArrayW4, xmlPullParser, "scaleY", 4, dVar3.f2321g);
                        dVar3.h = d.b.k.r.E(typedArrayW4, xmlPullParser, "translateX", 6, dVar3.h);
                        dVar3.i = d.b.k.r.E(typedArrayW4, xmlPullParser, "translateY", 7, dVar3.i);
                        java.lang.String string6 = typedArrayW4.getString(0);
                        if (string6 != null) {
                            dVar3.m = string6;
                        }
                        dVar3.c();
                        typedArrayW4.recycle();
                        dVar2.b.add(dVar3);
                        arrayDeque = arrayDeque4;
                        arrayDeque.push(dVar3);
                        if (dVar3.getGroupName() != null) {
                            c0062g.p.put(dVar3.getGroupName(), dVar3);
                        }
                        hVar.a = dVar3.k | hVar.a;
                    }
                    arrayDeque = arrayDeque4;
                }
            } else {
                i2 = depth;
                d.t.a.a.g.h hVar6 = hVar5;
                arrayDeque = arrayDeque3;
                c0062g = c0062g4;
                hVar = hVar6;
                if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            i3 = 3;
            i4 = 1;
            depth = i2;
            d.t.a.a.g.h hVar7 = hVar;
            c0062g4 = c0062g;
            arrayDeque3 = arrayDeque;
            hVar5 = hVar7;
        }
        if (z2) {
            throw new org.xmlpull.v1.XmlPullParserException("no path defined");
        }
        this.f2309c = d(hVar3.f2329c, hVar3.f2330d);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? d.b.k.r.R(drawable) : this.b.f2331e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        d.t.a.a.g.h hVar;
        android.content.res.ColorStateList colorStateList;
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.isStateful() : super.isStateful() || ((hVar = this.b) != null && (hVar.a() || ((colorStateList = this.b.f2329c) != null && colorStateList.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable mutate() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f2311e && super.mutate() == this) {
            this.b = new d.t.a.a.g.h(this.b);
            this.f2311e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        android.graphics.PorterDuff.Mode mode;
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        d.t.a.a.g.h hVar = this.b;
        android.content.res.ColorStateList colorStateList = hVar.f2329c;
        if (colorStateList != null && (mode = hVar.f2330d) != null) {
            this.f2309c = d(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (hVar.a()) {
            boolean zB = hVar.b.h.b(iArr);
            hVar.k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(java.lang.Runnable runnable, long j2) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else if (this.b.b.getRootAlpha() != i2) {
            this.b.b.setRootAlpha(i2);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.h0(drawable, z);
        } else {
            this.b.f2331e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f2310d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTint(int i2) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.s0(drawable, i2);
        } else {
            setTintList(android.content.res.ColorStateList.valueOf(i2));
        }
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintList(android.content.res.ColorStateList colorStateList) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.t0(drawable, colorStateList);
            return;
        }
        d.t.a.a.g.h hVar = this.b;
        if (hVar.f2329c != colorStateList) {
            hVar.f2329c = colorStateList;
            this.f2309c = d(colorStateList, hVar.f2330d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintMode(android.graphics.PorterDuff.Mode mode) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.u0(drawable, mode);
            return;
        }
        d.t.a.a.g.h hVar = this.b;
        if (hVar.f2330d != mode) {
            hVar.f2330d = mode;
            this.f2309c = d(hVar.f2329c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(java.lang.Runnable runnable) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }
}
