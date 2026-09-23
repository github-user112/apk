package d.t.a.a;

/* loaded from: classes.dex */
public class b extends d.t.a.a.f implements android.graphics.drawable.Animatable {
    public d.t.a.a.b.C0061b b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f2303c;

    /* renamed from: d, reason: collision with root package name */
    public android.animation.ArgbEvaluator f2304d;

    /* renamed from: e, reason: collision with root package name */
    public final android.graphics.drawable.Drawable.Callback f2305e;

    public class a implements android.graphics.drawable.Drawable.Callback {
        public a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(android.graphics.drawable.Drawable drawable) {
            d.t.a.a.b.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable, long j) {
            d.t.a.a.b.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable) {
            d.t.a.a.b.this.unscheduleSelf(runnable);
        }
    }

    /* renamed from: d.t.a.a.b$b, reason: collision with other inner class name */
    public static class C0061b extends android.graphics.drawable.Drawable.ConstantState {
        public int a;
        public d.t.a.a.g b;

        /* renamed from: c, reason: collision with root package name */
        public android.animation.AnimatorSet f2306c;

        /* renamed from: d, reason: collision with root package name */
        public java.util.ArrayList<android.animation.Animator> f2307d;

        /* renamed from: e, reason: collision with root package name */
        public d.e.a<android.animation.Animator, java.lang.String> f2308e;

