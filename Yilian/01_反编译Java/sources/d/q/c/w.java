package d.q.c;

/* loaded from: classes.dex */
public class w {
    public final d.q.c.w.b a;
    public d.q.c.w.a b = new d.q.c.w.a();

    public static class a {
        public int a = 0;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2234c;

        /* renamed from: d, reason: collision with root package name */
        public int f2235d;

        /* renamed from: e, reason: collision with root package name */
        public int f2236e;

        public boolean a() {
            int i = this.a;
            if ((i & 7) != 0 && (i & (b(this.f2235d, this.b) << 0)) == 0) {
                return false;
            }
            int i2 = this.a;
            if ((i2 & 112) != 0 && (i2 & (b(this.f2235d, this.f2234c) << 4)) == 0) {
                return false;
            }
            int i3 = this.a;
            if ((i3 & 1792) != 0 && (i3 & (b(this.f2236e, this.b) << 8)) == 0) {
                return false;
            }
            int i4 = this.a;
            return (i4 & com.umeng.commonsdk.framework.UMModuleRegister.SHARE_EVENT_VALUE_HIGH) == 0 || (i4 & (b(this.f2236e, this.f2234c) << 12)) != 0;
        }

        public int b(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }
    }

    public interface b {
        int a();

        int b(android.view.View view);

        android.view.View c(int i);

        int d();

        int e(android.view.View view);
    }

    public w(d.q.c.w.b bVar) {
        this.a = bVar;
    }

    public android.view.View a(int i, int i2, int i3, int i4) {
        int iD = this.a.d();
        int iA = this.a.a();
        int i5 = i2 > i ? 1 : -1;
        android.view.View view = null;
        while (i != i2) {
            android.view.View viewC = this.a.c(i);
            int iB = this.a.b(viewC);
            int iE = this.a.e(viewC);
            d.q.c.w.a aVar = this.b;
            aVar.b = iD;
            aVar.f2234c = iA;
            aVar.f2235d = iB;
            aVar.f2236e = iE;
            if (i3 != 0) {
                aVar.a = 0;
                aVar.a = i3 | 0;
                if (aVar.a()) {
                    return viewC;
                }
            }
            if (i4 != 0) {
                d.q.c.w.a aVar2 = this.b;
                aVar2.a = 0;
                aVar2.a = i4 | 0;
                if (aVar2.a()) {
                    view = viewC;
                }
            }
            i += i5;
        }
        return view;
    }
}
