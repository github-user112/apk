package javax.jmdns.impl.constants;

/* loaded from: classes.dex */
public enum DNSOptionCode {
    Unknown("Unknown", 65535),
    LLQ("LLQ", 1),
    UL("UL", 2),
    NSID("NSID", 3),
    Owner("Owner", 4);

    public final java.lang.String _externalName;
    public final int _index;

    DNSOptionCode(java.lang.String str, int i) {
        this._externalName = str;
        this._index = i;
    }

    public static javax.jmdns.impl.constants.DNSOptionCode resultCodeForFlags(int i) {
        for (javax.jmdns.impl.constants.DNSOptionCode dNSOptionCode : values()) {
            if (dNSOptionCode._index == i) {
                return dNSOptionCode;
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
