package com.tencent.tinker.loader.hotplug.handler;

/* loaded from: classes.dex */
public class AMSInterceptHandler implements com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor.BinderInvocationHandler {
    public static final int INTENT_SENDER_ACTIVITY;
    public static final java.lang.String TAG = "Tinker.AMSIntrcptHndlr";
    public static final int[] TRANSLUCENT_ATTR_ID = {android.R.attr.windowIsTranslucent};
    public final android.content.Context mContext;

    static {
        int iIntValue = 2;
        if (android.os.Build.VERSION.SDK_INT < 27) {
            try {
                iIntValue = ((java.lang.Integer) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField((java.lang.Class<?>) android.app.ActivityManager.class, "INTENT_SENDER_ACTIVITY").get(null)).intValue();
            } catch (java.lang.Throwable th) {
                th.printStackTrace();
            }
        }
        INTENT_SENDER_ACTIVITY = iIntValue;
    }

    public AMSInterceptHandler(android.content.Context context) {
        android.content.Context baseContext;
        while ((context instanceof android.content.ContextWrapper) && (baseContext = ((android.content.ContextWrapper) context).getBaseContext()) != null) {
            context = baseContext;
        }
        this.mContext = context;
    }

    private java.lang.Object handleGetIntentSender(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
        int i = 0;
        while (true) {
            if (i >= objArr.length) {
                i = -1;
                break;
            }
            if (objArr[i] instanceof android.content.Intent[]) {
                break;
            }
            i++;
        }
        if (i != -1 && ((java.lang.Integer) objArr[0]).intValue() == INTENT_SENDER_ACTIVITY) {
            android.content.Intent[] intentArr = (android.content.Intent[]) objArr[i];
            for (int i2 = 0; i2 < intentArr.length; i2++) {
                android.content.Intent intent = new android.content.Intent(intentArr[i2]);
                processActivityIntent(intent);
                intentArr[i2] = intent;
            }
        }
        return method.invoke(obj, objArr);
    }

    private java.lang.Object handleStartActivities(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
        int i = 0;
        while (true) {
            if (i >= objArr.length) {
                i = -1;
                break;
            }
            if (objArr[i] instanceof android.content.Intent[]) {
                break;
            }
            i++;
        }
        if (i != -1) {
            android.content.Intent[] intentArr = (android.content.Intent[]) objArr[i];
            for (int i2 = 0; i2 < intentArr.length; i2++) {
                android.content.Intent intent = new android.content.Intent(intentArr[i2]);
                processActivityIntent(intent);
                intentArr[i2] = intent;
            }
        }
        return method.invoke(obj, objArr);
    }

    private java.lang.Object handleStartActivity(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
        int i = 0;
        while (true) {
            if (i >= objArr.length) {
                i = -1;
                break;
            }
            if (objArr[i] instanceof android.content.Intent) {
                break;
            }
            i++;
        }
        if (i != -1) {
            android.content.Intent intent = new android.content.Intent((android.content.Intent) objArr[i]);
            processActivityIntent(intent);
            objArr[i] = intent;
        }
        return method.invoke(obj, objArr);
    }

    private boolean hasTransparentTheme(android.content.pm.ActivityInfo activityInfo) {
        int themeResource = activityInfo.getThemeResource();
        android.content.res.Resources.Theme themeNewTheme = this.mContext.getResources().newTheme();
        themeNewTheme.applyStyle(themeResource, true);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = themeNewTheme.obtainStyledAttributes(TRANSLUCENT_ATTR_ID);
            boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
            return z;
        } catch (java.lang.Throwable unused) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processActivityIntent(android.content.Intent r6) {
        /*
            r5 = this;
            android.content.ComponentName r0 = r6.getComponent()
            r1 = 0
            if (r0 == 0) goto L1b
            android.content.ComponentName r0 = r6.getComponent()
            java.lang.String r1 = r0.getPackageName()
            android.content.ComponentName r0 = r6.getComponent()
            java.lang.String r0 = r0.getClassName()
        L17:
            r4 = r1
            r1 = r0
            r0 = r4
            goto L42
        L1b:
            android.content.Context r0 = r5.mContext
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r2 = 0
            android.content.pm.ResolveInfo r0 = r0.resolveActivity(r6, r2)
            if (r0 != 0) goto L2c
            android.content.pm.ResolveInfo r0 = com.tencent.tinker.loader.hotplug.IncrementComponentManager.resolveIntent(r6)
        L2c:
            if (r0 == 0) goto L41
            android.content.IntentFilter r2 = r0.filter
            if (r2 == 0) goto L41
            java.lang.String r3 = "android.intent.category.DEFAULT"
            boolean r2 = r2.hasCategory(r3)
            if (r2 == 0) goto L41
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            java.lang.String r1 = r0.packageName
            java.lang.String r0 = r0.name
            goto L17
        L41:
            r0 = r1
        L42:
            boolean r2 = com.tencent.tinker.loader.hotplug.IncrementComponentManager.isIncrementActivity(r1)
            if (r2 == 0) goto L59
            android.content.pm.ActivityInfo r2 = com.tencent.tinker.loader.hotplug.IncrementComponentManager.queryActivityInfo(r1)
            boolean r3 = r5.hasTransparentTheme(r2)
            int r2 = r2.launchMode
            java.lang.String r2 = com.tencent.tinker.loader.hotplug.ActivityStubManager.assignStub(r1, r2, r3)
            r5.storeAndReplaceOriginalComponentName(r6, r0, r1, r2)
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.hotplug.handler.AMSInterceptHandler.processActivityIntent(android.content.Intent):void");
    }

    private void storeAndReplaceOriginalComponentName(android.content.Intent intent, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        android.content.ComponentName componentName = new android.content.ComponentName(str, str2);
        com.tencent.tinker.loader.shareutil.ShareIntentUtil.fixIntentClassLoader(intent, this.mContext.getClassLoader());
        intent.putExtra(com.tencent.tinker.loader.hotplug.EnvConsts.INTENT_EXTRA_OLD_COMPONENT, componentName);
        intent.setComponent(new android.content.ComponentName(str, str3));
    }

    @Override // com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor.BinderInvocationHandler
    public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
        java.lang.String name = method.getName();
        if ("startActivity".equals(name)) {
            return handleStartActivity(obj, method, objArr);
        }
        if ("startActivities".equals(name)) {
            return handleStartActivities(obj, method, objArr);
        }
        if (!"startActivityAndWait".equals(name) && !"startActivityWithConfig".equals(name) && !"startActivityAsUser".equals(name)) {
            return "getIntentSender".equals(name) ? handleGetIntentSender(obj, method, objArr) : method.invoke(obj, objArr);
        }
        return handleStartActivity(obj, method, objArr);
    }
}
