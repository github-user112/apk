package javax.jmdns.impl;

/* loaded from: classes.dex */
public class NetworkTopologyEventImpl extends javax.jmdns.NetworkTopologyEvent implements java.lang.Cloneable {
    public static final long serialVersionUID = 1445606146153550463L;
    public final java.net.InetAddress _inetAddress;

    public NetworkTopologyEventImpl(javax.jmdns.JmDNS jmDNS, java.net.InetAddress inetAddress) {
        super(jmDNS);
        this._inetAddress = inetAddress;
    }

    public NetworkTopologyEventImpl(javax.jmdns.NetworkTopologyListener networkTopologyListener, java.net.InetAddress inetAddress) {
        super(networkTopologyListener);
        this._inetAddress = inetAddress;
    }

    public javax.jmdns.impl.NetworkTopologyEventImpl clone() {
        return new javax.jmdns.impl.NetworkTopologyEventImpl(getDNS(), getInetAddress());
    }

    @Override // javax.jmdns.NetworkTopologyEvent
    public javax.jmdns.JmDNS getDNS() {
        if (getSource() instanceof javax.jmdns.JmDNS) {
            return (javax.jmdns.JmDNS) getSource();
        }
        return null;
    }

    @Override // javax.jmdns.NetworkTopologyEvent
    public java.net.InetAddress getInetAddress() {
        return this._inetAddress;
    }

    @Override // java.util.EventObject
    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("[");
        sbO.append(javax.jmdns.impl.NetworkTopologyEventImpl.class.getSimpleName());
        sbO.append("@");
        sbO.append(java.lang.System.identityHashCode(this));
        sbO.append(" ");
        sb.append(sbO.toString());
        sb.append("\n\tinetAddress: '");
        sb.append(getInetAddress());
        sb.append("']");
        return sb.toString();
    }
}
