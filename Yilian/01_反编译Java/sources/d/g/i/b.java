package d.g.i;

@java.lang.Deprecated
/* loaded from: classes.dex */
public final class b {
    static {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i < 18 || i >= 29) {
            return;
        }
        try {
            android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
            android.os.Trace.class.getMethod("isTagEnabled", java.lang.Long.TYPE);
            android.os.Trace.class.getMethod("asyncTraceBegin", java.lang.Long.TYPE, java.lang.String.class, java.lang.Integer.TYPE);
            android.os.Trace.class.getMethod("asyncTraceEnd", java.lang.Long.TYPE, java.lang.String.class, java.lang.Integer.TYPE);
            android.os.Trace.class.getMethod("traceCounter", java.lang.Long.TYPE, java.lang.String.class, java.lang.Integer.TYPE);
        } catch (java.lang.Exception e2) {
            android.util.Log.i("TraceCompat", "Unable to initialize via reflection.", e2);
        }
    }

    public static void a(java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            android.os.Trace.beginSection(str);
        }
    }

    public static void b() {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            android.os.Trace.endSection();
        }
    }
}
