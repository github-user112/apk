package e.c.a.b.t;

/* loaded from: classes.dex */
public class e {

    /* renamed from: c, reason: collision with root package name */
    public static e.c.a.b.t.e f2662c;
    public final java.lang.Object a = new java.lang.Object();
    public final android.os.Handler b = new android.os.Handler(android.os.Looper.getMainLooper(), new e.c.a.b.t.e.a());

    public class a implements android.os.Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            if (message.what != 0) {
                return false;
            }
            e.c.a.b.t.e eVar = e.c.a.b.t.e.this;
            e.c.a.b.t.e.c cVar = (e.c.a.b.t.e.c) message.obj;
            synchronized (eVar.a) {
                if (cVar == null) {
                    e.c.a.b.t.e.b bVar = cVar.a.get();
                    if (bVar != null) {
                        eVar.b.removeCallbacksAndMessages(cVar);
                        bVar.a(2);
                    }
                }
            }
            return true;
        }
    }

    public interface b {
        void a(int i);
    }

    public static class c {
        public final java.lang.ref.WeakReference<e.c.a.b.t.e.b> a;
    }
}
