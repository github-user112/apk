package com.huawei.hms.common.util;

/* loaded from: classes.dex */
public final class Objects {

    public static final class ToStringHelper {
        public final java.util.List<java.lang.String> a;
        public final java.lang.Object b;

        public ToStringHelper(java.lang.Object obj) {
            this.b = com.huawei.hms.common.Preconditions.checkNotNull(obj);
            this.a = new java.util.ArrayList();
        }

        public /* synthetic */ ToStringHelper(java.lang.Object obj, byte b) {
            this(obj);
        }

        public final com.huawei.hms.common.util.Objects.ToStringHelper add(java.lang.String str, java.lang.Object obj) {
            java.lang.String str2 = (java.lang.String) com.huawei.hms.common.Preconditions.checkNotNull(str);
            java.lang.String strValueOf = java.lang.String.valueOf(obj);
            this.a.add(str2 + "=" + strValueOf);
            return this;
        }

        public final java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(100);
            sb.append(this.b.getClass().getSimpleName());
            sb.append('{');
            int size = this.a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public Objects() {
        throw new java.lang.AssertionError("illegal argument");
    }

    public static boolean equal(java.lang.Object obj, java.lang.Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int hashCode(java.lang.Object... objArr) {
        return java.util.Arrays.hashCode(objArr);
    }

    public static com.huawei.hms.common.util.Objects.ToStringHelper toStringHelper(java.lang.Object obj) {
        return new com.huawei.hms.common.util.Objects.ToStringHelper(obj, (byte) 0);
    }
}
