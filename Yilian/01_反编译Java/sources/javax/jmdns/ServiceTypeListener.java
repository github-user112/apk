package javax.jmdns;

/* loaded from: classes.dex */
public interface ServiceTypeListener extends java.util.EventListener {
    void serviceTypeAdded(javax.jmdns.ServiceEvent serviceEvent);

    void subTypeForServiceTypeAdded(javax.jmdns.ServiceEvent serviceEvent);
}
