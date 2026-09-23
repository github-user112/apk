package com.alibaba.fastjson;

/* loaded from: classes.dex */
public enum PropertyNamingStrategy {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase,
    NoChange,
    NeverUseThisValueExceptDefaultValue;

    /* renamed from: com.alibaba.fastjson.PropertyNamingStrategy$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;

        static {
            int[] iArr = new int[com.alibaba.fastjson.PropertyNamingStrategy.values().length];
            $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy = iArr;
            try {
                com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy = com.alibaba.fastjson.PropertyNamingStrategy.SnakeCase;
                iArr[2] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy2 = com.alibaba.fastjson.PropertyNamingStrategy.KebabCase;
                iArr2[3] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy3 = com.alibaba.fastjson.PropertyNamingStrategy.PascalCase;
                iArr3[1] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy4 = com.alibaba.fastjson.PropertyNamingStrategy.CamelCase;
                iArr4[0] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy5 = com.alibaba.fastjson.PropertyNamingStrategy.NoChange;
                iArr5[4] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy;
                com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy6 = com.alibaba.fastjson.PropertyNamingStrategy.NeverUseThisValueExceptDefaultValue;
                iArr6[5] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
        }
    }

    public java.lang.String translate(java.lang.String str) {
        int iOrdinal = ordinal();
        int i = 0;
        if (iOrdinal == 0) {
            char cCharAt = str.charAt(0);
            if (cCharAt < 'A' || cCharAt > 'Z') {
                return str;
            }
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            return new java.lang.String(charArray);
        }
        if (iOrdinal == 1) {
            char cCharAt2 = str.charAt(0);
            if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                return str;
            }
            char[] charArray2 = str.toCharArray();
            charArray2[0] = (char) (charArray2[0] - ' ');
            return new java.lang.String(charArray2);
        }
        if (iOrdinal == 2) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            while (i < str.length()) {
                char cCharAt3 = str.charAt(i);
                if (cCharAt3 >= 'A' && cCharAt3 <= 'Z') {
                    cCharAt3 = (char) (cCharAt3 + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                    if (i > 0) {
                        sb.append('_');
                    }
                }
                sb.append(cCharAt3);
                i++;
            }
            return sb.toString();
        }
        if (iOrdinal != 3) {
            return str;
        }
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        while (i < str.length()) {
            char cCharAt4 = str.charAt(i);
            if (cCharAt4 >= 'A' && cCharAt4 <= 'Z') {
                cCharAt4 = (char) (cCharAt4 + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                if (i > 0) {
                    sb2.append('-');
                }
            }
            sb2.append(cCharAt4);
            i++;
        }
        return sb2.toString();
    }
}
