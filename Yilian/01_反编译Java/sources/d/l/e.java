package d.l;

/* loaded from: classes.dex */
public abstract class e {

    public enum a {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static d.l.e.a b(d.l.e.b bVar) {
            int iOrdinal = bVar.ordinal();
            if (iOrdinal == 1) {
                return ON_CREATE;
            }
            if (iOrdinal == 2) {
                return ON_START;
            }
            if (iOrdinal != 3) {
                return null;
            }
            return ON_RESUME;
        }

        public d.l.e.b a() {
            int iOrdinal = ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal == 2) {
                        return d.l.e.b.RESUMED;
                    }
                    if (iOrdinal != 3) {
                        if (iOrdinal != 4) {
                            if (iOrdinal == 5) {
                                return d.l.e.b.DESTROYED;
                            }
                            throw new java.lang.IllegalArgumentException(this + " has no target state");
                        }
                    }
                }
                return d.l.e.b.STARTED;
            }
            return d.l.e.b.CREATED;
        }
    }

    public enum b {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED
    }

    public e() {
        new java.util.concurrent.atomic.AtomicReference();
    }

    public abstract void a(d.l.g gVar);

    public abstract void b(d.l.g gVar);
}
