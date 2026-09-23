package javax.jmdns.impl;

/* loaded from: classes.dex */
public class ServiceEventImpl extends javax.jmdns.ServiceEvent {
    public static final long serialVersionUID = 7107973622016897488L;
    public final javax.jmdns.ServiceInfo _info;
    public final java.lang.String _name;
    public final java.lang.String _type;

    public ServiceEventImpl(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.lang.String str, java.lang.String str2, javax.jmdns.ServiceInfo serviceInfo) {
        super(jmDNSImpl);
        this._type = str;
        this._name = str2;
        this._info = serviceInfo;
    }

    @Override // javax.jmdns.ServiceEvent
    public javax.jmdns.impl.ServiceEventImpl clone() {
        return new javax.jmdns.impl.ServiceEventImpl((javax.jmdns.impl.JmDNSImpl) getDNS(), getType(), getName(), new javax.jmdns.impl.ServiceInfoImpl(getInfo()));
    }

    @Override // javax.jmdns.ServiceEvent
    public javax.jmdns.JmDNS getDNS() {
        return (javax.jmdns.JmDNS) getSource();
    }

    @Override // javax.jmdns.ServiceEvent
    public javax.jmdns.ServiceInfo getInfo() {
        return this._info;
    }

    @Override // javax.jmdns.ServiceEvent
    public java.lang.String getName() {
        return this._name;
    }

    @Override // javax.jmdns.ServiceEvent
    public java.lang.String getType() {
        return this._type;
    }

    @Override // java.util.EventObject
    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("[");
        sbO.append(javax.jmdns.impl.ServiceEventImpl.class.getSimpleName());
        sbO.append("@");
        sbO.append(java.lang.System.identityHashCode(this));
        sbO.append(" ");
        sb.append(sbO.toString());
        sb.append("\n\tname: '");
        sb.append(getName());
        sb.append("' type: '");
        sb.append(getType());
        sb.append("' info: '");
        sb.append(getInfo());
        sb.append("']");
        return sb.toString();
    }
}
