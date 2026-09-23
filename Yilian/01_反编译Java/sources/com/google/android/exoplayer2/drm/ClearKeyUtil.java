package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public final class ClearKeyUtil {
    public static final java.lang.String TAG = "ClearKeyUtil";

    public static byte[] adjustRequestData(byte[] bArr) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 27 ? bArr : com.google.android.exoplayer2.util.Util.getUtf8Bytes(base64ToBase64Url(com.google.android.exoplayer2.util.Util.fromUtf8Bytes(bArr)));
    }

    public static byte[] adjustResponseData(byte[] bArr) throws org.json.JSONException {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 27) {
            return bArr;
        }
        try {
            org.json.JSONObject jSONObject = new org.json.JSONObject(com.google.android.exoplayer2.util.Util.fromUtf8Bytes(bArr));
            java.lang.StringBuilder sb = new java.lang.StringBuilder("{\"keys\":[");
            org.json.JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                org.json.JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(base64UrlToBase64(jSONObject2.getString("k")));
                sb.append("\",\"kid\":\"");
                sb.append(base64UrlToBase64(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return com.google.android.exoplayer2.util.Util.getUtf8Bytes(sb.toString());
        } catch (org.json.JSONException e2) {
            java.lang.String strValueOf = java.lang.String.valueOf(com.google.android.exoplayer2.util.Util.fromUtf8Bytes(bArr));
            com.google.android.exoplayer2.util.Log.e(TAG, strValueOf.length() != 0 ? "Failed to adjust response data: ".concat(strValueOf) : new java.lang.String("Failed to adjust response data: "), e2);
            return bArr;
        }
    }

    public static java.lang.String base64ToBase64Url(java.lang.String str) {
        return str.replace('+', '-').replace(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH, '_');
    }

    public static java.lang.String base64UrlToBase64(java.lang.String str) {
        return str.replace('-', '+').replace('_', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH);
    }
}
