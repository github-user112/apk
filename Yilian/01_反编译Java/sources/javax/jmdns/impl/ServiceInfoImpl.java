package javax.jmdns.impl;

/* loaded from: classes.dex */
public class ServiceInfoImpl extends javax.jmdns.ServiceInfo implements javax.jmdns.impl.DNSListener, javax.jmdns.impl.DNSStatefulObject {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public java.lang.String _application;
    public javax.jmdns.impl.ServiceInfoImpl.Delegate _delegate;
    public java.lang.String _domain;
    public final java.util.Set<java.net.Inet4Address> _ipv4Addresses;
    public final java.util.Set<java.net.Inet6Address> _ipv6Addresses;
    public transient java.lang.String _key;
    public java.lang.String _name;
    public boolean _needTextAnnouncing;
    public boolean _persistent;
    public int _port;
    public int _priority;
    public java.util.Map<java.lang.String, byte[]> _props;
    public java.lang.String _protocol;
    public java.lang.String _server;
    public final javax.jmdns.impl.ServiceInfoImpl.ServiceInfoState _state;
    public java.lang.String _subtype;
    public byte[] _text;
    public int _weight;

    /* renamed from: javax.jmdns.impl.ServiceInfoImpl$1, reason: invalid class name */
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
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType2 = javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA;
                iArr2[28] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType3 = javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV;
                iArr3[33] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType4 = javax.jmdns.impl.constants.DNSRecordType.TYPE_TXT;
                iArr4[16] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType5 = javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR;
                iArr5[12] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
        }
    }

    public interface Delegate {
        void textValueUpdated(javax.jmdns.ServiceInfo serviceInfo, byte[] bArr);
    }

    public static final class ServiceInfoState extends javax.jmdns.impl.DNSStatefulObject.DefaultImplementation {
        public static final long serialVersionUID = 1104131034952196820L;
        public final javax.jmdns.impl.ServiceInfoImpl _info;

        public ServiceInfoState(javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl) {
            this._info = serviceInfoImpl;
        }

        @Override // javax.jmdns.impl.DNSStatefulObject.DefaultImplementation
        public void setDns(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            super.setDns(jmDNSImpl);
        }

        @Override // javax.jmdns.impl.DNSStatefulObject.DefaultImplementation
        public void setTask(javax.jmdns.impl.tasks.DNSTask dNSTask) {
            super.setTask(dNSTask);
            if (this._task == null && this._info.needTextAnnouncing()) {
                lock();
                try {
                    if (this._task == null && this._info.needTextAnnouncing()) {
                        if (this._state.isAnnounced()) {
                            setState(javax.jmdns.impl.constants.DNSState.ANNOUNCING_1);
                            if (getDns() != null) {
                                getDns().startAnnouncer();
                            }
                        }
                        this._info.setNeedTextAnnouncing(false);
                    }
                } finally {
                    unlock();
                }
            }
        }
    }

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.ServiceInfoImpl.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public ServiceInfoImpl(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, boolean z, java.lang.String str4) {
        this(decodeQualifiedNameMap(str, str2, str3), i, i2, i3, z, (byte[]) null);
        this._server = str4;
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(str4.length());
            writeUTF(byteArrayOutputStream, str4);
            this._text = byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException e2) {
            throw new java.lang.RuntimeException("unexpected exception: " + e2);
        }
    }

    public ServiceInfoImpl(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, boolean z, java.util.Map<java.lang.String, ?> map) {
        this(decodeQualifiedNameMap(str, str2, str3), i, i2, i3, z, textFromProperties(map));
    }

    public ServiceInfoImpl(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, boolean z, byte[] bArr) {
        this(decodeQualifiedNameMap(str, str2, str3), i, i2, i3, z, bArr);
    }

    public ServiceInfoImpl(java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> map, int i, int i2, int i3, boolean z, java.lang.String str) {
        this(map, i, i2, i3, z, (byte[]) null);
        this._server = str;
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(str.length());
            writeUTF(byteArrayOutputStream, str);
            this._text = byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException e2) {
            throw new java.lang.RuntimeException("unexpected exception: " + e2);
        }
    }

    public ServiceInfoImpl(java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> map, int i, int i2, int i3, boolean z, java.util.Map<java.lang.String, ?> map2) {
        this(map, i, i2, i3, z, textFromProperties(map2));
    }

    public ServiceInfoImpl(java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> map, int i, int i2, int i3, boolean z, byte[] bArr) {
        java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> mapCheckQualifiedNameMap = checkQualifiedNameMap(map);
        this._domain = mapCheckQualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Domain);
        this._protocol = mapCheckQualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Protocol);
        this._application = mapCheckQualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Application);
        this._name = mapCheckQualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Instance);
        this._subtype = mapCheckQualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Subtype);
        this._port = i;
        this._weight = i2;
        this._priority = i3;
        this._text = bArr;
        setNeedTextAnnouncing(false);
        this._state = new javax.jmdns.impl.ServiceInfoImpl.ServiceInfoState(this);
        this._persistent = z;
        this._ipv4Addresses = java.util.Collections.synchronizedSet(new java.util.LinkedHashSet());
        this._ipv6Addresses = java.util.Collections.synchronizedSet(new java.util.LinkedHashSet());
    }

    public ServiceInfoImpl(javax.jmdns.ServiceInfo serviceInfo) {
        this._ipv4Addresses = java.util.Collections.synchronizedSet(new java.util.LinkedHashSet());
        this._ipv6Addresses = java.util.Collections.synchronizedSet(new java.util.LinkedHashSet());
        if (serviceInfo != null) {
            this._domain = serviceInfo.getDomain();
            this._protocol = serviceInfo.getProtocol();
            this._application = serviceInfo.getApplication();
            this._name = serviceInfo.getName();
            this._subtype = serviceInfo.getSubtype();
            this._port = serviceInfo.getPort();
            this._weight = serviceInfo.getWeight();
            this._priority = serviceInfo.getPriority();
            this._text = serviceInfo.getTextBytes();
            this._persistent = serviceInfo.isPersistent();
            for (java.net.Inet6Address inet6Address : serviceInfo.getInet6Addresses()) {
                this._ipv6Addresses.add(inet6Address);
            }
            for (java.net.Inet4Address inet4Address : serviceInfo.getInet4Addresses()) {
                this._ipv4Addresses.add(inet4Address);
            }
        }
        this._state = new javax.jmdns.impl.ServiceInfoImpl.ServiceInfoState(this);
    }

    public static java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> checkQualifiedNameMap(java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> map) {
        java.util.HashMap map2 = new java.util.HashMap(5);
        javax.jmdns.ServiceInfo.Fields fields = javax.jmdns.ServiceInfo.Fields.Domain;
        java.lang.String str = "local";
        java.lang.String str2 = map.containsKey(fields) ? map.get(fields) : "local";
        if (str2 != null && str2.length() != 0) {
            str = str2;
        }
        map2.put(fields, removeSeparators(str));
        javax.jmdns.ServiceInfo.Fields fields2 = javax.jmdns.ServiceInfo.Fields.Protocol;
        java.lang.String str3 = "tcp";
        java.lang.String str4 = map.containsKey(fields2) ? map.get(fields2) : "tcp";
        if (str4 != null && str4.length() != 0) {
            str3 = str4;
        }
        map2.put(fields2, removeSeparators(str3));
        javax.jmdns.ServiceInfo.Fields fields3 = javax.jmdns.ServiceInfo.Fields.Application;
        java.lang.String str5 = "";
        java.lang.String str6 = map.containsKey(fields3) ? map.get(fields3) : "";
        if (str6 == null || str6.length() == 0) {
            str6 = "";
        }
        map2.put(fields3, removeSeparators(str6));
        javax.jmdns.ServiceInfo.Fields fields4 = javax.jmdns.ServiceInfo.Fields.Instance;
        java.lang.String str7 = map.containsKey(fields4) ? map.get(fields4) : "";
        if (str7 == null || str7.length() == 0) {
            str7 = "";
        }
        map2.put(fields4, removeSeparators(str7));
        javax.jmdns.ServiceInfo.Fields fields5 = javax.jmdns.ServiceInfo.Fields.Subtype;
        java.lang.String str8 = map.containsKey(fields5) ? map.get(fields5) : "";
        if (str8 != null && str8.length() != 0) {
            str5 = str8;
        }
        map2.put(fields5, removeSeparators(str5));
        return map2;
    }

    public static java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> decodeQualifiedNameMap(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> mapDecodeQualifiedNameMapForType = decodeQualifiedNameMapForType(str);
        mapDecodeQualifiedNameMapForType.put(javax.jmdns.ServiceInfo.Fields.Instance, str2);
        mapDecodeQualifiedNameMapForType.put(javax.jmdns.ServiceInfo.Fields.Subtype, str3);
        return checkQualifiedNameMap(mapDecodeQualifiedNameMapForType);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> decodeQualifiedNameMapForType(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.jmdns.impl.ServiceInfoImpl.decodeQualifiedNameMapForType(java.lang.String):java.util.Map");
    }

    private final boolean hasInetAddress() {
        return this._ipv4Addresses.size() > 0 || this._ipv6Addresses.size() > 0;
    }

    public static java.lang.String removeSeparators(java.lang.String str) {
        if (str == null) {
            return "";
        }
        java.lang.String strTrim = str.trim();
        if (strTrim.startsWith(".")) {
            strTrim = strTrim.substring(1);
        }
        if (strTrim.startsWith("_")) {
            strTrim = strTrim.substring(1);
        }
        return strTrim.endsWith(".") ? strTrim.substring(0, strTrim.length() - 1) : strTrim;
    }

    public static byte[] textFromProperties(java.util.Map<java.lang.String, ?> map) throws java.io.IOException {
        byte[] byteArray = null;
        if (map != null) {
            try {
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(256);
                for (java.lang.String str : map.keySet()) {
                    java.lang.Object obj = map.get(str);
                    java.io.ByteArrayOutputStream byteArrayOutputStream2 = new java.io.ByteArrayOutputStream(100);
                    writeUTF(byteArrayOutputStream2, str);
                    if (obj != null) {
                        if (obj instanceof java.lang.String) {
                            byteArrayOutputStream2.write(61);
                            writeUTF(byteArrayOutputStream2, (java.lang.String) obj);
                        } else {
                            if (!(obj instanceof byte[])) {
                                throw new java.lang.IllegalArgumentException("invalid property value: " + obj);
                            }
                            byte[] bArr = (byte[]) obj;
                            if (bArr.length > 0) {
                                byteArrayOutputStream2.write(61);
                                byteArrayOutputStream2.write(bArr, 0, bArr.length);
                            } else {
                                obj = null;
                            }
                        }
                    }
                    byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                    if (byteArray2.length > 255) {
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append("Cannot have individual values larger that 255 chars. Offending value: ");
                        sb.append(str);
                        sb.append(obj != null ? "" : "=" + obj);
                        throw new java.io.IOException(sb.toString());
                    }
                    byteArrayOutputStream.write((byte) byteArray2.length);
                    byteArrayOutputStream.write(byteArray2, 0, byteArray2.length);
                }
                byteArray = byteArrayOutputStream.toByteArray();
            } catch (java.io.IOException e2) {
                throw new java.lang.RuntimeException("unexpected exception: " + e2);
            }
        }
        return (byteArray == null || byteArray.length <= 0) ? javax.jmdns.impl.DNSRecord.EMPTY_TXT : byteArray;
    }

    public static void writeUTF(java.io.OutputStream outputStream, java.lang.String str) throws java.io.IOException {
        int i;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            int iCharAt = str.charAt(i2);
            if (iCharAt < 1 || iCharAt > 127) {
                if (iCharAt > 2047) {
                    outputStream.write(((iCharAt >> 12) & 15) | 224);
                    i = ((iCharAt >> 6) & 63) | 128;
                } else {
                    i = ((iCharAt >> 6) & 31) | 192;
                }
                outputStream.write(i);
                iCharAt = ((iCharAt >> 0) & 63) | 128;
            }
            outputStream.write(iCharAt);
        }
    }

    public void _setText(byte[] bArr) {
        this._text = bArr;
        this._props = null;
    }

    public void addAddress(java.net.Inet4Address inet4Address) {
        this._ipv4Addresses.add(inet4Address);
    }

    public void addAddress(java.net.Inet6Address inet6Address) {
        this._ipv6Addresses.add(inet6Address);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean advanceState(javax.jmdns.impl.tasks.DNSTask dNSTask) {
        return this._state.advanceState(dNSTask);
    }

    public java.util.Collection<javax.jmdns.impl.DNSRecord> answers(boolean z, int i, javax.jmdns.impl.HostInfo hostInfo) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (getSubtype().length() > 0) {
            arrayList.add(new javax.jmdns.impl.DNSRecord.Pointer(getTypeWithSubtype(), javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false, i, getQualifiedName()));
        }
        java.lang.String type = getType();
        javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass = javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN;
        arrayList.add(new javax.jmdns.impl.DNSRecord.Pointer(type, dNSRecordClass, false, i, getQualifiedName()));
        arrayList.add(new javax.jmdns.impl.DNSRecord.Service(getQualifiedName(), dNSRecordClass, z, i, this._priority, this._weight, this._port, hostInfo.getName()));
        arrayList.add(new javax.jmdns.impl.DNSRecord.Text(getQualifiedName(), dNSRecordClass, z, i, getTextBytes()));
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

    @Override // javax.jmdns.ServiceInfo
    public javax.jmdns.impl.ServiceInfoImpl clone() {
        javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl = new javax.jmdns.impl.ServiceInfoImpl(getQualifiedNameMap(), this._port, this._weight, this._priority, this._persistent, this._text);
        for (java.net.Inet6Address inet6Address : getInet6Addresses()) {
            serviceInfoImpl._ipv6Addresses.add(inet6Address);
        }
        for (java.net.Inet4Address inet4Address : getInet4Addresses()) {
            serviceInfoImpl._ipv4Addresses.add(inet4Address);
        }
        return serviceInfoImpl;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean closeState() {
        return this._state.closeState();
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof javax.jmdns.impl.ServiceInfoImpl) && getQualifiedName().equals(((javax.jmdns.impl.ServiceInfoImpl) obj).getQualifiedName());
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.net.InetAddress getAddress() {
        return getInetAddress();
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getApplication() {
        java.lang.String str = this._application;
        return str != null ? str : "";
    }

    public javax.jmdns.impl.ServiceInfoImpl.Delegate getDelegate() {
        return this._delegate;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public javax.jmdns.impl.JmDNSImpl getDns() {
        return this._state.getDns();
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getDomain() {
        java.lang.String str = this._domain;
        return str != null ? str : "local";
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.lang.String getHostAddress() {
        java.lang.String[] hostAddresses = getHostAddresses();
        return hostAddresses.length > 0 ? hostAddresses[0] : "";
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String[] getHostAddresses() {
        java.net.Inet4Address[] inet4Addresses = getInet4Addresses();
        java.net.Inet6Address[] inet6Addresses = getInet6Addresses();
        java.lang.String[] strArr = new java.lang.String[inet4Addresses.length + inet6Addresses.length];
        for (int i = 0; i < inet4Addresses.length; i++) {
            strArr[i] = inet4Addresses[i].getHostAddress();
        }
        for (int i2 = 0; i2 < inet6Addresses.length; i2++) {
            int length = inet4Addresses.length + i2;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("[");
            sbO.append(inet6Addresses[i2].getHostAddress());
            sbO.append("]");
            strArr[length] = sbO.toString();
        }
        return strArr;
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.net.Inet4Address getInet4Address() {
        java.net.Inet4Address[] inet4Addresses = getInet4Addresses();
        if (inet4Addresses.length > 0) {
            return inet4Addresses[0];
        }
        return null;
    }

    @Override // javax.jmdns.ServiceInfo
    public java.net.Inet4Address[] getInet4Addresses() {
        java.util.Set<java.net.Inet4Address> set = this._ipv4Addresses;
        return (java.net.Inet4Address[]) set.toArray(new java.net.Inet4Address[set.size()]);
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.net.Inet6Address getInet6Address() {
        java.net.Inet6Address[] inet6Addresses = getInet6Addresses();
        if (inet6Addresses.length > 0) {
            return inet6Addresses[0];
        }
        return null;
    }

    @Override // javax.jmdns.ServiceInfo
    public java.net.Inet6Address[] getInet6Addresses() {
        java.util.Set<java.net.Inet6Address> set = this._ipv6Addresses;
        return (java.net.Inet6Address[]) set.toArray(new java.net.Inet6Address[set.size()]);
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.net.InetAddress getInetAddress() {
        java.net.InetAddress[] inetAddresses = getInetAddresses();
        if (inetAddresses.length > 0) {
            return inetAddresses[0];
        }
        return null;
    }

    @Override // javax.jmdns.ServiceInfo
    public java.net.InetAddress[] getInetAddresses() {
        java.util.ArrayList arrayList = new java.util.ArrayList(this._ipv6Addresses.size() + this._ipv4Addresses.size());
        arrayList.addAll(this._ipv4Addresses);
        arrayList.addAll(this._ipv6Addresses);
        return (java.net.InetAddress[]) arrayList.toArray(new java.net.InetAddress[arrayList.size()]);
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getKey() {
        if (this._key == null) {
            this._key = getQualifiedName().toLowerCase();
        }
        return this._key;
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getName() {
        java.lang.String str = this._name;
        return str != null ? str : "";
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getNiceTextString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        int length = getTextBytes().length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (i >= 200) {
                stringBuffer.append("...");
                break;
            }
            int i2 = getTextBytes()[i] & 255;
            if (i2 < 32 || i2 > 127) {
                stringBuffer.append("\\0");
                stringBuffer.append(java.lang.Integer.toString(i2, 8));
            } else {
                stringBuffer.append((char) i2);
            }
            i++;
        }
        return stringBuffer.toString();
    }

    @Override // javax.jmdns.ServiceInfo
    public int getPort() {
        return this._port;
    }

    @Override // javax.jmdns.ServiceInfo
    public int getPriority() {
        return this._priority;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007c A[Catch: all -> 0x0082, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:7:0x000b, B:9:0x0012, B:11:0x0019, B:13:0x0025, B:18:0x0032, B:20:0x003e, B:21:0x0041, B:25:0x004e, B:26:0x0055, B:27:0x0067, B:31:0x0075, B:30:0x006c, B:32:0x0077, B:35:0x007c), top: B:43:0x0001, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.Map<java.lang.String, byte[]> getProperties() {
        /*
            r9 = this;
            monitor-enter(r9)
            java.util.Map<java.lang.String, byte[]> r0 = r9._props     // Catch: java.lang.Throwable -> L82
            if (r0 != 0) goto L77
            byte[] r0 = r9.getTextBytes()     // Catch: java.lang.Throwable -> L82
            if (r0 == 0) goto L77
            java.util.Hashtable r0 = new java.util.Hashtable     // Catch: java.lang.Throwable -> L82
            r0.<init>()     // Catch: java.lang.Throwable -> L82
            r1 = 0
            r2 = 0
        L12:
            byte[] r3 = r9.getTextBytes()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            int r3 = r3.length     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            if (r2 >= r3) goto L75
            byte[] r3 = r9.getTextBytes()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            int r4 = r2 + 1
            r2 = r3[r2]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            r2 = r2 & 255(0xff, float:3.57E-43)
            if (r2 == 0) goto L67
            int r3 = r4 + r2
            byte[] r5 = r9.getTextBytes()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            int r5 = r5.length     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            if (r3 <= r5) goto L2f
            goto L67
        L2f:
            r5 = 0
        L30:
            if (r5 >= r2) goto L41
            byte[] r6 = r9.getTextBytes()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            int r7 = r4 + r5
            r6 = r6[r7]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            r7 = 61
            if (r6 == r7) goto L41
            int r5 = r5 + 1
            goto L30
        L41:
            byte[] r6 = r9.getTextBytes()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            java.lang.String r6 = r9.readUTF(r6, r4, r5)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            if (r6 != 0) goto L4c
            goto L67
        L4c:
            if (r5 != r2) goto L55
            byte[] r2 = javax.jmdns.ServiceInfo.NO_VALUE     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            r0.put(r6, r2)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            r2 = r4
            goto L12
        L55:
            int r5 = r5 + 1
            int r2 = r2 - r5
            byte[] r7 = new byte[r2]     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            byte[] r8 = r9.getTextBytes()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            int r4 = r4 + r5
            java.lang.System.arraycopy(r8, r4, r7, r1, r2)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            r0.put(r6, r7)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            r2 = r3
            goto L12
        L67:
            r0.clear()     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            goto L75
        L6b:
            r1 = move-exception
            java.util.logging.Logger r2 = javax.jmdns.impl.ServiceInfoImpl.logger     // Catch: java.lang.Throwable -> L82
            java.util.logging.Level r3 = java.util.logging.Level.WARNING     // Catch: java.lang.Throwable -> L82
            java.lang.String r4 = "Malformed TXT Field "
            r2.log(r3, r4, r1)     // Catch: java.lang.Throwable -> L82
        L75:
            r9._props = r0     // Catch: java.lang.Throwable -> L82
        L77:
            java.util.Map<java.lang.String, byte[]> r0 = r9._props     // Catch: java.lang.Throwable -> L82
            if (r0 == 0) goto L7c
            goto L80
        L7c:
            java.util.Map r0 = java.util.Collections.emptyMap()     // Catch: java.lang.Throwable -> L82
        L80:
            monitor-exit(r9)
            return r0
        L82:
            r0 = move-exception
            monitor-exit(r9)
            goto L86
        L85:
            throw r0
        L86:
            goto L85
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.jmdns.impl.ServiceInfoImpl.getProperties():java.util.Map");
    }

    @Override // javax.jmdns.ServiceInfo
    public synchronized byte[] getPropertyBytes(java.lang.String str) {
        return getProperties().get(str);
    }

    @Override // javax.jmdns.ServiceInfo
    public java.util.Enumeration<java.lang.String> getPropertyNames() {
        java.util.Map<java.lang.String, byte[]> properties = getProperties();
        return new java.util.Vector(properties != null ? properties.keySet() : java.util.Collections.emptySet()).elements();
    }

    @Override // javax.jmdns.ServiceInfo
    public synchronized java.lang.String getPropertyString(java.lang.String str) {
        byte[] bArr = getProperties().get(str);
        if (bArr == null) {
            return null;
        }
        if (bArr == javax.jmdns.ServiceInfo.NO_VALUE) {
            return "true";
        }
        return readUTF(bArr, 0, bArr.length);
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getProtocol() {
        java.lang.String str = this._protocol;
        return str != null ? str : "tcp";
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getQualifiedName() {
        java.lang.String domain = getDomain();
        java.lang.String protocol = getProtocol();
        java.lang.String application = getApplication();
        java.lang.String name = getName();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(name.length() > 0 ? e.a.c.a.a.e(name, ".") : "");
        sb.append(application.length() > 0 ? e.a.c.a.a.f("_", application, ".") : "");
        sb.append(protocol.length() > 0 ? e.a.c.a.a.f("_", protocol, ".") : "");
        sb.append(domain);
        sb.append(".");
        return sb.toString();
    }

    @Override // javax.jmdns.ServiceInfo
    public java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> getQualifiedNameMap() {
        java.util.HashMap map = new java.util.HashMap(5);
        map.put(javax.jmdns.ServiceInfo.Fields.Domain, getDomain());
        map.put(javax.jmdns.ServiceInfo.Fields.Protocol, getProtocol());
        map.put(javax.jmdns.ServiceInfo.Fields.Application, getApplication());
        map.put(javax.jmdns.ServiceInfo.Fields.Instance, getName());
        map.put(javax.jmdns.ServiceInfo.Fields.Subtype, getSubtype());
        return map;
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getServer() {
        java.lang.String str = this._server;
        return str != null ? str : "";
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getSubtype() {
        java.lang.String str = this._subtype;
        return str != null ? str : "";
    }

    @Override // javax.jmdns.ServiceInfo
    public byte[] getTextBytes() {
        byte[] bArr = this._text;
        return (bArr == null || bArr.length <= 0) ? javax.jmdns.impl.DNSRecord.EMPTY_TXT : bArr;
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.lang.String getTextString() {
        java.util.Map<java.lang.String, byte[]> properties = getProperties();
        java.util.Iterator<java.lang.String> it = properties.keySet().iterator();
        if (!it.hasNext()) {
            return "";
        }
        java.lang.String next = it.next();
        byte[] bArr = properties.get(next);
        if (bArr == null || bArr.length <= 0) {
            return next;
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(next, "=");
        sbQ.append(new java.lang.String(bArr));
        return sbQ.toString();
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getType() {
        java.lang.String domain = getDomain();
        java.lang.String protocol = getProtocol();
        java.lang.String application = getApplication();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(application.length() > 0 ? e.a.c.a.a.f("_", application, ".") : "");
        sb.append(protocol.length() > 0 ? e.a.c.a.a.f("_", protocol, ".") : "");
        sb.append(domain);
        sb.append(".");
        return sb.toString();
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String getTypeWithSubtype() {
        java.lang.String string;
        java.lang.String subtype = getSubtype();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (subtype.length() > 0) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("_");
            sbO.append(subtype.toLowerCase());
            sbO.append("._sub.");
            string = sbO.toString();
        } else {
            string = "";
        }
        sb.append(string);
        sb.append(getType());
        return sb.toString();
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.lang.String getURL() {
        return getURL("http");
    }

    @Override // javax.jmdns.ServiceInfo
    @java.lang.Deprecated
    public java.lang.String getURL(java.lang.String str) {
        java.lang.String[] uRLs = getURLs(str);
        if (uRLs.length > 0) {
            return uRLs[0];
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, "://null:");
        sbQ.append(getPort());
        return sbQ.toString();
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String[] getURLs() {
        return getURLs("http");
    }

    @Override // javax.jmdns.ServiceInfo
    public java.lang.String[] getURLs(java.lang.String str) {
        java.net.InetAddress[] inetAddresses = getInetAddresses();
        java.lang.String[] strArr = new java.lang.String[inetAddresses.length];
        for (int i = 0; i < inetAddresses.length; i++) {
            java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, "://");
            sbQ.append(inetAddresses[i].getHostAddress());
            sbQ.append(":");
            sbQ.append(getPort());
            java.lang.String string = sbQ.toString();
            java.lang.String propertyString = getPropertyString(androidx.core.content.FileProvider.ATTR_PATH);
            if (propertyString != null) {
                if (propertyString.indexOf("://") >= 0) {
                    string = propertyString;
                } else {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o(string);
                    if (!propertyString.startsWith(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR)) {
                        propertyString = e.a.c.a.a.e(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, propertyString);
                    }
                    sbO.append(propertyString);
                    string = sbO.toString();
                }
            }
            strArr[i] = string;
        }
        return strArr;
    }

    @Override // javax.jmdns.ServiceInfo
    public int getWeight() {
        return this._weight;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001c  */
    @Override // javax.jmdns.ServiceInfo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean hasData() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.lang.String r0 = r1.getServer()     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L1c
            boolean r0 = r1.hasInetAddress()     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L1c
            byte[] r0 = r1.getTextBytes()     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L1c
            byte[] r0 = r1.getTextBytes()     // Catch: java.lang.Throwable -> L1f
            int r0 = r0.length     // Catch: java.lang.Throwable -> L1f
            if (r0 <= 0) goto L1c
            r0 = 1
            goto L1d
        L1c:
            r0 = 0
        L1d:
            monitor-exit(r1)
            return r0
        L1f:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.jmdns.impl.ServiceInfoImpl.hasData():boolean");
    }

    public int hashCode() {
        return getQualifiedName().hashCode();
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

    @Override // javax.jmdns.ServiceInfo
    public boolean isPersistent() {
        return this._persistent;
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean isProbing() {
        return this._state.isProbing();
    }

    public boolean needTextAnnouncing() {
        return this._needTextAnnouncing;
    }

    public java.lang.String readUTF(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        int i6 = i + i2;
        while (i < i6) {
            int i7 = i + 1;
            int i8 = bArr[i] & 255;
            switch (i8 >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    stringBuffer.append((char) i8);
                    i = i7;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    i4 = i7 + 1;
                    if (i4 < i2) {
                        i3 = (i8 & 63) << 4;
                        i5 = bArr[i7] & com.umeng.analytics.pro.bw.m;
                        break;
                    } else {
                        return null;
                    }
                case 12:
                case 13:
                    if (i7 < i2) {
                        i3 = (i8 & 31) << 6;
                        i4 = i7 + 1;
                        i5 = bArr[i7] & 63;
                        break;
                    } else {
                        return null;
                    }
                case 14:
                    if (i7 + 2 >= i2) {
                        return null;
                    }
                    int i9 = i7 + 1;
                    int i10 = ((i8 & 15) << 12) | ((bArr[i7] & 63) << 6);
                    i7 = i9 + 1;
                    i8 = i10 | (bArr[i9] & 63);
                    continue;
                    stringBuffer.append((char) i8);
                    i = i7;
            }
            i8 = i3 | i5;
            i7 = i4;
            stringBuffer.append((char) i8);
            i = i7;
        }
        return stringBuffer.toString();
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

    public void setDelegate(javax.jmdns.impl.ServiceInfoImpl.Delegate delegate) {
        this._delegate = delegate;
    }

    public void setDns(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        this._state.setDns(jmDNSImpl);
    }

    public void setName(java.lang.String str) {
        this._name = str;
        this._key = null;
    }

    public void setNeedTextAnnouncing(boolean z) {
        this._needTextAnnouncing = z;
        if (z) {
            this._state.setTask(null);
        }
    }

    public void setServer(java.lang.String str) {
        this._server = str;
    }

    @Override // javax.jmdns.ServiceInfo
    public void setText(java.util.Map<java.lang.String, ?> map) {
        setText(textFromProperties(map));
    }

    @Override // javax.jmdns.ServiceInfo
    public void setText(byte[] bArr) {
        synchronized (this) {
            this._text = bArr;
            this._props = null;
            setNeedTextAnnouncing(true);
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("[");
        sbO.append(javax.jmdns.impl.ServiceInfoImpl.class.getSimpleName());
        sbO.append("@");
        sbO.append(java.lang.System.identityHashCode(this));
        sbO.append(" ");
        sb.append(sbO.toString());
        sb.append("name: '");
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        sb2.append(getName().length() > 0 ? getName() + "." : "");
        sb2.append(getTypeWithSubtype());
        sb.append(sb2.toString());
        sb.append("' address: '");
        java.net.InetAddress[] inetAddresses = getInetAddresses();
        if (inetAddresses.length > 0) {
            for (java.net.InetAddress inetAddress : inetAddresses) {
                sb.append(inetAddress);
                sb.append(':');
                sb.append(getPort());
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
        } else {
            sb.append("(null):");
            sb.append(getPort());
        }
        sb.append("' status: '");
        sb.append(this._state.toString());
        sb.append(isPersistent() ? "' is persistent," : "',");
        sb.append(" has ");
        sb.append(hasData() ? "" : "NO ");
        sb.append("data");
        if (getTextBytes().length > 0) {
            java.util.Map<java.lang.String, byte[]> properties = getProperties();
            if (properties.isEmpty()) {
                sb.append(" empty");
            } else {
                sb.append("\n");
                for (java.lang.String str : properties.keySet()) {
                    java.lang.StringBuilder sbR = e.a.c.a.a.r("\t", str, ": ");
                    sbR.append(new java.lang.String(properties.get(str)));
                    sbR.append("\n");
                    sb.append(sbR.toString());
                }
            }
        }
        sb.append(']');
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x013a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // javax.jmdns.impl.DNSListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateRecord(javax.jmdns.impl.DNSCache r6, long r7, javax.jmdns.impl.DNSEntry r9) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.jmdns.impl.ServiceInfoImpl.updateRecord(javax.jmdns.impl.DNSCache, long, javax.jmdns.impl.DNSEntry):void");
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean waitForAnnounced(long j) {
        return this._state.waitForAnnounced(j);
    }

    @Override // javax.jmdns.impl.DNSStatefulObject
    public boolean waitForCanceled(long j) {
        return this._state.waitForCanceled(j);
    }
}
