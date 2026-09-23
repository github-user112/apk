package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class SntpClient {
    public static final java.lang.String DEFAULT_NTP_HOST = "time.android.com";
    public static final int NTP_LEAP_NOSYNC = 3;
    public static final int NTP_MODE_BROADCAST = 5;
    public static final int NTP_MODE_CLIENT = 3;
    public static final int NTP_MODE_SERVER = 4;
    public static final int NTP_PACKET_SIZE = 48;
    public static final int NTP_PORT = 123;
    public static final int NTP_STRATUM_DEATH = 0;
    public static final int NTP_STRATUM_MAX = 15;
    public static final int NTP_VERSION = 3;
    public static final long OFFSET_1900_TO_1970 = 2208988800L;
    public static final int ORIGINATE_TIME_OFFSET = 24;
    public static final int RECEIVE_TIME_OFFSET = 32;
    public static final int TIMEOUT_MS = 10000;
    public static final int TRANSMIT_TIME_OFFSET = 40;
    public static long elapsedRealtimeOffsetMs = 0;
    public static boolean isInitialized = false;
    public static java.lang.String ntpHost = "time.android.com";
    public static final java.lang.Object loaderLock = new java.lang.Object();
    public static final java.lang.Object valueLock = new java.lang.Object();

    public interface InitializationCallback {
        void onInitializationFailed(java.io.IOException iOException);

        void onInitialized();
    }

    public static final class NtpTimeCallback implements com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.upstream.Loader.Loadable> {
        public final com.google.android.exoplayer2.util.SntpClient.InitializationCallback callback;

        public NtpTimeCallback(com.google.android.exoplayer2.util.SntpClient.InitializationCallback initializationCallback) {
            this.callback = initializationCallback;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCanceled(com.google.android.exoplayer2.upstream.Loader.Loadable loadable, long j, long j2, boolean z) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCompleted(com.google.android.exoplayer2.upstream.Loader.Loadable loadable, long j, long j2) {
            if (this.callback != null) {
                if (com.google.android.exoplayer2.util.SntpClient.isInitialized()) {
                    this.callback.onInitialized();
                } else {
                    this.callback.onInitializationFailed(new java.io.IOException(new java.util.ConcurrentModificationException()));
                }
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.upstream.Loader.Loadable loadable, long j, long j2, java.io.IOException iOException, int i) {
            com.google.android.exoplayer2.util.SntpClient.InitializationCallback initializationCallback = this.callback;
            if (initializationCallback != null) {
                initializationCallback.onInitializationFailed(iOException);
            }
            return com.google.android.exoplayer2.upstream.Loader.DONT_RETRY;
        }
    }

    public static final class NtpTimeLoadable implements com.google.android.exoplayer2.upstream.Loader.Loadable {
        public NtpTimeLoadable() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() {
            synchronized (com.google.android.exoplayer2.util.SntpClient.loaderLock) {
                synchronized (com.google.android.exoplayer2.util.SntpClient.valueLock) {
                    if (com.google.android.exoplayer2.util.SntpClient.isInitialized) {
                        return;
                    }
                    long jLoadNtpTimeOffsetMs = com.google.android.exoplayer2.util.SntpClient.loadNtpTimeOffsetMs();
                    synchronized (com.google.android.exoplayer2.util.SntpClient.valueLock) {
                        long unused = com.google.android.exoplayer2.util.SntpClient.elapsedRealtimeOffsetMs = jLoadNtpTimeOffsetMs;
                        boolean unused2 = com.google.android.exoplayer2.util.SntpClient.isInitialized = true;
                    }
                }
            }
        }
    }

    public static void checkValidServerReply(byte b, byte b2, int i, long j) throws java.io.IOException {
        if (b == 3) {
            throw new java.io.IOException("SNTP: Unsynchronized server");
        }
        if (b2 != 4 && b2 != 5) {
            throw new java.io.IOException(e.a.c.a.a.F(26, "SNTP: Untrusted mode: ", b2));
        }
        if (i == 0 || i > 15) {
            throw new java.io.IOException(e.a.c.a.a.F(36, "SNTP: Untrusted stratum: ", i));
        }
        if (j == 0) {
            throw new java.io.IOException("SNTP: Zero transmitTime");
        }
    }

    public static long getElapsedRealtimeOffsetMs() {
        long j;
        synchronized (valueLock) {
            j = isInitialized ? elapsedRealtimeOffsetMs : com.google.android.exoplayer2.C.TIME_UNSET;
        }
        return j;
    }

    public static java.lang.String getNtpHost() {
        java.lang.String str;
        synchronized (valueLock) {
            str = ntpHost;
        }
        return str;
    }

    public static void initialize(com.google.android.exoplayer2.upstream.Loader loader, com.google.android.exoplayer2.util.SntpClient.InitializationCallback initializationCallback) {
        if (isInitialized()) {
            if (initializationCallback != null) {
                initializationCallback.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new com.google.android.exoplayer2.upstream.Loader("SntpClient");
            }
            loader.startLoading(new com.google.android.exoplayer2.util.SntpClient.NtpTimeLoadable(), new com.google.android.exoplayer2.util.SntpClient.NtpTimeCallback(initializationCallback), 1);
        }
    }

    public static boolean isInitialized() {
        boolean z;
        synchronized (valueLock) {
            z = isInitialized;
        }
        return z;
    }

    public static long loadNtpTimeOffsetMs() throws java.net.UnknownHostException {
        java.net.InetAddress byName = java.net.InetAddress.getByName(getNtpHost());
        java.net.DatagramSocket datagramSocket = new java.net.DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            java.net.DatagramPacket datagramPacket = new java.net.DatagramPacket(bArr, 48, byName, 123);
            bArr[0] = 27;
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            writeTimestamp(bArr, 40, jCurrentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new java.net.DatagramPacket(bArr, 48));
            long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
            long j = (jElapsedRealtime2 - jElapsedRealtime) + jCurrentTimeMillis;
            byte b = (byte) ((bArr[0] >> 6) & 3);
            byte b2 = (byte) (bArr[0] & 7);
            int i = bArr[1] & 255;
            long timestamp = readTimestamp(bArr, 24);
            long timestamp2 = readTimestamp(bArr, 32);
            long timestamp3 = readTimestamp(bArr, 40);
            checkValidServerReply(b, b2, i, timestamp3);
            long j2 = (j + (((timestamp3 - j) + (timestamp2 - timestamp)) / 2)) - jElapsedRealtime2;
            datagramSocket.close();
            return j2;
        } catch (java.lang.Throwable th) {
            try {
                datagramSocket.close();
            } catch (java.lang.Throwable unused) {
            }
            throw th;
        }
    }

    public static long read32(byte[] bArr, int i) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & 127) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        return (i2 << 24) + (i3 << 16) + (i4 << 8) + i5;
    }

    public static long readTimestamp(byte[] bArr, int i) {
        long j = read32(bArr, i);
        long j2 = read32(bArr, i + 4);
        if (j == 0 && j2 == 0) {
            return 0L;
        }
        return ((j2 * 1000) / 4294967296L) + ((j - OFFSET_1900_TO_1970) * 1000);
    }

    public static void setNtpHost(java.lang.String str) {
        synchronized (valueLock) {
            if (!ntpHost.equals(str)) {
                ntpHost = str;
                isInitialized = false;
            }
        }
    }

    public static void writeTimestamp(byte[] bArr, int i, long j) {
        if (j == 0) {
            java.util.Arrays.fill(bArr, i, i + 8, (byte) 0);
            return;
        }
        long j2 = j / 1000;
        long j3 = j - (j2 * 1000);
        long j4 = j2 + OFFSET_1900_TO_1970;
        int i2 = i + 1;
        bArr[i] = (byte) (j4 >> 24);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j4 >> 16);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j4 >> 8);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j4 >> 0);
        long j5 = (j3 * 4294967296L) / 1000;
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j5 >> 24);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j5 >> 16);
        bArr[i7] = (byte) (j5 >> 8);
        bArr[i7 + 1] = (byte) (java.lang.Math.random() * 255.0d);
    }
}
