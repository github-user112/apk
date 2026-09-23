package d.l;

/* loaded from: classes.dex */
public class w implements d.l.u {
    public static d.l.w a;

    @Override // d.l.u
    public <T extends d.l.s> T a(java.lang.Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (java.lang.IllegalAccessException e2) {
            throw new java.lang.RuntimeException("Cannot create an instance of " + cls, e2);
        } catch (java.lang.InstantiationException e3) {
            throw new java.lang.RuntimeException("Cannot create an instance of " + cls, e3);
        }
    }
}
