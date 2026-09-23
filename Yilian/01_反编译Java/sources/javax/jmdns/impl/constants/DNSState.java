package javax.jmdns.impl.constants;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'PROBING_1' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class DNSState {
    public static final /* synthetic */ javax.jmdns.impl.constants.DNSState[] $VALUES;
    public static final javax.jmdns.impl.constants.DNSState ANNOUNCED;
    public static final javax.jmdns.impl.constants.DNSState ANNOUNCING_1;
    public static final javax.jmdns.impl.constants.DNSState ANNOUNCING_2;
    public static final javax.jmdns.impl.constants.DNSState CANCELED;
    public static final javax.jmdns.impl.constants.DNSState CANCELING_1;
    public static final javax.jmdns.impl.constants.DNSState CANCELING_2;
    public static final javax.jmdns.impl.constants.DNSState CANCELING_3;
    public static final javax.jmdns.impl.constants.DNSState CLOSED;
    public static final javax.jmdns.impl.constants.DNSState CLOSING;
    public static final javax.jmdns.impl.constants.DNSState PROBING_1;
    public static final javax.jmdns.impl.constants.DNSState PROBING_2;
    public static final javax.jmdns.impl.constants.DNSState PROBING_3;
    public final java.lang.String _name;
    public final javax.jmdns.impl.constants.DNSState.StateClass _state;

    /* renamed from: javax.jmdns.impl.constants.DNSState$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$javax$jmdns$impl$constants$DNSState;

        static {
            int[] iArr = new int[javax.jmdns.impl.constants.DNSState.values().length];
            $SwitchMap$javax$jmdns$impl$constants$DNSState = iArr;
            try {
                javax.jmdns.impl.constants.DNSState dNSState = javax.jmdns.impl.constants.DNSState.PROBING_1;
                iArr[0] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState2 = javax.jmdns.impl.constants.DNSState.PROBING_2;
                iArr2[1] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState3 = javax.jmdns.impl.constants.DNSState.PROBING_3;
                iArr3[2] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState4 = javax.jmdns.impl.constants.DNSState.ANNOUNCING_1;
                iArr4[3] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState5 = javax.jmdns.impl.constants.DNSState.ANNOUNCING_2;
                iArr5[4] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState6 = javax.jmdns.impl.constants.DNSState.ANNOUNCED;
                iArr6[5] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState7 = javax.jmdns.impl.constants.DNSState.CANCELING_1;
                iArr7[6] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState8 = javax.jmdns.impl.constants.DNSState.CANCELING_2;
                iArr8[7] = 8;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState9 = javax.jmdns.impl.constants.DNSState.CANCELING_3;
                iArr9[8] = 9;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState10 = javax.jmdns.impl.constants.DNSState.CANCELED;
                iArr10[9] = 10;
            } catch (java.lang.NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState11 = javax.jmdns.impl.constants.DNSState.CLOSING;
                iArr11[10] = 11;
            } catch (java.lang.NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = $SwitchMap$javax$jmdns$impl$constants$DNSState;
                javax.jmdns.impl.constants.DNSState dNSState12 = javax.jmdns.impl.constants.DNSState.CLOSED;
                iArr12[11] = 12;
            } catch (java.lang.NoSuchFieldError unused12) {
            }
        }
    }

    public enum StateClass {
        probing,
        announcing,
        announced,
        canceling,
        canceled,
        closing,
        closed
    }

    static {
        javax.jmdns.impl.constants.DNSState.StateClass stateClass = javax.jmdns.impl.constants.DNSState.StateClass.probing;
        javax.jmdns.impl.constants.DNSState dNSState = new javax.jmdns.impl.constants.DNSState("PROBING_1", 0, "probing 1", stateClass);
        PROBING_1 = dNSState;
        javax.jmdns.impl.constants.DNSState dNSState2 = new javax.jmdns.impl.constants.DNSState("PROBING_2", 1, "probing 2", stateClass);
        PROBING_2 = dNSState2;
        javax.jmdns.impl.constants.DNSState dNSState3 = new javax.jmdns.impl.constants.DNSState("PROBING_3", 2, "probing 3", stateClass);
        PROBING_3 = dNSState3;
        javax.jmdns.impl.constants.DNSState.StateClass stateClass2 = javax.jmdns.impl.constants.DNSState.StateClass.announcing;
        javax.jmdns.impl.constants.DNSState dNSState4 = new javax.jmdns.impl.constants.DNSState("ANNOUNCING_1", 3, "announcing 1", stateClass2);
        ANNOUNCING_1 = dNSState4;
        javax.jmdns.impl.constants.DNSState dNSState5 = new javax.jmdns.impl.constants.DNSState("ANNOUNCING_2", 4, "announcing 2", stateClass2);
        ANNOUNCING_2 = dNSState5;
        javax.jmdns.impl.constants.DNSState dNSState6 = new javax.jmdns.impl.constants.DNSState("ANNOUNCED", 5, "announced", javax.jmdns.impl.constants.DNSState.StateClass.announced);
        ANNOUNCED = dNSState6;
        javax.jmdns.impl.constants.DNSState.StateClass stateClass3 = javax.jmdns.impl.constants.DNSState.StateClass.canceling;
        javax.jmdns.impl.constants.DNSState dNSState7 = new javax.jmdns.impl.constants.DNSState("CANCELING_1", 6, "canceling 1", stateClass3);
        CANCELING_1 = dNSState7;
        javax.jmdns.impl.constants.DNSState dNSState8 = new javax.jmdns.impl.constants.DNSState("CANCELING_2", 7, "canceling 2", stateClass3);
        CANCELING_2 = dNSState8;
        javax.jmdns.impl.constants.DNSState dNSState9 = new javax.jmdns.impl.constants.DNSState("CANCELING_3", 8, "canceling 3", stateClass3);
        CANCELING_3 = dNSState9;
        javax.jmdns.impl.constants.DNSState dNSState10 = new javax.jmdns.impl.constants.DNSState("CANCELED", 9, "canceled", javax.jmdns.impl.constants.DNSState.StateClass.canceled);
        CANCELED = dNSState10;
        javax.jmdns.impl.constants.DNSState dNSState11 = new javax.jmdns.impl.constants.DNSState("CLOSING", 10, "closing", javax.jmdns.impl.constants.DNSState.StateClass.closing);
        CLOSING = dNSState11;
        javax.jmdns.impl.constants.DNSState dNSState12 = new javax.jmdns.impl.constants.DNSState("CLOSED", 11, "closed", javax.jmdns.impl.constants.DNSState.StateClass.closed);
        CLOSED = dNSState12;
        $VALUES = new javax.jmdns.impl.constants.DNSState[]{dNSState, dNSState2, dNSState3, dNSState4, dNSState5, dNSState6, dNSState7, dNSState8, dNSState9, dNSState10, dNSState11, dNSState12};
    }

    public DNSState(java.lang.String str, int i, java.lang.String str2, javax.jmdns.impl.constants.DNSState.StateClass stateClass) {
        this._name = str2;
        this._state = stateClass;
    }

    public static javax.jmdns.impl.constants.DNSState valueOf(java.lang.String str) {
        return (javax.jmdns.impl.constants.DNSState) java.lang.Enum.valueOf(javax.jmdns.impl.constants.DNSState.class, str);
    }

    public static javax.jmdns.impl.constants.DNSState[] values() {
        return (javax.jmdns.impl.constants.DNSState[]) $VALUES.clone();
    }

    public final javax.jmdns.impl.constants.DNSState advance() {
        switch (ordinal()) {
            case 0:
                return PROBING_2;
            case 1:
                return PROBING_3;
            case 2:
                return ANNOUNCING_1;
            case 3:
                return ANNOUNCING_2;
            case 4:
                return ANNOUNCED;
            case 5:
                return ANNOUNCED;
            case 6:
                return CANCELING_2;
            case 7:
                return CANCELING_3;
            case 8:
                return CANCELED;
            case 9:
                return CANCELED;
            case 10:
                return CLOSED;
            case 11:
                return CLOSED;
            default:
                return this;
        }
    }

    public final boolean isAnnounced() {
        return this._state == javax.jmdns.impl.constants.DNSState.StateClass.announced;
    }

    public final boolean isAnnouncing() {
        return this._state == javax.jmdns.impl.constants.DNSState.StateClass.announcing;
    }

    public final boolean isCanceled() {
        return this._state == javax.jmdns.impl.constants.DNSState.StateClass.canceled;
    }

    public final boolean isCanceling() {
        return this._state == javax.jmdns.impl.constants.DNSState.StateClass.canceling;
    }

    public final boolean isClosed() {
        return this._state == javax.jmdns.impl.constants.DNSState.StateClass.closed;
    }

    public final boolean isClosing() {
        return this._state == javax.jmdns.impl.constants.DNSState.StateClass.closing;
    }

    public final boolean isProbing() {
        return this._state == javax.jmdns.impl.constants.DNSState.StateClass.probing;
    }

    public final javax.jmdns.impl.constants.DNSState revert() {
        switch (ordinal()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return PROBING_1;
            case 6:
            case 7:
            case 8:
                return CANCELING_1;
            case 9:
                return CANCELED;
            case 10:
                return CLOSING;
            case 11:
                return CLOSED;
            default:
                return this;
        }
    }

    @Override // java.lang.Enum
    public final java.lang.String toString() {
        return this._name;
    }
}
