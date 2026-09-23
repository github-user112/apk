package d.g.f;

/* loaded from: classes.dex */
public class a {
    public static final java.lang.Object a = new java.lang.Object();

    /* renamed from: d.g.f.a$a, reason: collision with other inner class name */
    public static class C0045a {
        public static void a(android.content.Context context, android.content.Intent[] intentArr, android.os.Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        public static void b(android.content.Context context, android.content.Intent intent, android.os.Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    public static class b {
        public static java.io.File[] a(android.content.Context context) {
            return context.getExternalCacheDirs();
        }

        public static java.io.File[] b(android.content.Context context, java.lang.String str) {
            return context.getExternalFilesDirs(str);
        }

        public static java.io.File[] c(android.content.Context context) {
            return context.getObbDirs();
        }
    }

    public static class c {
        public static java.io.File a(android.content.Context context) {
            return context.getCodeCacheDir();
        }

        public static android.graphics.drawable.Drawable b(android.content.Context context, int i) {
            return context.getDrawable(i);
        }

        public static java.io.File c(android.content.Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    public static class d {
        public static int a(android.content.Context context, int i) {
            return context.getColor(i);
        }

        public static android.content.res.ColorStateList b(android.content.Context context, int i) {
            return context.getColorStateList(i);
        }

        public static <T> T c(android.content.Context context, java.lang.Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        public static java.lang.String d(android.content.Context context, java.lang.Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    public static int a(android.content.Context context, java.lang.String str) {
        if (str != null) {
            return context.checkPermission(str, android.os.Process.myPid(), android.os.Process.myUid());
        }
        throw new java.lang.IllegalArgumentException("permission is null");
    }

    public static int b(android.content.Context context, int i) {
        return android.os.Build.VERSION.SDK_INT >= 23 ? d.g.f.a.d.a(context, i) : context.getResources().getColor(i);
    }

    public static android.content.res.ColorStateList c(android.content.Context context, int i) {
        return d.g.f.b.h.a(context.getResources(), i, context.getTheme());
    }

    public static android.graphics.drawable.Drawable d(android.content.Context context, int i) {
        return android.os.Build.VERSION.SDK_INT >= 21 ? d.g.f.a.c.b(context, i) : context.getResources().getDrawable(i);
    }

    public static java.io.File[] e(android.content.Context context) {
        return android.os.Build.VERSION.SDK_INT >= 19 ? d.g.f.a.b.a(context) : new java.io.File[]{context.getExternalCacheDir()};
    }

    public static java.io.File[] f(android.content.Context context, java.lang.String str) {
        return android.os.Build.VERSION.SDK_INT >= 19 ? d.g.f.a.b.b(context, null) : new java.io.File[]{context.getExternalFilesDir(null)};
    }

    public static boolean g(android.content.Context context, android.content.Intent[] intentArr, android.os.Bundle bundle) {
        d.g.f.a.C0045a.a(context, intentArr, bundle);
        return true;
    }

    public static void h(android.content.Context context, android.content.Intent intent, android.os.Bundle bundle) {
        d.g.f.a.C0045a.b(context, intent, bundle);
    }
}
