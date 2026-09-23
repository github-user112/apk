package com.umeng.commonsdk.debug;

/* loaded from: classes.dex */
public class UMLog {
    public static final java.lang.String AQ = "├───────────────────解决方案─────────────────────────────────────────────────────────────────────────────";
    public static final java.lang.String BOTTOM_BORDER = "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    public static final char BOTTOM_LEFT_CORNER = 9492;
    public static final java.lang.String DOUBLE_DIVIDER = "────────────────────────────────────────────────────────";
    public static final java.lang.String DOUBLE_DIVIDER_AQ = "───────────────────问题─────────────────────";
    public static final char HORIZONTAL_LINE = 9474;
    public static final java.lang.String INDENT = "     ";
    public static final int JSON_INDENT = 2;
    public static final int KEYLENGTH = 10;
    public static final java.lang.String MIDDLE_BORDER = "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    public static final char MIDDLE_CORNER = 9500;
    public static final java.lang.String SINGLE_DIVIDER = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    public static final java.lang.String SINGLE_DIVIDER_AQ = "───────────────────解决方案─────────────────────";
    public static final java.lang.String TAG = "UMLog";
    public static final java.lang.String TOP_BORDER = "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    public static final java.lang.String TOP_BORDER_AQ = "┌───────────────────问题─────────────────────────────────────────────────────────────────────────────";
    public static final char TOP_LEFT_CORNER = 9484;

    public static void aq(int i, java.lang.String str, java.lang.String str2) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                com.umeng.commonsdk.debug.UInterface logger = getLogger(i);
                logger.log(TAG, TOP_BORDER_AQ);
                logger.log(TAG, "│     " + str);
                logger.log(TAG, AQ);
                logger.log(TAG, "│     " + str2);
                logger.log(TAG, BOTTOM_BORDER);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void aq(java.lang.String str, int i, java.lang.String str2) {
        aq((java.lang.String) null, str, i, str2);
    }

    public static void aq(java.lang.String str, int i, java.lang.String str2, java.lang.String str3) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                com.umeng.commonsdk.debug.UInterface logger = getLogger(i);
                java.lang.String str4 = "UMLog_" + str;
                logger.log(str4, TOP_BORDER_AQ);
                logger.log(str4, "│     " + str2);
                logger.log(str4, AQ);
                logger.log(str4, "│     " + str3);
                logger.log(str4, BOTTOM_BORDER);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void aq(java.lang.String str, int i, java.lang.String str2, java.lang.String[] strArr, java.lang.String[] strArr2, java.lang.String[] strArr3, java.lang.String[] strArr4) {
        aq(null, str, i, str2, strArr, strArr2, strArr3, strArr4);
    }

    public static void aq(java.lang.String str, java.lang.String str2, int i, java.lang.String str3) {
        aq(str, str2, i, str3, null, null, null, null);
    }

