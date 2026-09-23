package d.j.d;

/* loaded from: classes.dex */
public class q0 implements java.lang.Runnable {
    public final /* synthetic */ java.util.ArrayList a;
    public final /* synthetic */ java.util.Map b;

    public q0(d.j.d.p0 p0Var, java.util.ArrayList arrayList, java.util.Map map) {
        this.a = arrayList;
        this.b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        java.lang.String str;
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            android.view.View view = (android.view.View) this.a.get(i);
            java.lang.String strU = d.g.m.s.u(view);
            if (strU != null) {
                java.util.Iterator it = this.b.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
                    if (strU.equals(entry.getValue())) {
                        str = (java.lang.String) entry.getKey();
                        break;
                    }
                }
                d.g.m.s.V(view, str);
            }
        }
    }
}
