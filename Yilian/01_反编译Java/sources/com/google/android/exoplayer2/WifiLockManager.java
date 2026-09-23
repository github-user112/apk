package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class WifiLockManager {
    public static final java.lang.String TAG = "WifiLockManager";
    public static final java.lang.String WIFI_LOCK_TAG = "ExoPlayer:WifiLockManager";
    public boolean enabled;
    public boolean stayAwake;
    public android.net.wifi.WifiManager.WifiLock wifiLock;
    public final android.net.wifi.WifiManager wifiManager;

    public WifiLockManager(android.content.Context context) {
        this.wifiManager = (android.net.wifi.WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void updateWifiLock() {
        android.net.wifi.WifiManager.WifiLock wifiLock = this.wifiLock;
        if (wifiLock == null) {
            return;
        }
        if (this.enabled && this.stayAwake) {
            wifiLock.acquire();
        } else {
            this.wifiLock.release();
        }
    }

    public void setEnabled(boolean z) {
        if (z && this.wifiLock == null) {
            android.net.wifi.WifiManager wifiManager = this.wifiManager;
            if (wifiManager == null) {
                com.google.android.exoplayer2.util.Log.w(TAG, "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                android.net.wifi.WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, WIFI_LOCK_TAG);
                this.wifiLock = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
            }
        }
        this.enabled = z;
        updateWifiLock();
    }

    public void setStayAwake(boolean z) {
        this.stayAwake = z;
        updateWifiLock();
    }
}