        public C0061b(d.t.a.a.b.C0061b c0061b, android.graphics.drawable.Drawable.Callback callback, android.content.res.Resources resources) {
            if (c0061b != null) {
                this.a = c0061b.a;
                d.t.a.a.g gVar = c0061b.b;
                if (gVar != null) {
                    android.graphics.drawable.Drawable.ConstantState constantState = gVar.getConstantState();
                    d.t.a.a.g gVar2 = (d.t.a.a.g) (resources != null ? constantState.newDrawable(resources) : constantState.newDrawable());
                    this.b = gVar2;
                    gVar2.mutate();
                    this.b = gVar2;
                    gVar2.setCallback(callback);
                    this.b.setBounds(c0061b.b.getBounds());
                    this.b.f2312f = false;
                }
                java.util.ArrayList<android.animation.Animator> arrayList = c0061b.f2307d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f2307d = new java.util.ArrayList<>(size);
                    this.f2308e = new d.e.a<>(size);
                    for (int i = 0; i < size; i++) {
                        android.animation.Animator animator = c0061b.f2307d.get(i);
                        android.animation.Animator animatorClone = animator.clone();
                        java.lang.String orDefault = c0061b.f2308e.getOrDefault(animator, null);
                        animatorClone.setTarget(this.b.b.b.p.getOrDefault(orDefault, null));
                        this.f2307d.add(animatorClone);
                        this.f2308e.put(animatorClone, orDefault);
                    }
                    if (this.f2306c == null) {
                        this.f2306c = new android.animation.AnimatorSet();
                    }
                    this.f2306c.playTogether(this.f2307d);
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable() {
            throw new java.lang.IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources) {
            throw new java.lang.IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    public b() {
        this(null, null, null);
    }

    public b(android.content.Context context, d.t.a.a.b.C0061b c0061b, android.content.res.Resources resources) {
        this.f2304d = null;
        this.f2305e = new d.t.a.a.b.a();
        this.f2303c = context;
        this.b = new d.t.a.a.b.C0061b(null, this.f2305e, null);
    }

    public final void a(android.animation.Animator animator) {
        java.util.ArrayList<android.animation.Animator> childAnimations;
        if ((animator instanceof android.animation.AnimatorSet) && (childAnimations = ((android.animation.AnimatorSet) animator).getChildAnimations()) != null) {
            for (int i = 0; i < childAnimations.size(); i++) {
                a(childAnimations.get(i));
            }
        }
        if (animator instanceof android.animation.ObjectAnimator) {
            android.animation.ObjectAnimator objectAnimator = (android.animation.ObjectAnimator) animator;
            java.lang.String propertyName = objectAnimator.getPropertyName();
            if ("fillColor".equals(propertyName) || "strokeColor".equals(propertyName)) {
                if (this.f2304d == null) {
                    this.f2304d = new android.animation.ArgbEvaluator();
                }
                objectAnimator.setEvaluator(this.f2304d);
            }
        }
    }

    @Override // d.t.a.a.f, android.graphics.drawable.Drawable
    public void applyTheme(android.content.res.Resources.Theme theme) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null || android.os.Build.VERSION.SDK_INT < 21) {
            return;
        }
        drawable.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null || android.os.Build.VERSION.SDK_INT < 21) {
            return false;
        }
        return drawable.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.b.b.draw(canvas);
        if (this.b.f2306c.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null) {
            return this.b.b.getAlpha();
        }
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.b.a;
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.ColorFilter getColorFilter() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null) {
            return this.b.b.getColorFilter();
        }
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable.ConstantState getConstantState() {
        if (this.a == null || android.os.Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new d.t.a.a.b.c(this.a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.b.b.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.b.b.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getOpacity() : this.b.b.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(android.content.res.Resources resources, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet) {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(android.content.res.Resources resources, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) {
        android.content.res.TypedArray typedArrayObtainAttributes;
        java.lang.String str;
        android.content.res.XmlResourceParser animation;
        android.animation.Animator animatorP;
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
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        for (int i = 1; eventType != i && (xmlPullParser.getDepth() >= depth || eventType != 3); i = 1) {
            if (eventType == 2) {
                java.lang.String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    typedArrayObtainAttributes = d.b.k.r.W(resources, theme, attributeSet, d.t.a.a.a.f2300e);
                    int resourceId = typedArrayObtainAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        d.t.a.a.g gVarB = d.t.a.a.g.b(resources, resourceId, theme);
                        gVarB.f2312f = false;
                        gVarB.setCallback(this.f2305e);
                        d.t.a.a.g gVar = this.b.b;
                        if (gVar != null) {
                            gVar.setCallback(null);
                        }
                        this.b.b = gVarB;
                    }
                } else if ("target".equals(name)) {
                    typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, d.t.a.a.a.f2301f);
                    java.lang.String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(i, 0);
                    if (resourceId2 != 0) {
                        android.content.Context context = this.f2303c;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new java.lang.IllegalStateException("Context can't be null when inflating animators");
                        }
                        if (android.os.Build.VERSION.SDK_INT >= 24) {
                            animatorP = android.animation.AnimatorInflater.loadAnimator(context, resourceId2);
                        } else {
                            android.content.res.Resources resources2 = context.getResources();
                            android.content.res.Resources.Theme theme2 = context.getTheme();
                            try {
                                try {
                                    animation = resources2.getAnimation(resourceId2);
                                    try {
                                        try {
                                            str = "Can't load animation resource ID #0x";
                                        } catch (java.lang.Throwable th) {
                                            th = th;
                                            if (animation != null) {
                                                animation.close();
                                            }
                                            throw th;
                                        }
                                    } catch (java.io.IOException e2) {
                                        e = e2;
                                        str = "Can't load animation resource ID #0x";
                                    } catch (org.xmlpull.v1.XmlPullParserException e3) {
                                        e = e3;
                                        str = "Can't load animation resource ID #0x";
                                    }
                                } catch (java.lang.Throwable th2) {
                                    th = th2;
                                    animation = null;
                                }
                            } catch (java.io.IOException e4) {
                                e = e4;
                                str = "Can't load animation resource ID #0x";
                            } catch (org.xmlpull.v1.XmlPullParserException e5) {
                                e = e5;
                                str = "Can't load animation resource ID #0x";
                            }
                            try {
                                animatorP = d.s.y.p(context, resources2, theme2, animation, android.util.Xml.asAttributeSet(animation), null, 0, 1.0f);
                                animation.close();
                            } catch (java.io.IOException e6) {
                                e = e6;
                                android.content.res.Resources.NotFoundException notFoundException = new android.content.res.Resources.NotFoundException(str + java.lang.Integer.toHexString(resourceId2));
                                notFoundException.initCause(e);
                                throw notFoundException;
                            } catch (org.xmlpull.v1.XmlPullParserException e7) {
                                e = e7;
                                android.content.res.Resources.NotFoundException notFoundException2 = new android.content.res.Resources.NotFoundException(str + java.lang.Integer.toHexString(resourceId2));
                                notFoundException2.initCause(e);
                                throw notFoundException2;
                            }
                        }
                        animatorP.setTarget(this.b.b.b.b.p.getOrDefault(string, null));
                        if (android.os.Build.VERSION.SDK_INT < 21) {
                            a(animatorP);
                        }
                        d.t.a.a.b.C0061b c0061b = this.b;
                        if (c0061b.f2307d == null) {
                            c0061b.f2307d = new java.util.ArrayList<>();
                            this.b.f2308e = new d.e.a<>();
                        }
                        this.b.f2307d.add(animatorP);
                        this.b.f2308e.put(animatorP, string);
                    }
                } else {
                    continue;
                }
                typedArrayObtainAttributes.recycle();
            }
            eventType = xmlPullParser.next();
        }
        d.t.a.a.b.C0061b c0061b2 = this.b;
        if (c0061b2.f2306c == null) {
            c0061b2.f2306c = new android.animation.AnimatorSet();
        }
        c0061b2.f2306c.playTogether(c0061b2.f2307d);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? d.b.k.r.R(drawable) : this.b.b.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? ((android.graphics.drawable.AnimatedVectorDrawable) drawable).isRunning() : this.b.f2306c.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.isStateful() : this.b.b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable mutate() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.b.b.setBounds(rect);
        }
    }

