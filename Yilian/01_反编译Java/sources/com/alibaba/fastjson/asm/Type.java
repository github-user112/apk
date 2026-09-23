package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class Type {
    public final char[] buf;
    public final int len;
    public final int off;
    public final int sort;
    public static final com.alibaba.fastjson.asm.Type VOID_TYPE = new com.alibaba.fastjson.asm.Type(0, null, 1443168256, 1);
    public static final com.alibaba.fastjson.asm.Type BOOLEAN_TYPE = new com.alibaba.fastjson.asm.Type(1, null, 1509950721, 1);
    public static final com.alibaba.fastjson.asm.Type CHAR_TYPE = new com.alibaba.fastjson.asm.Type(2, null, 1124075009, 1);
    public static final com.alibaba.fastjson.asm.Type BYTE_TYPE = new com.alibaba.fastjson.asm.Type(3, null, 1107297537, 1);
    public static final com.alibaba.fastjson.asm.Type SHORT_TYPE = new com.alibaba.fastjson.asm.Type(4, null, 1392510721, 1);
    public static final com.alibaba.fastjson.asm.Type INT_TYPE = new com.alibaba.fastjson.asm.Type(5, null, 1224736769, 1);
    public static final com.alibaba.fastjson.asm.Type FLOAT_TYPE = new com.alibaba.fastjson.asm.Type(6, null, 1174536705, 1);
    public static final com.alibaba.fastjson.asm.Type LONG_TYPE = new com.alibaba.fastjson.asm.Type(7, null, 1241579778, 1);
    public static final com.alibaba.fastjson.asm.Type DOUBLE_TYPE = new com.alibaba.fastjson.asm.Type(8, null, 1141048066, 1);

    public Type(int i, char[] cArr, int i2, int i3) {
        this.sort = i;
        this.buf = cArr;
        this.off = i2;
        this.len = i3;
    }

    public static com.alibaba.fastjson.asm.Type[] getArgumentTypes(java.lang.String str) {
        char[] charArray = str.toCharArray();
        int i = 1;
        int i2 = 1;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            char c2 = charArray[i2];
            if (c2 == ')') {
                break;
            }
            if (c2 == 'L') {
                while (true) {
                    i2 = i4 + 1;
                    if (charArray[i4] == ';') {
                        break;
                    }
                    i4 = i2;
                }
                i3++;
            } else {
                if (c2 != '[') {
                    i3++;
                }
                i2 = i4;
            }
        }
        com.alibaba.fastjson.asm.Type[] typeArr = new com.alibaba.fastjson.asm.Type[i3];
        int i5 = 0;
        while (charArray[i] != ')') {
            typeArr[i5] = getType(charArray, i);
            i += typeArr[i5].len + (typeArr[i5].sort == 10 ? 2 : 0);
            i5++;
        }
        return typeArr;
    }

    public static int getArgumentsAndReturnSizes(java.lang.String str) {
        int i;
        int i2 = 1;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            i = i3 + 1;
            char cCharAt = str.charAt(i3);
            if (cCharAt == ')') {
                break;
            }
            if (cCharAt == 'L') {
                while (true) {
                    i3 = i + 1;
                    if (str.charAt(i) == ';') {
                        break;
                    }
                    i = i3;
                }
                i4++;
            } else {
                i4 = (cCharAt == 'D' || cCharAt == 'J') ? i4 + 2 : i4 + 1;
                i3 = i;
            }
        }
        char cCharAt2 = str.charAt(i);
        int i5 = i4 << 2;
        if (cCharAt2 == 'V') {
            i2 = 0;
        } else if (cCharAt2 == 'D' || cCharAt2 == 'J') {
            i2 = 2;
        }
        return i5 | i2;
    }

    private int getDimensions() {
        int i = 1;
        while (this.buf[this.off + i] == '[') {
            i++;
        }
        return i;
    }

    public static com.alibaba.fastjson.asm.Type getType(java.lang.String str) {
        return getType(str.toCharArray(), 0);
    }

    public static com.alibaba.fastjson.asm.Type getType(char[] cArr, int i) {
        int i2;
        char c2 = cArr[i];
        if (c2 == 'F') {
            return FLOAT_TYPE;
        }
        if (c2 == 'S') {
            return SHORT_TYPE;
        }
        if (c2 == 'V') {
            return VOID_TYPE;
        }
        if (c2 == 'I') {
            return INT_TYPE;
        }
        if (c2 == 'J') {
            return LONG_TYPE;
        }
        if (c2 == 'Z') {
            return BOOLEAN_TYPE;
        }
        if (c2 != '[') {
            switch (c2) {
                case 'B':
                    return BYTE_TYPE;
                case 'C':
                    return CHAR_TYPE;
                case 'D':
                    return DOUBLE_TYPE;
                default:
                    int i3 = 1;
                    while (cArr[i + i3] != ';') {
                        i3++;
                    }
                    return new com.alibaba.fastjson.asm.Type(10, cArr, i + 1, i3 - 1);
            }
        }
        int i4 = 1;
        while (true) {
            i2 = i + i4;
            if (cArr[i2] != '[') {
                break;
            }
            i4++;
        }
        if (cArr[i2] == 'L') {
            do {
                i4++;
            } while (cArr[i + i4] != ';');
        }
        return new com.alibaba.fastjson.asm.Type(9, cArr, i, i4 + 1);
    }

    public java.lang.String getClassName() {
        switch (this.sort) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return "float";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                java.lang.StringBuilder sb = new java.lang.StringBuilder(getType(this.buf, this.off + getDimensions()).getClassName());
                for (int dimensions = getDimensions(); dimensions > 0; dimensions--) {
                    sb.append("[]");
                }
                return sb.toString();
            default:
                return new java.lang.String(this.buf, this.off, this.len).replace(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH, '.');
        }
    }

    public java.lang.String getDescriptor() {
        return new java.lang.String(this.buf, this.off, this.len);
    }

    public java.lang.String getInternalName() {
        return new java.lang.String(this.buf, this.off, this.len);
    }
}
