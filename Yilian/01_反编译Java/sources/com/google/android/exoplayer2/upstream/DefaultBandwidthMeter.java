package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class DefaultBandwidthMeter implements com.google.android.exoplayer2.upstream.BandwidthMeter, com.google.android.exoplayer2.upstream.TransferListener {
    public static final int BYTES_TRANSFERRED_FOR_ESTIMATE = 524288;
    public static final int COUNTRY_GROUP_INDEX_2G = 1;
    public static final int COUNTRY_GROUP_INDEX_3G = 2;
    public static final int COUNTRY_GROUP_INDEX_4G = 3;
    public static final int COUNTRY_GROUP_INDEX_5G_NSA = 4;
    public static final int COUNTRY_GROUP_INDEX_5G_SA = 5;
    public static final int COUNTRY_GROUP_INDEX_WIFI = 0;
    public static final long DEFAULT_INITIAL_BITRATE_ESTIMATE = 1000000;
    public static final int DEFAULT_SLIDING_WINDOW_MAX_WEIGHT = 2000;
    public static final int ELAPSED_MILLIS_FOR_ESTIMATE = 2000;
    public static com.google.android.exoplayer2.upstream.DefaultBandwidthMeter singletonInstance;
    public long bitrateEstimate;
    public final com.google.android.exoplayer2.util.Clock clock;
    public final com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    public final e.c.b.b.t<java.lang.Integer, java.lang.Long> initialBitrateEstimates;
    public long lastReportedBitrateEstimate;
    public int networkType;
    public int networkTypeOverride;
    public boolean networkTypeOverrideSet;
    public final boolean resetOnNetworkTypeChange;
    public long sampleBytesTransferred;
    public long sampleStartTimeMs;
    public final com.google.android.exoplayer2.upstream.SlidingPercentile slidingPercentile;
    public int streamCount;
    public long totalBytesTransferred;
    public long totalElapsedTimeMs;
    public static final e.c.b.b.s<java.lang.Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI = e.c.b.b.s.t(5400000L, 3300000L, 2000000L, 1300000L, 760000L);
    public static final e.c.b.b.s<java.lang.Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_2G = e.c.b.b.s.t(1700000L, 820000L, 450000L, 180000L, 130000L);
    public static final e.c.b.b.s<java.lang.Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_3G = e.c.b.b.s.t(2300000L, 1300000L, 1000000L, 820000L, 570000L);
    public static final e.c.b.b.s<java.lang.Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_4G = e.c.b.b.s.t(3400000L, 2000000L, 1400000L, 1000000L, 620000L);
    public static final e.c.b.b.s<java.lang.Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA = e.c.b.b.s.t(7500000L, 5200000L, 3700000L, 1800000L, 1100000L);
    public static final e.c.b.b.s<java.lang.Long> DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA = e.c.b.b.s.t(3300000L, 1900000L, 1700000L, 1500000L, 1200000L);

    public static final class Builder {
        public com.google.android.exoplayer2.util.Clock clock;
        public final android.content.Context context;
        public java.util.Map<java.lang.Integer, java.lang.Long> initialBitrateEstimates;
        public boolean resetOnNetworkTypeChange;
        public int slidingWindowMaxWeight;

        public Builder(android.content.Context context) {
            this.context = context == null ? null : context.getApplicationContext();
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(com.google.android.exoplayer2.util.Util.getCountryCode(context));
            this.slidingWindowMaxWeight = 2000;
            this.clock = com.google.android.exoplayer2.util.Clock.DEFAULT;
            this.resetOnNetworkTypeChange = true;
        }

        public static java.util.Map<java.lang.Integer, java.lang.Long> getInitialBitrateEstimatesForCountry(java.lang.String str) {
            int[] initialBitrateCountryGroupAssignment = com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.getInitialBitrateCountryGroupAssignment(str);
            java.util.HashMap map = new java.util.HashMap(8);
            map.put(0, 1000000L);
            map.put(2, com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI.get(initialBitrateCountryGroupAssignment[0]));
            map.put(3, com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_2G.get(initialBitrateCountryGroupAssignment[1]));
            map.put(4, com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_3G.get(initialBitrateCountryGroupAssignment[2]));
            map.put(5, com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_4G.get(initialBitrateCountryGroupAssignment[3]));
            map.put(10, com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA.get(initialBitrateCountryGroupAssignment[4]));
            map.put(9, com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA.get(initialBitrateCountryGroupAssignment[5]));
            map.put(7, com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI.get(initialBitrateCountryGroupAssignment[0]));
            return map;
        }

        public com.google.android.exoplayer2.upstream.DefaultBandwidthMeter build() {
            return new com.google.android.exoplayer2.upstream.DefaultBandwidthMeter(this.context, this.initialBitrateEstimates, this.slidingWindowMaxWeight, this.clock, this.resetOnNetworkTypeChange);
        }

        public com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder setClock(com.google.android.exoplayer2.util.Clock clock) {
            this.clock = clock;
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder setInitialBitrateEstimate(int i, long j) {
            this.initialBitrateEstimates.put(java.lang.Integer.valueOf(i), java.lang.Long.valueOf(j));
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder setInitialBitrateEstimate(long j) {
            java.util.Iterator<java.lang.Integer> it = this.initialBitrateEstimates.keySet().iterator();
            while (it.hasNext()) {
                setInitialBitrateEstimate(it.next().intValue(), j);
            }
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder setInitialBitrateEstimate(java.lang.String str) {
            this.initialBitrateEstimates = getInitialBitrateEstimatesForCountry(d.s.y.c0(str));
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder setResetOnNetworkTypeChange(boolean z) {
            this.resetOnNetworkTypeChange = z;
            return this;
        }

        public com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder setSlidingWindowMaxWeight(int i) {
            this.slidingWindowMaxWeight = i;
            return this;
        }
    }

    @java.lang.Deprecated
    public DefaultBandwidthMeter() {
        this(null, e.c.b.b.l0.f2709g, 2000, com.google.android.exoplayer2.util.Clock.DEFAULT, false);
    }

    public DefaultBandwidthMeter(android.content.Context context, java.util.Map<java.lang.Integer, java.lang.Long> map, int i, com.google.android.exoplayer2.util.Clock clock, boolean z) {
        this.initialBitrateEstimates = e.c.b.b.t.a(map);
        this.eventDispatcher = new com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener.EventDispatcher();
        this.slidingPercentile = new com.google.android.exoplayer2.upstream.SlidingPercentile(i);
        this.clock = clock;
        this.resetOnNetworkTypeChange = z;
        if (context == null) {
            this.networkType = 0;
            this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(0);
            return;
        }
        com.google.android.exoplayer2.util.NetworkTypeObserver networkTypeObserver = com.google.android.exoplayer2.util.NetworkTypeObserver.getInstance(context);
        int networkType = networkTypeObserver.getNetworkType();
        this.networkType = networkType;
        this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(networkType);
        networkTypeObserver.register(new com.google.android.exoplayer2.util.NetworkTypeObserver.Listener() { // from class: e.c.a.a.r2.c
            @Override // com.google.android.exoplayer2.util.NetworkTypeObserver.Listener
            public final void onNetworkTypeChanged(int i2) {
                this.a.onNetworkTypeChanged(i2);
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:739:0x0b50  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] getInitialBitrateCountryGroupAssignment(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 7800
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.getInitialBitrateCountryGroupAssignment(java.lang.String):int[]");
    }

    private long getInitialBitrateEstimateForNetworkType(int i) {
        java.lang.Long l = this.initialBitrateEstimates.get(java.lang.Integer.valueOf(i));
        if (l == null) {
            l = this.initialBitrateEstimates.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    public static synchronized com.google.android.exoplayer2.upstream.DefaultBandwidthMeter getSingletonInstance(android.content.Context context) {
        if (singletonInstance == null) {
            singletonInstance = new com.google.android.exoplayer2.upstream.DefaultBandwidthMeter.Builder(context).build();
        }
        return singletonInstance;
    }

    public static boolean isTransferAtFullNetworkSpeed(com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z) {
        return z && !dataSpec.isFlagSet(8);
    }

    private void maybeNotifyBandwidthSample(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.lastReportedBitrateEstimate) {
            return;
        }
        this.lastReportedBitrateEstimate = j2;
        this.eventDispatcher.bandwidthSample(i, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i) {
        if (this.networkType == 0 || this.resetOnNetworkTypeChange) {
            if (this.networkTypeOverrideSet) {
                i = this.networkTypeOverride;
            }
            if (this.networkType == i) {
                return;
            }
            this.networkType = i;
            if (i != 1 && i != 0 && i != 8) {
                this.bitrateEstimate = getInitialBitrateEstimateForNetworkType(i);
                long jElapsedRealtime = this.clock.elapsedRealtime();
                maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (jElapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = jElapsedRealtime;
                this.sampleBytesTransferred = 0L;
                this.totalBytesTransferred = 0L;
                this.totalElapsedTimeMs = 0L;
                this.slidingPercentile.reset();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void addEventListener(android.os.Handler handler, com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(handler);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(eventListener);
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public /* synthetic */ long getTimeToFirstByteEstimateUs() {
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public com.google.android.exoplayer2.upstream.TransferListener getTransferListener() {
        return this;
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onBytesTransferred(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z, int i) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            this.sampleBytesTransferred += i;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferEnd(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            com.google.android.exoplayer2.util.Assertions.checkState(this.streamCount > 0);
            long jElapsedRealtime = this.clock.elapsedRealtime();
            int i = (int) (jElapsedRealtime - this.sampleStartTimeMs);
            this.totalElapsedTimeMs += i;
            this.totalBytesTransferred += this.sampleBytesTransferred;
            if (i > 0) {
                this.slidingPercentile.addSample((int) java.lang.Math.sqrt(this.sampleBytesTransferred), (this.sampleBytesTransferred * 8000.0f) / i);
                if (this.totalElapsedTimeMs >= 2000 || this.totalBytesTransferred >= android.support.v4.media.session.PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                    this.bitrateEstimate = (long) this.slidingPercentile.getPercentile(0.5f);
                }
                maybeNotifyBandwidthSample(i, this.sampleBytesTransferred, this.bitrateEstimate);
                this.sampleStartTimeMs = jElapsedRealtime;
                this.sampleBytesTransferred = 0L;
            }
            this.streamCount--;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public void onTransferInitializing(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z) {
    }

    @Override // com.google.android.exoplayer2.upstream.TransferListener
    public synchronized void onTransferStart(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z) {
        if (isTransferAtFullNetworkSpeed(dataSpec, z)) {
            if (this.streamCount == 0) {
                this.sampleStartTimeMs = this.clock.elapsedRealtime();
            }
            this.streamCount++;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
    public void removeEventListener(com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    public synchronized void setNetworkTypeOverride(int i) {
        this.networkTypeOverride = i;
        this.networkTypeOverrideSet = true;
        onNetworkTypeChanged(i);
    }
}
