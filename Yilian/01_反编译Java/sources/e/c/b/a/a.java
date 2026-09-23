package e.c.b.a;

/* loaded from: classes.dex */
public abstract class a<T> implements java.util.Iterator<T> {
    public e.c.b.a.a.EnumC0068a a = e.c.b.a.a.EnumC0068a.NOT_READY;

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public T b;

    /* renamed from: e.c.b.a.a$a, reason: collision with other inner class name */
    public enum EnumC0068a {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0055, code lost:
    
        if (r4 >= r5) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        if (r0.f2673d.b(r0.f2672c.charAt(r4)) == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0068, code lost:
    
        if (r5 <= r4) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006a, code lost:
    
        r9 = r5 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        if (r0.f2673d.b(r0.f2672c.charAt(r9)) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
    
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
    
        if (r0.f2674e == false) goto L54;
     */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean hasNext() {
        /*
            r10 = this;
            e.c.b.a.a$a r0 = e.c.b.a.a.EnumC0068a.FAILED
            e.c.b.a.a$a r1 = r10.a
            r2 = 0
            r3 = 1
            if (r1 == r0) goto La
            r1 = 1
            goto Lb
        La:
            r1 = 0
        Lb:
            if (r1 == 0) goto Lc1
            e.c.b.a.a$a r1 = r10.a
            int r1 = r1.ordinal()
            if (r1 == 0) goto Lc0
            r4 = 2
            if (r1 == r4) goto Lbf
            e.c.b.a.a$a r1 = e.c.b.a.a.EnumC0068a.DONE
            r10.a = r0
            r0 = r10
            e.c.b.a.j$a r0 = (e.c.b.a.j.a) r0
        L1f:
            int r4 = r0.f2675f
        L21:
            int r5 = r0.f2675f
            r6 = -1
            if (r5 == r6) goto Lb1
            r7 = r0
            e.c.b.a.h r7 = (e.c.b.a.h) r7
            e.c.b.a.i r8 = r7.h
            e.c.b.a.b r8 = r8.a
            java.lang.CharSequence r7 = r7.f2672c
            int r5 = r8.a(r7, r5)
            if (r5 != r6) goto L3e
            java.lang.CharSequence r5 = r0.f2672c
            int r5 = r5.length()
            r0.f2675f = r6
            goto L42
        L3e:
            int r7 = r5 + 1
            r0.f2675f = r7
        L42:
            int r7 = r0.f2675f
            if (r7 != r4) goto L55
            int r7 = r7 + 1
            r0.f2675f = r7
            java.lang.CharSequence r5 = r0.f2672c
            int r5 = r5.length()
            if (r7 <= r5) goto L21
            r0.f2675f = r6
            goto L21
        L55:
            if (r4 >= r5) goto L68
            e.c.b.a.b r7 = r0.f2673d
            java.lang.CharSequence r8 = r0.f2672c
            char r8 = r8.charAt(r4)
            boolean r7 = r7.b(r8)
            if (r7 == 0) goto L68
            int r4 = r4 + 1
            goto L55
        L68:
            if (r5 <= r4) goto L7c
            e.c.b.a.b r7 = r0.f2673d
            java.lang.CharSequence r8 = r0.f2672c
            int r9 = r5 + (-1)
            char r8 = r8.charAt(r9)
            boolean r7 = r7.b(r8)
            if (r7 == 0) goto L7c
            r5 = r9
            goto L68
        L7c:
            boolean r7 = r0.f2674e
            if (r7 == 0) goto L83
            if (r4 != r5) goto L83
            goto L1f
        L83:
            int r7 = r0.f2676g
            if (r7 != r3) goto La3
            java.lang.CharSequence r5 = r0.f2672c
            int r5 = r5.length()
            r0.f2675f = r6
        L8f:
            if (r5 <= r4) goto La6
            e.c.b.a.b r6 = r0.f2673d
            java.lang.CharSequence r7 = r0.f2672c
            int r8 = r5 + (-1)
            char r7 = r7.charAt(r8)
            boolean r6 = r6.b(r7)
            if (r6 == 0) goto La6
            r5 = r8
            goto L8f
        La3:
            int r7 = r7 - r3
            r0.f2676g = r7
        La6:
            java.lang.CharSequence r0 = r0.f2672c
            java.lang.CharSequence r0 = r0.subSequence(r4, r5)
            java.lang.String r0 = r0.toString()
            goto Lb4
        Lb1:
            r0.a = r1
            r0 = 0
        Lb4:
            r10.b = r0
            e.c.b.a.a$a r0 = r10.a
            if (r0 == r1) goto Lbf
            e.c.b.a.a$a r0 = e.c.b.a.a.EnumC0068a.READY
            r10.a = r0
            r2 = 1
        Lbf:
            return r2
        Lc0:
            return r3
        Lc1:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            goto Lc8
        Lc7:
            throw r0
        Lc8:
            goto Lc7
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.b.a.a.hasNext():boolean");
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new java.util.NoSuchElementException();
        }
        this.a = e.c.b.a.a.EnumC0068a.NOT_READY;
        T t = this.b;
        this.b = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new java.lang.UnsupportedOperationException();
    }
}