    @Override // d.t.a.a.f, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.setLevel(i) : this.b.b.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.setState(iArr) : this.b.b.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.b.b.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.h0(drawable, z);
            return;
        }
        d.t.a.a.g gVar = this.b.b;
        android.graphics.drawable.Drawable drawable2 = gVar.a;
        if (drawable2 != null) {
            d.b.k.r.h0(drawable2, z);
        } else {
            gVar.b.f2331e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        d.t.a.a.g gVar = this.b.b;
        android.graphics.drawable.Drawable drawable2 = gVar.a;
        if (drawable2 != null) {
            drawable2.setColorFilter(colorFilter);
        } else {
            gVar.f2310d = colorFilter;
            gVar.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTint(int i) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.s0(drawable, i);
        } else {
            this.b.b.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintList(android.content.res.ColorStateList colorStateList) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.t0(drawable, colorStateList);
        } else {
            this.b.b.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintMode(android.graphics.PorterDuff.Mode mode) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.u0(drawable, mode);
        } else {
            this.b.b.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.b.b.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            ((android.graphics.drawable.AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.b.f2306c.isStarted()) {
                return;
            }
            this.b.f2306c.start();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            ((android.graphics.drawable.AnimatedVectorDrawable) drawable).stop();
        } else {
            this.b.f2306c.end();
        }
    }

    public static class c extends android.graphics.drawable.Drawable.ConstantState {
        public final android.graphics.drawable.Drawable.ConstantState a;

        public c(android.graphics.drawable.Drawable.ConstantState constantState) {
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
            d.t.a.a.b bVar = new d.t.a.a.b(null, null, null);
            android.graphics.drawable.Drawable drawableNewDrawable = this.a.newDrawable();
            bVar.a = drawableNewDrawable;
            drawableNewDrawable.setCallback(bVar.f2305e);
            return bVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources) {
            d.t.a.a.b bVar = new d.t.a.a.b(null, null, null);
            android.graphics.drawable.Drawable drawableNewDrawable = this.a.newDrawable(resources);
            bVar.a = drawableNewDrawable;
            drawableNewDrawable.setCallback(bVar.f2305e);
            return bVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public android.graphics.drawable.Drawable newDrawable(android.content.res.Resources resources, android.content.res.Resources.Theme theme) {
            d.t.a.a.b bVar = new d.t.a.a.b(null, null, null);
            android.graphics.drawable.Drawable drawableNewDrawable = this.a.newDrawable(resources, theme);
            bVar.a = drawableNewDrawable;
            drawableNewDrawable.setCallback(bVar.f2305e);
            return bVar;
        }
    }
}
