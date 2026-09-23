package javax.jmdns;

/* loaded from: classes.dex */
public abstract class ServiceEvent extends java.util.EventObject implements java.lang.Cloneable {
    public static final long serialVersionUID = -8558445644541006271L;

    public ServiceEvent(java.lang.Object obj) {
        super(obj);
    }

    @Override // 
    public javax.jmdns.ServiceEvent clone() {
        try {
            return (javax.jmdns.ServiceEvent) super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            return null;
        }
    }

    public abstract javax.jmdns.JmDNS getDNS();

    public abstract javax.jmdns.ServiceInfo getInfo();

    public abstract java.lang.String getName();

    public abstract java.lang.String getType();
}
