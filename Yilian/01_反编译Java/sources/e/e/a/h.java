package e.e.a;

/* loaded from: classes.dex */
public class h {
    public final java.lang.ThreadLocal<java.lang.String> a = new java.lang.ThreadLocal<>();
    public final java.util.List<e.e.a.e> b = new java.util.ArrayList();

    public synchronized void a(int i, java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (th != null && str2 != null) {
            try {
                str2 = str2 + " : " + d.o.e.a.b(th);
            } catch (java.lang.Throwable th2) {
                throw th2;
            }
        }
        if (th != null && str2 == null) {
            str2 = d.o.e.a.b(th);
        }
        if (str2 == null || str2.length() == 0) {
            str2 = "Empty/NULL log message";
        }
        for (e.e.a.e eVar : this.b) {
            if (eVar.b(i, str)) {
                eVar.a(i, str, str2);
            }
        }
    }

    public final synchronized void b(int i, java.lang.Throwable th, java.lang.String str, java.lang.Object... objArr) {
        java.lang.String str2 = null;
        if (str == null) {
            throw null;
        }
        java.lang.String str3 = this.a.get();
        if (str3 != null) {
            this.a.remove();
            str2 = str3;
        }
        if (objArr != null && objArr.length != 0) {
            str = java.lang.String.format(str, objArr);
        }
        a(i, str2, str, th);
    }
}
