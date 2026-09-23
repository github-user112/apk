package e.a.b.b.c;

/* loaded from: classes.dex */
public abstract class c0 extends e.a.b.b.c.s0 {
    public c0(java.lang.String str, e.a.b.b.c.m mVar) {
        super(str, mVar, 4);
    }

    @Override // e.a.b.b.c.s0
    public void l() {
        if (d().size() <= 65536) {
            java.util.Iterator<? extends e.a.b.b.c.y> it = d().iterator();
            int i = 0;
            while (it.hasNext()) {
                ((e.a.b.b.c.b0) it.next()).g(i);
                i++;
            }
            return;
        }
        java.util.TreeMap treeMap = new java.util.TreeMap();
        java.util.Iterator<? extends e.a.b.b.c.y> it2 = d().iterator();
        while (it2.hasNext()) {
            java.lang.String str = ((e.a.b.b.c.b0) it2.next()).b.f().a;
            int iLastIndexOf = str.lastIndexOf(47);
            java.lang.String strReplace = iLastIndexOf == -1 ? "default" : str.substring(str.lastIndexOf(91) + 2, iLastIndexOf).replace(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH, '.');
            java.util.concurrent.atomic.AtomicInteger atomicInteger = (java.util.concurrent.atomic.AtomicInteger) treeMap.get(strReplace);
            if (atomicInteger == null) {
                atomicInteger = new java.util.concurrent.atomic.AtomicInteger();
                treeMap.put(strReplace, atomicInteger);
            }
            atomicInteger.incrementAndGet();
        }
        java.util.Formatter formatter = new java.util.Formatter();
        try {
            boolean z = this instanceof e.a.b.b.c.f0;
            new java.lang.StringBuilder().append("Too many %s references: %d; max is %d.%n");
            e.a.b.a.a.a.a();
            throw null;
        } catch (java.lang.Throwable th) {
            formatter.close();
            throw th;
        }
    }
}
