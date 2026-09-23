package com.umeng.tunnel;

/* loaded from: classes.dex */
public class UMChannelAgent {
    public static final java.lang.String TAG = "UMChannelAgent";
    public static final java.lang.String UMENG_VCHANNEL = "com.umeng.commonsdk.vchannel.Sender";
    public static boolean vChannelReady = false;

    static {
        try {
            java.lang.Class.forName(UMENG_VCHANNEL);
            vChannelReady = true;
        } catch (java.lang.Throwable unused) {
        }
    }

    public static boolean init() {
        if (!vChannelReady) {
            android.util.Log.e(TAG, "--->>> Umeng tunnel module depends on common library, please integrate common first.");
        }
        return vChannelReady;
    }

    public static void onDebugEvent(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        reflectOnEvent(context, str, map);
    }

    public static void reflectOnEvent(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.String str2;
        try {
            java.lang.Class.forName(UMENG_VCHANNEL).getMethod("onEvent", android.content.Context.class, java.lang.String.class, java.util.Map.class).invoke(null, context, str, map);
        } catch (java.lang.ClassNotFoundException unused) {
            str2 = "--->>> Can not find class com.umeng.commonsdk.vchannel.sender .";
            android.util.Log.e(TAG, str2);
        } catch (java.lang.NoSuchMethodException unused2) {
            str2 = "--->>> Can not find method onEvent .";
            android.util.Log.e(TAG, str2);
        } catch (java.lang.SecurityException unused3) {
            str2 = "--->>> Security exception is thrown when we find onEvent method !";
            android.util.Log.e(TAG, str2);
        } catch (java.lang.Exception unused4) {
            str2 = "--->>> Exception is thrown when onEvent method is called !";
            android.util.Log.e(TAG, str2);
        }
    }

    public static void reflectSetCustomHeader(java.util.Map<java.lang.String, java.lang.String> map) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.String str;
        try {
            java.lang.Class.forName(UMENG_VCHANNEL).getMethod("setCustomHeader", java.util.Map.class).invoke(null, map);
        } catch (java.lang.ClassNotFoundException unused) {
            str = "--->>> Can not find class com.umeng.commonsdk.vchannel.sender .";
            android.util.Log.e(TAG, str);
        } catch (java.lang.NoSuchMethodException unused2) {
            str = "--->>> Can not find method setCustomHeader .";
            android.util.Log.e(TAG, str);
        } catch (java.lang.SecurityException unused3) {
            str = "--->>> Security exception is thrown when we find setCustomHeader method !";
            android.util.Log.e(TAG, str);
        } catch (java.lang.Exception unused4) {
            str = "--->>> Exception is thrown when setCustomHeader method is called !";
            android.util.Log.e(TAG, str);
        }
    }

    public static void setCustomHeader(java.util.Map<java.lang.String, java.lang.String> map) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        reflectSetCustomHeader(map);
    }
}
