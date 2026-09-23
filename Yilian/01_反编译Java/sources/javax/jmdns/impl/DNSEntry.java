package javax.jmdns.impl;

/* loaded from: classes.dex */
public abstract class DNSEntry {
    public final javax.jmdns.impl.constants.DNSRecordClass _dnsClass;
    public final java.lang.String _key;
    public final java.lang.String _name;
    public final java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> _qualifiedNameMap;
    public final javax.jmdns.impl.constants.DNSRecordType _recordType;
    public final java.lang.String _type;
    public final boolean _unique;

    public DNSEntry(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
        this._name = str;
        this._recordType = dNSRecordType;
        this._dnsClass = dNSRecordClass;
        this._unique = z;
        java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> mapDecodeQualifiedNameMapForType = javax.jmdns.impl.ServiceInfoImpl.decodeQualifiedNameMapForType(getName());
        this._qualifiedNameMap = mapDecodeQualifiedNameMapForType;
        java.lang.String str2 = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Domain);
        java.lang.String str3 = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Protocol);
        java.lang.String str4 = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Application);
        java.lang.String lowerCase = mapDecodeQualifiedNameMapForType.get(javax.jmdns.ServiceInfo.Fields.Instance).toLowerCase();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str4.length() > 0 ? e.a.c.a.a.f("_", str4, ".") : "");
        sb.append(str3.length() > 0 ? e.a.c.a.a.f("_", str3, ".") : "");
        sb.append(str2);
        sb.append(".");
        java.lang.String string = sb.toString();
        this._type = string;
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        sb2.append(lowerCase.length() > 0 ? e.a.c.a.a.e(lowerCase, ".") : "");
        sb2.append(string);
        this._key = sb2.toString().toLowerCase();
    }

    public int compareTo(javax.jmdns.impl.DNSEntry dNSEntry) {
        byte[] byteArray = toByteArray();
        byte[] byteArray2 = dNSEntry.toByteArray();
        int iMin = java.lang.Math.min(byteArray.length, byteArray2.length);
        for (int i = 0; i < iMin; i++) {
            if (byteArray[i] > byteArray2[i]) {
                return 1;
            }
            if (byteArray[i] < byteArray2[i]) {
                return -1;
            }
        }
        return byteArray.length - byteArray2.length;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof javax.jmdns.impl.DNSEntry)) {
            return false;
        }
        javax.jmdns.impl.DNSEntry dNSEntry = (javax.jmdns.impl.DNSEntry) obj;
        return getKey().equals(dNSEntry.getKey()) && getRecordType().equals(dNSEntry.getRecordType()) && getRecordClass() == dNSEntry.getRecordClass();
    }

    public java.lang.String getKey() {
        java.lang.String str = this._key;
        return str != null ? str : "";
    }

    public java.lang.String getName() {
        java.lang.String str = this._name;
        return str != null ? str : "";
    }

    public java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> getQualifiedNameMap() {
        return java.util.Collections.unmodifiableMap(this._qualifiedNameMap);
    }

    public javax.jmdns.impl.constants.DNSRecordClass getRecordClass() {
        javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass = this._dnsClass;
        return dNSRecordClass != null ? dNSRecordClass : javax.jmdns.impl.constants.DNSRecordClass.CLASS_UNKNOWN;
    }

    public javax.jmdns.impl.constants.DNSRecordType getRecordType() {
        javax.jmdns.impl.constants.DNSRecordType dNSRecordType = this._recordType;
        return dNSRecordType != null ? dNSRecordType : javax.jmdns.impl.constants.DNSRecordType.TYPE_IGNORE;
    }

    public java.lang.String getSubtype() {
        java.lang.String str = getQualifiedNameMap().get(javax.jmdns.ServiceInfo.Fields.Subtype);
        return str != null ? str : "";
    }

    public java.lang.String getType() {
        java.lang.String str = this._type;
        return str != null ? str : "";
    }

    public int hashCode() {
        return getRecordClass().indexValue() + getRecordType().indexValue() + getKey().hashCode();
    }

    public boolean isDomainDiscoveryQuery() {
        if (!this._qualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Application).equals("dns-sd")) {
            return false;
        }
        java.lang.String str = this._qualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Instance);
        return com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD.equals(str) || "db".equals(str) || com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT.equals(str) || "dr".equals(str) || "lb".equals(str);
    }

    public abstract boolean isExpired(long j);

    public boolean isReverseLookup() {
        return isV4ReverseLookup() || isV6ReverseLookup();
    }

    public boolean isSameEntry(javax.jmdns.impl.DNSEntry dNSEntry) {
        return getKey().equals(dNSEntry.getKey()) && getRecordType().equals(dNSEntry.getRecordType()) && (javax.jmdns.impl.constants.DNSRecordClass.CLASS_ANY == dNSEntry.getRecordClass() || getRecordClass().equals(dNSEntry.getRecordClass()));
    }

    public boolean isSameRecordClass(javax.jmdns.impl.DNSEntry dNSEntry) {
        return dNSEntry != null && dNSEntry.getRecordClass() == getRecordClass();
    }

    public boolean isSameType(javax.jmdns.impl.DNSEntry dNSEntry) {
        return dNSEntry != null && dNSEntry.getRecordType() == getRecordType();
    }

    public boolean isServicesDiscoveryMetaQuery() {
        return this._qualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Application).equals("dns-sd") && this._qualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Instance).equals("_services");
    }

    public abstract boolean isStale(long j);

    public boolean isUnique() {
        return this._unique;
    }

    public boolean isV4ReverseLookup() {
        return this._qualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Domain).endsWith("in-addr.arpa");
    }

    public boolean isV6ReverseLookup() {
        return this._qualifiedNameMap.get(javax.jmdns.ServiceInfo.Fields.Domain).endsWith("ip6.arpa");
    }

    public boolean sameSubtype(javax.jmdns.impl.DNSEntry dNSEntry) {
        return getSubtype().equals(dNSEntry.getSubtype());
    }

    public void toByteArray(java.io.DataOutputStream dataOutputStream) throws java.io.IOException {
        dataOutputStream.write(getName().getBytes("UTF8"));
        dataOutputStream.writeShort(getRecordType().indexValue());
        dataOutputStream.writeShort(getRecordClass().indexValue());
    }

    public byte[] toByteArray() {
        try {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(byteArrayOutputStream);
            toByteArray(dataOutputStream);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException unused) {
            throw new java.lang.InternalError();
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(200);
        java.lang.StringBuilder sbO = e.a.c.a.a.o("[");
        sbO.append(getClass().getSimpleName());
        sbO.append("@");
        sbO.append(java.lang.System.identityHashCode(this));
        sb.append(sbO.toString());
        sb.append(" type: " + getRecordType());
        sb.append(", class: " + getRecordClass());
        sb.append(this._unique ? "-unique," : ",");
        sb.append(" name: " + this._name);
        toString(sb);
        sb.append("]");
        return sb.toString();
    }

    public void toString(java.lang.StringBuilder sb) {
    }
}
