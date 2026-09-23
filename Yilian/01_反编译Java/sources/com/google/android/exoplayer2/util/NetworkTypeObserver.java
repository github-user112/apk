package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class NetworkTypeObserver {
    public static com.google.android.exoplayer2.util.NetworkTypeObserver staticInstance;
    public final android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
    public final java.util.concurrent.CopyOnWriteArrayList<java.lang.ref.WeakReference<com.google.android.exoplayer2.util.NetworkTypeObserver.Listener>> listeners = new java.util.concurrent.CopyOnWriteArrayList<>();
    public final java.lang.Object networkTypeLock = new java.lang.Object();
    public int networkType = 0;

    public static final class Config {
        public static volatile boolean disable5GNsaDisambiguation;

        public static void disable5GNsaDisambiguation() {
            disable5GNsaDisambiguation = true;
        }
    }

    public interface Listener {
        void onNetworkTypeChanged(int i);
    }

    public final class Receiver extends android.content.BroadcastReceiver {
        public Receiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            int networkTypeFromConnectivityManager = com.google.android.exoplayer2.util.NetworkTypeObserver.getNetworkTypeFromConnectivityManager(context);
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 29 && !com.google.android.exoplayer2.util.NetworkTypeObserver.Config.disable5GNsaDisambiguation && networkTypeFromConnectivityManager == 5) {
                try {
                    android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) com.google.android.exoplayer2.util.Assertions.checkNotNull((android.telephony.TelephonyManager) context.getSystemService("phone"));
                    com.google.android.exoplayer2.util.NetworkTypeObserver.TelephonyManagerListener telephonyManagerListener = new com.google.android.exoplayer2.util.NetworkTypeObserver.TelephonyManagerListener();
                    if (com.google.android.exoplayer2.util.Util.SDK_INT < 31) {
                        telephonyManager.listen(telephonyManagerListener, 1);
                    } else {
                        telephonyManager.listen(telephonyManagerListener, com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES);
                    }
                    telephonyManager.listen(telephonyManagerListener, 0);
                    return;
                } catch (java.lang.RuntimeException unused) {
                }
            }
            com.google.android.exoplayer2.util.NetworkTypeObserver.this.updateNetworkType(networkTypeFromConnectivityManager);
        }
    }

    public class TelephonyManagerListener extends android.telephony.PhoneStateListener {
        public TelephonyManagerListener() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onDisplayInfoChanged(android.telephony.TelephonyDisplayInfo telephonyDisplayInfo) {
            int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
            com.google.android.exoplayer2.util.NetworkTypeObserver.this.updateNetworkType(overrideNetworkType == 3 || overrideNetworkType == 4 ? 10 : 5);
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(android.telephony.ServiceState serviceState) {
            java.lang.String string = serviceState == null ? "" : serviceState.toString();
            com.google.android.exoplayer2.util.NetworkTypeObserver.this.updateNetworkType(string.contains("nrState=CONNECTED") || string.contains("nrState=NOT_RESTRICTED") ? 10 : 5);
        }
    }

    public NetworkTypeObserver(android.content.Context context) {
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new com.google.android.exoplayer2.util.NetworkTypeObserver.Receiver(), intentFilter);
    }

    public static synchronized com.google.android.exoplayer2.util.NetworkTypeObserver getInstance(android.content.Context context) {
        if (staticInstance == null) {
            staticInstance = new com.google.android.exoplayer2.util.NetworkTypeObserver(context);
        }
        return staticInstance;
    }

    public static int getMobileNetworkType(android.net.NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return com.google.android.exoplayer2.util.Util.SDK_INT >= 29 ? 9 : 0;
        }
    }

    public static int getNetworkTypeFromConnectivityManager(android.content.Context context) {
        android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            android.net.NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return getMobileNetworkType(activeNetworkInfo);
            }
        } catch (java.lang.SecurityException unused) {
        }
        return i;
    }

    private void removeClearedReferences() {
        java.util.Iterator<java.lang.ref.WeakReference<com.google.android.exoplayer2.util.NetworkTypeObserver.Listener>> it = this.listeners.iterator();
        while (it.hasNext()) {
            java.lang.ref.WeakReference<com.google.android.exoplayer2.util.NetworkTypeObserver.Listener> next = it.next();
            if (next.get() == null) {
                this.listeners.remove(next);
            }
        }
    }

    public static synchronized void resetForTests() {
        staticInstance = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetworkType(int i) {
        synchronized (this.networkTypeLock) {
            if (this.networkType == i) {
                return;
            }
            this.networkType = i;
            java.util.Iterator<java.lang.ref.WeakReference<com.google.android.exoplayer2.util.NetworkTypeObserver.Listener>> it = this.listeners.iterator();
            while (it.hasNext()) {
                java.lang.ref.WeakReference<com.google.android.exoplayer2.util.NetworkTypeObserver.Listener> next = it.next();
                com.google.android.exoplayer2.util.NetworkTypeObserver.Listener listener = next.get();
                if (listener != null) {
                    listener.onNetworkTypeChanged(i);
                } else {
                    this.listeners.remove(next);
                }
            }
        }
    }

    public /* synthetic */ void a(com.google.android.exoplayer2.util.NetworkTypeObserver.Listener listener) {
        listener.onNetworkTypeChanged(getNetworkType());
    }

    public int getNetworkType() {
        int i;
        synchronized (this.networkTypeLock) {
            i = this.networkType;
        }
        return i;
    }

    public void register(final com.google.android.exoplayer2.util.NetworkTypeObserver.Listener listener) {
        removeClearedReferences();
        this.listeners.add(new java.lang.ref.WeakReference<>(listener));
        this.mainHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.s2.c
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(listener);
            }
        });
    }
}
