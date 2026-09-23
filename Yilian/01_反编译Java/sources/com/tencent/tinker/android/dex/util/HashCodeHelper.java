package com.tencent.tinker.android.dex.util;

/* loaded from: classes.dex */
public final class HashCodeHelper {
    public HashCodeHelper() {
        throw new java.lang.UnsupportedOperationException();
    }

    public static int hash(java.lang.Object... objArr) {
        int iHashCode;
        if (objArr == null || objArr.length == 0) {
            return 0;
        }
        int iHash = 0;
        for (java.lang.Object obj : objArr) {
            if (obj != null) {
                if (obj instanceof java.lang.Number) {
                    iHashCode = obj.hashCode();
                    iHash += iHashCode;
                } else {
                    if (obj instanceof boolean[]) {
                        iHashCode = java.util.Arrays.hashCode((boolean[]) obj);
                    } else if (obj instanceof byte[]) {
                        iHashCode = java.util.Arrays.hashCode((byte[]) obj);
                    } else if (obj instanceof char[]) {
                        iHashCode = java.util.Arrays.hashCode((char[]) obj);
                    } else if (obj instanceof short[]) {
                        iHashCode = java.util.Arrays.hashCode((short[]) obj);
                    } else if (obj instanceof int[]) {
                        iHashCode = java.util.Arrays.hashCode((int[]) obj);
                    } else if (obj instanceof long[]) {
                        iHashCode = java.util.Arrays.hashCode((long[]) obj);
                    } else if (obj instanceof float[]) {
                        iHashCode = java.util.Arrays.hashCode((float[]) obj);
                    } else if (obj instanceof double[]) {
                        iHashCode = java.util.Arrays.hashCode((double[]) obj);
                    } else if (obj instanceof java.lang.Object[]) {
                        iHashCode = java.util.Arrays.hashCode((java.lang.Object[]) obj);
                    } else {
                        if (obj.getClass().isArray()) {
                            for (int i = 0; i < java.lang.reflect.Array.getLength(obj); i++) {
                                iHash += hash(java.lang.reflect.Array.get(obj, i));
                            }
                        }
                        iHashCode = obj.hashCode();
                    }
                    iHash += iHashCode;
                }
            }
        }
        return iHash;
    }
}
