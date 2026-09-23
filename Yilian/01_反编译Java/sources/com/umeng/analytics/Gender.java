package com.umeng.analytics;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Male' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class Gender {
    public static final com.umeng.analytics.Gender Female;
    public static final com.umeng.analytics.Gender Male;
    public static final com.umeng.analytics.Gender Unknown;
    public static final /* synthetic */ com.umeng.analytics.Gender[] a;
    public int value;

    /* renamed from: com.umeng.analytics.Gender$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[com.umeng.analytics.Gender.values().length];
            a = iArr;
            try {
                com.umeng.analytics.Gender gender = com.umeng.analytics.Gender.Male;
                iArr[0] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = a;
                com.umeng.analytics.Gender gender2 = com.umeng.analytics.Gender.Female;
                iArr2[1] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = a;
                com.umeng.analytics.Gender gender3 = com.umeng.analytics.Gender.Unknown;
                iArr3[2] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
        }
    }

    static {
        int i = 0;
        int i2 = 1;
        Male = new com.umeng.analytics.Gender("Male", i, i2) { // from class: com.umeng.analytics.Gender.1
            @Override // java.lang.Enum
            public java.lang.String toString() {
                return java.lang.String.format(java.util.Locale.US, "Male:%d", java.lang.Integer.valueOf(this.value));
            }
        };
        int i3 = 2;
        Female = new com.umeng.analytics.Gender("Female", i2, i3) { // from class: com.umeng.analytics.Gender.2
            @Override // java.lang.Enum
            public java.lang.String toString() {
                return java.lang.String.format(java.util.Locale.US, "Female:%d", java.lang.Integer.valueOf(this.value));
            }
        };
        com.umeng.analytics.Gender gender = new com.umeng.analytics.Gender("Unknown", i3, i) { // from class: com.umeng.analytics.Gender.3
            @Override // java.lang.Enum
            public java.lang.String toString() {
                return java.lang.String.format(java.util.Locale.US, "Unknown:%d", java.lang.Integer.valueOf(this.value));
            }
        };
        Unknown = gender;
        a = new com.umeng.analytics.Gender[]{Male, Female, gender};
    }

    public Gender(java.lang.String str, int i, int i2) {
        this.value = i2;
    }

    public static com.umeng.analytics.Gender getGender(int i) {
        return i != 1 ? i != 2 ? Unknown : Female : Male;
    }

    public static com.umeng.commonsdk.statistics.proto.Gender transGender(com.umeng.analytics.Gender gender) {
        int i = com.umeng.analytics.Gender.AnonymousClass4.a[gender.ordinal()];
        return i != 1 ? i != 2 ? com.umeng.commonsdk.statistics.proto.Gender.UNKNOWN : com.umeng.commonsdk.statistics.proto.Gender.FEMALE : com.umeng.commonsdk.statistics.proto.Gender.MALE;
    }

    public static com.umeng.analytics.Gender valueOf(java.lang.String str) {
        return (com.umeng.analytics.Gender) java.lang.Enum.valueOf(com.umeng.analytics.Gender.class, str);
    }

    public static com.umeng.analytics.Gender[] values() {
        return (com.umeng.analytics.Gender[]) a.clone();
    }

    public int value() {
        return this.value;
    }
}
