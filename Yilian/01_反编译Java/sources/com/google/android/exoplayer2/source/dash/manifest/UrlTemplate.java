package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public final class UrlTemplate {
    public static final java.lang.String BANDWIDTH = "Bandwidth";
    public static final int BANDWIDTH_ID = 3;
    public static final java.lang.String DEFAULT_FORMAT_TAG = "%01d";
    public static final java.lang.String ESCAPED_DOLLAR = "$$";
    public static final java.lang.String NUMBER = "Number";
    public static final int NUMBER_ID = 2;
    public static final java.lang.String REPRESENTATION = "RepresentationID";
    public static final int REPRESENTATION_ID = 1;
    public static final java.lang.String TIME = "Time";
    public static final int TIME_ID = 4;
    public final int identifierCount;
    public final java.lang.String[] identifierFormatTags;
    public final int[] identifiers;
    public final java.lang.String[] urlPieces;

    public UrlTemplate(java.lang.String[] strArr, int[] iArr, java.lang.String[] strArr2, int i) {
        this.urlPieces = strArr;
        this.identifiers = iArr;
        this.identifierFormatTags = strArr2;
        this.identifierCount = i;
    }

    public static com.google.android.exoplayer2.source.dash.manifest.UrlTemplate compile(java.lang.String str) {
        java.lang.String[] strArr = new java.lang.String[5];
        int[] iArr = new int[4];
        java.lang.String[] strArr2 = new java.lang.String[4];
        return new com.google.android.exoplayer2.source.dash.manifest.UrlTemplate(strArr, iArr, strArr2, parseTemplate(str, strArr, iArr, strArr2));
    }

    public static int parseTemplate(java.lang.String str, java.lang.String[] strArr, int[] iArr, java.lang.String[] strArr2) {
        java.lang.String strSubstring;
        strArr[0] = "";
        int length = 0;
        int i = 0;
        while (length < str.length()) {
            int iIndexOf = str.indexOf("$", length);
            char c2 = 65535;
            if (iIndexOf == -1) {
                java.lang.String strValueOf = java.lang.String.valueOf(strArr[i]);
                java.lang.String strValueOf2 = java.lang.String.valueOf(str.substring(length));
                strArr[i] = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new java.lang.String(strValueOf);
                length = str.length();
            } else if (iIndexOf != length) {
                java.lang.String strValueOf3 = java.lang.String.valueOf(strArr[i]);
                java.lang.String strValueOf4 = java.lang.String.valueOf(str.substring(length, iIndexOf));
                strArr[i] = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new java.lang.String(strValueOf3);
                length = iIndexOf;
            } else if (str.startsWith(ESCAPED_DOLLAR, length)) {
                strArr[i] = java.lang.String.valueOf(strArr[i]).concat("$");
                length += 2;
            } else {
                int i2 = length + 1;
                int iIndexOf2 = str.indexOf("$", i2);
                java.lang.String strSubstring2 = str.substring(i2, iIndexOf2);
                if (strSubstring2.equals(REPRESENTATION)) {
                    iArr[i] = 1;
                } else {
                    int iIndexOf3 = strSubstring2.indexOf("%0");
                    if (iIndexOf3 != -1) {
                        strSubstring = strSubstring2.substring(iIndexOf3);
                        if (!strSubstring.endsWith(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_DURATION) && !strSubstring.endsWith("x")) {
                            strSubstring = strSubstring.concat(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_DURATION);
                        }
                        strSubstring2 = strSubstring2.substring(0, iIndexOf3);
                    } else {
                        strSubstring = DEFAULT_FORMAT_TAG;
                    }
                    int iHashCode = strSubstring2.hashCode();
                    if (iHashCode != -1950496919) {
                        if (iHashCode != 2606829) {
                            if (iHashCode == 38199441 && strSubstring2.equals(BANDWIDTH)) {
                                c2 = 1;
                            }
                        } else if (strSubstring2.equals(TIME)) {
                            c2 = 2;
                        }
                    } else if (strSubstring2.equals(NUMBER)) {
                        c2 = 0;
                    }
                    if (c2 == 0) {
                        iArr[i] = 2;
                    } else if (c2 == 1) {
                        iArr[i] = 3;
                    } else {
                        if (c2 != 2) {
                            throw new java.lang.IllegalArgumentException(str.length() != 0 ? "Invalid template: ".concat(str) : new java.lang.String("Invalid template: "));
                        }
                        iArr[i] = 4;
                    }
                    strArr2[i] = strSubstring;
                }
                i++;
                strArr[i] = "";
                length = iIndexOf2 + 1;
            }
        }
        return i;
    }

    public java.lang.String buildUri(java.lang.String str, long j, int i, long j2) {
        java.lang.String str2;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i2 = 0;
        while (true) {
            int i3 = this.identifierCount;
            if (i2 >= i3) {
                sb.append(this.urlPieces[i3]);
                return sb.toString();
            }
            sb.append(this.urlPieces[i2]);
            int[] iArr = this.identifiers;
            if (iArr[i2] == 1) {
                sb.append(str);
            } else {
                if (iArr[i2] == 2) {
                    str2 = java.lang.String.format(java.util.Locale.US, this.identifierFormatTags[i2], java.lang.Long.valueOf(j));
                } else if (iArr[i2] == 3) {
                    str2 = java.lang.String.format(java.util.Locale.US, this.identifierFormatTags[i2], java.lang.Integer.valueOf(i));
                } else if (iArr[i2] == 4) {
                    str2 = java.lang.String.format(java.util.Locale.US, this.identifierFormatTags[i2], java.lang.Long.valueOf(j2));
                }
                sb.append(str2);
            }
            i2++;
        }
    }
}
