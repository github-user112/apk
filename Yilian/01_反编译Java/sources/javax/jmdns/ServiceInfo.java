package javax.jmdns;

/* loaded from: classes.dex */
public abstract class ServiceInfo implements java.lang.Cloneable {
    public static final byte[] NO_VALUE = new byte[0];

    public enum Fields {
        Domain,
        Protocol,
        Application,
        Instance,
        Subtype
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, int i, int i2, int i3, java.lang.String str3) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, "", i, i2, i3, false, str3);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, int i, int i2, int i3, java.util.Map<java.lang.String, ?> map) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, "", i, i2, i3, false, map);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, int i, int i2, int i3, boolean z, java.lang.String str3) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, "", i, i2, i3, z, str3);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, int i, int i2, int i3, boolean z, java.util.Map<java.lang.String, ?> map) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, "", i, i2, i3, z, map);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, int i, int i2, int i3, boolean z, byte[] bArr) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, "", i, i2, i3, z, bArr);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, int i, int i2, int i3, byte[] bArr) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, "", i, i2, i3, false, bArr);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, int i, java.lang.String str3) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, "", i, 0, 0, false, str3);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, java.lang.String str4) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, i, i2, i3, false, str4);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, java.util.Map<java.lang.String, ?> map) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, i, i2, i3, false, map);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, boolean z, java.lang.String str4) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, i, i2, i3, z, str4);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, boolean z, java.util.Map<java.lang.String, ?> map) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, i, i2, i3, z, map);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, boolean z, byte[] bArr) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, i, i2, i3, z, bArr);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, byte[] bArr) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, i, i2, i3, false, bArr);
    }

    public static javax.jmdns.ServiceInfo create(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, java.lang.String str4) {
        return new javax.jmdns.impl.ServiceInfoImpl(str, str2, str3, i, 0, 0, false, str4);
    }

    public static javax.jmdns.ServiceInfo create(java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> map, int i, int i2, int i3, boolean z, java.util.Map<java.lang.String, ?> map2) {
        return new javax.jmdns.impl.ServiceInfoImpl(map, i, i2, i3, z, map2);
    }

    @Override // 
    public javax.jmdns.ServiceInfo clone() {
        try {
            return (javax.jmdns.ServiceInfo) super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            return null;
        }
    }

    @java.lang.Deprecated
    public abstract java.net.InetAddress getAddress();

    public abstract java.lang.String getApplication();

    public abstract java.lang.String getDomain();

    @java.lang.Deprecated
    public abstract java.lang.String getHostAddress();

    public abstract java.lang.String[] getHostAddresses();

    @java.lang.Deprecated
    public abstract java.net.Inet4Address getInet4Address();

    public abstract java.net.Inet4Address[] getInet4Addresses();

    @java.lang.Deprecated
    public abstract java.net.Inet6Address getInet6Address();

    public abstract java.net.Inet6Address[] getInet6Addresses();

    @java.lang.Deprecated
    public abstract java.net.InetAddress getInetAddress();

    public abstract java.net.InetAddress[] getInetAddresses();

    public abstract java.lang.String getKey();

    public abstract java.lang.String getName();

    public abstract java.lang.String getNiceTextString();

    public abstract int getPort();

    public abstract int getPriority();

    public abstract byte[] getPropertyBytes(java.lang.String str);

    public abstract java.util.Enumeration<java.lang.String> getPropertyNames();

    public abstract java.lang.String getPropertyString(java.lang.String str);

    public abstract java.lang.String getProtocol();

    public abstract java.lang.String getQualifiedName();

    public abstract java.util.Map<javax.jmdns.ServiceInfo.Fields, java.lang.String> getQualifiedNameMap();

    public abstract java.lang.String getServer();

    public abstract java.lang.String getSubtype();

    public abstract byte[] getTextBytes();

    @java.lang.Deprecated
    public abstract java.lang.String getTextString();

    public abstract java.lang.String getType();

    public abstract java.lang.String getTypeWithSubtype();

    @java.lang.Deprecated
    public abstract java.lang.String getURL();

    @java.lang.Deprecated
    public abstract java.lang.String getURL(java.lang.String str);

    public abstract java.lang.String[] getURLs();

    public abstract java.lang.String[] getURLs(java.lang.String str);

    public abstract int getWeight();

    public abstract boolean hasData();

    public abstract boolean isPersistent();

    public abstract void setText(java.util.Map<java.lang.String, ?> map);

    public abstract void setText(byte[] bArr);
}
