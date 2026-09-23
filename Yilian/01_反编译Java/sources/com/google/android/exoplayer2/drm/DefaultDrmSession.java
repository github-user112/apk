package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public class DefaultDrmSession implements com.google.android.exoplayer2.drm.DrmSession {
    public static final int MAX_LICENSE_DURATION_TO_RENEW_SECONDS = 60;
    public static final int MSG_KEYS = 1;
    public static final int MSG_PROVISION = 0;
    public static final java.lang.String TAG = "DefaultDrmSession";
    public final com.google.android.exoplayer2.drm.MediaDrmCallback callback;
    public com.google.android.exoplayer2.decoder.CryptoConfig cryptoConfig;
    public com.google.android.exoplayer2.drm.ExoMediaDrm.KeyRequest currentKeyRequest;
    public com.google.android.exoplayer2.drm.ExoMediaDrm.ProvisionRequest currentProvisionRequest;
    public final com.google.android.exoplayer2.util.CopyOnWriteMultiset<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher> eventDispatchers;
    public final boolean isPlaceholderSession;
    public final java.util.HashMap<java.lang.String, java.lang.String> keyRequestParameters;
    public com.google.android.exoplayer2.drm.DrmSession.DrmSessionException lastException;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public final com.google.android.exoplayer2.drm.ExoMediaDrm mediaDrm;
    public final int mode;
    public byte[] offlineLicenseKeySetId;
    public final boolean playClearSamplesWithoutKeys;
    public final com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager provisioningManager;
    public int referenceCount;
    public final com.google.android.exoplayer2.drm.DefaultDrmSession.ReferenceCountListener referenceCountListener;
    public com.google.android.exoplayer2.drm.DefaultDrmSession.RequestHandler requestHandler;
    public android.os.HandlerThread requestHandlerThread;
    public final com.google.android.exoplayer2.drm.DefaultDrmSession.ResponseHandler responseHandler;
    public final java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> schemeDatas;
    public byte[] sessionId;
    public int state;
    public final java.util.UUID uuid;

    public interface ProvisioningManager {
        void onProvisionCompleted();

        void onProvisionError(java.lang.Exception exc, boolean z);

        void provisionRequired(com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession);
    }

    public interface ReferenceCountListener {
        void onReferenceCountDecremented(com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession, int i);

        void onReferenceCountIncremented(com.google.android.exoplayer2.drm.DefaultDrmSession defaultDrmSession, int i);
    }

    @android.annotation.SuppressLint({"HandlerLeak"})
    public class RequestHandler extends android.os.Handler {
        public boolean isReleased;

        public RequestHandler(android.os.Looper looper) {
            super(looper);
        }

        private boolean maybeRetryRequest(android.os.Message message, com.google.android.exoplayer2.drm.MediaDrmCallbackException mediaDrmCallbackException) {
            com.google.android.exoplayer2.drm.DefaultDrmSession.RequestTask requestTask = (com.google.android.exoplayer2.drm.DefaultDrmSession.RequestTask) message.obj;
            if (!requestTask.allowRetry) {
                return false;
            }
            int i = requestTask.errorCount + 1;
            requestTask.errorCount = i;
            if (i > com.google.android.exoplayer2.drm.DefaultDrmSession.this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(3)) {
                return false;
            }
            long retryDelayMsFor = com.google.android.exoplayer2.drm.DefaultDrmSession.this.loadErrorHandlingPolicy.getRetryDelayMsFor(new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(new com.google.android.exoplayer2.source.LoadEventInfo(requestTask.taskId, mediaDrmCallbackException.dataSpec, mediaDrmCallbackException.uriAfterRedirects, mediaDrmCallbackException.responseHeaders, android.os.SystemClock.elapsedRealtime(), android.os.SystemClock.elapsedRealtime() - requestTask.startTimeMs, mediaDrmCallbackException.bytesLoaded), new com.google.android.exoplayer2.source.MediaLoadData(3), mediaDrmCallbackException.getCause() instanceof java.io.IOException ? (java.io.IOException) mediaDrmCallbackException.getCause() : new com.google.android.exoplayer2.drm.DefaultDrmSession.UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), requestTask.errorCount));
            if (retryDelayMsFor == com.google.android.exoplayer2.C.TIME_UNSET) {
                return false;
            }
            synchronized (this) {
                if (this.isReleased) {
                    return false;
                }
                sendMessageDelayed(android.os.Message.obtain(message), retryDelayMsFor);
                return true;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            java.lang.Throwable thExecuteProvisionRequest;
            com.google.android.exoplayer2.drm.DefaultDrmSession.RequestTask requestTask = (com.google.android.exoplayer2.drm.DefaultDrmSession.RequestTask) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    thExecuteProvisionRequest = com.google.android.exoplayer2.drm.DefaultDrmSession.this.callback.executeProvisionRequest(com.google.android.exoplayer2.drm.DefaultDrmSession.this.uuid, (com.google.android.exoplayer2.drm.ExoMediaDrm.ProvisionRequest) requestTask.request);
                } else {
                    if (i != 1) {
                        throw new java.lang.RuntimeException();
                    }
                    thExecuteProvisionRequest = com.google.android.exoplayer2.drm.DefaultDrmSession.this.callback.executeKeyRequest(com.google.android.exoplayer2.drm.DefaultDrmSession.this.uuid, (com.google.android.exoplayer2.drm.ExoMediaDrm.KeyRequest) requestTask.request);
                }
            } catch (com.google.android.exoplayer2.drm.MediaDrmCallbackException e2) {
                boolean zMaybeRetryRequest = maybeRetryRequest(message, e2);
                thExecuteProvisionRequest = e2;
                if (zMaybeRetryRequest) {
                    return;
                }
            } catch (java.lang.Exception e3) {
                com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.drm.DefaultDrmSession.TAG, "Key/provisioning request produced an unexpected exception. Not retrying.", e3);
                thExecuteProvisionRequest = e3;
            }
            com.google.android.exoplayer2.drm.DefaultDrmSession.this.loadErrorHandlingPolicy.onLoadTaskConcluded(requestTask.taskId);
            synchronized (this) {
                if (!this.isReleased) {
                    com.google.android.exoplayer2.drm.DefaultDrmSession.this.responseHandler.obtainMessage(message.what, android.util.Pair.create(requestTask.request, thExecuteProvisionRequest)).sendToTarget();
                }
            }
        }

        public void post(int i, java.lang.Object obj, boolean z) {
            obtainMessage(i, new com.google.android.exoplayer2.drm.DefaultDrmSession.RequestTask(com.google.android.exoplayer2.source.LoadEventInfo.getNewId(), z, android.os.SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void release() {
            removeCallbacksAndMessages(null);
            this.isReleased = true;
        }
    }

    public static final class RequestTask {
        public final boolean allowRetry;
        public int errorCount;
        public final java.lang.Object request;
        public final long startTimeMs;
        public final long taskId;

        public RequestTask(long j, boolean z, long j2, java.lang.Object obj) {
            this.taskId = j;
            this.allowRetry = z;
            this.startTimeMs = j2;
            this.request = obj;
        }
    }

    @android.annotation.SuppressLint({"HandlerLeak"})
    public class ResponseHandler extends android.os.Handler {
        public ResponseHandler(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            android.util.Pair pair = (android.util.Pair) message.obj;
            java.lang.Object obj = pair.first;
            java.lang.Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                com.google.android.exoplayer2.drm.DefaultDrmSession.this.onProvisionResponse(obj, obj2);
            } else {
                if (i != 1) {
                    return;
                }
                com.google.android.exoplayer2.drm.DefaultDrmSession.this.onKeyResponse(obj, obj2);
            }
        }
    }

    public static final class UnexpectedDrmSessionException extends java.io.IOException {
        public UnexpectedDrmSessionException(java.lang.Throwable th) {
            super(th);
        }
    }

    public DefaultDrmSession(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm exoMediaDrm, com.google.android.exoplayer2.drm.DefaultDrmSession.ProvisioningManager provisioningManager, com.google.android.exoplayer2.drm.DefaultDrmSession.ReferenceCountListener referenceCountListener, java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> list, int i, boolean z, boolean z2, byte[] bArr, java.util.HashMap<java.lang.String, java.lang.String> map, com.google.android.exoplayer2.drm.MediaDrmCallback mediaDrmCallback, android.os.Looper looper, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> listUnmodifiableList;
        if (i == 1 || i == 3) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr);
        }
        this.uuid = uuid;
        this.provisioningManager = provisioningManager;
        this.referenceCountListener = referenceCountListener;
        this.mediaDrm = exoMediaDrm;
        this.mode = i;
        this.playClearSamplesWithoutKeys = z;
        this.isPlaceholderSession = z2;
        if (bArr != null) {
            this.offlineLicenseKeySetId = bArr;
            listUnmodifiableList = null;
        } else {
            listUnmodifiableList = java.util.Collections.unmodifiableList((java.util.List) com.google.android.exoplayer2.util.Assertions.checkNotNull(list));
        }
        this.schemeDatas = listUnmodifiableList;
        this.keyRequestParameters = map;
        this.callback = mediaDrmCallback;
        this.eventDispatchers = new com.google.android.exoplayer2.util.CopyOnWriteMultiset<>();
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.state = 2;
        this.responseHandler = new com.google.android.exoplayer2.drm.DefaultDrmSession.ResponseHandler(looper);
    }

    private void dispatchEvent(com.google.android.exoplayer2.util.Consumer<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher> consumer) {
        java.util.Iterator<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher> it = this.eventDispatchers.elementSet().iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"sessionId"})
    private void doLicense(boolean z) {
        if (this.isPlaceholderSession) {
            return;
        }
        byte[] bArr = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(this.sessionId);
        int i = this.mode;
        if (i == 0 || i == 1) {
            if (this.offlineLicenseKeySetId == null) {
                postKeyRequest(bArr, 1, z);
                return;
            }
            if (this.state != 4 && !restoreKeys()) {
                return;
            }
            long licenseDurationRemainingSec = getLicenseDurationRemainingSec();
            if (this.mode != 0 || licenseDurationRemainingSec > 60) {
                if (licenseDurationRemainingSec <= 0) {
                    onError(new com.google.android.exoplayer2.drm.KeysExpiredException(), 2);
                    return;
                } else {
                    this.state = 4;
                    dispatchEvent(new com.google.android.exoplayer2.util.Consumer() { // from class: e.c.a.a.h2.r
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(java.lang.Object obj) {
                            ((com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher) obj).drmKeysRestored();
                        }
                    });
                    return;
                }
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder(88);
            sb.append("Offline license has expired or will expire soon. Remaining seconds: ");
            sb.append(licenseDurationRemainingSec);
            com.google.android.exoplayer2.util.Log.d(TAG, sb.toString());
        } else {
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                com.google.android.exoplayer2.util.Assertions.checkNotNull(this.offlineLicenseKeySetId);
                com.google.android.exoplayer2.util.Assertions.checkNotNull(this.sessionId);
                postKeyRequest(this.offlineLicenseKeySetId, 3, z);
                return;
            }
            if (this.offlineLicenseKeySetId != null && !restoreKeys()) {
                return;
            }
        }
        postKeyRequest(bArr, 2, z);
    }

    private long getLicenseDurationRemainingSec() {
        if (!com.google.android.exoplayer2.C.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        android.util.Pair pair = (android.util.Pair) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.drm.WidevineUtil.getLicenseDurationRemainingSec(this));
        return java.lang.Math.min(((java.lang.Long) pair.first).longValue(), ((java.lang.Long) pair.second).longValue());
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    private boolean isOpen() {
        int i = this.state;
        return i == 3 || i == 4;
    }

    private void onError(final java.lang.Exception exc, int i) {
        this.lastException = new com.google.android.exoplayer2.drm.DrmSession.DrmSessionException(exc, com.google.android.exoplayer2.drm.DrmUtil.getErrorCodeForMediaDrmException(exc, i));
        com.google.android.exoplayer2.util.Log.e(TAG, "DRM session error", exc);
        dispatchEvent(new com.google.android.exoplayer2.util.Consumer() { // from class: e.c.a.a.h2.c
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(java.lang.Object obj) {
                ((com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher) obj).drmSessionManagerError(exc);
            }
        });
        if (this.state != 4) {
            this.state = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyResponse(java.lang.Object obj, java.lang.Object obj2) {
        com.google.android.exoplayer2.util.Consumer<com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher> consumer;
        if (obj == this.currentKeyRequest && isOpen()) {
            this.currentKeyRequest = null;
            if (obj2 instanceof java.lang.Exception) {
                onKeysError((java.lang.Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.mode == 3) {
                    this.mediaDrm.provideKeyResponse((byte[]) com.google.android.exoplayer2.util.Util.castNonNull(this.offlineLicenseKeySetId), bArr);
                    consumer = new com.google.android.exoplayer2.util.Consumer() { // from class: e.c.a.a.h2.s
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(java.lang.Object obj3) {
                            ((com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher) obj3).drmKeysRemoved();
                        }
                    };
                } else {
                    byte[] bArrProvideKeyResponse = this.mediaDrm.provideKeyResponse(this.sessionId, bArr);
                    if ((this.mode == 2 || (this.mode == 0 && this.offlineLicenseKeySetId != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                        this.offlineLicenseKeySetId = bArrProvideKeyResponse;
                    }
                    this.state = 4;
                    consumer = new com.google.android.exoplayer2.util.Consumer() { // from class: e.c.a.a.h2.a
                        @Override // com.google.android.exoplayer2.util.Consumer
                        public final void accept(java.lang.Object obj3) {
                            ((com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher) obj3).drmKeysLoaded();
                        }
                    };
                }
                dispatchEvent(consumer);
            } catch (java.lang.Exception e2) {
                onKeysError(e2, true);
            }
        }
    }

    private void onKeysError(java.lang.Exception exc, boolean z) {
        if (exc instanceof android.media.NotProvisionedException) {
            this.provisioningManager.provisionRequired(this);
        } else {
            onError(exc, z ? 1 : 2);
        }
    }

    private void onKeysRequired() {
        if (this.mode == 0 && this.state == 4) {
            com.google.android.exoplayer2.util.Util.castNonNull(this.sessionId);
            doLicense(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProvisionResponse(java.lang.Object obj, java.lang.Object obj2) {
        if (obj == this.currentProvisionRequest) {
            if (this.state == 2 || isOpen()) {
                this.currentProvisionRequest = null;
                if (obj2 instanceof java.lang.Exception) {
                    this.provisioningManager.onProvisionError((java.lang.Exception) obj2, false);
                    return;
                }
                try {
                    this.mediaDrm.provideProvisionResponse((byte[]) obj2);
                    this.provisioningManager.onProvisionCompleted();
                } catch (java.lang.Exception e2) {
                    this.provisioningManager.onProvisionError(e2, true);
                }
            }
        }
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    private boolean openInternal() {
        if (isOpen()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.mediaDrm.openSession();
            this.sessionId = bArrOpenSession;
            this.cryptoConfig = this.mediaDrm.createCryptoConfig(bArrOpenSession);
            final int i = 3;
            this.state = 3;
            dispatchEvent(new com.google.android.exoplayer2.util.Consumer() { // from class: e.c.a.a.h2.b
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher) obj).drmSessionAcquired(i);
                }
            });
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.sessionId);
            return true;
        } catch (android.media.NotProvisionedException unused) {
            this.provisioningManager.provisionRequired(this);
            return false;
        } catch (java.lang.Exception e2) {
            onError(e2, 1);
            return false;
        }
    }

    private void postKeyRequest(byte[] bArr, int i, boolean z) {
        try {
            this.currentKeyRequest = this.mediaDrm.getKeyRequest(bArr, this.schemeDatas, i, this.keyRequestParameters);
            ((com.google.android.exoplayer2.drm.DefaultDrmSession.RequestHandler) com.google.android.exoplayer2.util.Util.castNonNull(this.requestHandler)).post(1, com.google.android.exoplayer2.util.Assertions.checkNotNull(this.currentKeyRequest), z);
        } catch (java.lang.Exception e2) {
            onKeysError(e2, true);
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    private boolean restoreKeys() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (java.lang.Exception e2) {
            onError(e2, 1);
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void acquire(com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        int i = this.referenceCount;
        if (i < 0) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(51);
            sb.append("Session reference count less than zero: ");
            sb.append(i);
            com.google.android.exoplayer2.util.Log.e(TAG, sb.toString());
            this.referenceCount = 0;
        }
        if (eventDispatcher != null) {
            this.eventDispatchers.add(eventDispatcher);
        }
        int i2 = this.referenceCount + 1;
        this.referenceCount = i2;
        if (i2 == 1) {
            com.google.android.exoplayer2.util.Assertions.checkState(this.state == 2);
            android.os.HandlerThread handlerThread = new android.os.HandlerThread("ExoPlayer:DrmRequestHandler");
            this.requestHandlerThread = handlerThread;
            handlerThread.start();
            this.requestHandler = new com.google.android.exoplayer2.drm.DefaultDrmSession.RequestHandler(this.requestHandlerThread.getLooper());
            if (openInternal()) {
                doLicense(true);
            }
        } else if (eventDispatcher != null && isOpen() && this.eventDispatchers.count(eventDispatcher) == 1) {
            eventDispatcher.drmSessionAcquired(this.state);
        }
        this.referenceCountListener.onReferenceCountIncremented(this, this.referenceCount);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final com.google.android.exoplayer2.decoder.CryptoConfig getCryptoConfig() {
        return this.cryptoConfig;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final com.google.android.exoplayer2.drm.DrmSession.DrmSessionException getError() {
        if (this.state == 1) {
            return this.lastException;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public byte[] getOfflineLicenseKeySetId() {
        return this.offlineLicenseKeySetId;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final java.util.UUID getSchemeUuid() {
        return this.uuid;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.state;
    }

    public boolean hasSessionId(byte[] bArr) {
        return java.util.Arrays.equals(this.sessionId, bArr);
    }

    public void onMediaDrmEvent(int i) {
        if (i != 2) {
            return;
        }
        onKeysRequired();
    }

    public void onProvisionCompleted() {
        if (openInternal()) {
            doLicense(true);
        }
    }

    public void onProvisionError(java.lang.Exception exc, boolean z) {
        onError(exc, z ? 1 : 3);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean playClearSamplesWithoutKeys() {
        return this.playClearSamplesWithoutKeys;
    }

    public void provision() {
        this.currentProvisionRequest = this.mediaDrm.getProvisionRequest();
        ((com.google.android.exoplayer2.drm.DefaultDrmSession.RequestHandler) com.google.android.exoplayer2.util.Util.castNonNull(this.requestHandler)).post(0, com.google.android.exoplayer2.util.Assertions.checkNotNull(this.currentProvisionRequest), true);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public java.util.Map<java.lang.String, java.lang.String> queryKeyStatus() {
        byte[] bArr = this.sessionId;
        if (bArr == null) {
            return null;
        }
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void release(com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher) {
        int i = this.referenceCount;
        if (i <= 0) {
            com.google.android.exoplayer2.util.Log.e(TAG, "release() called on a session that's already fully released.");
            return;
        }
        int i2 = i - 1;
        this.referenceCount = i2;
        if (i2 == 0) {
            this.state = 0;
            ((com.google.android.exoplayer2.drm.DefaultDrmSession.ResponseHandler) com.google.android.exoplayer2.util.Util.castNonNull(this.responseHandler)).removeCallbacksAndMessages(null);
            ((com.google.android.exoplayer2.drm.DefaultDrmSession.RequestHandler) com.google.android.exoplayer2.util.Util.castNonNull(this.requestHandler)).release();
            this.requestHandler = null;
            ((android.os.HandlerThread) com.google.android.exoplayer2.util.Util.castNonNull(this.requestHandlerThread)).quit();
            this.requestHandlerThread = null;
            this.cryptoConfig = null;
            this.lastException = null;
            this.currentKeyRequest = null;
            this.currentProvisionRequest = null;
            byte[] bArr = this.sessionId;
            if (bArr != null) {
                this.mediaDrm.closeSession(bArr);
                this.sessionId = null;
            }
        }
        if (eventDispatcher != null) {
            this.eventDispatchers.remove(eventDispatcher);
            if (this.eventDispatchers.count(eventDispatcher) == 0) {
                eventDispatcher.drmSessionReleased();
            }
        }
        this.referenceCountListener.onReferenceCountDecremented(this, this.referenceCount);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean requiresSecureDecoder(java.lang.String str) {
        return this.mediaDrm.requiresSecureDecoder((byte[]) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.sessionId), str);
    }
}
