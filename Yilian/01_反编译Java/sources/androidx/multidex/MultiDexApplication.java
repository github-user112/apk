package androidx.multidex;

/* loaded from: classes.dex */
public class MultiDexApplication extends android.app.Application {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(android.content.Context context) {
        super.attachBaseContext(context);
        d.o.e.f(this);
    }
}
