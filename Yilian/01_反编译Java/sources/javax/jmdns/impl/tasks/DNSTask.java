package javax.jmdns.impl.tasks;

/* loaded from: classes.dex */
public abstract class DNSTask extends java.util.TimerTask {
    public final javax.jmdns.impl.JmDNSImpl _jmDNSImpl;

    public DNSTask(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        this._jmDNSImpl = jmDNSImpl;
    }

    public javax.jmdns.impl.DNSOutgoing addAdditionalAnswer(javax.jmdns.impl.DNSOutgoing dNSOutgoing, javax.jmdns.impl.DNSIncoming dNSIncoming, javax.jmdns.impl.DNSRecord dNSRecord) throws java.io.IOException {
        try {
            dNSOutgoing.addAdditionalAnswer(dNSIncoming, dNSRecord);
            return dNSOutgoing;
        } catch (java.io.IOException unused) {
            int flags = dNSOutgoing.getFlags();
            boolean zIsMulticast = dNSOutgoing.isMulticast();
            int maxUDPPayload = dNSOutgoing.getMaxUDPPayload();
            int id = dNSOutgoing.getId();
            dNSOutgoing.setFlags(flags | 512);
            dNSOutgoing.setId(id);
            this._jmDNSImpl.send(dNSOutgoing);
            javax.jmdns.impl.DNSOutgoing dNSOutgoing2 = new javax.jmdns.impl.DNSOutgoing(flags, zIsMulticast, maxUDPPayload);
            dNSOutgoing2.addAdditionalAnswer(dNSIncoming, dNSRecord);
            return dNSOutgoing2;
        }
    }

    public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.DNSOutgoing dNSOutgoing, javax.jmdns.impl.DNSIncoming dNSIncoming, javax.jmdns.impl.DNSRecord dNSRecord) {
        try {
            dNSOutgoing.addAnswer(dNSIncoming, dNSRecord);
            return dNSOutgoing;
        } catch (java.io.IOException unused) {
            int flags = dNSOutgoing.getFlags();
            boolean zIsMulticast = dNSOutgoing.isMulticast();
            int maxUDPPayload = dNSOutgoing.getMaxUDPPayload();
            int id = dNSOutgoing.getId();
            dNSOutgoing.setFlags(flags | 512);
            dNSOutgoing.setId(id);
            this._jmDNSImpl.send(dNSOutgoing);
            javax.jmdns.impl.DNSOutgoing dNSOutgoing2 = new javax.jmdns.impl.DNSOutgoing(flags, zIsMulticast, maxUDPPayload);
            dNSOutgoing2.addAnswer(dNSIncoming, dNSRecord);
            return dNSOutgoing2;
        }
    }

    public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.DNSOutgoing dNSOutgoing, javax.jmdns.impl.DNSRecord dNSRecord, long j) throws java.io.IOException {
        try {
            dNSOutgoing.addAnswer(dNSRecord, j);
            return dNSOutgoing;
        } catch (java.io.IOException unused) {
            int flags = dNSOutgoing.getFlags();
            boolean zIsMulticast = dNSOutgoing.isMulticast();
            int maxUDPPayload = dNSOutgoing.getMaxUDPPayload();
            int id = dNSOutgoing.getId();
            dNSOutgoing.setFlags(flags | 512);
            dNSOutgoing.setId(id);
            this._jmDNSImpl.send(dNSOutgoing);
            javax.jmdns.impl.DNSOutgoing dNSOutgoing2 = new javax.jmdns.impl.DNSOutgoing(flags, zIsMulticast, maxUDPPayload);
            dNSOutgoing2.addAnswer(dNSRecord, j);
            return dNSOutgoing2;
        }
    }

    public javax.jmdns.impl.DNSOutgoing addAuthoritativeAnswer(javax.jmdns.impl.DNSOutgoing dNSOutgoing, javax.jmdns.impl.DNSRecord dNSRecord) throws java.io.IOException {
        try {
            dNSOutgoing.addAuthorativeAnswer(dNSRecord);
            return dNSOutgoing;
        } catch (java.io.IOException unused) {
            int flags = dNSOutgoing.getFlags();
            boolean zIsMulticast = dNSOutgoing.isMulticast();
            int maxUDPPayload = dNSOutgoing.getMaxUDPPayload();
            int id = dNSOutgoing.getId();
            dNSOutgoing.setFlags(flags | 512);
            dNSOutgoing.setId(id);
            this._jmDNSImpl.send(dNSOutgoing);
            javax.jmdns.impl.DNSOutgoing dNSOutgoing2 = new javax.jmdns.impl.DNSOutgoing(flags, zIsMulticast, maxUDPPayload);
            dNSOutgoing2.addAuthorativeAnswer(dNSRecord);
            return dNSOutgoing2;
        }
    }

    public javax.jmdns.impl.DNSOutgoing addQuestion(javax.jmdns.impl.DNSOutgoing dNSOutgoing, javax.jmdns.impl.DNSQuestion dNSQuestion) throws java.io.IOException {
        try {
            dNSOutgoing.addQuestion(dNSQuestion);
            return dNSOutgoing;
        } catch (java.io.IOException unused) {
            int flags = dNSOutgoing.getFlags();
            boolean zIsMulticast = dNSOutgoing.isMulticast();
            int maxUDPPayload = dNSOutgoing.getMaxUDPPayload();
            int id = dNSOutgoing.getId();
            dNSOutgoing.setFlags(flags | 512);
            dNSOutgoing.setId(id);
            this._jmDNSImpl.send(dNSOutgoing);
            javax.jmdns.impl.DNSOutgoing dNSOutgoing2 = new javax.jmdns.impl.DNSOutgoing(flags, zIsMulticast, maxUDPPayload);
            dNSOutgoing2.addQuestion(dNSQuestion);
            return dNSOutgoing2;
        }
    }

    public javax.jmdns.impl.JmDNSImpl getDns() {
        return this._jmDNSImpl;
    }

    public abstract java.lang.String getName();

    public abstract void start(java.util.Timer timer);

    public java.lang.String toString() {
        return getName();
    }
}
