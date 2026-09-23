package com.google.android.exoplayer2.analytics;

/* loaded from: classes.dex */
public final class DefaultPlaybackSessionManager implements com.google.android.exoplayer2.analytics.PlaybackSessionManager {
    public static final e.c.b.a.k<java.lang.String> DEFAULT_SESSION_ID_GENERATOR = new e.c.b.a.k() { // from class: e.c.a.a.f2.n1
        @Override // e.c.b.a.k
        public final java.lang.Object get() {
            return com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.generateDefaultSessionId();
        }
    };
    public static final java.util.Random RANDOM = new java.util.Random();
    public static final int SESSION_ID_LENGTH = 12;
    public java.lang.String currentSessionId;
    public com.google.android.exoplayer2.Timeline currentTimeline;
    public com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener listener;
    public final com.google.android.exoplayer2.Timeline.Period period;
    public final e.c.b.a.k<java.lang.String> sessionIdGenerator;
    public final java.util.HashMap<java.lang.String, com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor> sessions;
    public final com.google.android.exoplayer2.Timeline.Window window;

    public final class SessionDescriptor {
        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId adMediaPeriodId;
        public boolean isActive;
        public boolean isCreated;
        public final java.lang.String sessionId;
        public int windowIndex;
        public long windowSequenceNumber;

        public SessionDescriptor(java.lang.String str, int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            this.sessionId = str;
            this.windowIndex = i;
            this.windowSequenceNumber = mediaPeriodId == null ? -1L : mediaPeriodId.windowSequenceNumber;
            if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
                return;
            }
            this.adMediaPeriodId = mediaPeriodId;
        }

