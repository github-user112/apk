package javax.jmdns.impl;

/* loaded from: classes.dex */
public abstract class DNSRecord extends javax.jmdns.impl.DNSEntry {
    public static final byte[] EMPTY_TXT;
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public long _created;
    public java.net.InetAddress _source;
    public int _ttl;

    public static abstract class Address extends javax.jmdns.impl.DNSRecord {
        public static javax.jmdns.JmDNSLogger jmDNSLogger;
        public static java.util.logging.Logger logger1;
        public java.net.InetAddress _addr;

        static {
            java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSRecord.Address.class.getName());
            logger1 = logger;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger);
        }

        public Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, java.net.InetAddress inetAddress) {
            super(str, dNSRecordType, dNSRecordClass, z, i);
            this._addr = inetAddress;
        }

        public Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, byte[] bArr) {
            super(str, dNSRecordType, dNSRecordClass, z, i);
            try {
                this._addr = java.net.InetAddress.getByAddress(bArr);
            } catch (java.net.UnknownHostException e2) {
                logger1.log(java.util.logging.Level.WARNING, "Address() exception ", (java.lang.Throwable) e2);
            }
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
            return dNSOutgoing;
        }

        public java.net.InetAddress getAddress() {
            return this._addr;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceEvent getServiceEvent(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.ServiceInfo serviceInfo = getServiceInfo(false);
            ((javax.jmdns.impl.ServiceInfoImpl) serviceInfo).setDns(jmDNSImpl);
            return new javax.jmdns.impl.ServiceEventImpl(jmDNSImpl, serviceInfo.getType(), serviceInfo.getName(), serviceInfo);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceInfo getServiceInfo(boolean z) {
            return new javax.jmdns.impl.ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, z, (byte[]) null);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleQuery(javax.jmdns.impl.JmDNSImpl jmDNSImpl, long j) {
            if (!jmDNSImpl.getLocalHost().conflictWithRecord(this)) {
                return false;
            }
            int iCompareTo = compareTo(jmDNSImpl.getLocalHost().getDNSAddressRecord(getRecordType(), isUnique(), javax.jmdns.impl.constants.DNSConstants.DNS_TTL));
            if (iCompareTo == 0) {
                logger1.finer("handleQuery() Ignoring an identical address query");
                return false;
            }
            logger1.finer("handleQuery() Conflicting query detected.");
            if (jmDNSImpl.isProbing() && iCompareTo > 0) {
                jmDNSImpl.getLocalHost().incrementHostName();
                jmDNSImpl.getCache().clear();
                java.util.Iterator<javax.jmdns.ServiceInfo> it = jmDNSImpl.getServices().values().iterator();
                while (it.hasNext()) {
                    ((javax.jmdns.impl.ServiceInfoImpl) it.next()).revertState();
                }
            }
            jmDNSImpl.revertState();
            return true;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleResponse(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            if (!jmDNSImpl.getLocalHost().conflictWithRecord(this)) {
                return false;
            }
            logger1.finer("handleResponse() Denial detected");
            if (jmDNSImpl.isProbing()) {
                jmDNSImpl.getLocalHost().incrementHostName();
                jmDNSImpl.getCache().clear();
                java.util.Iterator<javax.jmdns.ServiceInfo> it = jmDNSImpl.getServices().values().iterator();
                while (it.hasNext()) {
                    ((javax.jmdns.impl.ServiceInfoImpl) it.next()).revertState();
                }
            }
            jmDNSImpl.revertState();
            return true;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean isSingleValued() {
            return false;
        }

        public boolean same(javax.jmdns.impl.DNSRecord dNSRecord) {
            return (dNSRecord instanceof javax.jmdns.impl.DNSRecord.Address) && sameName(dNSRecord) && sameValue(dNSRecord);
        }

        public boolean sameName(javax.jmdns.impl.DNSRecord dNSRecord) {
            return getName().equalsIgnoreCase(dNSRecord.getName());
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean sameValue(javax.jmdns.impl.DNSRecord dNSRecord) {
            if (!(dNSRecord instanceof javax.jmdns.impl.DNSRecord.Address)) {
                return false;
            }
            javax.jmdns.impl.DNSRecord.Address address = (javax.jmdns.impl.DNSRecord.Address) dNSRecord;
            if (getAddress() != null || address.getAddress() == null) {
                return getAddress().equals(address.getAddress());
            }
            return false;
        }

        @Override // javax.jmdns.impl.DNSEntry
        public void toByteArray(java.io.DataOutputStream dataOutputStream) throws java.io.IOException {
            super.toByteArray(dataOutputStream);
            for (byte b : getAddress().getAddress()) {
                dataOutputStream.writeByte(b);
            }
        }

        @Override // javax.jmdns.impl.DNSRecord, javax.jmdns.impl.DNSEntry
        public void toString(java.lang.StringBuilder sb) {
            super.toString(sb);
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" address: '");
            sbO.append(getAddress() != null ? getAddress().getHostAddress() : "null");
            sbO.append("'");
            sb.append(sbO.toString());
        }
    }

    public static class HostInformation extends javax.jmdns.impl.DNSRecord {
        public java.lang.String _cpu;
        public java.lang.String _os;

        public HostInformation(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, java.lang.String str2, java.lang.String str3) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_HINFO, dNSRecordClass, z, i);
            this._cpu = str2;
            this._os = str3;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
            return dNSOutgoing;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceEvent getServiceEvent(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.ServiceInfo serviceInfo = getServiceInfo(false);
            ((javax.jmdns.impl.ServiceInfoImpl) serviceInfo).setDns(jmDNSImpl);
            return new javax.jmdns.impl.ServiceEventImpl(jmDNSImpl, serviceInfo.getType(), serviceInfo.getName(), serviceInfo);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceInfo getServiceInfo(boolean z) {
            java.util.HashMap map = new java.util.HashMap(2);
            map.put(com.umeng.analytics.pro.ai.w, this._cpu);
            map.put(com.umeng.analytics.pro.ai.x, this._os);
            return new javax.jmdns.impl.ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, z, map);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleQuery(javax.jmdns.impl.JmDNSImpl jmDNSImpl, long j) {
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleResponse(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean isSingleValued() {
            return true;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean sameValue(javax.jmdns.impl.DNSRecord dNSRecord) {
            if (!(dNSRecord instanceof javax.jmdns.impl.DNSRecord.HostInformation)) {
                return false;
            }
            javax.jmdns.impl.DNSRecord.HostInformation hostInformation = (javax.jmdns.impl.DNSRecord.HostInformation) dNSRecord;
            java.lang.String str = this._cpu;
            if (str != null || hostInformation._cpu == null) {
                return (this._os != null || hostInformation._os == null) && str.equals(hostInformation._cpu) && this._os.equals(hostInformation._os);
            }
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord, javax.jmdns.impl.DNSEntry
        public void toString(java.lang.StringBuilder sb) {
            super.toString(sb);
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" cpu: '");
            sbO.append(this._cpu);
            sbO.append("' os: '");
            sbO.append(this._os);
            sbO.append("'");
            sb.append(sbO.toString());
        }

        @Override // javax.jmdns.impl.DNSRecord
        public void write(javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream) {
            java.lang.String str = this._cpu + " " + this._os;
            messageOutputStream.writeUTF(str, 0, str.length());
        }
    }

    public static class IPv4Address extends javax.jmdns.impl.DNSRecord.Address {
        public IPv4Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, java.net.InetAddress inetAddress) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_A, dNSRecordClass, z, i, inetAddress);
        }

        public IPv4Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, byte[] bArr) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_A, dNSRecordClass, z, i, bArr);
        }

        @Override // javax.jmdns.impl.DNSRecord.Address, javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceInfo getServiceInfo(boolean z) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) super.getServiceInfo(z);
            serviceInfoImpl.addAddress((java.net.Inet4Address) this._addr);
            return serviceInfoImpl;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public void write(javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream) {
            java.net.InetAddress inetAddress = this._addr;
            if (inetAddress != null) {
                byte[] address = inetAddress.getAddress();
                if (!(this._addr instanceof java.net.Inet4Address)) {
                    byte[] bArr = new byte[4];
                    java.lang.System.arraycopy(address, 12, bArr, 0, 4);
                    address = bArr;
                }
                messageOutputStream.writeBytes(address, 0, address.length);
            }
        }
    }

    public static class IPv6Address extends javax.jmdns.impl.DNSRecord.Address {
        public IPv6Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, java.net.InetAddress inetAddress) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA, dNSRecordClass, z, i, inetAddress);
        }

        public IPv6Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, byte[] bArr) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA, dNSRecordClass, z, i, bArr);
        }

        @Override // javax.jmdns.impl.DNSRecord.Address, javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceInfo getServiceInfo(boolean z) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) super.getServiceInfo(z);
            serviceInfoImpl.addAddress((java.net.Inet6Address) this._addr);
            return serviceInfoImpl;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public void write(javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream) {
            java.net.InetAddress inetAddress = this._addr;
            if (inetAddress != null) {
                byte[] address = inetAddress.getAddress();
                if (this._addr instanceof java.net.Inet4Address) {
                    byte[] bArr = new byte[16];
                    for (int i = 0; i < 16; i++) {
                        if (i < 11) {
                            bArr[i] = address[i - 12];
                        } else {
                            bArr[i] = 0;
                        }
                    }
                    address = bArr;
                }
                messageOutputStream.writeBytes(address, 0, address.length);
            }
        }
    }

    public static class Pointer extends javax.jmdns.impl.DNSRecord {
        public final java.lang.String _alias;

        public Pointer(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, java.lang.String str2) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR, dNSRecordClass, z, i);
            this._alias = str2;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
            return dNSOutgoing;
        }

        public java.lang.String getAlias() {
            return this._alias;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceEvent getServiceEvent(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.ServiceInfo serviceInfo = getServiceInfo(false);
            ((javax.jmdns.impl.ServiceInfoImpl) serviceInfo).setDns(jmDNSImpl);
            java.lang.String type = serviceInfo.getType();
            return new javax.jmdns.impl.ServiceEventImpl(jmDNSImpl, type, javax.jmdns.impl.JmDNSImpl.toUnqualifiedName(type, getAlias()), serviceInfo);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceInfo getServiceInfo(boolean z) {
            if (isServicesDiscoveryMetaQuery()) {
                return new javax.jmdns.impl.ServiceInfoImpl(javax.jmdns.impl.ServiceInfoImpl.decodeQualifiedNameMapForType(getAlias()), 0, 0, 0, z, (byte[]) null);
            }
            if (!isReverseLookup() && !isDomainDiscoveryQuery()) {
                java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> mapDecodeQualifiedNameMapForType = javax.jmdns.impl.ServiceInfoImpl.decodeQualifiedNameMapForType(getAlias());
                javax.jmdns.ServiceInfo.Fields fields = javax.jmdns.ServiceInfo.Fields.Subtype;
                mapDecodeQualifiedNameMapForType.put(fields, getQualifiedNameMap().get(fields));
                return new javax.jmdns.impl.ServiceInfoImpl(mapDecodeQualifiedNameMapForType, 0, 0, 0, z, getAlias());
            }
            return new javax.jmdns.impl.ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, z, (byte[]) null);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleQuery(javax.jmdns.impl.JmDNSImpl jmDNSImpl, long j) {
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleResponse(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            return false;
        }

        @Override // javax.jmdns.impl.DNSEntry
        public boolean isSameEntry(javax.jmdns.impl.DNSEntry dNSEntry) {
            return super.isSameEntry(dNSEntry) && (dNSEntry instanceof javax.jmdns.impl.DNSRecord.Pointer) && sameValue((javax.jmdns.impl.DNSRecord.Pointer) dNSEntry);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean isSingleValued() {
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean sameValue(javax.jmdns.impl.DNSRecord dNSRecord) {
            if (!(dNSRecord instanceof javax.jmdns.impl.DNSRecord.Pointer)) {
                return false;
            }
            javax.jmdns.impl.DNSRecord.Pointer pointer = (javax.jmdns.impl.DNSRecord.Pointer) dNSRecord;
            java.lang.String str = this._alias;
            if (str != null || pointer._alias == null) {
                return str.equals(pointer._alias);
            }
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord, javax.jmdns.impl.DNSEntry
        public void toString(java.lang.StringBuilder sb) {
            super.toString(sb);
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" alias: '");
            java.lang.String str = this._alias;
            if (str == null) {
                str = "null";
            }
            sbO.append(str);
            sbO.append("'");
            sb.append(sbO.toString());
        }

        @Override // javax.jmdns.impl.DNSRecord
        public void write(javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream) {
            messageOutputStream.writeName(this._alias);
        }
    }

    public static class Service extends javax.jmdns.impl.DNSRecord {
        public static javax.jmdns.JmDNSLogger jmDNSLogger;
        public static java.util.logging.Logger logger1;
        public final int _port;
        public final int _priority;
        public final java.lang.String _server;
        public final int _weight;

        static {
            java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSRecord.Service.class.getName());
            logger1 = logger;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger);
        }

        public Service(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, int i2, int i3, int i4, java.lang.String str2) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV, dNSRecordClass, z, i);
            this._priority = i2;
            this._weight = i3;
            this._port = i4;
            this._server = str2;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) jmDNSImpl.getServices().get(getKey());
            if (serviceInfoImpl != null) {
                if ((this._port == serviceInfoImpl.getPort()) != this._server.equals(jmDNSImpl.getLocalHost().getName())) {
                    return jmDNSImpl.addAnswer(dNSIncoming, inetAddress, i, dNSOutgoing, new javax.jmdns.impl.DNSRecord.Service(serviceInfoImpl.getQualifiedName(), javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, true, javax.jmdns.impl.constants.DNSConstants.DNS_TTL, serviceInfoImpl.getPriority(), serviceInfoImpl.getWeight(), serviceInfoImpl.getPort(), jmDNSImpl.getLocalHost().getName()));
                }
            }
            return dNSOutgoing;
        }

        public int getPort() {
            return this._port;
        }

        public int getPriority() {
            return this._priority;
        }

        public java.lang.String getServer() {
            return this._server;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceEvent getServiceEvent(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.ServiceInfo serviceInfo = getServiceInfo(false);
            ((javax.jmdns.impl.ServiceInfoImpl) serviceInfo).setDns(jmDNSImpl);
            return new javax.jmdns.impl.ServiceEventImpl(jmDNSImpl, serviceInfo.getType(), serviceInfo.getName(), serviceInfo);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceInfo getServiceInfo(boolean z) {
            return new javax.jmdns.impl.ServiceInfoImpl(getQualifiedNameMap(), this._port, this._weight, this._priority, z, this._server);
        }

        public int getWeight() {
            return this._weight;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleQuery(javax.jmdns.impl.JmDNSImpl jmDNSImpl, long j) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) jmDNSImpl.getServices().get(getKey());
            if (serviceInfoImpl != null && ((serviceInfoImpl.isAnnouncing() || serviceInfoImpl.isAnnounced()) && (this._port != serviceInfoImpl.getPort() || !this._server.equalsIgnoreCase(jmDNSImpl.getLocalHost().getName())))) {
                java.util.logging.Logger logger = logger1;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("handleQuery() Conflicting probe detected from: ");
                sbO.append(getRecordSource());
                logger.finer(sbO.toString());
                javax.jmdns.impl.DNSRecord.Service service = new javax.jmdns.impl.DNSRecord.Service(serviceInfoImpl.getQualifiedName(), javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, true, javax.jmdns.impl.constants.DNSConstants.DNS_TTL, serviceInfoImpl.getPriority(), serviceInfoImpl.getWeight(), serviceInfoImpl.getPort(), jmDNSImpl.getLocalHost().getName());
                try {
                    if (jmDNSImpl.getInterface().equals(getRecordSource())) {
                        logger1.warning("Got conflicting probe from ourselves\nincoming: " + toString() + "\nlocal   : " + service.toString());
                    }
                } catch (java.io.IOException e2) {
                    logger1.log(java.util.logging.Level.WARNING, "IOException", (java.lang.Throwable) e2);
                }
                int iCompareTo = compareTo(service);
                if (iCompareTo == 0) {
                    logger1.finer("handleQuery() Ignoring a identical service query");
                    return false;
                }
                if (serviceInfoImpl.isProbing() && iCompareTo > 0) {
                    java.lang.String lowerCase = serviceInfoImpl.getQualifiedName().toLowerCase();
                    serviceInfoImpl.setName(jmDNSImpl.incrementName(serviceInfoImpl.getName()));
                    jmDNSImpl.getServices().remove(lowerCase);
                    jmDNSImpl.getServices().put(serviceInfoImpl.getQualifiedName().toLowerCase(), serviceInfoImpl);
                    java.util.logging.Logger logger2 = logger1;
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("handleQuery() Lost tie break: new unique name chosen:");
                    sbO2.append(serviceInfoImpl.getName());
                    logger2.finer(sbO2.toString());
                    serviceInfoImpl.revertState();
                    return true;
                }
            }
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleResponse(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = (javax.jmdns.impl.ServiceInfoImpl) jmDNSImpl.getServices().get(getKey());
            if (serviceInfoImpl == null) {
                return false;
            }
            if (this._port == serviceInfoImpl.getPort() && this._server.equalsIgnoreCase(jmDNSImpl.getLocalHost().getName())) {
                return false;
            }
            logger1.finer("handleResponse() Denial detected");
            if (serviceInfoImpl.isProbing()) {
                java.lang.String lowerCase = serviceInfoImpl.getQualifiedName().toLowerCase();
                serviceInfoImpl.setName(jmDNSImpl.incrementName(serviceInfoImpl.getName()));
                jmDNSImpl.getServices().remove(lowerCase);
                jmDNSImpl.getServices().put(serviceInfoImpl.getQualifiedName().toLowerCase(), serviceInfoImpl);
                java.util.logging.Logger logger = logger1;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("handleResponse() New unique name chose:");
                sbO.append(serviceInfoImpl.getName());
                logger.finer(sbO.toString());
            }
            serviceInfoImpl.revertState();
            return true;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean isSingleValued() {
            return true;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean sameValue(javax.jmdns.impl.DNSRecord dNSRecord) {
            if (!(dNSRecord instanceof javax.jmdns.impl.DNSRecord.Service)) {
                return false;
            }
            javax.jmdns.impl.DNSRecord.Service service = (javax.jmdns.impl.DNSRecord.Service) dNSRecord;
            return this._priority == service._priority && this._weight == service._weight && this._port == service._port && this._server.equals(service._server);
        }

        @Override // javax.jmdns.impl.DNSEntry
        public void toByteArray(java.io.DataOutputStream dataOutputStream) throws java.io.IOException {
            super.toByteArray(dataOutputStream);
            dataOutputStream.writeShort(this._priority);
            dataOutputStream.writeShort(this._weight);
            dataOutputStream.writeShort(this._port);
            try {
                dataOutputStream.write(this._server.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
            } catch (java.io.UnsupportedEncodingException unused) {
            }
        }

        @Override // javax.jmdns.impl.DNSRecord, javax.jmdns.impl.DNSEntry
        public void toString(java.lang.StringBuilder sb) {
            super.toString(sb);
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" server: '");
            sbO.append(this._server);
            sbO.append(":");
            sbO.append(this._port);
            sbO.append("'");
            sb.append(sbO.toString());
        }

        @Override // javax.jmdns.impl.DNSRecord
        public void write(javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream) {
            messageOutputStream.writeShort(this._priority);
            messageOutputStream.writeShort(this._weight);
            messageOutputStream.writeShort(this._port);
            if (javax.jmdns.impl.DNSIncoming.USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET) {
                messageOutputStream.writeName(this._server);
                return;
            }
            java.lang.String str = this._server;
            messageOutputStream.writeUTF(str, 0, str.length());
            messageOutputStream.writeByte(0);
        }
    }

    public static class Text extends javax.jmdns.impl.DNSRecord {
        public final byte[] _text;

        public Text(java.lang.String str, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i, byte[] bArr) {
            super(str, javax.jmdns.impl.constants.DNSRecordType.TYPE_TXT, dNSRecordClass, z, i);
            this._text = (bArr == null || bArr.length <= 0) ? javax.jmdns.impl.DNSRecord.EMPTY_TXT : bArr;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
            return dNSOutgoing;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceEvent getServiceEvent(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            javax.jmdns.ServiceInfo serviceInfo = getServiceInfo(false);
            ((javax.jmdns.impl.ServiceInfoImpl) serviceInfo).setDns(jmDNSImpl);
            return new javax.jmdns.impl.ServiceEventImpl(jmDNSImpl, serviceInfo.getType(), serviceInfo.getName(), serviceInfo);
        }

        @Override // javax.jmdns.impl.DNSRecord
        public javax.jmdns.ServiceInfo getServiceInfo(boolean z) {
            return new javax.jmdns.impl.ServiceInfoImpl(getQualifiedNameMap(), 0, 0, 0, z, this._text);
        }

        public byte[] getText() {
            return this._text;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleQuery(javax.jmdns.impl.JmDNSImpl jmDNSImpl, long j) {
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean handleResponse(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            return false;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean isSingleValued() {
            return true;
        }

        @Override // javax.jmdns.impl.DNSRecord
        public boolean sameValue(javax.jmdns.impl.DNSRecord dNSRecord) {
            if (!(dNSRecord instanceof javax.jmdns.impl.DNSRecord.Text)) {
                return false;
            }
            javax.jmdns.impl.DNSRecord.Text text = (javax.jmdns.impl.DNSRecord.Text) dNSRecord;
            byte[] bArr = this._text;
            if ((bArr == null && text._text != null) || text._text.length != bArr.length) {
                return false;
            }
            int length = bArr.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    return true;
                }
                if (text._text[i] != this._text[i]) {
                    return false;
                }
                length = i;
            }
        }

        @Override // javax.jmdns.impl.DNSRecord, javax.jmdns.impl.DNSEntry
        public void toString(java.lang.StringBuilder sb) {
            super.toString(sb);
            java.lang.StringBuilder sbO = e.a.c.a.a.o(" text: '");
            byte[] bArr = this._text;
            sbO.append(bArr.length > 20 ? e.a.c.a.a.j(new java.lang.StringBuilder(), new java.lang.String(this._text, 0, 17), "...") : new java.lang.String(bArr));
            sbO.append("'");
            sb.append(sbO.toString());
        }

        @Override // javax.jmdns.impl.DNSRecord
        public void write(javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream) {
            byte[] bArr = this._text;
            messageOutputStream.writeBytes(bArr, 0, bArr.length);
        }
    }

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSRecord.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
        EMPTY_TXT = new byte[]{0};
    }

    public DNSRecord(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z, int i) {
        super(str, dNSRecordType, dNSRecordClass, z);
        this._ttl = i;
        this._created = java.lang.System.currentTimeMillis();
    }

    public abstract javax.jmdns.impl.DNSOutgoing addAnswer(javax.jmdns.impl.JmDNSImpl jmDNSImpl, javax.jmdns.impl.DNSIncoming dNSIncoming, java.net.InetAddress inetAddress, int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing);

    @Override // javax.jmdns.impl.DNSEntry
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof javax.jmdns.impl.DNSRecord) && super.equals(obj) && sameValue((javax.jmdns.impl.DNSRecord) obj);
    }

    public long getExpirationTime(int i) {
        return (i * this._ttl * 10) + this._created;
    }

    public java.net.InetAddress getRecordSource() {
        return this._source;
    }

    public int getRemainingTTL(long j) {
        return (int) java.lang.Math.max(0L, (getExpirationTime(100) - j) / 1000);
    }

    public abstract javax.jmdns.ServiceEvent getServiceEvent(javax.jmdns.impl.JmDNSImpl jmDNSImpl);

    public javax.jmdns.ServiceInfo getServiceInfo() {
        return getServiceInfo(false);
    }

    public abstract javax.jmdns.ServiceInfo getServiceInfo(boolean z);

    public int getTTL() {
        return this._ttl;
    }

    public abstract boolean handleQuery(javax.jmdns.impl.JmDNSImpl jmDNSImpl, long j);

    public abstract boolean handleResponse(javax.jmdns.impl.JmDNSImpl jmDNSImpl);

    @Override // javax.jmdns.impl.DNSEntry
    public boolean isExpired(long j) {
        return getExpirationTime(100) <= j;
    }

    public abstract boolean isSingleValued();

    @Override // javax.jmdns.impl.DNSEntry
    public boolean isStale(long j) {
        return getExpirationTime(50) <= j;
    }

    public void resetTTL(javax.jmdns.impl.DNSRecord dNSRecord) {
        this._created = dNSRecord._created;
        this._ttl = dNSRecord._ttl;
    }

    public boolean sameType(javax.jmdns.impl.DNSRecord dNSRecord) {
        return getRecordType() == dNSRecord.getRecordType();
    }

    public abstract boolean sameValue(javax.jmdns.impl.DNSRecord dNSRecord);

    public void setRecordSource(java.net.InetAddress inetAddress) {
        this._source = inetAddress;
    }

    public void setTTL(int i) {
        this._ttl = i;
    }

    public void setWillExpireSoon(long j) {
        this._created = j;
        this._ttl = 1;
    }

    public boolean suppressedBy(javax.jmdns.impl.DNSIncoming dNSIncoming) {
        try {
            java.util.Iterator<? extends javax.jmdns.impl.DNSRecord> it = dNSIncoming.getAllAnswers().iterator();
            while (it.hasNext()) {
                if (suppressedBy(it.next())) {
                    return true;
                }
            }
            return false;
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            logger.log(java.util.logging.Level.WARNING, "suppressedBy() message " + dNSIncoming + " exception ", (java.lang.Throwable) e2);
            return false;
        }
    }

    public boolean suppressedBy(javax.jmdns.impl.DNSRecord dNSRecord) {
        return equals(dNSRecord) && dNSRecord._ttl > this._ttl / 2;
    }

    @Override // javax.jmdns.impl.DNSEntry
    public void toString(java.lang.StringBuilder sb) {
        super.toString(sb);
        java.lang.StringBuilder sbO = e.a.c.a.a.o(" ttl: '");
        sbO.append(getRemainingTTL(java.lang.System.currentTimeMillis()));
        sbO.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
        sbO.append(this._ttl);
        sbO.append("'");
        sb.append(sbO.toString());
    }

    public abstract void write(javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream);
}
