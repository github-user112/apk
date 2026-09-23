package com.umeng.commonsdk.stateless;

/* loaded from: classes.dex */
public class UMSLEnvelopeBuild {
    public static final java.lang.String TAG = "UMSLEnvelopeBuild";
    public static boolean isEncryptEnabled;
    public static android.content.Context mContext;
    public static java.lang.String module;

    public static boolean isReadyBuildNew(android.content.Context context, com.umeng.commonsdk.framework.UMLogDataProtocol.UMBusinessType uMBusinessType) {
        return false;
    }

    public static void setEncryptEnabled(boolean z) {
        isEncryptEnabled = z;
    }

    public org.json.JSONObject buildSLBaseHeader(final android.content.Context context) {
        new java.lang.Thread() { // from class: com.umeng.commonsdk.stateless.UMSLEnvelopeBuild.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    android.os.Looper.prepare();
                    android.widget.Toast.makeText(context.getApplicationContext(), com.umeng.commonsdk.debug.UMLogCommon.SC_10015, 1).show();
                    android.os.Looper.loop();
                } catch (java.lang.Throwable unused) {
                }
            }
        }.start();
        android.util.Log.e(com.umeng.commonsdk.debug.UMLog.TAG, com.umeng.commonsdk.debug.UMLogCommon.SC_10015);
        return null;
    }

    public org.json.JSONObject buildSLEnvelope(android.content.Context context, org.json.JSONObject jSONObject, org.json.JSONObject jSONObject2, java.lang.String str) {
        return null;
    }
}
