package com.umeng.commonsdk.framework;

/* loaded from: classes.dex */
public class UMModuleRegister {
    public static final java.lang.String ANALYTICS = "analytics";
    public static final java.lang.String INNER = "internal";
    public static final int INNER_EVENT_VALUE_HIGH = 36864;
    public static final int INNER_EVENT_VALUE_LOW = 32769;
    public static final java.lang.String PROCESS = "process";
    public static final int PROCESS_EVENT_VALUE_HIGH = 37120;
    public static final int PROCESS_EVENT_VALUE_LOW = 36945;
    public static final java.lang.String PUSH = "push";
    public static final int PUSH_EVENT_VALUE_HIGH = 20480;
    public static final int PUSH_EVENT_VALUE_LOW = 16385;
    public static final java.lang.String SHARE = "share";
    public static final int SHARE_EVENT_VALUE_HIGH = 28672;
    public static final int SHARE_EVENT_VALUE_LOW = 24577;
    public static android.content.Context mModuleAppContext;
    public static java.util.HashMap<java.lang.String, com.umeng.commonsdk.framework.UMLogDataProtocol> mModuleMap;

    public static java.lang.String eventType2ModuleName(int i) {
        java.lang.String str = (i < 16385 || i > 20480) ? "analytics" : "push";
        if (i >= 24577 && i <= 28672) {
            str = "share";
        }
        if (i >= 32769 && i <= 36864) {
            str = INNER;
        }
        return (i < 36945 || i > 37120) ? str : PROCESS;
    }

    public static android.content.Context getAppContext() {
        return mModuleAppContext;
    }

    public static com.umeng.commonsdk.framework.UMLogDataProtocol getCallbackFromModuleName(java.lang.String str) {
        if (mModuleMap.containsKey(str)) {
            return mModuleMap.get(str);
        }
        return null;
    }

    public static void registerAppContext(android.content.Context context) {
        if (mModuleAppContext == null) {
            mModuleAppContext = context.getApplicationContext();
        }
    }

    public static boolean registerCallback(int i, com.umeng.commonsdk.framework.UMLogDataProtocol uMLogDataProtocol) {
        if (mModuleMap == null) {
            mModuleMap = new java.util.HashMap<>();
        }
        java.lang.String strEventType2ModuleName = eventType2ModuleName(i);
        if (mModuleMap.containsKey(strEventType2ModuleName)) {
            return true;
        }
        mModuleMap.put(strEventType2ModuleName, uMLogDataProtocol);
        return true;
    }
}
