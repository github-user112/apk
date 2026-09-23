package d.g.j;

/* loaded from: classes.dex */
public class j implements java.util.concurrent.ThreadFactory {
    public java.lang.String a;
    public int b;

    public static class a extends java.lang.Thread {
        public final int a;

        public a(java.lang.Runnable runnable, java.lang.String str, int i) {
            super(runnable, str);
            this.a = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws java.lang.SecurityException, java.lang.IllegalArgumentException {
            android.os.Process.setThreadPriority(this.a);
            super.run();
        }
    }

    public j(java.lang.String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public java.lang.Thread newThread(java.lang.Runnable runnable) {
        return new d.g.j.j.a(runnable, this.a, this.b);
    }
}
