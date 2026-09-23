package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class EmuiUtil {
    public static final java.lang.String BUILDEX_NAME = "com.huawei.android.os.BuildEx";
    public static final java.lang.String BUILDEX_VERSION = "com.huawei.android.os.BuildEx$VERSION";
    public static final int EMUI_3_0 = 7;
    public static final int EMUI_3_1 = 8;
    public static final int EMUI_4_0 = 9;
    public static final int EMUI_4_1 = 10;
    public static final int EMUI_5_0 = 11;
    public static final int EMUI_6_0 = 14;
    public static final int EMUI_8_0_1 = 15;
    public static final int EMUI_9_0 = 17;
    public static final java.lang.String EMUI_SDK_INT = "EMUI_SDK_INT";
    public static final int EMUI_TYPE_UNKOWN = -1;
    public static final java.lang.String GET_PRIMARY_COLOR = "getPrimaryColor";
    public static final java.lang.String GET_SUGGESTION_FOR_GROUND_COLOR_STYLE = "getSuggestionForgroundColorStyle";
    public static final java.lang.String IMMERSION_STYLE = "com.huawei.android.immersion.ImmersionStyle";
    public static final java.lang.String TAG = "KPMS_Util_Emui";
    public static final int TYPE_EMUI_30 = 30;
    public static final int TYPE_EMUI_31 = 31;
    public static final int TYPE_EMUI_40 = 40;
    public static final int TYPE_EMUI_41 = 41;
    public static final int TYPE_EMUI_50 = 50;
    public static final int TYPE_EMUI_60 = 60;
    public static final int TYPE_EMUI_801 = 81;
    public static final int TYPE_EMUI_90 = 90;
    public static int emuiType = -1;

    static {
        initEmuiType();
    }

    public static int getEMUIVersionCode() throws java.lang.NoSuchFieldException {
        int iIntValue;
        java.lang.Object staticFieldObj = com.huawei.hms.framework.common.ReflectionUtils.getStaticFieldObj(BUILDEX_VERSION, EMUI_SDK_INT);
        if (staticFieldObj != null) {
            try {
                iIntValue = ((java.lang.Integer) staticFieldObj).intValue();
            } catch (java.lang.ClassCastException e2) {
                com.huawei.hms.framework.common.Logger.e(TAG, "getEMUIVersionCode ClassCastException:", e2);
            }
        } else {
            iIntValue = 0;
        }
        com.huawei.hms.framework.common.Logger.d(TAG, "the emui version code is::" + iIntValue);
        return iIntValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initEmuiType() throws java.lang.NoSuchFieldException {
        /*
            int r0 = getEMUIVersionCode()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getEmuiType emuiVersionCode="
            r1.append(r2)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "KPMS_Util_Emui"
            com.huawei.hms.framework.common.Logger.d(r2, r1)
            r1 = 17
            if (r0 < r1) goto L23
            r0 = 90
        L20:
            com.huawei.hms.framework.common.EmuiUtil.emuiType = r0
            goto L53
        L23:
            r1 = 15
            if (r0 < r1) goto L2a
            r0 = 81
            goto L20
        L2a:
            r1 = 14
            if (r0 < r1) goto L31
            r0 = 60
            goto L20
        L31:
            r1 = 11
            if (r0 < r1) goto L38
            r0 = 50
            goto L20
        L38:
            r1 = 10
            if (r0 < r1) goto L3f
            r0 = 41
            goto L20
        L3f:
            r1 = 9
            if (r0 < r1) goto L46
            r0 = 40
            goto L20
        L46:
            r1 = 8
            if (r0 < r1) goto L4d
            r0 = 31
            goto L20
        L4d:
            r1 = 7
            if (r0 < r1) goto L53
            r0 = 30
            goto L20
        L53:
            int r0 = com.huawei.hms.framework.common.EmuiUtil.emuiType
            r1 = -1
            if (r0 != r1) goto L5d
            java.lang.String r0 = "emuiType is unkown"
            com.huawei.hms.framework.common.Logger.i(r2, r0)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.common.EmuiUtil.initEmuiType():void");
    }

    public static boolean isEMUI() {
        return -1 != emuiType;
    }

    public static boolean isUpPVersion() {
        return com.huawei.hms.framework.common.ReflectionUtils.checkCompatible(BUILDEX_NAME) && com.huawei.android.os.BuildEx.VERSION.EMUI_SDK_INT >= 17;
    }
}
