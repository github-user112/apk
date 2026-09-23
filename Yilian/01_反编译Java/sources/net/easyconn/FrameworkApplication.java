package net.easyconn;

/* loaded from: classes.dex */
public class FrameworkApplication extends androidx.multidex.MultiDexApplication {
    public static android.content.Context mContext;

    public static android.content.Context getContext() {
        return mContext;
    }

    public static void setContext(android.content.Context context) {
        mContext = context;
        f.a.i.m.f.e(android.os.Looper.getMainLooper(), 5000L);
    }
}
