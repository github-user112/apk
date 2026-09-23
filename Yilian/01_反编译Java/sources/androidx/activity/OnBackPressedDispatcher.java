package androidx.activity;

/* loaded from: classes.dex */
public final class OnBackPressedDispatcher {
    public final java.lang.Runnable a;
    public final java.util.ArrayDeque<d.a.b> b = new java.util.ArrayDeque<>();

    public class LifecycleOnBackPressedCancellable implements d.l.f, d.a.a {
        public final d.l.e a;
        public final d.a.b b;

        /* renamed from: c, reason: collision with root package name */
        public d.a.a f5c;

        public LifecycleOnBackPressedCancellable(d.l.e eVar, d.a.b bVar) {
            this.a = eVar;
            this.b = bVar;
            eVar.a(this);
        }

        @Override // d.a.a
        public void cancel() {
            d.l.i iVar = (d.l.i) this.a;
            iVar.d("removeObserver");
            iVar.a.e(this);
            this.b.b.remove(this);
            d.a.a aVar = this.f5c;
            if (aVar != null) {
                aVar.cancel();
                this.f5c = null;
            }
        }

        @Override // d.l.f
        public void d(d.l.h hVar, d.l.e.a aVar) {
            if (aVar == d.l.e.a.ON_START) {
                androidx.activity.OnBackPressedDispatcher onBackPressedDispatcher = androidx.activity.OnBackPressedDispatcher.this;
                d.a.b bVar = this.b;
                onBackPressedDispatcher.b.add(bVar);
                androidx.activity.OnBackPressedDispatcher.a aVar2 = onBackPressedDispatcher.new a(bVar);
                bVar.b.add(aVar2);
                this.f5c = aVar2;
                return;
            }
            if (aVar != d.l.e.a.ON_STOP) {
                if (aVar == d.l.e.a.ON_DESTROY) {
                    cancel();
                }
            } else {
                d.a.a aVar3 = this.f5c;
                if (aVar3 != null) {
                    aVar3.cancel();
                }
            }
        }
    }

    public class a implements d.a.a {
        public final d.a.b a;

        public a(d.a.b bVar) {
            this.a = bVar;
        }

        @Override // d.a.a
        public void cancel() {
            androidx.activity.OnBackPressedDispatcher.this.b.remove(this.a);
            this.a.b.remove(this);
        }
    }

    public OnBackPressedDispatcher(java.lang.Runnable runnable) {
        this.a = runnable;
    }

    public void a() {
        java.util.Iterator<d.a.b> itDescendingIterator = this.b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            d.a.b next = itDescendingIterator.next();
            if (next.a) {
                d.j.d.y yVar = d.j.d.y.this;
                yVar.B(true);
                if (yVar.h.a) {
                    yVar.V();
                    return;
                } else {
                    yVar.f2151g.a();
                    return;
                }
            }
        }
        java.lang.Runnable runnable = this.a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