    public static void aq(java.lang.String str, java.lang.String str2, int i, java.lang.String str3, java.lang.String[] strArr, java.lang.String[] strArr2, java.lang.String[] strArr3, java.lang.String[] strArr4) {
        java.lang.String[] strArrSplit;
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                java.lang.String str4 = android.text.TextUtils.isEmpty(str) ? TAG : "UMLog_" + str;
                if (android.text.TextUtils.isEmpty(str2) || android.text.TextUtils.isEmpty(str3) || (strArrSplit = str2.split(str3)) == null || strArrSplit.length < 2) {
                    return;
                }
                if (strArr != null && strArr.length > 0 && strArr2 != null && strArr2.length > 0) {
                    for (int i2 = 0; i2 < strArr.length && i2 < strArr2.length; i2++) {
                        strArrSplit[0] = strArrSplit[0].replace(strArr[i2], strArr2[i2]);
                    }
                }
                if (strArr3 != null && strArr3.length > 0 && strArr4 != null && strArr4.length > 0) {
                    for (int i3 = 0; i3 < strArr3.length && i3 < strArr4.length; i3++) {
                        strArrSplit[1] = strArrSplit[1].replace(strArr3[i3], strArr4[i3]);
                    }
                }
                com.umeng.commonsdk.debug.UInterface logger = getLogger(i);
                logger.log(str4, TOP_BORDER_AQ);
                logger.log(str4, "│     " + strArrSplit[0]);
                logger.log(str4, AQ);
                logger.log(str4, "│     " + strArrSplit[1]);
                logger.log(str4, BOTTOM_BORDER);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void bundle(int i, android.os.Bundle bundle) {
        bundle(null, i, bundle);
    }

    public static void bundle(java.lang.String str, int i, android.os.Bundle bundle) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                java.lang.String str2 = android.text.TextUtils.isEmpty(str) ? TAG : "UMLog_" + str;
                if (bundle != null) {
                    com.umeng.commonsdk.debug.UInterface logger = getLogger(i);
                    logger.log(str2, TOP_BORDER);
                    logger.log(str2, "│key│value");
                    logger.log(str2, MIDDLE_BORDER);
                    for (java.lang.String str3 : bundle.keySet()) {
                        if (!android.text.TextUtils.isEmpty(str3) && bundle.get(str3) != null) {
                            logger.log(str2, HORIZONTAL_LINE + str3 + HORIZONTAL_LINE + bundle.get(str3).toString());
                            logger.log(str2, MIDDLE_BORDER);
                        }
                    }
                    logger.log(str2, BOTTOM_BORDER);
                }
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static com.umeng.commonsdk.debug.UInterface getLogger(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? new com.umeng.commonsdk.debug.D() : new com.umeng.commonsdk.debug.D() : new com.umeng.commonsdk.debug.I() : new com.umeng.commonsdk.debug.W() : new com.umeng.commonsdk.debug.E();
    }

    public static void jsonArry(java.lang.String str, org.json.JSONArray jSONArray) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                android.util.Log.e("UMLog_" + str, jSONArray.toString(2));
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void jsonArry(org.json.JSONArray jSONArray) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                android.util.Log.e(TAG, jSONArray.toString(2));
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void jsonObject(java.lang.String str, org.json.JSONObject jSONObject) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                android.util.Log.e("UMLog_" + str, jSONObject.toString(2));
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void jsonObject(org.json.JSONObject jSONObject) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                android.util.Log.e(TAG, jSONObject.toString(2));
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void mutlInfo(int i, java.lang.String... strArr) {
        java.lang.String str;
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                int length = strArr.length;
                com.umeng.commonsdk.debug.UInterface logger = getLogger(i);
                if (length == 1) {
                    str = strArr[0];
                } else {
                    if (length < 2) {
                        return;
                    }
                    logger.log(TAG, TOP_BORDER);
                    for (int i2 = 0; i2 < length; i2++) {
                        logger.log(TAG, "│     " + strArr[i2]);
                        if (i2 != length - 1) {
                            logger.log(TAG, MIDDLE_BORDER);
                        }
                    }
                    str = BOTTOM_BORDER;
                }
                logger.log(TAG, str);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void mutlInfo(java.lang.String str, int i, java.lang.String str2) {
        mutlInfo(null, str, i, str2);
    }

    public static void mutlInfo(java.lang.String str, int i, java.lang.String str2, java.lang.String[] strArr, java.lang.String[] strArr2) {
        mutlInfo(null, str, i, str2, strArr, strArr2);
    }

    public static void mutlInfo(java.lang.String str, int i, java.lang.String... strArr) {
        java.lang.String str2;
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                int length = strArr.length;
                com.umeng.commonsdk.debug.UInterface logger = getLogger(i);
                java.lang.String str3 = "UMLog_" + str;
                if (length == 1) {
                    str2 = strArr[0];
                } else {
                    if (length < 2) {
                        return;
                    }
                    logger.log(str3, TOP_BORDER);
                    for (int i2 = 0; i2 < length; i2++) {
                        logger.log(str3, "│     " + strArr[i2]);
                        if (i2 != length - 1) {
                            logger.log(str3, MIDDLE_BORDER);
                        }
                    }
                    str2 = BOTTOM_BORDER;
                }
                logger.log(str3, str2);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void mutlInfo(java.lang.String str, java.lang.String str2, int i, java.lang.String str3) {
        mutlInfo(str, str2, i, str3, null, null);
    }

    public static void mutlInfo(java.lang.String str, java.lang.String str2, int i, java.lang.String str3, java.lang.String[] strArr, java.lang.String[] strArr2) {
        try {
            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                java.lang.String str4 = android.text.TextUtils.isEmpty(str) ? TAG : "UMLog_" + str;
                if (android.text.TextUtils.isEmpty(str2)) {
                    return;
                }
                if (strArr != null && strArr.length > 0 && strArr2 != null && strArr2.length > 0) {
                    for (int i2 = 0; i2 < strArr.length && i2 < strArr2.length; i2++) {
                        str2 = str2.replace(strArr[i2], strArr2[i2]);
                    }
                }
                com.umeng.commonsdk.debug.UInterface logger = getLogger(i);
                if (!android.text.TextUtils.isEmpty(str3)) {
                    java.lang.String[] strArrSplit = str2.split(str3);
                    if (strArrSplit == null) {
                        return;
                    }
                    logger.log(str4, TOP_BORDER);
                    for (int i3 = 0; i3 < strArrSplit.length; i3++) {
                        logger.log(str4, "│     " + strArrSplit[i3]);
                        if (i3 != strArrSplit.length - 1) {
                            logger.log(str4, MIDDLE_BORDER);
                        }
                    }
                    str2 = BOTTOM_BORDER;
                }
                logger.log(str4, str2);
            }
        } catch (java.lang.Exception unused) {
        }
    }
}
