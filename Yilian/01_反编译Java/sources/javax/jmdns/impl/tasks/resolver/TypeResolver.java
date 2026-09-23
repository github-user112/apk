package javax.jmdns.impl.tasks.resolver;

/* loaded from: classes.dex */
public class TypeResolver extends javax.jmdns.impl.tasks.resolver.DNSResolverTask {
    public TypeResolver(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        super(jmDNSImpl);
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public javax.jmdns.impl.DNSOutgoing addAnswers(javax.jmdns.impl.DNSOutgoing dNSOutgoing) throws java.io.IOException {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        java.util.Iterator<java.lang.String> it = getDns().getServiceTypes().keySet().iterator();
        while (it.hasNext()) {
            dNSOutgoing = addAnswer(dNSOutgoing, new javax.jmdns.impl.DNSRecord.Pointer("_services._dns-sd._udp.local.", javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false, javax.jmdns.impl.constants.DNSConstants.DNS_TTL, getDns().getServiceTypes().get(it.next()).getType()), jCurrentTimeMillis);
        }
        return dNSOutgoing;
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public javax.jmdns.impl.DNSOutgoing addQuestions(javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
        return addQuestion(dNSOutgoing, javax.jmdns.impl.DNSQuestion.newQuestion("_services._dns-sd._udp.local.", javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR, javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false));
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public java.lang.String description() {
        return "querying type";
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String getName() {
        return e.a.c.a.a.j(e.a.c.a.a.o("TypeResolver("), getDns() != null ? getDns().getName() : "", ")");
    }
}
