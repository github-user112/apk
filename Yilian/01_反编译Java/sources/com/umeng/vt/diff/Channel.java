package com.umeng.vt.diff;

/* loaded from: classes.dex */
public class Channel {
    public static final java.lang.String UM_VISUAL_IMPRINT = "utm-visual";

    private void download() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method method;
        try {
            java.lang.Class<?> clsFindClass = com.umeng.vt.diff.util.ClassLoadUtil.findClass("com.umeng.vt.vismode.config.ConfigTools");
            if (clsFindClass == null || (method = clsFindClass.getMethod("download", new java.lang.Class[0])) == null) {
                return;
            }
            method.invoke(clsFindClass.getMethod("getInstance", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]), new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    private void storeConfig(java.util.Map<java.lang.String, java.lang.String> map) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method method;
        try {
            java.lang.Class<?> clsFindClass = com.umeng.vt.diff.util.ClassLoadUtil.findClass("com.umeng.vt.vismode.config.ConfigTools");
            if (clsFindClass == null || (method = clsFindClass.getMethod("storeConfig", java.util.Map.class)) == null) {
                return;
            }
            method.invoke(clsFindClass.getMethod("getInstance", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]), map);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public void init(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (context == null) {
            return;
        }
        android.content.Context applicationContext = context.getApplicationContext();
        loadConfig(applicationContext);
        registerListener(applicationContext);
    }

    public void loadConfig(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, UM_VISUAL_IMPRINT, null);
        if (android.text.TextUtils.isEmpty(strImprintProperty)) {
            return;
        }
        java.lang.String str = new java.lang.String(android.util.Base64.decode(strImprintProperty, 0));
        java.util.HashMap map = new java.util.HashMap();
        map.put("data-track", str);
        storeConfig(map);
    }

    public void registerListener(final android.content.Context context) {
        com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(context).registImprintCallback(UM_VISUAL_IMPRINT, new com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback() { // from class: com.umeng.vt.diff.Channel.1
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(java.lang.String str, java.lang.String str2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
                if (com.umeng.vt.diff.Channel.UM_VISUAL_IMPRINT.equals(str)) {
                    com.umeng.vt.diff.Channel.this.loadConfig(context);
                }
            }
        });
    }
}
