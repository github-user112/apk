package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class HttpUtil {
    public static final java.lang.String TAG = "HttpUtil";
    public static final java.util.regex.Pattern CONTENT_RANGE_WITH_START_AND_END = java.util.regex.Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    public static final java.util.regex.Pattern CONTENT_RANGE_WITH_SIZE = java.util.regex.Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static java.lang.String buildRangeRequestHeader(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("bytes=");
        sb.append(j);
        sb.append("-");
        if (j2 != -1) {
            sb.append((j + j2) - 1);
        }
        return sb.toString();
    }

    public static long getContentLength(java.lang.String str, java.lang.String str2) throws java.lang.NumberFormatException {
        long j;
        if (android.text.TextUtils.isEmpty(str)) {
            j = -1;
        } else {
            try {
                j = java.lang.Long.parseLong(str);
            } catch (java.lang.NumberFormatException unused) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 28);
                sb.append("Unexpected Content-Length [");
                sb.append(str);
                sb.append("]");
                com.google.android.exoplayer2.util.Log.e(TAG, sb.toString());
            }
        }
        if (android.text.TextUtils.isEmpty(str2)) {
            return j;
        }
        java.util.regex.Matcher matcher = CONTENT_RANGE_WITH_START_AND_END.matcher(str2);
        if (!matcher.matches()) {
            return j;
        }
        try {
            long j2 = (java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2))) - java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)))) + 1;
            if (j < 0) {
                return j2;
            }
            if (j == j2) {
                return j;
            }
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 26 + java.lang.String.valueOf(str2).length());
            sb2.append("Inconsistent headers [");
            sb2.append(str);
            sb2.append("] [");
            sb2.append(str2);
            sb2.append("]");
            com.google.android.exoplayer2.util.Log.w(TAG, sb2.toString());
            return java.lang.Math.max(j, j2);
        } catch (java.lang.NumberFormatException unused2) {
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder(java.lang.String.valueOf(str2).length() + 27);
            sb3.append("Unexpected Content-Range [");
            sb3.append(str2);
            sb3.append("]");
            com.google.android.exoplayer2.util.Log.e(TAG, sb3.toString());
            return j;
        }
    }

    public static long getDocumentSize(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return -1L;
        }
        java.util.regex.Matcher matcher = CONTENT_RANGE_WITH_SIZE.matcher(str);
        if (matcher.matches()) {
            return java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)));
        }
        return -1L;
    }
}
