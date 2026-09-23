package d.b.k;

/* loaded from: classes.dex */
public class r {
    public static java.lang.reflect.Field a;
    public static boolean b;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.Class<?> f1643c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f1644d;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.reflect.Field f1645e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f1646f;

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.reflect.Field f1647g;
    public static boolean h;
    public static java.lang.reflect.Method i;
    public static boolean j;
    public static java.lang.reflect.Method k;
    public static boolean l;
    public static java.lang.reflect.Method m;
    public static boolean n;
    public static java.lang.reflect.Method o;
    public static boolean p;
    public static java.lang.reflect.Field q;
    public static boolean r;
    public static java.lang.reflect.Field s;
    public static boolean t;
    public static java.lang.reflect.Method u;
    public static boolean v;
    public static java.lang.reflect.Field w;
    public static boolean x;
    public static long y;
    public static java.lang.reflect.Method z;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0045 A[Catch: NoSuchFieldException -> 0x0051, IllegalAccessException -> 0x0057, all -> 0x0062, TRY_LEAVE, TryCatch #0 {, blocks: (B:8:0x000c, B:10:0x0011, B:13:0x0014, B:15:0x0018, B:17:0x002c, B:18:0x0036, B:19:0x003b, B:21:0x0045, B:28:0x005b), top: B:35:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.os.Bundle A(android.app.Notification r6) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 19
            if (r0 < r1) goto L9
            android.os.Bundle r6 = r6.extras
            return r6
        L9:
            java.lang.Object r0 = d.g.e.k.a
            monitor-enter(r0)
            boolean r1 = d.g.e.k.f1939c     // Catch: java.lang.Throwable -> L62
            r2 = 0
            if (r1 == 0) goto L13
        L11:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L62
            goto L61
        L13:
            r1 = 1
            java.lang.reflect.Field r3 = d.g.e.k.b     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            if (r3 != 0) goto L3b
            java.lang.Class<android.app.Notification> r3 = android.app.Notification.class
            java.lang.String r4 = "extras"
            java.lang.reflect.Field r3 = r3.getDeclaredField(r4)     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            java.lang.Class<android.os.Bundle> r4 = android.os.Bundle.class
            java.lang.Class r5 = r3.getType()     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            boolean r4 = r4.isAssignableFrom(r5)     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            if (r4 != 0) goto L36
            java.lang.String r6 = "NotificationCompat"
            java.lang.String r3 = "Notification.extras field is not of type Bundle"
            android.util.Log.e(r6, r3)     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            d.g.e.k.f1939c = r1     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            goto L11
        L36:
            r3.setAccessible(r1)     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            d.g.e.k.b = r3     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
        L3b:
            java.lang.reflect.Field r3 = d.g.e.k.b     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            java.lang.Object r3 = r3.get(r6)     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            android.os.Bundle r3 = (android.os.Bundle) r3     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            if (r3 != 0) goto L4f
            android.os.Bundle r3 = new android.os.Bundle     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            r3.<init>()     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            java.lang.reflect.Field r4 = d.g.e.k.b     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
            r4.set(r6, r3)     // Catch: java.lang.NoSuchFieldException -> L51 java.lang.IllegalAccessException -> L57 java.lang.Throwable -> L62
        L4f:
            r2 = r3
            goto L11
        L51:
            r6 = move-exception
            java.lang.String r3 = "NotificationCompat"
        L54:
            java.lang.String r4 = "Unable to access notification extras"
            goto L5b
        L57:
            r6 = move-exception
            java.lang.String r3 = "NotificationCompat"
            goto L54
        L5b:
            android.util.Log.e(r3, r4, r6)     // Catch: java.lang.Throwable -> L62
            d.g.e.k.f1939c = r1     // Catch: java.lang.Throwable -> L62
            goto L11
        L61:
            return r2
        L62:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L62
            goto L66
        L65:
            throw r6
        L66:
            goto L65
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.r.A(android.app.Notification):android.os.Bundle");
    }

    public static android.graphics.drawable.Drawable A0(android.graphics.drawable.Drawable drawable) {
        int i2 = android.os.Build.VERSION.SDK_INT;
        return i2 >= 23 ? drawable : i2 >= 21 ? !(drawable instanceof d.g.g.l.a) ? new d.g.g.l.d(drawable) : drawable : !(drawable instanceof d.g.g.l.a) ? new d.g.g.l.c(drawable) : drawable;
    }

