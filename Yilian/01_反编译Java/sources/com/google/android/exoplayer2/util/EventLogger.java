package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public class EventLogger implements com.google.android.exoplayer2.analytics.AnalyticsListener {
    public static final java.lang.String DEFAULT_TAG = "EventLogger";
    public static final int MAX_TIMELINE_ITEM_LINES = 3;
    public static final java.text.NumberFormat TIME_FORMAT;
    public final com.google.android.exoplayer2.Timeline.Period period;
    public final long startTimeMs;
    public final java.lang.String tag;
    public final com.google.android.exoplayer2.trackselection.MappingTrackSelector trackSelector;
    public final com.google.android.exoplayer2.Timeline.Window window;

    static {
        java.text.NumberFormat numberFormat = java.text.NumberFormat.getInstance(java.util.Locale.US);
        TIME_FORMAT = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        TIME_FORMAT.setMaximumFractionDigits(2);
        TIME_FORMAT.setGroupingUsed(false);
    }

    public EventLogger(com.google.android.exoplayer2.trackselection.MappingTrackSelector mappingTrackSelector) {
        this(mappingTrackSelector, DEFAULT_TAG);
    }

    public EventLogger(com.google.android.exoplayer2.trackselection.MappingTrackSelector mappingTrackSelector, java.lang.String str) {
        this.trackSelector = mappingTrackSelector;
        this.tag = str;
        this.window = new com.google.android.exoplayer2.Timeline.Window();
        this.period = new com.google.android.exoplayer2.Timeline.Period();
        this.startTimeMs = android.os.SystemClock.elapsedRealtime();
    }

    public static java.lang.String getAdaptiveSupportString(int i, int i2) {
        if (i < 2) {
            return "N/A";
        }
        if (i2 == 0) {
            return com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.BOOLEAN_FALSE;
        }
        if (i2 == 8) {
            return "YES_NOT_SEAMLESS";
        }
        if (i2 == 16) {
            return com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.BOOLEAN_TRUE;
        }
        throw new java.lang.IllegalStateException();
    }

    public static java.lang.String getDiscontinuityReasonString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "?" : "INTERNAL" : "REMOVE" : "SKIP" : "SEEK_ADJUSTMENT" : "SEEK" : "AUTO_TRANSITION";
    }

    private java.lang.String getEventString(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        java.lang.String eventTimeString = getEventTimeString(eventTime);
        java.lang.String strG = e.a.c.a.a.G(e.a.c.a.a.m(eventTimeString, e.a.c.a.a.m(str, 2)), str, " [", eventTimeString);
        if (th instanceof com.google.android.exoplayer2.PlaybackException) {
            java.lang.String strValueOf = java.lang.String.valueOf(strG);
            java.lang.String errorCodeName = ((com.google.android.exoplayer2.PlaybackException) th).getErrorCodeName();
            strG = e.a.c.a.a.G(e.a.c.a.a.m(errorCodeName, strValueOf.length() + 12), strValueOf, ", errorCode=", errorCodeName);
        }
        if (str2 != null) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(strG);
            strG = e.a.c.a.a.G(str2.length() + strValueOf2.length() + 2, strValueOf2, ", ", str2);
        }
        java.lang.String throwableString = com.google.android.exoplayer2.util.Log.getThrowableString(th);
        if (!android.text.TextUtils.isEmpty(throwableString)) {
            java.lang.String strValueOf3 = java.lang.String.valueOf(strG);
            java.lang.String strReplace = throwableString.replace("\n", "\n  ");
            java.lang.StringBuilder sb = new java.lang.StringBuilder(e.a.c.a.a.m(strReplace, strValueOf3.length() + 4));
            sb.append(strValueOf3);
            sb.append("\n  ");
            sb.append(strReplace);
            sb.append('\n');
            strG = sb.toString();
        }
        return java.lang.String.valueOf(strG).concat("]");
    }

    private java.lang.String getEventTimeString(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        java.lang.String strF = e.a.c.a.a.F(18, "window=", eventTime.windowIndex);
        if (eventTime.mediaPeriodId != null) {
            java.lang.String strValueOf = java.lang.String.valueOf(strF);
            int indexOfPeriod = eventTime.timeline.getIndexOfPeriod(eventTime.mediaPeriodId.periodUid);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 20);
            sb.append(strValueOf);
            sb.append(", period=");
            sb.append(indexOfPeriod);
            strF = sb.toString();
            if (eventTime.mediaPeriodId.isAd()) {
                java.lang.String strValueOf2 = java.lang.String.valueOf(strF);
                int i = eventTime.mediaPeriodId.adGroupIndex;
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(strValueOf2.length() + 21);
                sb2.append(strValueOf2);
                sb2.append(", adGroup=");
                sb2.append(i);
                java.lang.String strValueOf3 = java.lang.String.valueOf(sb2.toString());
                int i2 = eventTime.mediaPeriodId.adIndexInAdGroup;
                java.lang.StringBuilder sb3 = new java.lang.StringBuilder(strValueOf3.length() + 16);
                sb3.append(strValueOf3);
                sb3.append(", ad=");
                sb3.append(i2);
                strF = sb3.toString();
            }
        }
        java.lang.String timeString = getTimeString(eventTime.realtimeMs - this.startTimeMs);
        java.lang.String timeString2 = getTimeString(eventTime.eventPlaybackPositionMs);
        return e.a.c.a.a.j(e.a.c.a.a.l(e.a.c.a.a.m(strF, e.a.c.a.a.m(timeString2, e.a.c.a.a.m(timeString, 23))), "eventTime=", timeString, ", mediaPos=", timeString2), ", ", strF);
    }

    public static java.lang.String getMediaItemTransitionReasonString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "?" : "PLAYLIST_CHANGED" : "SEEK" : "AUTO" : "REPEAT";
    }

    public static java.lang.String getPlayWhenReadyChangeReasonString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "?" : "END_OF_MEDIA_ITEM" : "REMOTE" : "AUDIO_BECOMING_NOISY" : "AUDIO_FOCUS_LOSS" : "USER_REQUEST";
    }

    public static java.lang.String getPlaybackSuppressionReasonString(int i) {
        return i != 0 ? i != 1 ? "?" : "TRANSIENT_AUDIO_FOCUS_LOSS" : com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.METHOD_NONE;
    }

    public static java.lang.String getRepeatModeString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "?" : "ALL" : "ONE" : "OFF";
    }

    public static java.lang.String getStateString(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "?" : "ENDED" : "READY" : "BUFFERING" : "IDLE";
    }

    public static java.lang.String getTimeString(long j) {
        return j == com.google.android.exoplayer2.C.TIME_UNSET ? "?" : TIME_FORMAT.format(j / 1000.0f);
    }

    public static java.lang.String getTimelineChangeReasonString(int i) {
        return i != 0 ? i != 1 ? "?" : "SOURCE_UPDATE" : "PLAYLIST_CHANGED";
    }

    public static java.lang.String getTrackStatusString(com.google.android.exoplayer2.trackselection.TrackSelection trackSelection, com.google.android.exoplayer2.source.TrackGroup trackGroup, int i) {
        return getTrackStatusString((trackSelection == null || trackSelection.getTrackGroup() != trackGroup || trackSelection.indexOf(i) == -1) ? false : true);
    }

    public static java.lang.String getTrackStatusString(boolean z) {
        return z ? "[X]" : "[ ]";
    }

    private void logd(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str) {
        logd(getEventString(eventTime, str, null, null));
    }

    private void logd(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, java.lang.String str2) {
        logd(getEventString(eventTime, str, str2, null));
    }

    private void loge(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        loge(getEventString(eventTime, str, str2, th));
    }

    private void loge(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, java.lang.Throwable th) {
        loge(getEventString(eventTime, str, null, th));
    }

    private void printInternalError(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, java.lang.Exception exc) {
        loge(eventTime, "internalError", str, exc);
    }

    private void printMetadata(com.google.android.exoplayer2.metadata.Metadata metadata, java.lang.String str) {
        for (int i = 0; i < metadata.length(); i++) {
            java.lang.String strValueOf = java.lang.String.valueOf(metadata.get(i));
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + java.lang.String.valueOf(str).length());
            sb.append(str);
            sb.append(strValueOf);
            logd(sb.toString());
        }
    }

    public void logd(java.lang.String str) {
        com.google.android.exoplayer2.util.Log.d(this.tag, str);
    }

    public void loge(java.lang.String str) {
        com.google.android.exoplayer2.util.Log.e(this.tag, str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioAttributesChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.audio.AudioAttributes audioAttributes) {
        int i = audioAttributes.contentType;
        int i2 = audioAttributes.flags;
        int i3 = audioAttributes.usage;
        int i4 = audioAttributes.allowedCapturePolicy;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(47);
        sb.append(i);
        sb.append(",");
        sb.append(i2);
        sb.append(",");
        sb.append(i3);
        sb.append(",");
        sb.append(i4);
        logd(eventTime, "audioAttributes", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioCodecError(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.Exception exc) {
        e.c.a.a.f2.o1.$default$onAudioCodecError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioDecoderInitialized(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, long j) {
        logd(eventTime, "audioDecoderInitialized", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioDecoderInitialized(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, long j, long j2) {
        e.c.a.a.f2.o1.$default$onAudioDecoderInitialized(this, eventTime, str, j, j2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioDecoderReleased(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str) {
        logd(eventTime, "audioDecoderReleased", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioDisabled(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        logd(eventTime, "audioDisabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioEnabled(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        logd(eventTime, "audioEnabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onAudioInputFormatChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Format format) {
        e.c.a.a.f2.o1.$default$onAudioInputFormatChanged(this, eventTime, format);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioInputFormatChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
        logd(eventTime, "audioInputFormat", com.google.android.exoplayer2.Format.toLogString(format));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioPositionAdvancing(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, long j) {
        e.c.a.a.f2.o1.$default$onAudioPositionAdvancing(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioSessionIdChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, "audioSessionId", java.lang.Integer.toString(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAudioSinkError(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.Exception exc) {
        e.c.a.a.f2.o1.$default$onAudioSinkError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onAudioUnderrun(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(55);
        sb.append(i);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        loge(eventTime, "audioTrackUnderrun", sb.toString(), null);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onAvailableCommandsChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Player.Commands commands) {
        e.c.a.a.f2.o1.$default$onAvailableCommandsChanged(this, eventTime, commands);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onBandwidthEstimate(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onDecoderDisabled(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        e.c.a.a.f2.o1.$default$onDecoderDisabled(this, eventTime, i, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onDecoderEnabled(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        e.c.a.a.f2.o1.$default$onDecoderEnabled(this, eventTime, i, decoderCounters);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onDecoderInitialized(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, java.lang.String str, long j) {
        e.c.a.a.f2.o1.$default$onDecoderInitialized(this, eventTime, i, str, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onDecoderInputFormatChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, com.google.android.exoplayer2.Format format) {
        e.c.a.a.f2.o1.$default$onDecoderInputFormatChanged(this, eventTime, i, format);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        logd(eventTime, "downstreamFormat", com.google.android.exoplayer2.Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysLoaded(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysLoaded");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRemoved(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysRemoved");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRestored(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysRestored");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onDrmSessionAcquired(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        e.c.a.a.f2.o1.$default$onDrmSessionAcquired(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionAcquired(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, "drmSessionAcquired", e.a.c.a.a.F(17, "state=", i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionManagerError(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.Exception exc) {
        printInternalError(eventTime, "drmSessionManagerError", exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionReleased(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmSessionReleased");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onDroppedVideoFrames(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, long j) {
        logd(eventTime, "droppedFrames", java.lang.Integer.toString(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onEvents(com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.analytics.AnalyticsListener.Events events) {
        e.c.a.a.f2.o1.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onIsLoadingChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z) {
        logd(eventTime, "loading", java.lang.Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onIsPlayingChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z) {
        logd(eventTime, "isPlaying", java.lang.Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadCanceled(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadCompleted(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadError(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, java.io.IOException iOException, boolean z) {
        printInternalError(eventTime, "loadError", iOException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onLoadStarted(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onLoadingChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z) {
        e.c.a.a.f2.o1.$default$onLoadingChanged(this, eventTime, z);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMaxSeekToPreviousPositionChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, long j) {
        e.c.a.a.f2.o1.$default$onMaxSeekToPreviousPositionChanged(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onMediaItemTransition(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.MediaItem mediaItem, int i) {
        java.lang.String eventTimeString = getEventTimeString(eventTime);
        java.lang.String mediaItemTransitionReasonString = getMediaItemTransitionReasonString(i);
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(mediaItemTransitionReasonString, e.a.c.a.a.m(eventTimeString, 21)), "mediaItem [", eventTimeString, ", reason=", mediaItemTransitionReasonString);
        sbL.append("]");
        logd(sbL.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onMediaMetadataChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        e.c.a.a.f2.o1.$default$onMediaMetadataChanged(this, eventTime, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onMetadata(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.metadata.Metadata metadata) {
        java.lang.String strValueOf = java.lang.String.valueOf(getEventTimeString(eventTime));
        logd(strValueOf.length() != 0 ? "metadata [".concat(strValueOf) : new java.lang.String("metadata ["));
        printMetadata(metadata, "  ");
        logd("]");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlayWhenReadyChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z, int i) {
        java.lang.String playWhenReadyChangeReasonString = getPlayWhenReadyChangeReasonString(i);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(playWhenReadyChangeReasonString).length() + 7);
        sb.append(z);
        sb.append(", ");
        sb.append(playWhenReadyChangeReasonString);
        logd(eventTime, "playWhenReady", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackParametersChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        logd(eventTime, "playbackParameters", playbackParameters.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackStateChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, com.google.android.exoplayer2.offline.DefaultDownloadIndex.COLUMN_STATE, getStateString(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackSuppressionReasonChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, "playbackSuppressionReason", getPlaybackSuppressionReasonString(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPlayerError(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.PlaybackException playbackException) {
        loge(eventTime, "playerFailed", playbackException);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlayerReleased(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        e.c.a.a.f2.o1.$default$onPlayerReleased(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onPlayerStateChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z, int i) {
        e.c.a.a.f2.o1.$default$onPlayerStateChanged(this, eventTime, z, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onPlaylistMetadataChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        e.c.a.a.f2.o1.$default$onPlaylistMetadataChanged(this, eventTime, mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onPositionDiscontinuity(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        e.c.a.a.f2.o1.$default$onPositionDiscontinuity(this, eventTime, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onPositionDiscontinuity(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Player.PositionInfo positionInfo, com.google.android.exoplayer2.Player.PositionInfo positionInfo2, int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("reason=");
        sbO.append(getDiscontinuityReasonString(i));
        sbO.append(", PositionInfo:old [");
        sbO.append("mediaItem=");
        sbO.append(positionInfo.mediaItemIndex);
        sbO.append(", period=");
        sbO.append(positionInfo.periodIndex);
        sbO.append(", pos=");
        sbO.append(positionInfo.positionMs);
        if (positionInfo.adGroupIndex != -1) {
            sbO.append(", contentPos=");
            sbO.append(positionInfo.contentPositionMs);
            sbO.append(", adGroup=");
            sbO.append(positionInfo.adGroupIndex);
            sbO.append(", ad=");
            sbO.append(positionInfo.adIndexInAdGroup);
        }
        sbO.append("], PositionInfo:new [");
        sbO.append("mediaItem=");
        sbO.append(positionInfo2.mediaItemIndex);
        sbO.append(", period=");
        sbO.append(positionInfo2.periodIndex);
        sbO.append(", pos=");
        sbO.append(positionInfo2.positionMs);
        if (positionInfo2.adGroupIndex != -1) {
            sbO.append(", contentPos=");
            sbO.append(positionInfo2.contentPositionMs);
            sbO.append(", adGroup=");
            sbO.append(positionInfo2.adGroupIndex);
            sbO.append(", ad=");
            sbO.append(positionInfo2.adIndexInAdGroup);
        }
        sbO.append("]");
        logd(eventTime, "positionDiscontinuity", sbO.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onRenderedFirstFrame(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.Object obj, long j) {
        logd(eventTime, "renderedFirstFrame", java.lang.String.valueOf(obj));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onRepeatModeChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        logd(eventTime, "repeatMode", getRepeatModeString(i));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSeekBackIncrementChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, long j) {
        e.c.a.a.f2.o1.$default$onSeekBackIncrementChanged(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onSeekForwardIncrementChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, long j) {
        e.c.a.a.f2.o1.$default$onSeekForwardIncrementChanged(this, eventTime, j);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onSeekProcessed(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        e.c.a.a.f2.o1.$default$onSeekProcessed(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onSeekStarted(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime) {
        e.c.a.a.f2.o1.$default$onSeekStarted(this, eventTime);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onShuffleModeChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z) {
        logd(eventTime, "shuffleModeEnabled", java.lang.Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onSkipSilenceEnabledChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z) {
        logd(eventTime, "skipSilenceEnabled", java.lang.Boolean.toString(z));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onSurfaceSizeChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, int i2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(24);
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        logd(eventTime, "surfaceSize", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onTimelineChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i) {
        int periodCount = eventTime.timeline.getPeriodCount();
        int windowCount = eventTime.timeline.getWindowCount();
        java.lang.String eventTimeString = getEventTimeString(eventTime);
        java.lang.String timelineChangeReasonString = getTimelineChangeReasonString(i);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(timelineChangeReasonString).length() + java.lang.String.valueOf(eventTimeString).length() + 69);
        sb.append("timeline [");
        sb.append(eventTimeString);
        sb.append(", periodCount=");
        sb.append(periodCount);
        sb.append(", windowCount=");
        sb.append(windowCount);
        sb.append(", reason=");
        sb.append(timelineChangeReasonString);
        logd(sb.toString());
        for (int i2 = 0; i2 < java.lang.Math.min(periodCount, 3); i2++) {
            eventTime.timeline.getPeriod(i2, this.period);
            java.lang.String timeString = getTimeString(this.period.getDurationMs());
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder(java.lang.String.valueOf(timeString).length() + 11);
            sb2.append("  period [");
            sb2.append(timeString);
            sb2.append("]");
            logd(sb2.toString());
        }
        if (periodCount > 3) {
            logd("  ...");
        }
        for (int i3 = 0; i3 < java.lang.Math.min(windowCount, 3); i3++) {
            eventTime.timeline.getWindow(i3, this.window);
            java.lang.String timeString2 = getTimeString(this.window.getDurationMs());
            com.google.android.exoplayer2.Timeline.Window window = this.window;
            boolean z = window.isSeekable;
            boolean z2 = window.isDynamic;
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder(java.lang.String.valueOf(timeString2).length() + 42);
            sb3.append("  window [");
            sb3.append(timeString2);
            sb3.append(", seekable=");
            sb3.append(z);
            sb3.append(", dynamic=");
            sb3.append(z2);
            sb3.append("]");
            logd(sb3.toString());
        }
        if (windowCount > 3) {
            logd("  ...");
        }
        logd("]");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onTracksChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.TrackSelectionArray trackSelectionArray) throws java.lang.Throwable {
        java.lang.String string;
        com.google.android.exoplayer2.trackselection.MappingTrackSelector mappingTrackSelector = this.trackSelector;
        com.google.android.exoplayer2.trackselection.MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = mappingTrackSelector != null ? mappingTrackSelector.getCurrentMappedTrackInfo() : null;
        if (currentMappedTrackInfo == null) {
            logd(eventTime, "tracks", "[]");
            return;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(getEventTimeString(eventTime));
        logd(strValueOf.length() != 0 ? "tracks [".concat(strValueOf) : new java.lang.String("tracks ["));
        int rendererCount = currentMappedTrackInfo.getRendererCount();
        int i = 0;
        while (true) {
            java.lang.String str = "    Group:";
            java.lang.String str2 = " [";
            if (i >= rendererCount) {
                break;
            }
            com.google.android.exoplayer2.source.TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(i);
            com.google.android.exoplayer2.trackselection.TrackSelection trackSelection = trackSelectionArray.get(i);
            int i2 = rendererCount;
            if (trackGroups.length == 0) {
                java.lang.String rendererName = currentMappedTrackInfo.getRendererName(i);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(rendererName).length() + 5);
                sb.append("  ");
                sb.append(rendererName);
                sb.append(" []");
                string = sb.toString();
            } else {
                java.lang.String rendererName2 = currentMappedTrackInfo.getRendererName(i);
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(java.lang.String.valueOf(rendererName2).length() + 4);
                sb2.append("  ");
                sb2.append(rendererName2);
                sb2.append(" [");
                logd(sb2.toString());
                int i3 = 0;
                while (i3 < trackGroups.length) {
                    com.google.android.exoplayer2.source.TrackGroup trackGroup = trackGroups.get(i3);
                    com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray2 = trackGroups;
                    java.lang.String adaptiveSupportString = getAdaptiveSupportString(trackGroup.length, currentMappedTrackInfo.getAdaptiveSupport(i, i3, false));
                    java.lang.StringBuilder sb3 = new java.lang.StringBuilder(java.lang.String.valueOf(adaptiveSupportString).length() + 44);
                    sb3.append(str);
                    sb3.append(i3);
                    sb3.append(", adaptive_supported=");
                    sb3.append(adaptiveSupportString);
                    sb3.append(str2);
                    logd(sb3.toString());
                    int i4 = 0;
                    while (i4 < trackGroup.length) {
                        java.lang.String trackStatusString = getTrackStatusString(trackSelection, trackGroup, i4);
                        java.lang.String formatSupportString = com.google.android.exoplayer2.util.Util.getFormatSupportString(currentMappedTrackInfo.getTrackSupport(i, i3, i4));
                        com.google.android.exoplayer2.source.TrackGroup trackGroup2 = trackGroup;
                        java.lang.String logString = com.google.android.exoplayer2.Format.toLogString(trackGroup.getFormat(i4));
                        java.lang.String str3 = str2;
                        java.lang.String str4 = str;
                        java.lang.StringBuilder sb4 = new java.lang.StringBuilder(java.lang.String.valueOf(formatSupportString).length() + java.lang.String.valueOf(logString).length() + java.lang.String.valueOf(trackStatusString).length() + 38);
                        sb4.append("      ");
                        sb4.append(trackStatusString);
                        sb4.append(" Track:");
                        sb4.append(i4);
                        sb4.append(", ");
                        sb4.append(logString);
                        sb4.append(", supported=");
                        sb4.append(formatSupportString);
                        logd(sb4.toString());
                        i4++;
                        str = str4;
                        trackGroup = trackGroup2;
                        str2 = str3;
                    }
                    logd("    ]");
                    i3++;
                    trackGroups = trackGroupArray2;
                }
                if (trackSelection != null) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= trackSelection.length()) {
                            break;
                        }
                        com.google.android.exoplayer2.metadata.Metadata metadata = trackSelection.getFormat(i5).metadata;
                        if (metadata != null) {
                            logd("    Metadata [");
                            printMetadata(metadata, "      ");
                            logd("    ]");
                            break;
                        }
                        i5++;
                    }
                }
                string = "  ]";
            }
            logd(string);
            i++;
            rendererCount = i2;
        }
        java.lang.String str5 = "    Group:";
        java.lang.String str6 = " [";
        com.google.android.exoplayer2.source.TrackGroupArray unmappedTrackGroups = currentMappedTrackInfo.getUnmappedTrackGroups();
        if (unmappedTrackGroups.length > 0) {
            logd("  Unmapped [");
            int i6 = 0;
            while (i6 < unmappedTrackGroups.length) {
                java.lang.StringBuilder sb5 = new java.lang.StringBuilder(23);
                java.lang.String str7 = str5;
                sb5.append(str7);
                sb5.append(i6);
                java.lang.String str8 = str6;
                sb5.append(str8);
                logd(sb5.toString());
                com.google.android.exoplayer2.source.TrackGroup trackGroup3 = unmappedTrackGroups.get(i6);
                int i7 = 0;
                while (i7 < trackGroup3.length) {
                    java.lang.String trackStatusString2 = getTrackStatusString(false);
                    java.lang.String formatSupportString2 = com.google.android.exoplayer2.util.Util.getFormatSupportString(0);
                    java.lang.String logString2 = com.google.android.exoplayer2.Format.toLogString(trackGroup3.getFormat(i7));
                    java.lang.String str9 = str7;
                    java.lang.StringBuilder sb6 = new java.lang.StringBuilder(java.lang.String.valueOf(formatSupportString2).length() + java.lang.String.valueOf(logString2).length() + java.lang.String.valueOf(trackStatusString2).length() + 38);
                    sb6.append("      ");
                    sb6.append(trackStatusString2);
                    sb6.append(" Track:");
                    sb6.append(i7);
                    sb6.append(", ");
                    sb6.append(logString2);
                    sb6.append(", supported=");
                    sb6.append(formatSupportString2);
                    logd(sb6.toString());
                    i7++;
                    unmappedTrackGroups = unmappedTrackGroups;
                    str7 = str9;
                }
                str5 = str7;
                logd("    ]");
                i6++;
                str6 = str8;
            }
            logd("  ]");
        }
        logd("]");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onTracksInfoChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.TracksInfo tracksInfo) {
        e.c.a.a.f2.o1.$default$onTracksInfoChanged(this, eventTime, tracksInfo);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onUpstreamDiscarded(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        logd(eventTime, "upstreamDiscarded", com.google.android.exoplayer2.Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoCodecError(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.Exception exc) {
        e.c.a.a.f2.o1.$default$onVideoCodecError(this, eventTime, exc);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoDecoderInitialized(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, long j) {
        logd(eventTime, "videoDecoderInitialized", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoDecoderInitialized(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, long j, long j2) {
        e.c.a.a.f2.o1.$default$onVideoDecoderInitialized(this, eventTime, str, j, j2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoDecoderReleased(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str) {
        logd(eventTime, "videoDecoderReleased", str);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoDisabled(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        logd(eventTime, "videoDisabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoEnabled(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        logd(eventTime, "videoEnabled");
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public /* synthetic */ void onVideoFrameProcessingOffset(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, long j, int i) {
        e.c.a.a.f2.o1.$default$onVideoFrameProcessingOffset(this, eventTime, j, i);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onVideoInputFormatChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Format format) {
        e.c.a.a.f2.o1.$default$onVideoInputFormatChanged(this, eventTime, format);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoInputFormatChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
        logd(eventTime, "videoInputFormat", com.google.android.exoplayer2.Format.toLogString(format));
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    @java.lang.Deprecated
    public /* synthetic */ void onVideoSizeChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, int i2, int i3, float f2) {
        e.c.a.a.f2.o1.$default$onVideoSizeChanged(this, eventTime, i, i2, i3, f2);
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVideoSizeChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.video.VideoSize videoSize) {
        int i = videoSize.width;
        int i2 = videoSize.height;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(24);
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        logd(eventTime, "videoSize", sb.toString());
    }

    @Override // com.google.android.exoplayer2.analytics.AnalyticsListener
    public void onVolumeChanged(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, float f2) {
        logd(eventTime, "volume", java.lang.Float.toString(f2));
    }
}
