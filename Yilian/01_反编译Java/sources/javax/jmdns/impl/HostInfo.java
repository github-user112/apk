package javax.jmdns.impl;

/* loaded from: classes.dex */
public class HostInfo implements javax.jmdns.impl.DNSStatefulObject {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public java.net.InetAddress _address;
    public java.net.NetworkInterface _interfaze;
    public java.lang.String _name;
    public final javax.jmdns.impl.HostInfo.HostInfoState _state;
    public int hostNameCount;

    /* renamed from: javax.jmdns.impl.HostInfo$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;

        static {
            int[] iArr = new int[javax.jmdns.impl.constants.DNSRecordType.values().length];
            $SwitchMap$javax$jmdns$impl$constants$DNSRecordType = iArr;
            try {
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType = javax.jmdns.impl.constants.DNSRecordType.TYPE_A;
                iArr[1] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType2 = javax.jmdns.impl.constants.DNSRecordType.TYPE_A6;
                iArr2[38] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType3 = javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA;
                iArr3[28] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
        }
    }

    public static final class HostInfoState extends javax.jmdns.impl.DNSStatefulObject.DefaultImplementation {
        public static final long serialVersionUID = -8191476803620402088L;

        public HostInfoState(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            setDns(jmDNSImpl);
        }
    }

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.HostInfo.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public HostInfo(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        this._state = new javax.jmdns.impl.HostInfo.HostInfoState(jmDNSImpl);
        this._address = inetAddress;
        this._name = str;
        if (inetAddress != null) {
            try {
                this._interfaze = java.net.NetworkInterface.getByInetAddress(inetAddress);
            } catch (java.lang.Exception e2) {
                logger.log(java.util.logging.Level.SEVERE, "LocalHostInfo() exception ", (java.lang.Throwable) e2);
            }
        }
    }

    private javax.jmdns.impl.DNSRecord.Address getDNS4AddressRecord(boolean z, int i) {
        if ((getInetAddress() instanceof java.net.Inet4Address) || ((getInetAddress() instanceof java.net.Inet6Address) && ((java.net.Inet6Address) getInetAddress()).isIPv4CompatibleAddress())) {
            return new javax.jmdns.impl.DNSRecord.IPv4Address(getName(), javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, z, i, getInetAddress());
        }
        return null;
    }

    private javax.jmdns.impl.DNSRecord.Pointer getDNS4ReverseAddressRecord(boolean z, int i) {
        if (getInetAddress() instanceof java.net.Inet4Address) {
            return new javax.jmdns.impl.DNSRecord.Pointer(getInetAddress().getHostAddress() + ".in-addr.arpa.", javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, z, i, getName());
        }
        if (!(getInetAddress() instanceof java.net.Inet6Address) || !((java.net.Inet6Address) getInetAddress()).isIPv4CompatibleAddress()) {
            return null;
        }
        byte[] address = getInetAddress().getAddress();
        return new javax.jmdns.impl.DNSRecord.Pointer(e.a.c.a.a.e((address[12] & 255) + "." + (address[13] & 255) + "." + (address[14] & 255) + "." + (address[15] & 255), ".in-addr.arpa."), javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, z, i, getName());
    }

    private javax.jmdns.impl.DNSRecord.Address getDNS6AddressRecord(boolean z, int i) {
        if (getInetAddress() instanceof java.net.Inet6Address) {
            return new javax.jmdns.impl.DNSRecord.IPv6Address(getName(), javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, z, i, getInetAddress());
        }
        return null;
    }

    private javax.jmdns.impl.DNSRecord.Pointer getDNS6ReverseAddressRecord(boolean z, int i) {
        if (!(getInetAddress() instanceof java.net.Inet6Address)) {
            return null;
        }
        return new javax.jmdns.impl.DNSRecord.Pointer(getInetAddress().getHostAddress() + ".ip6.arpa.", javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, z, i, getName());
    }

    public static java.net.InetAddress loopbackAddress() {
        try {
            return java.net.InetAddress.getByName(null);
        } catch (java.net.UnknownHostException unused) {
            return null;
        }
    }

    public static javax.jmdns.impl.HostInfo newHostInfo(java.net.InetAddress inetAddress, javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.lang.String str) {
        java.net.InetAddress inetAddressLoopbackAddress;
        java.lang.String string;
        try {
            if (inetAddress == null) {
                java.lang.String property = java.lang.System.getProperty("net.mdns.interface");
                if (property != null) {
                    inetAddressLoopbackAddress = java.net.InetAddress.getByName(property);
                } else {
                    inetAddressLoopbackAddress = java.net.InetAddress.getLocalHost();
                    if (inetAddressLoopbackAddress.isLoopbackAddress()) {
                        java.net.InetAddress[] inetAddresses = javax.jmdns.NetworkTopologyDiscovery.Factory.getInstance().getInetAddresses();
                        if (inetAddresses.length > 0) {
                            inetAddressLoopbackAddress = inetAddresses[0];
                        }
                    }
                }
                string = inetAddressLoopbackAddress.toString();
                if (inetAddressLoopbackAddress.isLoopbackAddress()) {
                    logger.warning("Could not find any address beside the loopback.");
                }
            } else {
                string = inetAddress.toString();
                inetAddressLoopbackAddress = inetAddress;
            }
        } catch (java.io.IOException e2) {
            logger.log(java.util.logging.Level.WARNING, "Could not intialize the host network interface on " + inetAddress + "because of an error: " + e2.getMessage(), (java.lang.Throwable) e2);
            inetAddressLoopbackAddress = loopbackAddress();
            if (str == null || str.length() <= 0) {
                string = "computer";
            }
        }
        if (string.contains("in-addr.arpa") || string.equals(inetAddressLoopbackAddress.getHostAddress())) {
            if (str == null || str.length() <= 0) {
                str = inetAddressLoopbackAddress.getHostAddress();
            }
            string = str;
        }
        return new javax.jmdns.impl.HostInfo(inetAddressLoopbackAddress, e.a.c.a.a.e(string.replace('.', '-'), ".local."), jmDNSImpl);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean advanceState(javax.jmdns.impl.tasks.DNSTask dNSTask) {
        return this._state.advanceState(dNSTask);
    }

    public java.util.Collection<javax.jmdns.impl.DNSRecord> answers(boolean z, int i) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        javax.jmdns.impl.DNSRecord.Address dNS4AddressRecord = getDNS4AddressRecord(z, i);
        if (dNS4AddressRecord != null) {
            arrayList.add(dNS4AddressRecord);
        }
        javax.jmdns.impl.DNSRecord.Address dNS6AddressRecord = getDNS6AddressRecord(z, i);
        if (dNS6AddressRecord != null) {
            arrayList.add(dNS6AddressRecord);
        }
        return arrayList;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public void associateWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask, javax.jmdns.impl.constants.DNSState dNSState) {
        this._state.associateWithTask(dNSTask, dNSState);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean cancelState() {
        return this._state.cancelState();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean closeState() {
        return this._state.closeState();
    }

    public boolean conflictWithRecord(javax.jmdns.impl.DNSRecord.Address address) {
        javax.jmdns.impl.DNSRecord.Address dNSAddressRecord = getDNSAddressRecord(address.getRecordType(), address.isUnique(), javax.jmdns.impl.constants.DNSConstants.DNS_TTL);
        return dNSAddressRecord != null && dNSAddressRecord.sameType(address) && dNSAddressRecord.sameName(address) && !dNSAddressRecord.sameValue(address);
    }

    public javax.jmdns.impl.DNSRecord.Address getDNSAddressRecord(javax.jmdns.impl.constants.DNSRecordType dNSRecordType, boolean z, int i) {
        int i2 = javax.jmdns.impl.HostInfo.AnonymousClass1.$SwitchMap$javax$jmdns$impl$constants$DNSRecordType[dNSRecordType.ordinal()];
        if (i2 == 1) {
            return getDNS4AddressRecord(z, i);
        }
        if (i2 == 2 || i2 == 3) {
            return getDNS6AddressRecord(z, i);
        }
        return null;
    }

    public javax.jmdns.impl.DNSRecord.Pointer getDNSReverseAddressRecord(javax.jmdns.impl.constants.DNSRecordType dNSRecordType, boolean z, int i) {
        int i2 = javax.jmdns.impl.HostInfo.AnonymousClass1.$SwitchMap$javax$jmdns$impl$constants$DNSRecordType[dNSRecordType.ordinal()];
        if (i2 == 1) {
            return getDNS4ReverseAddressRecord(z, i);
        }
        if (i2 == 2 || i2 == 3) {
            return getDNS6ReverseAddressRecord(z, i);
        }
        return null;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public javax.jmdns.impl.JmDNSImpl getDns() {
        return this._state.getDns();
    }

    public java.net.Inet4Address getInet4Address() {
        if (getInetAddress() instanceof java.net.Inet4Address) {
            return (java.net.Inet4Address) this._address;
        }
        return null;
    }

    public java.net.Inet6Address getInet6Address() {
        if (getInetAddress() instanceof java.net.Inet6Address) {
            return (java.net.Inet6Address) this._address;
        }
        return null;
    }

    public java.net.InetAddress getInetAddress() {
        return this._address;
    }

    public java.net.NetworkInterface getInterface() {
        return this._interfaze;
    }

    public java.lang.String getName() {
        return this._name;
    }

    public synchronized java.lang.String incrementHostName() {
        java.lang.String string;
        this.hostNameCount++;
        int iIndexOf = this._name.indexOf(".local.");
        int iLastIndexOf = this._name.lastIndexOf(45);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.String str = this._name;
        if (iLastIndexOf != -1) {
            iIndexOf = iLastIndexOf;
        }
        sb.append(str.substring(0, iIndexOf));
        sb.append("-");
        sb.append(this.hostNameCount);
        sb.append(".local.");
        string = sb.toString();
        this._name = string;
        return string;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isAnnounced() {
        return this._state.isAnnounced();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isAnnouncing() {
        return this._state.isAnnouncing();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isAssociatedWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask, javax.jmdns.impl.constants.DNSState dNSState) {
        return this._state.isAssociatedWithTask(dNSTask, dNSState);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isCanceled() {
        return this._state.isCanceled();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isCanceling() {
        return this._state.isCanceling();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isClosed() {
        return this._state.isClosed();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isClosing() {
        return this._state.isClosing();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isProbing() {
        return this._state.isProbing();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean recoverState() {
        return this._state.recoverState();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public void removeAssociationWithTask(javax.jmdns.impl.tasks.DNSTask dNSTask) {
        this._state.removeAssociationWithTask(dNSTask);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean revertState() {
        return this._state.revertState();
    }

    public boolean shouldIgnorePacket(java.net.DatagramPacket datagramPacket) {
        java.net.InetAddress address;
        boolean z = false;
        if (getInetAddress() == null || (address = datagramPacket.getAddress()) == null) {
            return false;
        }
        if (address.isLinkLocalAddress() && !getInetAddress().isLinkLocalAddress()) {
            z = true;
        }
        if (!address.isLoopbackAddress() || getInetAddress().isLoopbackAddress()) {
            return z;
        }
        return true;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(1024);
        sb.append("local host info[");
        sb.append(getName() != null ? getName() : "no name");
        sb.append(", ");
        sb.append(getInterface() != null ? getInterface().getDisplayName() : "???");
        sb.append(":");
        sb.append(getInetAddress() != null ? getInetAddress().getHostAddress() : "no address");
        sb.append(", ");
        sb.append(this._state);
        sb.append("]");
        return sb.toString();
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean waitForAnnounced(long j) {
        return this._state.waitForAnnounced(j);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean waitForCanceled(long j) {
        if (this._address == null) {
            return true;
        }
        return this._state.waitForCanceled(j);
    }
}
