package d.g.i;

/* loaded from: classes.dex */
public final class a {
    public boolean a;
    public d.g.i.a.InterfaceC0046a b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1966c;

    /* renamed from: d.g.i.a$a, reason: collision with other inner class name */
    public interface InterfaceC0046a {
        void c();
    }

    public void a() {
        synchronized (this) {
            if (this.a) {
                return;
            }
            this.a = true;
            this.f1966c = true;
            d.g.i.a.InterfaceC0046a interfaceC0046a = this.b;
            if (interfaceC0046a != null) {
                try {
                    interfaceC0046a.c();
                } catch (java.lang.Throwable th) {
                    synchronized (this) {
                        this.f1966c = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.f1966c = false;
                notifyAll();
            }
        }
    }

    public void b(d.g.i.a.InterfaceC0046a interfaceC0046a) {
        synchronized (this) {
            while (this.f1966c) {
                try {
                    wait();
                } catch (java.lang.InterruptedException unused) {
                }
            }
            if (this.b == interfaceC0046a) {
                return;
            }
            this.b = interfaceC0046a;
            if (this.a) {
                interfaceC0046a.c();
            }
        }
    }
}
