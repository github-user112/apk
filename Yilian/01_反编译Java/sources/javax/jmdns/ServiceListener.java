package javax.jmdns;

/* loaded from: classes.dex */
public interface ServiceListener extends java.util.EventListener {
    void serviceAdded(javax.jmdns.ServiceEvent serviceEvent);

    void serviceRemoved(javax.jmdns.ServiceEvent serviceEvent);

    void serviceResolved(javax.jmdns.ServiceEvent serviceEvent);
}
