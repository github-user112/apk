package javax.jmdns.impl.constants;

/* loaded from: classes.dex */
public enum DNSOperationCode {
    Query("Query", 0),
    IQuery("Inverse Query", 1),
    Status("Status", 2),
    Unassigned("Unassigned", 3),
    Notify("Notify", 4),
    Update("Update", 5);

    public static final int OpCode_MASK = 30720;
    public final java.lang.String _externalName;
    public final int _index;

    DNSOperationCode(java.lang.String str, int i) {
        this._externalName = str;
        this._index = i;
    }

    public static javax.jmdns.impl.constants.DNSOperationCode operationCodeForFlags(int i) {
        int i2 = (i & OpCode_MASK) >> 11;
        for (javax.jmdns.impl.constants.DNSOperationCode dNSOperationCode : values()) {
            if (dNSOperationCode._index == i2) {
                return dNSOperationCode;
            }
        }
        return Unassigned;
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
