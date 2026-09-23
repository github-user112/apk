package javax.jmdns.impl.constants;

/* loaded from: classes.dex */
public enum DNSRecordClass {
    CLASS_UNKNOWN("?", 0),
    CLASS_IN("in", 1),
    CLASS_CS("cs", 2),
    CLASS_CH("ch", 3),
    CLASS_HS("hs", 4),
    CLASS_NONE("none", com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_RESOURCE),
    CLASS_ANY("any", 255);

    public static final int CLASS_MASK = 32767;
    public static final int CLASS_UNIQUE = 32768;
    public static final boolean NOT_UNIQUE = false;
    public static final boolean UNIQUE = true;
    public static java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.constants.DNSRecordClass.class.getName());
    public final java.lang.String _externalName;
    public final int _index;

    DNSRecordClass(java.lang.String str, int i) {
        this._externalName = str;
        this._index = i;
    }

    public static javax.jmdns.impl.constants.DNSRecordClass classForIndex(int i) {
        int i2 = i & CLASS_MASK;
        for (javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass : values()) {
            if (dNSRecordClass._index == i2) {
                return dNSRecordClass;
            }
        }
        logger.log(java.util.logging.Level.WARNING, "Could not find record class for index: " + i);
        return CLASS_UNKNOWN;
    }

    public static javax.jmdns.impl.constants.DNSRecordClass classForName(java.lang.String str) {
        if (str != null) {
            java.lang.String lowerCase = str.toLowerCase();
            for (javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass : values()) {
                if (dNSRecordClass._externalName.equals(lowerCase)) {
                    return dNSRecordClass;
                }
            }
        }
        logger.log(java.util.logging.Level.WARNING, "Could not find record class for name: " + str);
        return CLASS_UNKNOWN;
    }

    public java.lang.String externalName() {
        return this._externalName;
    }

    public int indexValue() {
        return this._index;
    }

    public boolean isUnique(int i) {
        return (this == CLASS_UNKNOWN || (i & 32768) == 0) ? false : true;
    }

    @Override // java.lang.Enum
    public java.lang.String toString() {
        return name() + " index " + indexValue();
    }
}
