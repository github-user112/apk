package androidx.appcompat.app;

/* loaded from: classes.dex */
public class AppCompatViewInflater {
    public static final java.lang.String LOG_TAG = "AppCompatViewInflater";
    public final java.lang.Object[] mConstructorArgs = new java.lang.Object[2];
    public static final java.lang.Class<?>[] sConstructorSignature = {android.content.Context.class, android.util.AttributeSet.class};
    public static final int[] sOnClickAttrs = {android.R.attr.onClick};
    public static final java.lang.String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    public static final java.util.Map<java.lang.String, java.lang.reflect.Constructor<? extends android.view.View>> sConstructorMap = new d.e.a();

    public static class a implements android.view.View.OnClickListener {
        public final android.view.View a;
        public final java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.reflect.Method f28c;

        /* renamed from: d, reason: collision with root package name */
        public android.content.Context f29d;

        public a(android.view.View view, java.lang.String str) {
            this.a = view;
            this.b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            java.lang.String string;
            java.lang.reflect.Method method;
            if (this.f28c == null) {
                android.content.Context context = this.a.getContext();
                while (context != null) {
                    try {
                        if (!context.isRestricted() && (method = context.getClass().getMethod(this.b, android.view.View.class)) != null) {
                            this.f28c = method;
                            this.f29d = context;
                        }
                    } catch (java.lang.NoSuchMethodException unused) {
                    }
                    context = context instanceof android.content.ContextWrapper ? ((android.content.ContextWrapper) context).getBaseContext() : null;
                }
                int id = this.a.getId();
                if (id == -1) {
                    string = "";
                } else {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o(" with id '");
                    sbO.append(this.a.getContext().getResources().getResourceEntryName(id));
                    sbO.append("'");
                    string = sbO.toString();
                }
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Could not find method ");
                sbO2.append(this.b);
                sbO2.append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                sbO2.append(this.a.getClass());
                sbO2.append(string);
                throw new java.lang.IllegalStateException(sbO2.toString());
            }
            try {
                this.f28c.invoke(this.f29d, view);
            } catch (java.lang.IllegalAccessException e2) {
                throw new java.lang.IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (java.lang.reflect.InvocationTargetException e3) {
                throw new java.lang.IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    private void checkOnClickListener(android.view.View view, android.util.AttributeSet attributeSet) {
        android.content.Context context = view.getContext();
        if ((context instanceof android.content.ContextWrapper) && d.g.m.s.x(view)) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
            java.lang.String string = typedArrayObtainStyledAttributes.getString(0);
            if (string != null) {
                view.setOnClickListener(new androidx.appcompat.app.AppCompatViewInflater.a(view, string));
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private android.view.View createViewByPrefix(android.content.Context context, java.lang.String str, java.lang.String str2) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.String str3;
        java.lang.reflect.Constructor<? extends android.view.View> constructor = sConstructorMap.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (java.lang.Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = java.lang.Class.forName(str3, false, context.getClassLoader()).asSubclass(android.view.View.class).getConstructor(sConstructorSignature);
            sConstructorMap.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
    }

    private android.view.View createViewFromTag(android.content.Context context, java.lang.String str, android.util.AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            this.mConstructorArgs[0] = context;
            this.mConstructorArgs[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return createViewByPrefix(context, str, null);
            }
            for (int i = 0; i < sClassPrefixList.length; i++) {
                android.view.View viewCreateViewByPrefix = createViewByPrefix(context, str, sClassPrefixList[i]);
                if (viewCreateViewByPrefix != null) {
                    return viewCreateViewByPrefix;
                }
            }
            return null;
        } catch (java.lang.Exception unused) {
            return null;
        } finally {
            java.lang.Object[] objArr = this.mConstructorArgs;
            objArr[0] = null;
            objArr[1] = null;
        }
    }

    public static android.content.Context themifyContext(android.content.Context context, android.util.AttributeSet attributeSet, boolean z, boolean z2) {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(d.b.j.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(d.b.j.View_theme, 0)) != 0) {
            android.util.Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? ((context instanceof d.b.p.c) && ((d.b.p.c) context).a == resourceId) ? context : new d.b.p.c(context, resourceId) : context;
    }

    private void verifyNotNull(android.view.View view, java.lang.String str) {
        if (view != null) {
            return;
        }
        throw new java.lang.IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    public d.b.q.d createAutoCompleteTextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.d(context, attributeSet);
    }

    public d.b.q.f createButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.f(context, attributeSet, d.b.a.buttonStyle);
    }

    public androidx.appcompat.widget.AppCompatCheckBox createCheckBox(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatCheckBox(context, attributeSet);
    }

    public d.b.q.g createCheckedTextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.g(context, attributeSet);
    }

    public d.b.q.j createEditText(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.j(context, attributeSet);
    }

    public d.b.q.k createImageButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.k(context, attributeSet);
    }

    public androidx.appcompat.widget.AppCompatImageView createImageView(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.AppCompatImageView(context, attributeSet);
    }

    public d.b.q.m createMultiAutoCompleteTextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.m(context, attributeSet);
    }

    public d.b.q.p createRadioButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.p(context, attributeSet);
    }

    public d.b.q.q createRatingBar(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.q(context, attributeSet);
    }

    public d.b.q.r createSeekBar(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.r(context, attributeSet);
    }

    public d.b.q.u createSpinner(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.u(context, attributeSet, d.b.a.spinnerStyle);
    }

    public d.b.q.x createTextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.x(context, attributeSet);
    }

    public d.b.q.z createToggleButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new d.b.q.z(context, attributeSet);
    }

    public android.view.View createView(android.content.Context context, java.lang.String str, android.util.AttributeSet attributeSet) {
        return null;
    }

    public final android.view.View createView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        android.content.Context context2;
        android.view.View viewCreateTextView;
        context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = themifyContext(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = d.b.q.s0.a(context2);
        }
        switch (str) {
            case "TextView":
                viewCreateTextView = createTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "ImageView":
                viewCreateTextView = createImageView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "Button":
                viewCreateTextView = createButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "EditText":
                viewCreateTextView = createEditText(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "Spinner":
                viewCreateTextView = createSpinner(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "ImageButton":
                viewCreateTextView = createImageButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "CheckBox":
                viewCreateTextView = createCheckBox(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "RadioButton":
                viewCreateTextView = createRadioButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "CheckedTextView":
                viewCreateTextView = createCheckedTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "AutoCompleteTextView":
                viewCreateTextView = createAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "MultiAutoCompleteTextView":
                viewCreateTextView = createMultiAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "RatingBar":
                viewCreateTextView = createRatingBar(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "SeekBar":
                viewCreateTextView = createSeekBar(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case "ToggleButton":
                viewCreateTextView = createToggleButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            default:
                viewCreateTextView = createView(context2, str, attributeSet);
                break;
        }
        if (viewCreateTextView == null && context != context2) {
            viewCreateTextView = createViewFromTag(context2, str, attributeSet);
        }
        if (viewCreateTextView != null) {
            checkOnClickListener(viewCreateTextView, attributeSet);
        }
        return viewCreateTextView;
    }
}