        private int resolveWindowIndexToNewTimeline(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.Timeline timeline2, int i) {
            if (i >= timeline.getWindowCount()) {
                if (i < timeline2.getWindowCount()) {
                    return i;
                }
                return -1;
            }
            timeline.getWindow(i, com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.this.window);
            for (int i2 = com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.this.window.firstPeriodIndex; i2 <= com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.this.window.lastPeriodIndex; i2++) {
                int indexOfPeriod = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(i2));
                if (indexOfPeriod != -1) {
                    return timeline2.getPeriod(indexOfPeriod, com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.this.period).windowIndex;
                }
            }
            return -1;
        }

        public boolean belongsToSession(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            if (mediaPeriodId == null) {
                return i == this.windowIndex;
            }
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = this.adMediaPeriodId;
            return mediaPeriodId2 == null ? !mediaPeriodId.isAd() && mediaPeriodId.windowSequenceNumber == this.windowSequenceNumber : mediaPeriodId.windowSequenceNumber == mediaPeriodId2.windowSequenceNumber && mediaPeriodId.adGroupIndex == mediaPeriodId2.adGroupIndex && mediaPeriodId.adIndexInAdGroup == mediaPeriodId2.adIndexInAdGroup;
        }

        public boolean isFinishedAtEventTime(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
            long j = this.windowSequenceNumber;
            if (j == -1) {
                return false;
            }
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
            if (mediaPeriodId == null) {
                return this.windowIndex != eventTime.windowIndex;
            }
            if (mediaPeriodId.windowSequenceNumber > j) {
                return true;
            }
            if (this.adMediaPeriodId == null) {
                return false;
            }
            int indexOfPeriod = eventTime.timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
            int indexOfPeriod2 = eventTime.timeline.getIndexOfPeriod(this.adMediaPeriodId.periodUid);
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
            if (mediaPeriodId2.windowSequenceNumber < this.adMediaPeriodId.windowSequenceNumber || indexOfPeriod < indexOfPeriod2) {
                return false;
            }
            if (indexOfPeriod > indexOfPeriod2) {
                return true;
            }
            boolean zIsAd = mediaPeriodId2.isAd();
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId3 = eventTime.mediaPeriodId;
            if (!zIsAd) {
                int i = mediaPeriodId3.nextAdGroupIndex;
                return i == -1 || i > this.adMediaPeriodId.adGroupIndex;
            }
            int i2 = mediaPeriodId3.adGroupIndex;
            int i3 = mediaPeriodId3.adIndexInAdGroup;
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId4 = this.adMediaPeriodId;
            int i4 = mediaPeriodId4.adGroupIndex;
            return i2 > i4 || (i2 == i4 && i3 > mediaPeriodId4.adIndexInAdGroup);
        }

        public void maybeSetWindowSequenceNumber(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            if (this.windowSequenceNumber == -1 && i == this.windowIndex && mediaPeriodId != null) {
                this.windowSequenceNumber = mediaPeriodId.windowSequenceNumber;
            }
        }

        public boolean tryResolvingToNewTimeline(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.Timeline timeline2) {
            int iResolveWindowIndexToNewTimeline = resolveWindowIndexToNewTimeline(timeline, timeline2, this.windowIndex);
            this.windowIndex = iResolveWindowIndexToNewTimeline;
            if (iResolveWindowIndexToNewTimeline == -1) {
                return false;
            }
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = this.adMediaPeriodId;
            return mediaPeriodId == null || timeline2.getIndexOfPeriod(mediaPeriodId.periodUid) != -1;
        }
    }

    public DefaultPlaybackSessionManager() {
        this(DEFAULT_SESSION_ID_GENERATOR);
    }

    public DefaultPlaybackSessionManager(e.c.b.a.k<java.lang.String> kVar) {
        this.sessionIdGenerator = kVar;
        this.window = new com.google.android.exoplayer2.Timeline.Window();
        this.period = new com.google.android.exoplayer2.Timeline.Period();
        this.sessions = new java.util.HashMap<>();
        this.currentTimeline = com.google.android.exoplayer2.Timeline.EMPTY;
    }

    public static java.lang.String generateDefaultSessionId() {
        byte[] bArr = new byte[12];
        RANDOM.nextBytes(bArr);
        return android.util.Base64.encodeToString(bArr, 10);
    }

    private com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor getOrAddSession(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor = null;
        long j = Long.MAX_VALUE;
        for (com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor2 : this.sessions.values()) {
            sessionDescriptor2.maybeSetWindowSequenceNumber(i, mediaPeriodId);
            if (sessionDescriptor2.belongsToSession(i, mediaPeriodId)) {
                long j2 = sessionDescriptor2.windowSequenceNumber;
                if (j2 == -1 || j2 < j) {
                    sessionDescriptor = sessionDescriptor2;
                    j = j2;
                } else if (j2 == j && ((com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor) com.google.android.exoplayer2.util.Util.castNonNull(sessionDescriptor)).adMediaPeriodId != null && sessionDescriptor2.adMediaPeriodId != null) {
                    sessionDescriptor = sessionDescriptor2;
                }
            }
        }
        if (sessionDescriptor != null) {
            return sessionDescriptor;
        }
        java.lang.String str = this.sessionIdGenerator.get();
        com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor3 = new com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor(str, i, mediaPeriodId);
        this.sessions.put(str, sessionDescriptor3);
        return sessionDescriptor3;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"listener"})
    private void updateCurrentSession(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        if (eventTime.timeline.isEmpty()) {
            this.currentSessionId = null;
            return;
        }
        com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor = this.sessions.get(this.currentSessionId);
        com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor orAddSession = getOrAddSession(eventTime.windowIndex, eventTime.mediaPeriodId);
        this.currentSessionId = orAddSession.sessionId;
        updateSessions(eventTime);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = eventTime.mediaPeriodId;
        if (mediaPeriodId == null || !mediaPeriodId.isAd()) {
            return;
        }
        if (sessionDescriptor != null && sessionDescriptor.windowSequenceNumber == eventTime.mediaPeriodId.windowSequenceNumber && sessionDescriptor.adMediaPeriodId != null && sessionDescriptor.adMediaPeriodId.adGroupIndex == eventTime.mediaPeriodId.adGroupIndex && sessionDescriptor.adMediaPeriodId.adIndexInAdGroup == eventTime.mediaPeriodId.adIndexInAdGroup) {
            return;
        }
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.mediaPeriodId;
        this.listener.onAdPlaybackStarted(eventTime, getOrAddSession(eventTime.windowIndex, new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(mediaPeriodId2.periodUid, mediaPeriodId2.windowSequenceNumber)).sessionId, orAddSession.sessionId);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized boolean belongsToSession(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str) {
        com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor = this.sessions.get(str);
        if (sessionDescriptor == null) {
            return false;
        }
        sessionDescriptor.maybeSetWindowSequenceNumber(eventTime.windowIndex, eventTime.mediaPeriodId);
        return sessionDescriptor.belongsToSession(eventTime.windowIndex, eventTime.mediaPeriodId);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void finishAllSessions(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        this.currentSessionId = null;
        java.util.Iterator<com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor> it = this.sessions.values().iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor next = it.next();
            it.remove();
            if (next.isCreated && this.listener != null) {
                this.listener.onSessionFinished(eventTime, next.sessionId, false);
            }
        }
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized java.lang.String getActiveSessionId() {
        return this.currentSessionId;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized java.lang.String getSessionForMediaPeriodId(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return getOrAddSession(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, mediaPeriodId).sessionId;
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public void setListener(com.google.android.exoplayer2.analytics.PlaybackSessionManager.Listener listener) {
        this.listener = listener;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e7 A[Catch: all -> 0x011e, TryCatch #0 {, blocks: (B:4:0x0005, B:8:0x0014, B:11:0x0025, B:13:0x0030, B:16:0x003a, B:23:0x004b, B:25:0x0057, B:26:0x005d, B:28:0x0061, B:30:0x0069, B:32:0x0086, B:34:0x00e1, B:36:0x00e7, B:38:0x00fd, B:40:0x0109, B:42:0x010f), top: B:50:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f9  */
    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void updateSessions(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime r25) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.updateSessions(com.google.android.exoplayer2.analytics.AnalyticsListener$EventTime):void");
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void updateSessionsWithDiscontinuity(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.listener);
        boolean z = i == 0;
        java.util.Iterator<com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor> it = this.sessions.values().iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor next = it.next();
            if (next.isFinishedAtEventTime(eventTime)) {
                it.remove();
                if (next.isCreated) {
                    boolean zEquals = next.sessionId.equals(this.currentSessionId);
                    boolean z2 = z && zEquals && next.isActive;
                    if (zEquals) {
                        this.currentSessionId = null;
                    }
                    this.listener.onSessionFinished(eventTime, next.sessionId, z2);
                }
            }
        }
        updateCurrentSession(eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.PlaybackSessionManager
    public synchronized void updateSessionsWithTimelineChange(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.listener);
        com.google.android.exoplayer2.Timeline timeline = this.currentTimeline;
        this.currentTimeline = eventTime.timeline;
        java.util.Iterator<com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor> it = this.sessions.values().iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager.SessionDescriptor next = it.next();
            if (!next.tryResolvingToNewTimeline(timeline, this.currentTimeline)) {
                it.remove();
                if (next.isCreated) {
                    if (next.sessionId.equals(this.currentSessionId)) {
                        this.currentSessionId = null;
                    }
                    this.listener.onSessionFinished(eventTime, next.sessionId, false);
                }
            }
        }
        updateCurrentSession(eventTime);
    }
}
