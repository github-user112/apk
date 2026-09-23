package com.tencent.tinker.loader.hotplug;

/* loaded from: classes.dex */
public class ActivityStubManager {
    public static final int NOTRANSPARENT_SLOT_INDEX = 0;
    public static final java.lang.String TAG = "Tinker.ActivityStubManager";
    public static final int TRANSPARENT_SLOT_INDEX = 1;
    public static java.util.Map<java.lang.String, java.lang.String> sTargetToStubClassNameMap = new java.util.HashMap();
    public static final int[] STANDARD_STUB_COUNT_SLOTS = {10, 3};
    public static final int[] SINGLETOP_STUB_COUNT_SLOTS = {10, 3};
    public static final int[] SINGLETASK_STUB_COUNT_SLOTS = {10, 3};
    public static final int[] SINGLEINSTANCE_STUB_COUNT_SLOTS = {10, 3};
    public static final int[] NEXT_STANDARD_STUB_IDX_SLOTS = {0, 0};
    public static final int[] NEXT_SINGLETOP_STUB_IDX_SLOTS = {0, 0};
    public static final int[] NEXT_SINGLETASK_STUB_IDX_SLOTS = {0, 0};
    public static final int[] NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS = {0, 0};

    public ActivityStubManager() {
        throw new java.lang.UnsupportedOperationException();
    }

    public static java.lang.String assignStub(java.lang.String str, int i, boolean z) {
        java.lang.String strE;
        int[] iArr;
        int[] iArr2;
        char c2;
        java.lang.String str2 = sTargetToStubClassNameMap.get(str);
        if (str2 != null) {
            return str2;
        }
        if (i == 1) {
            strE = com.tencent.tinker.loader.hotplug.ActivityStubs.SINGLETOP_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_SINGLETOP_STUB_IDX_SLOTS;
            iArr2 = SINGLETOP_STUB_COUNT_SLOTS;
        } else if (i == 2) {
            strE = com.tencent.tinker.loader.hotplug.ActivityStubs.SINGLETASK_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_SINGLETASK_STUB_IDX_SLOTS;
            iArr2 = SINGLETASK_STUB_COUNT_SLOTS;
        } else if (i != 3) {
            strE = com.tencent.tinker.loader.hotplug.ActivityStubs.STARDARD_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_STANDARD_STUB_IDX_SLOTS;
            iArr2 = STANDARD_STUB_COUNT_SLOTS;
        } else {
            strE = com.tencent.tinker.loader.hotplug.ActivityStubs.SINGLEINSTANCE_STUB_CLASSNAME_FORMAT;
            iArr = NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS;
            iArr2 = SINGLEINSTANCE_STUB_COUNT_SLOTS;
        }
        if (z) {
            strE = e.a.c.a.a.e(strE, com.tencent.tinker.loader.hotplug.ActivityStubs.TRANSPARENT_STUB_FORMAT_SUFFIX);
            c2 = 1;
        } else {
            c2 = 0;
        }
        int i2 = iArr[c2];
        iArr[c2] = i2 + 1;
        if (i2 >= iArr2[c2]) {
            iArr[c2] = 0;
            i2 = 0;
        }
        java.lang.String str3 = java.lang.String.format(strE, java.lang.Integer.valueOf(i2));
        sTargetToStubClassNameMap.put(str, str3);
        return str3;
    }
}
