package javax.jmdns.impl.constants;

/* loaded from: classes.dex */
public enum DNSLabel {
    Unknown("", 128),
    Standard("standard label", 0),
    Compressed("compressed label", 192),
    Extended("extended label", 64);

    public static final int LABEL_MASK = 192;
    public static final int LABEL_NOT_MASK = 63;
    public final java.lang.String _externalName;
    public final int _index;

    DNSLabel(java.lang.String str, int i) {
        this._externalName = str;
        this._index = i;
    }

    public static javax.jmdns.impl.constants.DNSLabel labelForByte(int i) {
        int i2 = i & 192;
        for (javax.jmdns.impl.constants.DNSLabel dNSLabel : values()) {
            if (dNSLabel._index == i2) {
                return dNSLabel;
            }
        }
        return Unknown;
    }

    public static int labelValue(int i) {
        return i & 63;
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
