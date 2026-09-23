package javax.jmdns;

/* loaded from: classes.dex */
public abstract class NetworkTopologyEvent extends java.util.EventObject {
    public static final long serialVersionUID = -8630033521752540987L;

    public NetworkTopologyEvent(java.lang.Object obj) {
        super(obj);
    }

    public abstract javax.jmdns.JmDNS getDNS();

    public abstract java.net.InetAddress getInetAddress();
}
