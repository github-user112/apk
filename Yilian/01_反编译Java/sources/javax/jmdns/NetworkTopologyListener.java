package javax.jmdns;

/* loaded from: classes.dex */
public interface NetworkTopologyListener extends java.util.EventListener {
    void inetAddressAdded(javax.jmdns.NetworkTopologyEvent networkTopologyEvent);

    void inetAddressRemoved(javax.jmdns.NetworkTopologyEvent networkTopologyEvent);
}
