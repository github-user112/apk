package javax.jmdns.impl.tasks.resolver;

/* loaded from: classes.dex */
public class ServiceResolver extends javax.jmdns.impl.tasks.resolver.DNSResolverTask {
    public final java.lang.String _type;

    public ServiceResolver(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.lang.String str) {
        super(jmDNSImpl);
        this._type = str;
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public javax.jmdns.impl.DNSOutgoing addAnswers(javax.jmdns.impl.DNSOutgoing dNSOutgoing) throws java.io.IOException {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        for (javax.jmdns.ServiceInfo serviceInfo : getDns().getServices().values()) {
            dNSOutgoing = addAnswer(dNSOutgoing, new javax.jmdns.impl.DNSRecord.Pointer(serviceInfo.getType(), javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false, javax.jmdns.impl.constants.DNSConstants.DNS_TTL, serviceInfo.getQualifiedName()), jCurrentTimeMillis);
        }
        return dNSOutgoing;
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public javax.jmdns.impl.DNSOutgoing addQuestions(javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
        return addQuestion(dNSOutgoing, javax.jmdns.impl.DNSQuestion.newQuestion(this._type, javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR, javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false));
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public java.lang.String description() {
        return "querying service";
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String getName() {
        return e.a.c.a.a.j(e.a.c.a.a.o("ServiceResolver("), getDns() != null ? getDns().getName() : "", ")");
    }
}
