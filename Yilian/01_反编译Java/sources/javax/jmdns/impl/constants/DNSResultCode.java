package javax.jmdns.impl.constants;

/* loaded from: classes.dex */
public enum DNSResultCode {
    Unknown("Unknown", 65535),
    NoError("No Error", 0),
    FormErr("Format Error", 1),
    ServFail("Server Failure", 2),
    NXDomain("Non-Existent Domain", 3),
    NotImp("Not Implemented", 4),
    Refused("Query Refused", 5),
    YXDomain("Name Exists when it should not", 6),
    YXRRSet("RR Set Exists when it should not", 7),
    NXRRSet("RR Set that should exist does not", 8),
    NotAuth("Server Not Authoritative for zone", 9),
    NotZone("NotZone Name not contained in zone", 10);

    public static final int ExtendedRCode_MASK = 255;
    public static final int RCode_MASK = 15;
    public final java.lang.String _externalName;
    public final int _index;

    DNSResultCode(java.lang.String str, int i) {
        this._externalName = str;
        this._index = i;
    }

    public static javax.jmdns.impl.constants.DNSResultCode resultCodeForFlags(int i) {
        int i2 = i & 15;
        for (javax.jmdns.impl.constants.DNSResultCode dNSResultCode : values()) {
            if (dNSResultCode._index == i2) {
                return dNSResultCode;
            }
        }
        return Unknown;
    }

    public static javax.jmdns.impl.constants.DNSResultCode resultCodeForFlags(int i, int i2) {
        int i3 = (i & 15) | ((i2 >> 28) & 255);
        for (javax.jmdns.impl.constants.DNSResultCode dNSResultCode : values()) {
            if (dNSResultCode._index == i3) {
                return dNSResultCode;
            }
        }
        return Unknown;
    }

    public java.lang.String externalName() {
        return this._externalName;
    }

    public int indexValue() {
        return this._index;
    }

    @Override // java.lang.Enum
    public java.lang.String toString() {
        return name() + " index " + indexValue();
    }
}
