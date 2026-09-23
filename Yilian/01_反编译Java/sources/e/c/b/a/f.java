package e.c.b.a;

/* loaded from: classes.dex */
public final class f {
    public static java.lang.String a(int i, int i2, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.String str) {
        if (i < 0) {
            return o("%s (%s) must not be negative", str, java.lang.Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return o("%s (%s) must not be greater than size (%s)", str, java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2));
        }
        throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("negative size: ", i2));
    }

    public static void b(boolean z, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (!z) {
            throw new java.lang.IllegalArgumentException(java.lang.String.valueOf(obj));
        }
    }

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public static int c(int i, int i2) {
        java.lang.String strO;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strO = o("%s (%s) must not be negative", "index", java.lang.Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("negative size: ", i2));
            }
            strO = o("%s (%s) must be less than size (%s)", "index", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2));
        }
        throw new java.lang.IndexOutOfBoundsException(strO);
    }

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @org.checkerframework.checker.nullness.compatqual.NonNullDecl
    public static <T> T d(@org.checkerframework.checker.nullness.compatqual.NonNullDecl T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public static int e(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new java.lang.IndexOutOfBoundsException(a(i, i2, "index"));
        }
        return i;
    }

    public static void f(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new java.lang.IndexOutOfBoundsException((i < 0 || i > i3) ? a(i, i3, "start index") : (i2 < 0 || i2 > i3) ? a(i2, i3, "end index") : o("end index (%s) must not be less than start index (%s)", java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i)));
        }
    }

    public static void g(java.util.Iterator<?> it) {
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static boolean h(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static <T> T i(@org.checkerframework.checker.nullness.compatqual.NullableDecl T t, @org.checkerframework.checker.nullness.compatqual.NullableDecl T t2) {
        return t != null ? t : t2;
    }

    public static java.lang.String j(android.content.Context context) {
        int i = android.os.Build.VERSION.SDK_INT;
        android.content.res.Configuration configuration = context.getResources().getConfiguration();
        return (i >= 24 ? configuration.getLocales().get(0) : configuration.locale).toString();
    }

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public static <T> T k(java.lang.Iterable<? extends T> iterable, @org.checkerframework.checker.nullness.compatqual.NullableDecl T t) {
        java.util.Iterator<? extends T> it = iterable.iterator();
        return it.hasNext() ? it.next() : t;
    }

    public static <T> T l(java.lang.Iterable<T> iterable) {
        T next;
        if (iterable instanceof java.util.List) {
            java.util.List list = (java.util.List) iterable;
            if (list.isEmpty()) {
                throw new java.util.NoSuchElementException();
            }
            return (T) list.get(list.size() - 1);
        }
        java.util.Iterator<T> it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public static <T> T m(java.lang.Iterable<? extends T> iterable, @org.checkerframework.checker.nullness.compatqual.NullableDecl T t) {
        T next = null;
        if (iterable instanceof java.util.Collection) {
            if (((java.util.Collection) iterable).isEmpty()) {
                return null;
            }
            if (iterable instanceof java.util.List) {
                return (T) ((java.util.List) iterable).get(r1.size() - 1);
            }
        }
        java.util.Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            do {
                next = it.next();
            } while (it.hasNext());
        }
        return next;
    }

    public static boolean n(android.content.Context context) {
        return j(context).contains("zh_CN");
    }

    public static java.lang.String o(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.String str, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object... objArr) {
        int iIndexOf;
        java.lang.String strValueOf;
        java.lang.String strValueOf2 = java.lang.String.valueOf(str);
        int i = 0;
        for (int i2 = 0; i2 < objArr.length; i2++) {
            java.lang.Object obj = objArr[i2];
            try {
                strValueOf = java.lang.String.valueOf(obj);
            } catch (java.lang.Exception e2) {
                java.lang.String str2 = obj.getClass().getName() + '@' + java.lang.Integer.toHexString(java.lang.System.identityHashCode(obj));
                java.util.logging.Logger.getLogger("com.google.common.base.Strings").log(java.util.logging.Level.WARNING, "Exception during lenientFormat for " + str2, (java.lang.Throwable) e2);
                strValueOf = "<" + str2 + " threw " + e2.getClass().getName() + ">";
            }
            objArr[i2] = strValueOf;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder((objArr.length * 16) + strValueOf2.length());
        int i3 = 0;
        while (i < objArr.length && (iIndexOf = strValueOf2.indexOf("%s", i3)) != -1) {
            sb.append((java.lang.CharSequence) strValueOf2, i3, iIndexOf);
            sb.append(objArr[i]);
            i3 = iIndexOf + 2;
            i++;
        }
        sb.append((java.lang.CharSequence) strValueOf2, i3, strValueOf2.length());
        if (i < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb.append(", ");
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static int p(int i) {
        return (int) (java.lang.Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static int q(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return p(obj == null ? 0 : obj.hashCode());
    }
}
