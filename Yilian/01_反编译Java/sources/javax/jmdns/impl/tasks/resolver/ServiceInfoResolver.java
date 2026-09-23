package javax.jmdns.impl.tasks.resolver;

/* loaded from: classes.dex */
public class ServiceInfoResolver extends javax.jmdns.impl.tasks.resolver.DNSResolverTask {
    public final javax.jmdns.impl.ServiceInfoImpl _info;

    public ServiceInfoResolver(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl) {
        super(jmDNSImpl);
        this._info = serviceInfoImpl;
        serviceInfoImpl.setDns(getDns());
        getDns().addListener(serviceInfoImpl, javax.jmdns.impl.DNSQuestion.newQuestion(serviceInfoImpl.getQualifiedName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_ANY, javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false));
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public javax.jmdns.impl.DNSOutgoing addAnswers(javax.jmdns.impl.DNSOutgoing dNSOutgoing) throws java.io.IOException {
        if (this._info.hasData()) {
            return dNSOutgoing;
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        javax.jmdns.impl.DNSCache cache = getDns().getCache();
        java.lang.String qualifiedName = this._info.getQualifiedName();
        javax.jmdns.impl.constants.DNSRecordType dNSRecordType = javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV;
        javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass = javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN;
        javax.jmdns.impl.DNSOutgoing dNSOutgoingAddAnswer = addAnswer(addAnswer(dNSOutgoing, (javax.jmdns.impl.DNSRecord) cache.getDNSEntry(qualifiedName, dNSRecordType, dNSRecordClass), jCurrentTimeMillis), (javax.jmdns.impl.DNSRecord) getDns().getCache().getDNSEntry(this._info.getQualifiedName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_TXT, dNSRecordClass), jCurrentTimeMillis);
        return this._info.getServer().length() > 0 ? addAnswer(addAnswer(dNSOutgoingAddAnswer, (javax.jmdns.impl.DNSRecord) getDns().getCache().getDNSEntry(this._info.getServer(), javax.jmdns.impl.constants.DNSRecordType.TYPE_A, dNSRecordClass), jCurrentTimeMillis), (javax.jmdns.impl.DNSRecord) getDns().getCache().getDNSEntry(this._info.getServer(), javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA, dNSRecordClass), jCurrentTimeMillis) : dNSOutgoingAddAnswer;
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public javax.jmdns.impl.DNSOutgoing addQuestions(javax.jmdns.impl.DNSOutgoing dNSOutgoing) throws java.io.IOException {
        if (this._info.hasData()) {
            return dNSOutgoing;
        }
        java.lang.String qualifiedName = this._info.getQualifiedName();
        javax.jmdns.impl.constants.DNSRecordType dNSRecordType = javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV;
        javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass = javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN;
        javax.jmdns.impl.DNSOutgoing dNSOutgoingAddQuestion = addQuestion(addQuestion(dNSOutgoing, javax.jmdns.impl.DNSQuestion.newQuestion(qualifiedName, dNSRecordType, dNSRecordClass, false)), javax.jmdns.impl.DNSQuestion.newQuestion(this._info.getQualifiedName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_TXT, dNSRecordClass, false));
        return this._info.getServer().length() > 0 ? addQuestion(addQuestion(dNSOutgoingAddQuestion, javax.jmdns.impl.DNSQuestion.newQuestion(this._info.getServer(), javax.jmdns.impl.constants.DNSRecordType.TYPE_A, dNSRecordClass, false)), javax.jmdns.impl.DNSQuestion.newQuestion(this._info.getServer(), javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA, dNSRecordClass, false)) : dNSOutgoingAddQuestion;
    }

    @Override // java.util.TimerTask
    public boolean cancel() {
        boolean zCancel = super.cancel();
        if (!this._info.isPersistent()) {
            getDns().removeListener(this._info);
        }
        return zCancel;
    }

    @Override // javax.jmdns.impl.tasks.resolver.DNSResolverTask
    public java.lang.String description() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("querying service info: ");
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = this._info;
        sbO.append(serviceInfoImpl != null ? serviceInfoImpl.getQualifiedName() : "null");
        return sbO.toString();
    }

    @Override // javax.jmdns.impl.tasks.DNSTask
    public java.lang.String getName() {
        return e.a.c.a.a.j(e.a.c.a.a.o("ServiceInfoResolver("), getDns() != null ? getDns().getName() : "", ")");
    }
}
