package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareIntentUtil {
    public static final java.lang.String INTENT_IS_PROTECTED_APP = "intent_is_protected_app";
    public static final java.lang.String INTENT_PATCH_COST_TIME = "intent_patch_cost_time";
    public static final java.lang.String INTENT_PATCH_DEXES_PATH = "intent_patch_dexes_path";
    public static final java.lang.String INTENT_PATCH_EXCEPTION = "intent_patch_exception";
    public static final java.lang.String INTENT_PATCH_INTERPRET_EXCEPTION = "intent_patch_interpret_exception";
    public static final java.lang.String INTENT_PATCH_LIBS_PATH = "intent_patch_libs_path";
    public static final java.lang.String INTENT_PATCH_MISMATCH_DEX_PATH = "intent_patch_mismatch_dex_path";
    public static final java.lang.String INTENT_PATCH_MISMATCH_LIB_PATH = "intent_patch_mismatch_lib_path";
    public static final java.lang.String INTENT_PATCH_MISSING_DEX_PATH = "intent_patch_missing_dex_path";
    public static final java.lang.String INTENT_PATCH_MISSING_LIB_PATH = "intent_patch_missing_lib_path";
    public static final java.lang.String INTENT_PATCH_NEW_VERSION = "intent_patch_new_version";
    public static final java.lang.String INTENT_PATCH_OAT_DIR = "intent_patch_oat_dir";
    public static final java.lang.String INTENT_PATCH_OLD_VERSION = "intent_patch_old_version";
    public static final java.lang.String INTENT_PATCH_PACKAGE_CONFIG = "intent_patch_package_config";
    public static final java.lang.String INTENT_PATCH_PACKAGE_PATCH_CHECK = "intent_patch_package_patch_check";
    public static final java.lang.String INTENT_PATCH_SYSTEM_OTA = "intent_patch_system_ota";
    public static final java.lang.String INTENT_RETURN_CODE = "intent_return_code";
    public static final java.lang.String INTENT_USE_CUSTOM_PATCH = "intent_use_custom_patch";
    public static final java.lang.String TAG = "ShareIntentUtil";

    public static void fixIntentClassLoader(android.content.Intent intent, java.lang.ClassLoader classLoader) {
        try {
            intent.setExtrasClassLoader(classLoader);
        } catch (java.lang.Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean getBooleanExtra(android.content.Intent intent, java.lang.String str, boolean z) {
        if (intent == null) {
            return z;
        }
        try {
            return intent.getBooleanExtra(str, z);
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.I(e2, e.a.c.a.a.o("getBooleanExtra exception:")), new java.lang.Object[0]);
            return z;
        }
    }

    public static int getIntExtra(android.content.Intent intent, java.lang.String str, int i) {
        if (intent == null) {
            return i;
        }
        try {
            return intent.getIntExtra(str, i);
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.I(e2, e.a.c.a.a.o("getIntExtra exception:")), new java.lang.Object[0]);
            return i;
        }
    }

    public static java.lang.Throwable getIntentInterpretException(android.content.Intent intent) {
        java.io.Serializable serializableExtra = getSerializableExtra(intent, INTENT_PATCH_INTERPRET_EXCEPTION);
        if (serializableExtra != null) {
            return (java.lang.Throwable) serializableExtra;
        }
        return null;
    }

    public static java.util.HashMap<java.lang.String, java.lang.String> getIntentPackageConfig(android.content.Intent intent) {
        java.io.Serializable serializableExtra = getSerializableExtra(intent, INTENT_PATCH_PACKAGE_CONFIG);
        if (serializableExtra != null) {
            return (java.util.HashMap) serializableExtra;
        }
        return null;
    }

    public static long getIntentPatchCostTime(android.content.Intent intent) {
        return intent.getLongExtra(INTENT_PATCH_COST_TIME, 0L);
    }

    public static java.util.HashMap<java.lang.String, java.lang.String> getIntentPatchDexPaths(android.content.Intent intent) {
        java.io.Serializable serializableExtra = getSerializableExtra(intent, INTENT_PATCH_DEXES_PATH);
        if (serializableExtra != null) {
            return (java.util.HashMap) serializableExtra;
        }
        return null;
    }

    public static java.lang.Throwable getIntentPatchException(android.content.Intent intent) {
        java.io.Serializable serializableExtra = getSerializableExtra(intent, "intent_patch_exception");
        if (serializableExtra != null) {
            return (java.lang.Throwable) serializableExtra;
        }
        return null;
    }

    public static java.util.HashMap<java.lang.String, java.lang.String> getIntentPatchLibsPaths(android.content.Intent intent) {
        java.io.Serializable serializableExtra = getSerializableExtra(intent, INTENT_PATCH_LIBS_PATH);
        if (serializableExtra != null) {
            return (java.util.HashMap) serializableExtra;
        }
        return null;
    }

    public static int getIntentReturnCode(android.content.Intent intent) {
        return getIntExtra(intent, INTENT_RETURN_CODE, com.tencent.tinker.loader.shareutil.ShareConstants.ERROR_LOAD_GET_INTENT_FAIL);
    }

    public static long getLongExtra(android.content.Intent intent, java.lang.String str, long j) {
        if (intent == null) {
            return j;
        }
        try {
            return intent.getLongExtra(str, j);
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.I(e2, e.a.c.a.a.o("getIntExtra exception:")), new java.lang.Object[0]);
            return j;
        }
    }

    public static java.io.Serializable getSerializableExtra(android.content.Intent intent, java.lang.String str) {
        if (intent == null) {
            return null;
        }
        try {
            return intent.getSerializableExtra(str);
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.I(e2, e.a.c.a.a.o("getSerializableExtra exception:")), new java.lang.Object[0]);
            return null;
        }
    }

    public static java.util.ArrayList<java.lang.String> getStringArrayListExtra(android.content.Intent intent, java.lang.String str) {
        if (intent == null) {
            return null;
        }
        try {
            return intent.getStringArrayListExtra(str);
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.I(e2, e.a.c.a.a.o("getStringExtra exception:")), new java.lang.Object[0]);
            return null;
        }
    }

    public static java.lang.String getStringExtra(android.content.Intent intent, java.lang.String str) {
        if (intent == null) {
            return null;
        }
        try {
            return intent.getStringExtra(str);
        } catch (java.lang.Exception e2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.I(e2, e.a.c.a.a.o("getStringExtra exception:")), new java.lang.Object[0]);
            return null;
        }
    }

    public static void setIntentPatchCostTime(android.content.Intent intent, long j) {
        intent.putExtra(INTENT_PATCH_COST_TIME, j);
    }

    public static void setIntentReturnCode(android.content.Intent intent, int i) {
        intent.putExtra(INTENT_RETURN_CODE, i);
    }
}
