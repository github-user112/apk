package e.c.b.b;

/* loaded from: classes.dex */
public abstract class p {
    public static final e.c.b.b.p a = new e.c.b.b.p.a();
    public static final e.c.b.b.p b = new e.c.b.b.p.b(-1);

    /* renamed from: c, reason: collision with root package name */
    public static final e.c.b.b.p f2737c = new e.c.b.b.p.b(1);

    public static class a extends e.c.b.b.p {
        public a() {
            super(null);
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p a(int i, int i2) {
            return g(i < i2 ? -1 : i > i2 ? 1 : 0);
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p b(long j, long j2) {
            return g(j < j2 ? -1 : j > j2 ? 1 : 0);
        }

        @Override // e.c.b.b.p
        public <T> e.c.b.b.p c(@org.checkerframework.checker.nullness.compatqual.NullableDecl T t, @org.checkerframework.checker.nullness.compatqual.NullableDecl T t2, java.util.Comparator<T> comparator) {
            return g(comparator.compare(t, t2));
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p d(boolean z, boolean z2) {
            return g(z == z2 ? 0 : z ? 1 : -1);
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p e(boolean z, boolean z2) {
            return g(z2 == z ? 0 : z2 ? 1 : -1);
        }

        @Override // e.c.b.b.p
        public int f() {
            return 0;
        }

        public e.c.b.b.p g(int i) {
            return i < 0 ? e.c.b.b.p.b : i > 0 ? e.c.b.b.p.f2737c : e.c.b.b.p.a;
        }
    }

    public static final class b extends e.c.b.b.p {

        /* renamed from: d, reason: collision with root package name */
        public final int f2738d;

        public b(int i) {
            super(null);
            this.f2738d = i;
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p a(int i, int i2) {
            return this;
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p b(long j, long j2) {
            return this;
        }

        @Override // e.c.b.b.p
        public <T> e.c.b.b.p c(@org.checkerframework.checker.nullness.compatqual.NullableDecl T t, @org.checkerframework.checker.nullness.compatqual.NullableDecl T t2, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.util.Comparator<T> comparator) {
            return this;
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p d(boolean z, boolean z2) {
            return this;
        }

        @Override // e.c.b.b.p
        public e.c.b.b.p e(boolean z, boolean z2) {
            return this;
        }

        @Override // e.c.b.b.p
        public int f() {
            return this.f2738d;
        }
    }

    public p(e.c.b.b.p.a aVar) {
    }

    public abstract e.c.b.b.p a(int i, int i2);

    public abstract e.c.b.b.p b(long j, long j2);

    public abstract <T> e.c.b.b.p c(@org.checkerframework.checker.nullness.compatqual.NullableDecl T t, @org.checkerframework.checker.nullness.compatqual.NullableDecl T t2, java.util.Comparator<T> comparator);

    public abstract e.c.b.b.p d(boolean z, boolean z2);

    public abstract e.c.b.b.p e(boolean z, boolean z2);

    public abstract int f();
}
