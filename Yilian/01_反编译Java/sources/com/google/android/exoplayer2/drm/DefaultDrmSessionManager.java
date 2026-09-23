package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public class DefaultDrmSessionManager implements com.google.android.exoplayer2.drm.DrmSessionManager {
    public static final long DEFAULT_SESSION_KEEPALIVE_MS = 300000;
    public static final int INITIAL_DRM_REQUEST_RETRY_COUNT = 3;
    public static final int MODE_DOWNLOAD = 2;
    public static final int MODE_PLAYBACK = 0;
    public static final int MODE_QUERY = 1;
    public static final int MODE_RELEASE = 3;
    public static final java.lang.String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";
    public static final java.lang.String TAG = "DefaultDrmSessionMgr";
    public final com.google.android.exoplayer2.drm.MediaDrmCallback callback;
    public com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrm;
    public final com.google.android.exoplayer2.drm.ExoMediaDrm.Provider exoMediaDrmProvider;
    public final java.util.Set<com.google.android.exoplayer2.drm.DefaultDrmSession> keepaliveSessions;
    public final java.util.HashMap<java.lang.String, java.lang.String> keyRequestParameters;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public volatile com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MediaDrmHandler mediaDrmHandler;
    public int mode;
    public final boolean multiSession;
    public com.google.android.exoplayer2.drm.DefaultDrmSession noMultiSessionDrmSession;
    public byte[] offlineLicenseKeySetId;
    public com.google.android.exoplayer2.drm.DefaultDrmSession placeholderDrmSession;
    public final boolean playClearSamplesWithoutKeys;
    public android.os.Handler playbackHandler;
    public android.os.Looper playbackLooper;
    public final java.util.Set<com.google.android.exoplayer2.drm.DefaultDrmSessionManager.PreacquiredSessionReference> preacquiredSessionReferences;
    public int prepareCallsCount;
    public final com.google.android.exoplayer2.drm.DefaultDrmSessionManager.ProvisioningManagerImpl provisioningManagerImpl;
    public final com.google.android.exoplayer2.drm.DefaultDrmSessionManager.ReferenceCountListenerImpl referenceCountListener;
    public final long sessionKeepaliveMs;
    public final java.util.List<com.google.android.exoplayer2.drm.DefaultDrmSession> sessions;
    public final int[] useDrmSessionsForClearContentTrackTypes;
    public final java.util.UUID uuid;

    public static final class Builder {
        public boolean multiSession;
        public boolean playClearSamplesWithoutKeys;
        public final java.util.HashMap<java.lang.String, java.lang.String> keyRequestParameters = new java.util.HashMap<>();
        public java.util.UUID uuid = com.google.android.exoplayer2.C.WIDEVINE_UUID;
        public com.google.android.exoplayer2.drm.ExoMediaDrm.Provider exoMediaDrmProvider = com.google.android.exoplayer2.drm.FrameworkMediaDrm.DEFAULT_PROVIDER;
        public com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
        public int[] useDrmSessionsForClearContentTrackTypes = new int[0];
        public long sessionKeepaliveMs = 300000;

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager build(com.google.android.exoplayer2.drm.MediaDrmCallback mediaDrmCallback) {
            return new com.google.android.exoplayer2.drm.DefaultDrmSessionManager(this.uuid, this.exoMediaDrmProvider, mediaDrmCallback, this.keyRequestParameters, this.multiSession, this.useDrmSessionsForClearContentTrackTypes, this.playClearSamplesWithoutKeys, this.loadErrorHandlingPolicy, this.sessionKeepaliveMs);
        }

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder setKeyRequestParameters(java.util.Map<java.lang.String, java.lang.String> map) {
            this.keyRequestParameters.clear();
            if (map != null) {
                this.keyRequestParameters.putAll(map);
            }
            return this;
        }

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = (com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy) com.google.android.exoplayer2.util.Assertions.checkNotNull(loadErrorHandlingPolicy);
            return this;
        }

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder setMultiSession(boolean z) {
            this.multiSession = z;
            return this;
        }

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder setPlayClearSamplesWithoutKeys(boolean z) {
            this.playClearSamplesWithoutKeys = z;
            return this;
        }

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder setSessionKeepaliveMs(long j) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j > 0 || j == com.google.android.exoplayer2.C.TIME_UNSET);
            this.sessionKeepaliveMs = j;
            return this;
        }

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder setUseDrmSessionsForClearContent(int... iArr) {
            for (int i : iArr) {
                boolean z = true;
                if (i != 2 && i != 1) {
                    z = false;
                }
                com.google.android.exoplayer2.util.Assertions.checkArgument(z);
            }
            this.useDrmSessionsForClearContentTrackTypes = (int[]) iArr.clone();
            return this;
        }

        public com.google.android.exoplayer2.drm.DefaultDrmSessionManager.Builder setUuidAndExoMediaDrmProvider(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm.Provider provider) {
            this.uuid = (java.util.UUID) com.google.android.exoplayer2.util.Assertions.checkNotNull(uuid);
            this.exoMediaDrmProvider = (com.google.android.exoplayer2.drm.ExoMediaDrm.Provider) com.google.android.exoplayer2.util.Assertions.checkNotNull(provider);
            return this;
        }
    }

    public class MediaDrmEventListener implements com.google.android.exoplayer2.drm.ExoMediaDrm.OnEventListener {
        public MediaDrmEventListener() {
        }

        @Override // com.google.android.exoplayer2.drm.ExoMediaDrm.OnEventListener
        public void onEvent(com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
            ((com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MediaDrmHandler) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.mediaDrmHandler)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    @android.annotation.SuppressLint({"HandlerLeak"})
    public class MediaDrmHandler extends android.os.Handler {
        public MediaDrmHandler(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession : com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.sessions) {
                if (defaultDrmSession.hasSessionId(bArr)) {
                    defaultDrmSession.onMediaDrmEvent(message.what);
                    return;
                }
            }
        }
    }

    public static final class MissingSchemeDataException extends java.lang.Exception {
        public MissingSchemeDataException(java.util.UUID uuid) {
            java.lang.String strValueOf = java.lang.String.valueOf(uuid);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 29);
            sb.append("Media does not support uuid: ");
            sb.append(strValueOf);
            super(sb.toString());
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public class PreacquiredSessionReference implements com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference {
        public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher;
        public boolean isReleased;
        public com.google.android.exoplayer2.drm.DrmSession session;

        public PreacquiredSessionReference(com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
            this.eventDispatcher = eventDispatcher;
        }

        public /* synthetic */ void a(com.google.android.exoplayer2.Format format) {
            if (com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.prepareCallsCount == 0 || this.isReleased) {
                return;
            }
            com.google.android.exoplayer2.drm.DefaultDrmSessionManager defaultDrmSessionManager = com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this;
            this.session = defaultDrmSessionManager.acquireSession((android.os.Looper) com.google.android.exoplayer2.util.Assertions.checkNotNull(defaultDrmSessionManager.playbackLooper), this.eventDispatcher, format, false);
            com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.preacquiredSessionReferences.add(this);
        }

        public void acquire(final com.google.android.exoplayer2.Format format) {
            ((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.playbackHandler)).post(new java.lang.Runnable() { // from class: e.c.a.a.h2.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(format);
                }
            });
        }

        public /* synthetic */ void b() {
            if (this.isReleased) {
                return;
            }
            com.google.android.exoplayer2.drm.DrmSession drmSession = this.session;
            if (drmSession != null) {
                drmSession.release(this.eventDispatcher);
            }
            com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.preacquiredSessionReferences.remove(this);
            this.isReleased = true;
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference
        public void release() {
            com.google.android.exoplayer2.util.Util.postOrRun((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.playbackHandler), new java.lang.Runnable() { // from class: e.c.a.a.h2.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b();
                }
            });
        }
    }

    public class ProvisioningManagerImpl implements com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager {
        public com.google.android.exoplayer2.drm.DefaultDrmSession provisioningSession;
        public final java.util.Set<com.google.android.exoplayer2.drm.DefaultDrmSession> sessionsAwaitingProvisioning = new java.util.HashSet();

        public ProvisioningManagerImpl(com.google.android.exoplayer2.drm.DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager
        public void onProvisionCompleted() {
            this.provisioningSession = null;
            e.c.b.b.s sVarL = e.c.b.b.s.l(this.sessionsAwaitingProvisioning);
            this.sessionsAwaitingProvisioning.clear();
            e.c.b.b.a aVarListIterator = sVarL.listIterator();
            while (aVarListIterator.hasNext()) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSession) aVarListIterator.next()).onProvisionCompleted();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager
        public void onProvisionError(java.lang.Exception exc, boolean z) {
            this.provisioningSession = null;
            e.c.b.b.s sVarL = e.c.b.b.s.l(this.sessionsAwaitingProvisioning);
            this.sessionsAwaitingProvisioning.clear();
            e.c.b.b.a aVarListIterator = sVarL.listIterator();
            while (aVarListIterator.hasNext()) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSession) aVarListIterator.next()).onProvisionError(exc, z);
            }
        }

        public void onSessionFullyReleased(com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession) {
            this.sessionsAwaitingProvisioning.remove(defaultDrmSession);
            if (this.provisioningSession == defaultDrmSession) {
                this.provisioningSession = null;
                if (this.sessionsAwaitingProvisioning.isEmpty()) {
                    return;
                }
                com.google.android.exoplayer2.drm.DefaultDrmSession next = this.sessionsAwaitingProvisioning.iterator().next();
                this.provisioningSession = next;
                next.provision();
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager
        public void provisionRequired(com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession) {
            this.sessionsAwaitingProvisioning.add(defaultDrmSession);
            if (this.provisioningSession != null) {
                return;
            }
            this.provisioningSession = defaultDrmSession;
            defaultDrmSession.provision();
        }
    }

    public class ReferenceCountListenerImpl implements com.google.android.exoplayer2.drm.DefaultDrmSession.ReferenceCountListener {
        public ReferenceCountListenerImpl() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ReferenceCountListener
        public void onReferenceCountDecremented(final com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession, int i) {
            if (i == 1 && com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.prepareCallsCount > 0 && com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.sessionKeepaliveMs != com.google.android.exoplayer2.C.TIME_UNSET) {
                com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.keepaliveSessions.add(defaultDrmSession);
                ((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.playbackHandler)).postAtTime(new java.lang.Runnable() { // from class: e.c.a.a.h2.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        defaultDrmSession.release(null);
                    }
                }, defaultDrmSession, com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.sessionKeepaliveMs + android.os.SystemClock.uptimeMillis());
            } else if (i == 0) {
                com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.sessions.remove(defaultDrmSession);
                if (com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.placeholderDrmSession == defaultDrmSession) {
                    com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.placeholderDrmSession = null;
                }
                if (com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.noMultiSessionDrmSession == defaultDrmSession) {
                    com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.noMultiSessionDrmSession = null;
                }
                com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.provisioningManagerImpl.onSessionFullyReleased(defaultDrmSession);
                if (com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.sessionKeepaliveMs != com.google.android.exoplayer2.C.TIME_UNSET) {
                    ((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.playbackHandler)).removeCallbacksAndMessages(defaultDrmSession);
                    com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.keepaliveSessions.remove(defaultDrmSession);
                }
            }
            com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.maybeReleaseMediaDrm();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.ReferenceCountListener
        public void onReferenceCountIncremented(com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession, int i) {
            if (com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.sessionKeepaliveMs != com.google.android.exoplayer2.C.TIME_UNSET) {
                com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.keepaliveSessions.remove(defaultDrmSession);
                ((android.os.Handler) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.drm.DefaultDrmSessionManager.this.playbackHandler)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }
    }

    public DefaultDrmSessionManager(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm.Provider provider, com.google.android.exoplayer2.drm.MediaDrmCallback mediaDrmCallback, java.util.HashMap<java.lang.String, java.lang.String> map, boolean z, int[] iArr, boolean z2, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(uuid);
        com.google.android.exoplayer2.util.Assertions.checkArgument(!com.google.android.exoplayer2.C.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        this.exoMediaDrmProvider = provider;
        this.callback = mediaDrmCallback;
        this.keyRequestParameters = map;
        this.multiSession = z;
        this.useDrmSessionsForClearContentTrackTypes = iArr;
        this.playClearSamplesWithoutKeys = z2;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.provisioningManagerImpl = new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.ProvisioningManagerImpl(this);
        this.referenceCountListener = new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.ReferenceCountListenerImpl();
        this.mode = 0;
        this.sessions = new java.util.ArrayList();
        this.preacquiredSessionReferences = e.c.b.b.j.e();
        this.keepaliveSessions = e.c.b.b.j.e();
        this.sessionKeepaliveMs = j;
    }

    @java.lang.Deprecated
    public DefaultDrmSessionManager(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrm, com.google.android.exoplayer2.drm.MediaDrmCallback mediaDrmCallback, java.util.HashMap<java.lang.String, java.lang.String> map) {
        this(uuid, exoMediaDrm, mediaDrmCallback, map == null ? new java.util.HashMap<>() : map, false, 3);
    }

    @java.lang.Deprecated
    public DefaultDrmSessionManager(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrm, com.google.android.exoplayer2.drm.MediaDrmCallback mediaDrmCallback, java.util.HashMap<java.lang.String, java.lang.String> map, boolean z) {
        this(uuid, exoMediaDrm, mediaDrmCallback, map == null ? new java.util.HashMap<>() : map, z, 3);
    }

    @java.lang.Deprecated
    public DefaultDrmSessionManager(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrm, com.google.android.exoplayer2.drm.MediaDrmCallback mediaDrmCallback, java.util.HashMap<java.lang.String, java.lang.String> map, boolean z, int i) {
        this(uuid, new com.google.android.exoplayer2.drm.ExoMediaDrm.AppManagedProvider(exoMediaDrm), mediaDrmCallback, map == null ? new java.util.HashMap<>() : map, z, new int[0], false, new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy(i), 300000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public com.google.android.exoplayer2.drm.DrmSession acquireSession(android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.Format format, boolean z) {
        java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> schemeDatas;
        maybeCreateMediaDrmHandler(looper);
        com.google.android.exoplayer2.drm.DrmInitData drmInitData = format.drmInitData;
        if (drmInitData == null) {
            return maybeAcquirePlaceholderSession(com.google.android.exoplayer2.util.MimeTypes.getTrackType(format.sampleMimeType), z);
        }
        com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSessionCreateAndAcquireSessionWithRetry = null;
        java.lang.Object[] objArr = 0;
        if (this.offlineLicenseKeySetId == null) {
            schemeDatas = getSchemeDatas((com.google.android.exoplayer2.drm.DrmInitData) com.google.android.exoplayer2.util.Assertions.checkNotNull(drmInitData), this.uuid, false);
            if (schemeDatas.isEmpty()) {
                com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MissingSchemeDataException missingSchemeDataException = new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MissingSchemeDataException(this.uuid);
                com.google.android.exoplayer2.util.Log.e(TAG, "DRM error", missingSchemeDataException);
                if (eventDispatcher != null) {
                    eventDispatcher.drmSessionManagerError(missingSchemeDataException);
                }
                return new com.google.android.exoplayer2.drm.ErrorStateDrmSession(new com.google.android.exoplayer2.drm.DrmSession.DrmSessionException(missingSchemeDataException, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR));
            }
        } else {
            schemeDatas = null;
        }
        if (this.multiSession) {
            java.util.Iterator<com.google.android.exoplayer2.drm.DefaultDrmSession> it = this.sessions.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.google.android.exoplayer2.drm.DefaultDrmSession next = it.next();
                if (com.google.android.exoplayer2.util.Util.areEqual(next.schemeDatas, schemeDatas)) {
                    defaultDrmSessionCreateAndAcquireSessionWithRetry = next;
                    break;
                }
            }
        } else {
            defaultDrmSessionCreateAndAcquireSessionWithRetry = this.noMultiSessionDrmSession;
        }
        if (defaultDrmSessionCreateAndAcquireSessionWithRetry == null) {
            defaultDrmSessionCreateAndAcquireSessionWithRetry = createAndAcquireSessionWithRetry(schemeDatas, false, eventDispatcher, z);
            if (!this.multiSession) {
                this.noMultiSessionDrmSession = defaultDrmSessionCreateAndAcquireSessionWithRetry;
            }
            this.sessions.add(defaultDrmSessionCreateAndAcquireSessionWithRetry);
        } else {
            defaultDrmSessionCreateAndAcquireSessionWithRetry.acquire(eventDispatcher);
        }
        return defaultDrmSessionCreateAndAcquireSessionWithRetry;
    }

    public static boolean acquisitionFailedIndicatingResourceShortage(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        return drmSession.getState() == 1 && (com.google.android.exoplayer2.util.Util.SDK_INT < 19 || (((com.google.android.exoplayer2.drm.DrmSession.DrmSessionException) com.google.android.exoplayer2.util.Assertions.checkNotNull(drmSession.getError())).getCause() instanceof android.media.ResourceBusyException));
    }

    private boolean canAcquireSession(com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
        if (this.offlineLicenseKeySetId != null) {
            return true;
        }
        if (getSchemeDatas(drmInitData, this.uuid, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(com.google.android.exoplayer2.C.COMMON_PSSH_UUID)) {
                return false;
            }
            java.lang.String strValueOf = java.lang.String.valueOf(this.uuid);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 72);
            sb.append("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sb.append(strValueOf);
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
        }
        java.lang.String str = drmInitData.schemeType;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        return com.google.android.exoplayer2.C.CENC_TYPE_cbcs.equals(str) ? com.google.android.exoplayer2.util.Util.SDK_INT >= 25 : (com.google.android.exoplayer2.C.CENC_TYPE_cbc1.equals(str) || com.google.android.exoplayer2.C.CENC_TYPE_cens.equals(str)) ? false : true;
    }

    private com.google.android.exoplayer2.drm.DefaultDrmSession createAndAcquireSession(java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> list, boolean z, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.exoMediaDrm);
        com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession = new com.google.android.exoplayer2.drm.DefaultDrmSession(this.uuid, this.exoMediaDrm, this.provisioningManagerImpl, this.referenceCountListener, list, this.mode, this.playClearSamplesWithoutKeys | z, z, this.offlineLicenseKeySetId, this.keyRequestParameters, this.callback, (android.os.Looper) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playbackLooper), this.loadErrorHandlingPolicy);
        defaultDrmSession.acquire(eventDispatcher);
        if (this.sessionKeepaliveMs != com.google.android.exoplayer2.C.TIME_UNSET) {
            defaultDrmSession.acquire(null);
        }
        return defaultDrmSession;
    }

    private com.google.android.exoplayer2.drm.DefaultDrmSession createAndAcquireSessionWithRetry(java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> list, boolean z, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, boolean z2) {
        com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSessionCreateAndAcquireSession = createAndAcquireSession(list, z, eventDispatcher);
        if (acquisitionFailedIndicatingResourceShortage(defaultDrmSessionCreateAndAcquireSession) && !this.keepaliveSessions.isEmpty()) {
            releaseAllKeepaliveSessions();
            undoAcquisition(defaultDrmSessionCreateAndAcquireSession, eventDispatcher);
            defaultDrmSessionCreateAndAcquireSession = createAndAcquireSession(list, z, eventDispatcher);
        }
        if (!acquisitionFailedIndicatingResourceShortage(defaultDrmSessionCreateAndAcquireSession) || !z2 || this.preacquiredSessionReferences.isEmpty()) {
            return defaultDrmSessionCreateAndAcquireSession;
        }
        releaseAllPreacquiredSessions();
        if (!this.keepaliveSessions.isEmpty()) {
            releaseAllKeepaliveSessions();
        }
        undoAcquisition(defaultDrmSessionCreateAndAcquireSession, eventDispatcher);
        return createAndAcquireSession(list, z, eventDispatcher);
    }

    public static java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> getSchemeDatas(com.google.android.exoplayer2.drm.DrmInitData drmInitData, java.util.UUID uuid, boolean z) {
        java.util.ArrayList arrayList = new java.util.ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            com.google.android.exoplayer2.drm.DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (com.google.android.exoplayer2.C.CLEARKEY_UUID.equals(uuid) && schemeData.matches(com.google.android.exoplayer2.C.COMMON_PSSH_UUID))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"this.playbackLooper", "this.playbackHandler"})
    private synchronized void initPlaybackLooper(android.os.Looper looper) {
        if (this.playbackLooper == null) {
            this.playbackLooper = looper;
            this.playbackHandler = new android.os.Handler(looper);
        } else {
            com.google.android.exoplayer2.util.Assertions.checkState(this.playbackLooper == looper);
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playbackHandler);
        }
    }

    private com.google.android.exoplayer2.drm.DrmSession maybeAcquirePlaceholderSession(int i, boolean z) {
        com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrm = (com.google.android.exoplayer2.drm.ExoMediaDrm) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.exoMediaDrm);
        if ((exoMediaDrm.getCryptoType() == 2 && com.google.android.exoplayer2.drm.FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC) || com.google.android.exoplayer2.util.Util.linearSearch(this.useDrmSessionsForClearContentTrackTypes, i) == -1 || exoMediaDrm.getCryptoType() == 1) {
            return null;
        }
        com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession = this.placeholderDrmSession;
        if (defaultDrmSession == null) {
            com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSessionCreateAndAcquireSessionWithRetry = createAndAcquireSessionWithRetry(e.c.b.b.s.p(), true, null, z);
            this.sessions.add(defaultDrmSessionCreateAndAcquireSessionWithRetry);
            this.placeholderDrmSession = defaultDrmSessionCreateAndAcquireSessionWithRetry;
        } else {
            defaultDrmSession.acquire(null);
        }
        return this.placeholderDrmSession;
    }

    private void maybeCreateMediaDrmHandler(android.os.Looper looper) {
        if (this.mediaDrmHandler == null) {
            this.mediaDrmHandler = new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MediaDrmHandler(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeReleaseMediaDrm() {
        if (this.exoMediaDrm != null && this.prepareCallsCount == 0 && this.sessions.isEmpty() && this.preacquiredSessionReferences.isEmpty()) {
            ((com.google.android.exoplayer2.drm.ExoMediaDrm) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.exoMediaDrm)).release();
            this.exoMediaDrm = null;
        }
    }

    private void releaseAllKeepaliveSessions() {
        java.util.Iterator it = e.c.b.b.u.j(this.keepaliveSessions).iterator();
        while (it.hasNext()) {
            ((com.google.android.exoplayer2.drm.DrmSession) it.next()).release(null);
        }
    }

    private void releaseAllPreacquiredSessions() {
        java.util.Iterator it = e.c.b.b.u.j(this.preacquiredSessionReferences).iterator();
        while (it.hasNext()) {
            ((com.google.android.exoplayer2.drm.DefaultDrmSessionManager.PreacquiredSessionReference) it.next()).release();
        }
    }

    private void undoAcquisition(com.google.android.exoplayer2.drm.DrmSession drmSession, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        drmSession.release(eventDispatcher);
        if (this.sessionKeepaliveMs != com.google.android.exoplayer2.C.TIME_UNSET) {
            drmSession.release(null);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public com.google.android.exoplayer2.drm.DrmSession acquireSession(android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.prepareCallsCount > 0);
        initPlaybackLooper(looper);
        return acquireSession(looper, eventDispatcher, format, true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public int getCryptoType(com.google.android.exoplayer2.Format format) {
        int cryptoType = ((com.google.android.exoplayer2.drm.ExoMediaDrm) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.exoMediaDrm)).getCryptoType();
        com.google.android.exoplayer2.drm.DrmInitData drmInitData = format.drmInitData;
        if (drmInitData != null) {
            if (canAcquireSession(drmInitData)) {
                return cryptoType;
            }
            return 1;
        }
        if (com.google.android.exoplayer2.util.Util.linearSearch(this.useDrmSessionsForClearContentTrackTypes, com.google.android.exoplayer2.util.MimeTypes.getTrackType(format.sampleMimeType)) != -1) {
            return cryptoType;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference preacquireSession(android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.prepareCallsCount > 0);
        initPlaybackLooper(looper);
        com.google.android.exoplayer2.drm.DefaultDrmSessionManager.PreacquiredSessionReference preacquiredSessionReference = new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.PreacquiredSessionReference(eventDispatcher);
        preacquiredSessionReference.acquire(format);
        return preacquiredSessionReference;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public final void prepare() {
        int i = this.prepareCallsCount;
        this.prepareCallsCount = i + 1;
        if (i != 0) {
            return;
        }
        if (this.exoMediaDrm == null) {
            com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrmAcquireExoMediaDrm = this.exoMediaDrmProvider.acquireExoMediaDrm(this.uuid);
            this.exoMediaDrm = exoMediaDrmAcquireExoMediaDrm;
            exoMediaDrmAcquireExoMediaDrm.setOnEventListener(new com.google.android.exoplayer2.drm.DefaultDrmSessionManager.MediaDrmEventListener());
        } else if (this.sessionKeepaliveMs != com.google.android.exoplayer2.C.TIME_UNSET) {
            for (int i2 = 0; i2 < this.sessions.size(); i2++) {
                this.sessions.get(i2).acquire(null);
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManager
    public final void release() {
        int i = this.prepareCallsCount - 1;
        this.prepareCallsCount = i;
        if (i != 0) {
            return;
        }
        if (this.sessionKeepaliveMs != com.google.android.exoplayer2.C.TIME_UNSET) {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.sessions);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSession) arrayList.get(i2)).release(null);
            }
        }
        releaseAllPreacquiredSessions();
        maybeReleaseMediaDrm();
    }

    public void setMode(int i, byte[] bArr) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.sessions.isEmpty());
        if (i == 1 || i == 3) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr);
        }
        this.mode = i;
        this.offlineLicenseKeySetId = bArr;
    }
}