    public static int B(android.graphics.drawable.Drawable drawable) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return drawable.getLayoutDirection();
        }
        if (i2 >= 17) {
            if (!p) {
                try {
                    java.lang.reflect.Method declaredMethod = android.graphics.drawable.Drawable.class.getDeclaredMethod("getLayoutDirection", new java.lang.Class[0]);
                    o = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (java.lang.NoSuchMethodException e2) {
                    android.util.Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e2);
                }
                p = true;
            }
            java.lang.reflect.Method method = o;
            if (method != null) {
                try {
                    return ((java.lang.Integer) method.invoke(drawable, new java.lang.Object[0])).intValue();
                } catch (java.lang.Exception e3) {
                    android.util.Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e3);
                    o = null;
                }
            }
        }
        return 0;
    }

    public static android.view.ActionMode.Callback B0(android.widget.TextView textView, android.view.ActionMode.Callback callback) {
        int i2 = android.os.Build.VERSION.SDK_INT;
        return (i2 < 26 || i2 > 27 || (callback instanceof d.g.n.d) || callback == null) ? callback : new d.g.n.d(callback, textView);
    }

    public static int C(android.content.res.TypedArray typedArray, org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, int i2, int i3) {
        return !P(xmlPullParser, str) ? i3 : typedArray.getColor(i2, i3);
    }

    public static d.g.f.b.b D(android.content.res.TypedArray typedArray, org.xmlpull.v1.XmlPullParser xmlPullParser, android.content.res.Resources.Theme theme, java.lang.String str, int i2, int i3) {
        d.g.f.b.b bVarA;
        if (P(xmlPullParser, str)) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            typedArray.getValue(i2, typedValue);
            int i4 = typedValue.type;
            if (i4 >= 28 && i4 <= 31) {
                return new d.g.f.b.b(null, null, typedValue.data);
            }
            try {
                bVarA = d.g.f.b.b.a(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            } catch (java.lang.Exception e2) {
                android.util.Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e2);
                bVarA = null;
            }
            if (bVarA != null) {
                return bVarA;
            }
        }
        return new d.g.f.b.b(null, null, i3);
    }

    public static float E(android.content.res.TypedArray typedArray, org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, int i2, float f2) {
        return !P(xmlPullParser, str) ? f2 : typedArray.getFloat(i2, f2);
    }

    public static int F(android.content.res.TypedArray typedArray, org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, int i2, int i3) {
        return !P(xmlPullParser, str) ? i3 : typedArray.getInt(i2, i3);
    }

    public static java.lang.String G(android.content.res.TypedArray typedArray, org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str, int i2) {
        if (P(xmlPullParser, str)) {
            return typedArray.getString(i2);
        }
        return null;
    }

    public static android.content.Intent H(android.app.Activity activity) {
        android.content.Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        try {
            java.lang.String strJ = J(activity, activity.getComponentName());
            if (strJ == null) {
                return null;
            }
            android.content.ComponentName componentName = new android.content.ComponentName(activity, strJ);
            try {
                return J(activity, componentName) == null ? android.content.Intent.makeMainActivity(componentName) : new android.content.Intent().setComponent(componentName);
            } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
                android.util.Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strJ + "' in manifest");
                return null;
            }
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            throw new java.lang.IllegalArgumentException(e2);
        }
    }

    public static android.content.Intent I(android.content.Context context, android.content.ComponentName componentName) throws android.content.pm.PackageManager.NameNotFoundException {
        java.lang.String strJ = J(context, componentName);
        if (strJ == null) {
            return null;
        }
        android.content.ComponentName componentName2 = new android.content.ComponentName(componentName.getPackageName(), strJ);
        return J(context, componentName2) == null ? android.content.Intent.makeMainActivity(componentName2) : new android.content.Intent().setComponent(componentName2);
    }

    public static java.lang.String J(android.content.Context context, android.content.ComponentName componentName) throws android.content.pm.PackageManager.NameNotFoundException {
        java.lang.String string;
        android.content.pm.PackageManager packageManager = context.getPackageManager();
        int i2 = android.os.Build.VERSION.SDK_INT;
        int i3 = 640;
        int i4 = android.os.Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            i3 = 269222528;
        } else if (i4 >= 24) {
            i3 = 787072;
        }
        android.content.pm.ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i3);
        java.lang.String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        android.os.Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static int K(android.content.res.TypedArray typedArray, int i2, int i3, int i4) {
        return typedArray.getResourceId(i2, typedArray.getResourceId(i3, i4));
    }

    public static java.lang.String L(android.content.res.TypedArray typedArray, int i2, int i3) {
        java.lang.String string = typedArray.getString(i2);
        return string == null ? typedArray.getString(i3) : string;
    }

    public static java.io.File M(android.content.Context context) {
        java.io.File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o(".font");
        sbO.append(android.os.Process.myPid());
        sbO.append("-");
        sbO.append(android.os.Process.myTid());
        sbO.append("-");
        java.lang.String string = sbO.toString();
        for (int i2 = 0; i2 < 100; i2++) {
            java.io.File file = new java.io.File(cacheDir, e.a.c.a.a.K(string, i2));
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    public static java.lang.CharSequence[] N(android.content.res.TypedArray typedArray, int i2, int i3) {
        java.lang.CharSequence[] textArray = typedArray.getTextArray(i2);
        return textArray == null ? typedArray.getTextArray(i3) : textArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static d.g.k.a.C0047a O(android.widget.TextView r10) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            if (r0 < r1) goto L10
            d.g.k.a$a r0 = new d.g.k.a$a
            android.text.PrecomputedText$Params r10 = r10.getTextMetricsParams()
            r0.<init>(r10)
            return r0
        L10:
            android.text.TextPaint r0 = new android.text.TextPaint
            android.text.TextPaint r2 = r10.getPaint()
            r0.<init>(r2)
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 0
            r4 = 23
            r5 = 1
            if (r2 < r4) goto L24
            r2 = 1
            r6 = 1
            goto L26
        L24:
            r2 = 0
            r6 = 0
        L26:
            int r7 = android.os.Build.VERSION.SDK_INT
            r8 = 18
            if (r7 < r8) goto L2f
            android.text.TextDirectionHeuristic r7 = android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR
            goto L30
        L2f:
            r7 = 0
        L30:
            int r9 = android.os.Build.VERSION.SDK_INT
            if (r9 < r4) goto L3c
            int r2 = r10.getBreakStrategy()
            int r6 = r10.getHyphenationFrequency()
        L3c:
            int r4 = android.os.Build.VERSION.SDK_INT
            if (r4 < r8) goto L94
            android.text.method.TransformationMethod r4 = r10.getTransformationMethod()
            boolean r4 = r4 instanceof android.text.method.PasswordTransformationMethod
            if (r4 == 0) goto L4c
        L48:
            android.text.TextDirectionHeuristic r10 = android.text.TextDirectionHeuristics.LTR
        L4a:
            r7 = r10
            goto L94
        L4c:
            int r4 = android.os.Build.VERSION.SDK_INT
            if (r4 < r1) goto L75
            int r1 = r10.getInputType()
            r1 = r1 & 15
            r4 = 3
            if (r1 != r4) goto L75
            java.util.Locale r10 = r10.getTextLocale()
            android.icu.text.DecimalFormatSymbols r10 = android.icu.text.DecimalFormatSymbols.getInstance(r10)
            java.lang.String[] r10 = r10.getDigitStrings()
            r10 = r10[r3]
            int r10 = r10.codePointAt(r3)
            byte r10 = java.lang.Character.getDirectionality(r10)
            if (r10 == r5) goto L8e
            r1 = 2
            if (r10 != r1) goto L48
            goto L8e
        L75:
            int r1 = r10.getLayoutDirection()
            if (r1 != r5) goto L7c
            r3 = 1
        L7c:
            int r10 = r10.getTextDirection()
            switch(r10) {
                case 2: goto L91;
                case 3: goto L48;
                case 4: goto L8e;
                case 5: goto L8b;
                case 6: goto L88;
                case 7: goto L85;
                default: goto L83;
            }
        L83:
            if (r3 == 0) goto L88
        L85:
            android.text.TextDirectionHeuristic r10 = android.text.TextDirectionHeuristics.FIRSTSTRONG_RTL
            goto L4a
        L88:
            android.text.TextDirectionHeuristic r10 = android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR
            goto L4a
        L8b:
            android.text.TextDirectionHeuristic r10 = android.text.TextDirectionHeuristics.LOCALE
            goto L4a
        L8e:
            android.text.TextDirectionHeuristic r10 = android.text.TextDirectionHeuristics.RTL
            goto L4a
        L91:
            android.text.TextDirectionHeuristic r10 = android.text.TextDirectionHeuristics.ANYRTL_LTR
            goto L4a
        L94:
            d.g.k.a$a r10 = new d.g.k.a$a
            r10.<init>(r0, r7, r2, r6)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.r.O(android.widget.TextView):d.g.k.a$a");
    }

    public static boolean P(org.xmlpull.v1.XmlPullParser xmlPullParser, java.lang.String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static int Q(java.lang.Object... objArr) {
        return java.util.Arrays.hashCode(objArr);
    }

    public static boolean R(android.graphics.drawable.Drawable drawable) {
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @android.annotation.SuppressLint({"NewApi"})
    public static boolean S() {
        try {
            if (z == null) {
                return android.os.Trace.isEnabled();
            }
        } catch (java.lang.NoClassDefFoundError | java.lang.NoSuchMethodError unused) {
        }
        if (android.os.Build.VERSION.SDK_INT < 18) {
            return false;
        }
        try {
            if (z == null) {
                y = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                z = android.os.Trace.class.getMethod("isTagEnabled", java.lang.Long.TYPE);
            }
            return ((java.lang.Boolean) z.invoke(null, java.lang.Long.valueOf(y))).booleanValue();
        } catch (java.lang.Exception e2) {
            if (!(e2 instanceof java.lang.reflect.InvocationTargetException)) {
                android.util.Log.v("Trace", "Unable to call isTagEnabled via reflection", e2);
                return false;
            }
            java.lang.Throwable cause = e2.getCause();
            if (cause instanceof java.lang.RuntimeException) {
                throw ((java.lang.RuntimeException) cause);
            }
            throw new java.lang.RuntimeException(cause);
        }
    }

    public static boolean T(android.view.ViewGroup viewGroup) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        java.lang.Boolean bool = (java.lang.Boolean) viewGroup.getTag(d.g.c.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && d.g.m.s.u(viewGroup) == null) ? false : true;
    }

    public static d.j.d.p U(android.content.Context context, androidx.fragment.app.Fragment fragment, boolean z2) throws android.content.res.Resources.NotFoundException {
        int i2;
        int nextTransition = fragment.getNextTransition();
        int nextAnim = fragment.getNextAnim();
        boolean z3 = false;
        fragment.setNextAnim(0);
        android.view.ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && viewGroup.getTag(d.j.b.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(d.j.b.visible_removing_fragment_view_tag, null);
        }
        android.view.ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null && viewGroup2.getLayoutTransition() != null) {
            return null;
        }
        android.view.animation.Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z2, nextAnim);
        if (animationOnCreateAnimation != null) {
            return new d.j.d.p(animationOnCreateAnimation);
        }
        android.animation.Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z2, nextAnim);
        if (animatorOnCreateAnimator != null) {
            return new d.j.d.p(animatorOnCreateAnimator);
        }
        if (nextAnim == 0 && nextTransition != 0) {
            if (nextTransition == 4097) {
                i2 = z2 ? d.j.a.fragment_open_enter : d.j.a.fragment_open_exit;
            } else if (nextTransition == 4099) {
                i2 = z2 ? d.j.a.fragment_fade_enter : d.j.a.fragment_fade_exit;
            } else if (nextTransition != 8194) {
                nextAnim = -1;
            } else {
                i2 = z2 ? d.j.a.fragment_close_enter : d.j.a.fragment_close_exit;
            }
            nextAnim = i2;
        }
        if (nextAnim != 0) {
            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(nextAnim));
            if (zEquals) {
                try {
                    android.view.animation.Animation animationLoadAnimation = android.view.animation.AnimationUtils.loadAnimation(context, nextAnim);
                    if (animationLoadAnimation != null) {
                        return new d.j.d.p(animationLoadAnimation);
                    }
                    z3 = true;
                } catch (android.content.res.Resources.NotFoundException e2) {
                    throw e2;
                } catch (java.lang.RuntimeException unused) {
                }
            }
            if (!z3) {
                try {
                    android.animation.Animator animatorLoadAnimator = android.animation.AnimatorInflater.loadAnimator(context, nextAnim);
                    if (animatorLoadAnimator != null) {
                        return new d.j.d.p(animatorLoadAnimator);
                    }
                } catch (java.lang.RuntimeException e3) {
                    if (zEquals) {
                        throw e3;
                    }
                    android.view.animation.Animation animationLoadAnimation2 = android.view.animation.AnimationUtils.loadAnimation(context, nextAnim);
                    if (animationLoadAnimation2 != null) {
                        return new d.j.d.p(animationLoadAnimation2);
                    }
                }
            }
        }
        return null;
    }

    public static java.nio.ByteBuffer V(android.content.Context context, android.os.CancellationSignal cancellationSignal, android.net.Uri uri) throws java.io.IOException {
        try {
            android.os.ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT, cancellationSignal);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                }
                return null;
            }
            try {
                java.io.FileInputStream fileInputStream = new java.io.FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    java.nio.channels.FileChannel channel = fileInputStream.getChannel();
                    java.nio.MappedByteBuffer map = channel.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return map;
                } catch (java.lang.Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (java.lang.Throwable unused) {
                    }
                    throw th;
                }
            } finally {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (java.lang.Throwable unused2) {
                }
            }
        } catch (java.io.IOException unused3) {
            return null;
        }
    }

    public static android.content.res.TypedArray W(android.content.res.Resources resources, android.content.res.Resources.Theme theme, android.util.AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static <T> android.animation.ObjectAnimator X(T t2, android.util.Property<T, android.graphics.PointF> property, android.graphics.Path path) {
        return android.os.Build.VERSION.SDK_INT >= 21 ? android.animation.ObjectAnimator.ofObject(t2, property, (android.animation.TypeConverter) null, path) : android.animation.ObjectAnimator.ofFloat(t2, new d.s.g(property, path), 0.0f, 1.0f);
    }

    public static android.view.inputmethod.InputConnection Y(android.view.inputmethod.InputConnection inputConnection, android.view.inputmethod.EditorInfo editorInfo, android.view.View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            android.view.ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof android.view.View)) {
                    break;
                }
                if (parent instanceof d.b.q.c1) {
                    editorInfo.hintText = ((d.b.q.c1) parent).a();
                    break;
                }
                parent = parent.getParent();
            }
        }
        return inputConnection;
    }

    public static boolean Z(android.view.ViewParent viewParent, android.view.View view, float f2, float f3, boolean z2) {
        if (android.os.Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof d.g.m.j) {
                return ((d.g.m.j) viewParent).onNestedFling(view, f2, f3, z2);
            }
            return false;
        }
        try {
            return viewParent.onNestedFling(view, f2, f3, z2);
        } catch (java.lang.AbstractMethodError e2) {
            android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e2);
            return false;
        }
    }

    public static boolean a(android.os.Bundle bundle, android.os.Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        return bundle == null ? bundle2.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle2.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle2 == null ? bundle.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE, -1) == bundle2.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE, -1) && bundle.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == bundle2.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
    }

    public static boolean a0(android.view.ViewParent viewParent, android.view.View view, float f2, float f3) {
        if (android.os.Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof d.g.m.j) {
                return ((d.g.m.j) viewParent).onNestedPreFling(view, f2, f3);
            }
            return false;
        }
        try {
            return viewParent.onNestedPreFling(view, f2, f3);
        } catch (java.lang.AbstractMethodError e2) {
            android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e2);
            return false;
        }
    }

    public static void b(java.lang.Object obj, java.lang.StringBuilder sb) {
        java.lang.String hexString;
        int iLastIndexOf;
        if (obj == null) {
            hexString = "null";
        } else {
            java.lang.String simpleName = obj.getClass().getSimpleName();
            if (simpleName.length() <= 0 && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
                simpleName = simpleName.substring(iLastIndexOf + 1);
            }
            sb.append(simpleName);
            sb.append('{');
            hexString = java.lang.Integer.toHexString(java.lang.System.identityHashCode(obj));
        }
        sb.append(hexString);
    }

    public static void b0(android.view.ViewParent viewParent, android.view.View view, int i2, int i3, int[] iArr, int i4) {
        if (viewParent instanceof d.g.m.h) {
            ((d.g.m.h) viewParent).j(view, i2, i3, iArr, i4);
            return;
        }
        if (i4 == 0) {
            if (android.os.Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof d.g.m.j) {
                    ((d.g.m.j) viewParent).onNestedPreScroll(view, i2, i3, iArr);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedPreScroll(view, i2, i3, iArr);
            } catch (java.lang.AbstractMethodError e2) {
                android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e2);
            }
        }
    }

    public static boolean c(d.g.g.c[] cVarArr, d.g.g.c[] cVarArr2) {
        if (cVarArr == null || cVarArr2 == null || cVarArr.length != cVarArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < cVarArr.length; i2++) {
            if (cVarArr[i2].a != cVarArr2[i2].a || cVarArr[i2].b.length != cVarArr2[i2].b.length) {
                return false;
            }
        }
        return true;
    }

    public static void c0(android.view.ViewParent viewParent, android.view.View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        if (viewParent instanceof d.g.m.i) {
            ((d.g.m.i) viewParent).m(view, i2, i3, i4, i5, i6, iArr);
            return;
        }
        iArr[0] = iArr[0] + i4;
        iArr[1] = iArr[1] + i5;
        if (viewParent instanceof d.g.m.h) {
            ((d.g.m.h) viewParent).n(view, i2, i3, i4, i5, i6);
            return;
        }
        if (i6 == 0) {
            if (android.os.Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof d.g.m.j) {
                    ((d.g.m.j) viewParent).onNestedScroll(view, i2, i3, i4, i5);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScroll(view, i2, i3, i4, i5);
            } catch (java.lang.AbstractMethodError e2) {
                android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e2);
            }
        }
    }

    public static int d(int i2) {
        if (i2 >= 0) {
            return i2;
        }
        throw new java.lang.IllegalArgumentException();
    }

    public static void d0(android.widget.EdgeEffect edgeEffect, float f2, float f3) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f2, f3);
        } else {
            edgeEffect.onPull(f2);
        }
    }

    public static <T> T e(T t2) {
        if (t2 != null) {
            return t2;
        }
        throw null;
    }

    public static d.g.f.b.c e0(org.xmlpull.v1.XmlPullParser xmlPullParser, android.content.res.Resources resources) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
        }
        xmlPullParser.require(2, null, com.google.android.exoplayer2.text.webvtt.WebvttCssParser.PROPERTY_FONT_FAMILY);
        if (!xmlPullParser.getName().equals(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.PROPERTY_FONT_FAMILY)) {
            x0(xmlPullParser);
            return null;
        }
        android.content.res.TypedArray typedArrayObtainAttributes = resources.obtainAttributes(android.util.Xml.asAttributeSet(xmlPullParser), d.g.d.FontFamily);
        java.lang.String string = typedArrayObtainAttributes.getString(d.g.d.FontFamily_fontProviderAuthority);
        java.lang.String string2 = typedArrayObtainAttributes.getString(d.g.d.FontFamily_fontProviderPackage);
        java.lang.String string3 = typedArrayObtainAttributes.getString(d.g.d.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(d.g.d.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(d.g.d.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(d.g.d.FontFamily_fontProviderFetchTimeout, 500);
        java.lang.String string4 = typedArrayObtainAttributes.getString(d.g.d.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                x0(xmlPullParser);
            }
            return new d.g.f.b.f(new d.g.j.e(string, string2, string3, g0(resources, resourceId)), integer, integer2, string4);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    android.content.res.TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(android.util.Xml.asAttributeSet(xmlPullParser), d.g.d.FontFamilyFont);
                    int i2 = typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(d.g.d.FontFamilyFont_fontWeight) ? d.g.d.FontFamilyFont_fontWeight : d.g.d.FontFamilyFont_android_fontWeight, 400);
                    boolean z2 = 1 == typedArrayObtainAttributes2.getInt(typedArrayObtainAttributes2.hasValue(d.g.d.FontFamilyFont_fontStyle) ? d.g.d.FontFamilyFont_fontStyle : d.g.d.FontFamilyFont_android_fontStyle, 0);
                    int i3 = typedArrayObtainAttributes2.hasValue(d.g.d.FontFamilyFont_ttcIndex) ? d.g.d.FontFamilyFont_ttcIndex : d.g.d.FontFamilyFont_android_ttcIndex;
                    java.lang.String string5 = typedArrayObtainAttributes2.getString(typedArrayObtainAttributes2.hasValue(d.g.d.FontFamilyFont_fontVariationSettings) ? d.g.d.FontFamilyFont_fontVariationSettings : d.g.d.FontFamilyFont_android_fontVariationSettings);
                    int i4 = typedArrayObtainAttributes2.getInt(i3, 0);
                    int i5 = typedArrayObtainAttributes2.hasValue(d.g.d.FontFamilyFont_font) ? d.g.d.FontFamilyFont_font : d.g.d.FontFamilyFont_android_font;
                    int resourceId2 = typedArrayObtainAttributes2.getResourceId(i5, 0);
                    java.lang.String string6 = typedArrayObtainAttributes2.getString(i5);
                    typedArrayObtainAttributes2.recycle();
                    while (xmlPullParser.next() != 3) {
                        x0(xmlPullParser);
                    }
                    arrayList.add(new d.g.f.b.e(string6, i2, z2, string5, i4, resourceId2));
                } else {
                    x0(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new d.g.f.b.d((d.g.f.b.e[]) arrayList.toArray(new d.g.f.b.e[arrayList.size()]));
    }

    public static <T> T f(T t2, java.lang.Object obj) {
        if (t2 != null) {
            return t2;
        }
        throw new java.lang.NullPointerException(java.lang.String.valueOf(obj));
    }

    public static void f0(android.os.Bundle bundle, java.lang.String str, android.os.IBinder iBinder) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
            return;
        }
        if (!l) {
            try {
                java.lang.reflect.Method method = android.os.Bundle.class.getMethod("putIBinder", java.lang.String.class, android.os.IBinder.class);
                k = method;
                method.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e2) {
                android.util.Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e2);
            }
            l = true;
        }
        java.lang.reflect.Method method2 = k;
        if (method2 != null) {
            try {
                method2.invoke(bundle, str, iBinder);
            } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.reflect.InvocationTargetException e3) {
                android.util.Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e3);
                k = null;
            }
        }
    }

    public static int g(android.content.Context context, java.lang.String str) {
        int iMyPid = android.os.Process.myPid();
        int iMyUid = android.os.Process.myUid();
        java.lang.String packageName = context.getPackageName();
        if (context.checkPermission(str, iMyPid, iMyUid) != -1) {
            java.lang.String strPermissionToOp = android.os.Build.VERSION.SDK_INT >= 23 ? android.app.AppOpsManager.permissionToOp(str) : null;
            if (strPermissionToOp == null) {
                return 0;
            }
            if (packageName == null) {
                java.lang.String[] packagesForUid = context.getPackageManager().getPackagesForUid(iMyUid);
                if (packagesForUid != null && packagesForUid.length > 0) {
                    packageName = packagesForUid[0];
                }
            }
            return (android.os.Build.VERSION.SDK_INT >= 23 ? ((android.app.AppOpsManager) context.getSystemService(android.app.AppOpsManager.class)).noteProxyOpNoThrow(strPermissionToOp, packageName) : 1) != 0 ? -2 : 0;
        }
        return -1;
    }

    public static java.util.List<java.util.List<byte[]>> g0(android.content.res.Resources resources, int i2) throws android.content.res.Resources.NotFoundException {
        int type;
        if (i2 == 0) {
            return java.util.Collections.emptyList();
        }
        android.content.res.TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return java.util.Collections.emptyList();
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                type = typedArrayObtainTypedArray.getType(0);
            } else {
                android.util.TypedValue typedValue = new android.util.TypedValue();
                typedArrayObtainTypedArray.getValue(0, typedValue);
                type = typedValue.type;
            }
            if (type == 1) {
                for (int i3 = 0; i3 < typedArrayObtainTypedArray.length(); i3++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(z0(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(z0(resources.getStringArray(i2)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    public static int h(int i2, int i3, int i4) {
        return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
    }

    public static void h0(android.graphics.drawable.Drawable drawable, boolean z2) {
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void i(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.DrawableContainer.DrawableContainerState drawableContainerState;
        android.graphics.drawable.Drawable drawableB;
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 23 || i2 < 21) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof android.graphics.drawable.InsetDrawable) {
            drawableB = ((android.graphics.drawable.InsetDrawable) drawable).getDrawable();
        } else {
            if (!(drawable instanceof d.g.g.l.b)) {
                if (!(drawable instanceof android.graphics.drawable.DrawableContainer) || (drawableContainerState = (android.graphics.drawable.DrawableContainer.DrawableContainerState) ((android.graphics.drawable.DrawableContainer) drawable).getConstantState()) == null) {
                    return;
                }
                int childCount = drawableContainerState.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    android.graphics.drawable.Drawable child = drawableContainerState.getChild(i3);
                    if (child != null) {
                        i(child);
                    }
                }
                return;
            }
            drawableB = ((d.g.g.l.b) drawable).b();
        }
        i(drawableB);
    }

    public static void i0(android.widget.TextView textView, android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2, android.graphics.drawable.Drawable drawable3, android.graphics.drawable.Drawable drawable4) {
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 18) {
            textView.setCompoundDrawablesRelative(drawable, null, null, null);
            return;
        }
        if (i2 < 17) {
            textView.setCompoundDrawables(drawable, null, null, null);
            return;
        }
        boolean z2 = textView.getLayoutDirection() == 1;
        android.graphics.drawable.Drawable drawable5 = z2 ? null : drawable;
        if (!z2) {
            drawable = null;
        }
        textView.setCompoundDrawables(drawable5, null, drawable, null);
    }

    public static int j(androidx.recyclerview.widget.RecyclerView.u uVar, d.q.c.r rVar, android.view.View view, android.view.View view2, androidx.recyclerview.widget.RecyclerView.k kVar, boolean z2) {
        if (kVar.p() == 0 || uVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return java.lang.Math.abs(kVar.x(view) - kVar.x(view2)) + 1;
        }
        return java.lang.Math.min(rVar.f(), rVar.b(view2) - rVar.c(view));
    }

    public static void j0(android.view.LayoutInflater layoutInflater, android.view.LayoutInflater.Factory2 factory2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        layoutInflater.setFactory2(factory2);
        if (android.os.Build.VERSION.SDK_INT < 21) {
            android.view.LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof android.view.LayoutInflater.Factory2) {
                u(layoutInflater, (android.view.LayoutInflater.Factory2) factory);
            } else {
                u(layoutInflater, factory2);
            }
        }
    }

    public static int k(androidx.recyclerview.widget.RecyclerView.u uVar, d.q.c.r rVar, android.view.View view, android.view.View view2, androidx.recyclerview.widget.RecyclerView.k kVar, boolean z2, boolean z3) {
        if (kVar.p() == 0 || uVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z3 ? java.lang.Math.max(0, (uVar.a() - java.lang.Math.max(kVar.x(view), kVar.x(view2))) - 1) : java.lang.Math.max(0, java.lang.Math.min(kVar.x(view), kVar.x(view2)));
        if (z2) {
            return java.lang.Math.round((iMax * (java.lang.Math.abs(rVar.b(view2) - rVar.c(view)) / (java.lang.Math.abs(kVar.x(view) - kVar.x(view2)) + 1))) + (rVar.e() - rVar.c(view)));
        }
        return iMax;
    }

    public static void k0(android.widget.TextView textView, int i2) {
        d(i2);
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i2);
            return;
        }
        android.graphics.Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i3 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i2 > java.lang.Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), i2 + i3, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static int l(androidx.recyclerview.widget.RecyclerView.u uVar, d.q.c.r rVar, android.view.View view, android.view.View view2, androidx.recyclerview.widget.RecyclerView.k kVar, boolean z2) {
        if (kVar.p() == 0 || uVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z2) {
            return uVar.a();
        }
        return (int) (((rVar.b(view2) - rVar.c(view)) / (java.lang.Math.abs(kVar.x(view) - kVar.x(view2)) + 1)) * uVar.a());
    }

    public static void l0(android.graphics.drawable.Drawable drawable, float f2, float f3) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f2, f3);
        }
    }

    public static float[] m(float[] fArr, int i2, int i3) {
        if (i2 > i3) {
            throw new java.lang.IllegalArgumentException();
        }
        int length = fArr.length;
        if (i2 < 0 || i2 > length) {
            throw new java.lang.ArrayIndexOutOfBoundsException();
        }
        int i4 = i3 - i2;
        int iMin = java.lang.Math.min(i4, length - i2);
        float[] fArr2 = new float[i4];
        java.lang.System.arraycopy(fArr, i2, fArr2, 0, iMin);
        return fArr2;
    }

    public static void m0(android.graphics.drawable.Drawable drawable, int i2, int i3, int i4, int i5) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i2, i3, i4, i5);
        }
    }

    public static boolean n(java.io.File file, android.content.res.Resources resources, int i2) throws java.lang.Throwable {
        java.io.InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i2);
        } catch (java.lang.Throwable th) {
            th = th;
            inputStreamOpenRawResource = null;
        }
        try {
            boolean zO = o(file, inputStreamOpenRawResource);
            if (inputStreamOpenRawResource != null) {
                try {
                    inputStreamOpenRawResource.close();
                } catch (java.io.IOException unused) {
                }
            }
            return zO;
        } catch (java.lang.Throwable th2) {
            th = th2;
            if (inputStreamOpenRawResource != null) {
                try {
                    inputStreamOpenRawResource.close();
                } catch (java.io.IOException unused2) {
                }
            }
            throw th;
        }
    }

    public static void n0(android.widget.TextView textView, int i2) {
        d(i2);
        android.graphics.Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i3 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i2 > java.lang.Math.abs(i3)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i3);
        }
    }

    public static boolean o(java.io.File file, java.io.InputStream inputStream) throws java.lang.Throwable {
        java.io.FileOutputStream fileOutputStream;
        android.os.StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = android.os.StrictMode.allowThreadDiskWrites();
        java.io.FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new java.io.FileOutputStream(file, false);
            } catch (java.io.IOException e2) {
                e = e2;
            }
        } catch (java.lang.Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, i2);
            }
            try {
                fileOutputStream.close();
            } catch (java.io.IOException unused) {
            }
            android.os.StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            return true;
        } catch (java.io.IOException e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            android.util.Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (java.io.IOException unused2) {
                }
            }
            android.os.StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            return false;
        } catch (java.lang.Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (java.io.IOException unused3) {
                }
            }
            android.os.StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th;
        }
    }

    public static boolean o0(android.graphics.drawable.Drawable drawable, int i2) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int i3 = android.os.Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            return drawable.setLayoutDirection(i2);
        }
        if (i3 >= 17) {
            if (!n) {
                try {
                    java.lang.reflect.Method declaredMethod = android.graphics.drawable.Drawable.class.getDeclaredMethod("setLayoutDirection", java.lang.Integer.TYPE);
                    m = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (java.lang.NoSuchMethodException e2) {
                    android.util.Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e2);
                }
                n = true;
            }
            java.lang.reflect.Method method = m;
            if (method != null) {
                try {
                    method.invoke(drawable, java.lang.Integer.valueOf(i2));
                    return true;
                } catch (java.lang.Exception e3) {
                    android.util.Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e3);
                    m = null;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x008b, code lost:
    
        if (r13 == false) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0098 A[Catch: NumberFormatException -> 0x00ba, LOOP:3: B:29:0x006d->B:49:0x0098, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00ba, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b2), top: B:71:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009d A[Catch: NumberFormatException -> 0x00ba, TryCatch #0 {NumberFormatException -> 0x00ba, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b2), top: B:71:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ad A[Catch: NumberFormatException -> 0x00ba, TryCatch #0 {NumberFormatException -> 0x00ba, blocks: (B:26:0x005a, B:29:0x006d, B:31:0x0073, B:36:0x0081, B:49:0x0098, B:51:0x009d, B:54:0x00ad, B:56:0x00b2), top: B:71:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0097 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static d.g.g.c[] p(java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.r.p(java.lang.String):d.g.g.c[]");
    }

    public static void p0(android.widget.TextView textView, int i2) {
        d(i2);
        if (i2 != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i2 - r0, 1.0f);
        }
    }

    public static android.graphics.Path q(java.lang.String str) {
        android.graphics.Path path = new android.graphics.Path();
        d.g.g.c[] cVarArrP = p(str);
        if (cVarArrP == null) {
            return null;
        }
        try {
            d.g.g.c.b(cVarArrP, path);
            return path;
        } catch (java.lang.RuntimeException e2) {
            throw new java.lang.RuntimeException(e.a.c.a.a.e("Error in parsing ", str), e2);
        }
    }

    public static void q0(android.widget.PopupWindow popupWindow, boolean z2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            popupWindow.setOverlapAnchor(z2);
            return;
        }
        if (i2 >= 21) {
            if (!x) {
                try {
                    java.lang.reflect.Field declaredField = android.widget.PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    w = declaredField;
                    declaredField.setAccessible(true);
                } catch (java.lang.NoSuchFieldException e2) {
                    android.util.Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e2);
                }
                x = true;
            }
            java.lang.reflect.Field field = w;
            if (field != null) {
                try {
                    field.set(popupWindow, java.lang.Boolean.valueOf(z2));
                } catch (java.lang.IllegalAccessException e3) {
                    android.util.Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e3);
                }
            }
        }
    }

    public static d.g.g.c[] r(d.g.g.c[] cVarArr) {
        if (cVarArr == null) {
            return null;
        }
        d.g.g.c[] cVarArr2 = new d.g.g.c[cVarArr.length];
        for (int i2 = 0; i2 < cVarArr.length; i2++) {
            cVarArr2[i2] = new d.g.g.c(cVarArr[i2]);
        }
        return cVarArr2;
    }

    public static void r0(android.widget.TextView textView, d.g.k.a aVar) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            if (aVar == null) {
                throw null;
            }
            textView.setText((java.lang.CharSequence) null);
        } else {
            d.g.k.a.C0047a c0047aO = O(textView);
            if (aVar == null) {
                throw null;
            }
            if (!c0047aO.a(null)) {
                throw new java.lang.IllegalArgumentException("Given text can not be applied to TextView.");
            }
            textView.setText(aVar);
        }
    }

    public static boolean s(java.lang.Object obj, java.lang.Object obj2) {
        return android.os.Build.VERSION.SDK_INT >= 19 ? defpackage.b.a(obj, obj2) : obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void s0(android.graphics.drawable.Drawable drawable, int i2) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i2);
        } else if (drawable instanceof d.g.g.l.a) {
            ((d.g.g.l.a) drawable).setTint(i2);
        }
    }

    public static void t(java.lang.Object obj) throws java.lang.NoSuchFieldException {
        if (!f1644d) {
            try {
                f1643c = java.lang.Class.forName("android.content.res.ThemedResourceCache");
            } catch (java.lang.ClassNotFoundException e2) {
                android.util.Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            f1644d = true;
        }
        java.lang.Class<?> cls = f1643c;
        if (cls == null) {
            return;
        }
        if (!f1646f) {
            try {
                java.lang.reflect.Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f1645e = declaredField;
                declaredField.setAccessible(true);
            } catch (java.lang.NoSuchFieldException e3) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
            }
            f1646f = true;
        }
        java.lang.reflect.Field field = f1645e;
        if (field == null) {
            return;
        }
        android.util.LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (android.util.LongSparseArray) field.get(obj);
        } catch (java.lang.IllegalAccessException e4) {
            android.util.Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void t0(android.graphics.drawable.Drawable drawable, android.content.res.ColorStateList colorStateList) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof d.g.g.l.a) {
            ((d.g.g.l.a) drawable).setTintList(colorStateList);
        }
    }

    public static void u(android.view.LayoutInflater layoutInflater, android.view.LayoutInflater.Factory2 factory2) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        if (!r) {
            try {
                java.lang.reflect.Field declaredField = android.view.LayoutInflater.class.getDeclaredField("mFactory2");
                q = declaredField;
                declaredField.setAccessible(true);
            } catch (java.lang.NoSuchFieldException e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("forceSetFactory2 Could not find field 'mFactory2' on class ");
                sbO.append(android.view.LayoutInflater.class.getName());
                sbO.append("; inflation may have unexpected results.");
                android.util.Log.e("LayoutInflaterCompatHC", sbO.toString(), e2);
            }
            r = true;
        }
        java.lang.reflect.Field field = q;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (java.lang.IllegalAccessException e3) {
                android.util.Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e3);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void u0(android.graphics.drawable.Drawable drawable, android.graphics.PorterDuff.Mode mode) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof d.g.g.l.a) {
            ((d.g.g.l.a) drawable).setTintMode(mode);
        }
    }

    public static int v(int i2, int i3) {
        return android.os.Build.VERSION.SDK_INT >= 17 ? android.view.Gravity.getAbsoluteGravity(i2, i3) : i2 & (-8388609);
    }

    public static void v0(android.view.View view, java.lang.CharSequence charSequence) {
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
            return;
        }
        d.b.q.y0 y0Var = d.b.q.y0.j;
        if (y0Var != null && y0Var.a == view) {
            d.b.q.y0.c(null);
        }
        if (!android.text.TextUtils.isEmpty(charSequence)) {
            new d.b.q.y0(view, charSequence);
            return;
        }
        d.b.q.y0 y0Var2 = d.b.q.y0.k;
        if (y0Var2 != null && y0Var2.a == view) {
            y0Var2.b();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static int w(android.content.Context context, int i2, int i3) {
        android.util.TypedValue typedValue = new android.util.TypedValue();
        context.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId != 0 ? i2 : i3;
    }

    public static void w0(android.widget.PopupWindow popupWindow, int i2) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i2);
            return;
        }
        if (!v) {
            try {
                java.lang.reflect.Method declaredMethod = android.widget.PopupWindow.class.getDeclaredMethod("setWindowLayoutType", java.lang.Integer.TYPE);
                u = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.Exception unused) {
            }
            v = true;
        }
        java.lang.reflect.Method method = u;
        if (method != null) {
            try {
                method.invoke(popupWindow, java.lang.Integer.valueOf(i2));
            } catch (java.lang.Exception unused2) {
            }
        }
    }

    public static android.os.IBinder x(android.os.Bundle bundle, java.lang.String str) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            return bundle.getBinder(str);
        }
        if (!j) {
            try {
                java.lang.reflect.Method method = android.os.Bundle.class.getMethod("getIBinder", java.lang.String.class);
                i = method;
                method.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e2) {
                android.util.Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e2);
            }
            j = true;
        }
        java.lang.reflect.Method method2 = i;
        if (method2 == null) {
            return null;
        }
        try {
            return (android.os.IBinder) method2.invoke(bundle, str);
        } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.reflect.InvocationTargetException e3) {
            android.util.Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e3);
            i = null;
            return null;
        }
    }

    public static void x0(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i2++;
            } else if (next == 3) {
                i2--;
            }
        }
    }

    public static boolean y(android.content.res.TypedArray typedArray, int i2, int i3, boolean z2) {
        return typedArray.getBoolean(i2, typedArray.getBoolean(i3, z2));
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void y0(android.view.ViewGroup r7, boolean r8) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.k.r.y0(android.view.ViewGroup, boolean):void");
    }

    public static android.graphics.drawable.Drawable z(android.widget.CompoundButton compoundButton) throws java.lang.NoSuchFieldException {
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!t) {
            try {
                java.lang.reflect.Field declaredField = android.widget.CompoundButton.class.getDeclaredField("mButtonDrawable");
                s = declaredField;
                declaredField.setAccessible(true);
            } catch (java.lang.NoSuchFieldException e2) {
                android.util.Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e2);
            }
            t = true;
        }
        java.lang.reflect.Field field = s;
        if (field != null) {
            try {
                return (android.graphics.drawable.Drawable) field.get(compoundButton);
            } catch (java.lang.IllegalAccessException e3) {
                android.util.Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e3);
                s = null;
            }
        }
        return null;
    }

    public static java.util.List<byte[]> z0(java.lang.String[] strArr) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : strArr) {
            arrayList.add(android.util.Base64.decode(str, 0));
        }
        return arrayList;
    }
}
