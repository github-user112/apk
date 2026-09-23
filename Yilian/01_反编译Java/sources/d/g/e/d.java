package d.g.e;

/* loaded from: classes.dex */
public class d implements java.lang.Runnable {
    public final /* synthetic */ java.lang.Object a;
    public final /* synthetic */ java.lang.Object b;

    public d(java.lang.Object obj, java.lang.Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (d.g.e.c.f1920d != null) {
                d.g.e.c.f1920d.invoke(this.a, this.b, java.lang.Boolean.FALSE, "AppCompat recreation");
            } else {
                d.g.e.c.f1921e.invoke(this.a, this.b, java.lang.Boolean.FALSE);
            }
        } catch (java.lang.RuntimeException e2) {
            if (e2.getClass() == java.lang.RuntimeException.class && e2.getMessage() != null && e2.getMessage().startsWith("Unable to stop")) {
                throw e2;
            }
        } catch (java.lang.Throwable th) {
            android.util.Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
