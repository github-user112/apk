package android.support.v4.media.session;

/* loaded from: classes.dex */
public class MediaSessionCompat {
    public static final java.lang.String ACTION_ARGUMENT_CAPTIONING_ENABLED = "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED";
    public static final java.lang.String ACTION_ARGUMENT_EXTRAS = "android.support.v4.media.session.action.ARGUMENT_EXTRAS";
    public static final java.lang.String ACTION_ARGUMENT_MEDIA_ID = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID";
    public static final java.lang.String ACTION_ARGUMENT_QUERY = "android.support.v4.media.session.action.ARGUMENT_QUERY";
    public static final java.lang.String ACTION_ARGUMENT_RATING = "android.support.v4.media.session.action.ARGUMENT_RATING";
    public static final java.lang.String ACTION_ARGUMENT_REPEAT_MODE = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE";
    public static final java.lang.String ACTION_ARGUMENT_SHUFFLE_MODE = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE";
    public static final java.lang.String ACTION_ARGUMENT_URI = "android.support.v4.media.session.action.ARGUMENT_URI";
    public static final java.lang.String ACTION_FLAG_AS_INAPPROPRIATE = "android.support.v4.media.session.action.FLAG_AS_INAPPROPRIATE";
    public static final java.lang.String ACTION_FOLLOW = "android.support.v4.media.session.action.FOLLOW";
    public static final java.lang.String ACTION_PLAY_FROM_URI = "android.support.v4.media.session.action.PLAY_FROM_URI";
    public static final java.lang.String ACTION_PREPARE = "android.support.v4.media.session.action.PREPARE";
    public static final java.lang.String ACTION_PREPARE_FROM_MEDIA_ID = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID";
    public static final java.lang.String ACTION_PREPARE_FROM_SEARCH = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH";
    public static final java.lang.String ACTION_PREPARE_FROM_URI = "android.support.v4.media.session.action.PREPARE_FROM_URI";
    public static final java.lang.String ACTION_SET_CAPTIONING_ENABLED = "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED";
    public static final java.lang.String ACTION_SET_RATING = "android.support.v4.media.session.action.SET_RATING";
    public static final java.lang.String ACTION_SET_REPEAT_MODE = "android.support.v4.media.session.action.SET_REPEAT_MODE";
    public static final java.lang.String ACTION_SET_SHUFFLE_MODE = "android.support.v4.media.session.action.SET_SHUFFLE_MODE";
    public static final java.lang.String ACTION_SKIP_AD = "android.support.v4.media.session.action.SKIP_AD";
    public static final java.lang.String ACTION_UNFOLLOW = "android.support.v4.media.session.action.UNFOLLOW";
    public static final java.lang.String ARGUMENT_MEDIA_ATTRIBUTE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE";
    public static final java.lang.String ARGUMENT_MEDIA_ATTRIBUTE_VALUE = "android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE_VALUE";
    public static final java.lang.String DATA_CALLING_PACKAGE = "data_calling_pkg";
    public static final java.lang.String DATA_CALLING_PID = "data_calling_pid";
    public static final java.lang.String DATA_CALLING_UID = "data_calling_uid";
    public static final java.lang.String DATA_EXTRAS = "data_extras";
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
    public static final int FLAG_HANDLES_QUEUE_COMMANDS = 4;
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
    public static final java.lang.String KEY_EXTRA_BINDER = "android.support.v4.media.session.EXTRA_BINDER";
    public static final java.lang.String KEY_SESSION_TOKEN2_BUNDLE = "android.support.v4.media.session.SESSION_TOKEN2_BUNDLE";
    public static final java.lang.String KEY_TOKEN = "android.support.v4.media.session.TOKEN";
    public static final int MAX_BITMAP_SIZE_IN_DP = 320;
    public static final int MEDIA_ATTRIBUTE_ALBUM = 1;
    public static final int MEDIA_ATTRIBUTE_ARTIST = 0;
    public static final int MEDIA_ATTRIBUTE_PLAYLIST = 2;
    public static final java.lang.String TAG = "MediaSessionCompat";
    public static int sMaxBitmapSize;
    public final java.util.ArrayList<android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener> mActiveListeners;
    public final android.support.v4.media.session.MediaControllerCompat mController;
    public final android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl mImpl;

    public static abstract class Callback {
        public android.support.v4.media.session.MediaSessionCompat.Callback.CallbackHandler mCallbackHandler = null;
        public final java.lang.Object mCallbackObj;
        public boolean mMediaPlayPauseKeyPending;
        public java.lang.ref.WeakReference<android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl> mSessionImpl;

        public class CallbackHandler extends android.os.Handler {
            public static final int MSG_MEDIA_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT = 1;

            public CallbackHandler(android.os.Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(android.os.Message message) {
                if (message.what == 1) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.handleMediaPlayPauseKeySingleTapIfPending((d.n.a) message.obj);
                }
            }
        }

        public class StubApi21 implements android.support.v4.media.session.MediaSessionCompatApi21.Callback {
            public StubApi21() {
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onCommand(java.lang.String str, android.os.Bundle bundle, android.os.ResultReceiver resultReceiver) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
                android.support.v4.media.session.MediaSessionCompat.Callback callback;
                android.support.v4.media.MediaDescriptionCompat description;
                try {
                    android.support.v4.media.session.MediaSessionCompat.QueueItem queueItem = null;
                    android.os.IBinder iBinderAsBinder = null;
                    queueItem = null;
                    if (str.equals(android.support.v4.media.session.MediaControllerCompat.COMMAND_GET_EXTRA_BINDER)) {
                        android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21 mediaSessionImplApi21 = (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21) android.support.v4.media.session.MediaSessionCompat.Callback.this.mSessionImpl.get();
                        if (mediaSessionImplApi21 != null) {
                            android.os.Bundle bundle2 = new android.os.Bundle();
                            android.support.v4.media.session.MediaSessionCompat.Token sessionToken = mediaSessionImplApi21.getSessionToken();
                            android.support.v4.media.session.IMediaSession extraBinder = sessionToken.getExtraBinder();
                            if (extraBinder != null) {
                                iBinderAsBinder = extraBinder.asBinder();
                            }
                            d.b.k.r.f0(bundle2, android.support.v4.media.session.MediaSessionCompat.KEY_EXTRA_BINDER, iBinderAsBinder);
                            bundle2.putBundle(android.support.v4.media.session.MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE, sessionToken.getSessionToken2Bundle());
                            resultReceiver.send(0, bundle2);
                            return;
                        }
                        return;
                    }
                    if (str.equals(android.support.v4.media.session.MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM)) {
                        android.support.v4.media.session.MediaSessionCompat.Callback.this.onAddQueueItem((android.support.v4.media.MediaDescriptionCompat) bundle.getParcelable(android.support.v4.media.session.MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION));
                        return;
                    }
                    if (str.equals(android.support.v4.media.session.MediaControllerCompat.COMMAND_ADD_QUEUE_ITEM_AT)) {
                        android.support.v4.media.session.MediaSessionCompat.Callback.this.onAddQueueItem((android.support.v4.media.MediaDescriptionCompat) bundle.getParcelable(android.support.v4.media.session.MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION), bundle.getInt(android.support.v4.media.session.MediaControllerCompat.COMMAND_ARGUMENT_INDEX));
                        return;
                    }
                    if (str.equals(android.support.v4.media.session.MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM)) {
                        callback = android.support.v4.media.session.MediaSessionCompat.Callback.this;
                        description = (android.support.v4.media.MediaDescriptionCompat) bundle.getParcelable(android.support.v4.media.session.MediaControllerCompat.COMMAND_ARGUMENT_MEDIA_DESCRIPTION);
                    } else {
                        if (!str.equals(android.support.v4.media.session.MediaControllerCompat.COMMAND_REMOVE_QUEUE_ITEM_AT)) {
                            android.support.v4.media.session.MediaSessionCompat.Callback.this.onCommand(str, bundle, resultReceiver);
                            return;
                        }
                        android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21 mediaSessionImplApi212 = (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21) android.support.v4.media.session.MediaSessionCompat.Callback.this.mSessionImpl.get();
                        if (mediaSessionImplApi212 == null || mediaSessionImplApi212.mQueue == null) {
                            return;
                        }
                        int i = bundle.getInt(android.support.v4.media.session.MediaControllerCompat.COMMAND_ARGUMENT_INDEX, -1);
                        if (i >= 0 && i < mediaSessionImplApi212.mQueue.size()) {
                            queueItem = mediaSessionImplApi212.mQueue.get(i);
                        }
                        if (queueItem == null) {
                            return;
                        }
                        callback = android.support.v4.media.session.MediaSessionCompat.Callback.this;
                        description = queueItem.getDescription();
                    }
                    callback.onRemoveQueueItem(description);
                } catch (android.os.BadParcelableException unused) {
                    android.util.Log.e(android.support.v4.media.session.MediaSessionCompat.TAG, "Could not unparcel the extra data.");
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onCustomAction(java.lang.String str, android.os.Bundle bundle) {
                android.os.Bundle bundle2 = bundle.getBundle(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_EXTRAS);
                android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle2);
                if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_PLAY_FROM_URI)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onPlayFromUri((android.net.Uri) bundle.getParcelable(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_URI), bundle2);
                    return;
                }
                if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_PREPARE)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepare();
                    return;
                }
                if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepareFromMediaId(bundle.getString(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_MEDIA_ID), bundle2);
                    return;
                }
                if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_PREPARE_FROM_SEARCH)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepareFromSearch(bundle.getString(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_QUERY), bundle2);
                    return;
                }
                if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_PREPARE_FROM_URI)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepareFromUri((android.net.Uri) bundle.getParcelable(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_URI), bundle2);
                    return;
                }
                if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onSetCaptioningEnabled(bundle.getBoolean(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_CAPTIONING_ENABLED));
                    return;
                }
                if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_SET_REPEAT_MODE)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onSetRepeatMode(bundle.getInt(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_REPEAT_MODE));
                } else if (str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_SET_SHUFFLE_MODE)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onSetShuffleMode(bundle.getInt(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_SHUFFLE_MODE));
                } else if (!str.equals(android.support.v4.media.session.MediaSessionCompat.ACTION_SET_RATING)) {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onCustomAction(str, bundle);
                } else {
                    android.support.v4.media.session.MediaSessionCompat.Callback.this.onSetRating((android.support.v4.media.RatingCompat) bundle.getParcelable(android.support.v4.media.session.MediaSessionCompat.ACTION_ARGUMENT_RATING), bundle2);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onFastForward() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onFastForward();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public boolean onMediaButtonEvent(android.content.Intent intent) {
                return android.support.v4.media.session.MediaSessionCompat.Callback.this.onMediaButtonEvent(intent);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPause() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPause();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlay() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPlay();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlayFromMediaId(java.lang.String str, android.os.Bundle bundle) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPlayFromMediaId(str, bundle);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlayFromSearch(java.lang.String str, android.os.Bundle bundle) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPlayFromSearch(str, bundle);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onRewind() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onRewind();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSeekTo(long j) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onSeekTo(j);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSetRating(java.lang.Object obj) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onSetRating(android.support.v4.media.RatingCompat.fromRating(obj));
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSetRating(java.lang.Object obj, android.os.Bundle bundle) {
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToNext() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onSkipToNext();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToPrevious() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onSkipToPrevious();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToQueueItem(long j) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onSkipToQueueItem(j);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onStop() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onStop();
            }
        }

        public class StubApi23 extends android.support.v4.media.session.MediaSessionCompat.Callback.StubApi21 implements android.support.v4.media.session.MediaSessionCompatApi23.Callback {
            public StubApi23() {
                super();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi23.Callback
            public void onPlayFromUri(android.net.Uri uri, android.os.Bundle bundle) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPlayFromUri(uri, bundle);
            }
        }

        public class StubApi24 extends android.support.v4.media.session.MediaSessionCompat.Callback.StubApi23 implements android.support.v4.media.session.MediaSessionCompatApi24.Callback {
            public StubApi24() {
                super();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepare() {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepare();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepareFromMediaId(java.lang.String str, android.os.Bundle bundle) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepareFromMediaId(str, bundle);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepareFromSearch(java.lang.String str, android.os.Bundle bundle) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepareFromSearch(str, bundle);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi24.Callback
            public void onPrepareFromUri(android.net.Uri uri, android.os.Bundle bundle) {
                android.support.v4.media.session.MediaSessionCompat.Callback.this.onPrepareFromUri(uri, bundle);
            }
        }

        public Callback() {
            java.lang.Object objCreateCallback = null;
            int i = android.os.Build.VERSION.SDK_INT;
            if (i >= 24) {
                objCreateCallback = android.support.v4.media.session.MediaSessionCompatApi24.createCallback(new android.support.v4.media.session.MediaSessionCompat.Callback.StubApi24());
            } else if (i >= 23) {
                objCreateCallback = android.support.v4.media.session.MediaSessionCompatApi23.createCallback(new android.support.v4.media.session.MediaSessionCompat.Callback.StubApi23());
            } else if (i >= 21) {
                objCreateCallback = android.support.v4.media.session.MediaSessionCompatApi21.createCallback(new android.support.v4.media.session.MediaSessionCompat.Callback.StubApi21());
            }
            this.mCallbackObj = objCreateCallback;
        }

        public void handleMediaPlayPauseKeySingleTapIfPending(d.n.a aVar) {
            if (this.mMediaPlayPauseKeyPending) {
                this.mMediaPlayPauseKeyPending = false;
                this.mCallbackHandler.removeMessages(1);
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl mediaSessionImpl = this.mSessionImpl.get();
                if (mediaSessionImpl == null) {
                    return;
                }
                android.support.v4.media.session.PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                long actions = playbackState == null ? 0L : playbackState.getActions();
                boolean z = playbackState != null && playbackState.getState() == 3;
                boolean z2 = (516 & actions) != 0;
                boolean z3 = (actions & 514) != 0;
                mediaSessionImpl.setCurrentControllerInfo(aVar);
                if (z && z3) {
                    onPause();
                } else if (!z && z2) {
                    onPlay();
                }
                mediaSessionImpl.setCurrentControllerInfo(null);
            }
        }

        public void onAddQueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onAddQueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void onCommand(java.lang.String str, android.os.Bundle bundle, android.os.ResultReceiver resultReceiver) {
        }

        public void onCustomAction(java.lang.String str, android.os.Bundle bundle) {
        }

        public void onFastForward() {
        }

        public boolean onMediaButtonEvent(android.content.Intent intent) {
            android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl mediaSessionImpl;
            android.view.KeyEvent keyEvent;
            if (android.os.Build.VERSION.SDK_INT >= 27 || (mediaSessionImpl = this.mSessionImpl.get()) == null || this.mCallbackHandler == null || (keyEvent = (android.view.KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            d.n.a currentControllerInfo = mediaSessionImpl.getCurrentControllerInfo();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                handleMediaPlayPauseKeySingleTapIfPending(currentControllerInfo);
                return false;
            }
            if (keyEvent.getRepeatCount() > 0) {
                handleMediaPlayPauseKeySingleTapIfPending(currentControllerInfo);
            } else if (this.mMediaPlayPauseKeyPending) {
                this.mCallbackHandler.removeMessages(1);
                this.mMediaPlayPauseKeyPending = false;
                android.support.v4.media.session.PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                if (((playbackState == null ? 0L : playbackState.getActions()) & 32) != 0) {
                    onSkipToNext();
                }
            } else {
                this.mMediaPlayPauseKeyPending = true;
                android.support.v4.media.session.MediaSessionCompat.Callback.CallbackHandler callbackHandler = this.mCallbackHandler;
                callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(1, currentControllerInfo), android.view.ViewConfiguration.getDoubleTapTimeout());
            }
            return true;
        }

        public void onPause() {
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(java.lang.String str, android.os.Bundle bundle) {
        }

        public void onPlayFromSearch(java.lang.String str, android.os.Bundle bundle) {
        }

        public void onPlayFromUri(android.net.Uri uri, android.os.Bundle bundle) {
        }

        public void onPrepare() {
        }

        public void onPrepareFromMediaId(java.lang.String str, android.os.Bundle bundle) {
        }

        public void onPrepareFromSearch(java.lang.String str, android.os.Bundle bundle) {
        }

        public void onPrepareFromUri(android.net.Uri uri, android.os.Bundle bundle) {
        }

        public void onRemoveQueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @java.lang.Deprecated
        public void onRemoveQueueItemAt(int i) {
        }

        public void onRewind() {
        }

        public void onSeekTo(long j) {
        }

        public void onSetCaptioningEnabled(boolean z) {
        }

        public void onSetRating(android.support.v4.media.RatingCompat ratingCompat) {
        }

        public void onSetRating(android.support.v4.media.RatingCompat ratingCompat, android.os.Bundle bundle) {
        }

        public void onSetRepeatMode(int i) {
        }

        public void onSetShuffleMode(int i) {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onSkipToQueueItem(long j) {
        }

        public void onStop() {
        }

        public void setSessionImpl(android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl mediaSessionImpl, android.os.Handler handler) {
            this.mSessionImpl = new java.lang.ref.WeakReference<>(mediaSessionImpl);
            android.support.v4.media.session.MediaSessionCompat.Callback.CallbackHandler callbackHandler = this.mCallbackHandler;
            if (callbackHandler != null) {
                callbackHandler.removeCallbacksAndMessages(null);
            }
            this.mCallbackHandler = new android.support.v4.media.session.MediaSessionCompat.Callback.CallbackHandler(handler.getLooper());
        }
    }

    public interface MediaSessionImpl {
        java.lang.String getCallingPackage();

        d.n.a getCurrentControllerInfo();

        java.lang.Object getMediaSession();

        android.support.v4.media.session.PlaybackStateCompat getPlaybackState();

        java.lang.Object getRemoteControlClient();

        android.support.v4.media.session.MediaSessionCompat.Token getSessionToken();

        boolean isActive();

        void release();

        void sendSessionEvent(java.lang.String str, android.os.Bundle bundle);

        void setActive(boolean z);

        void setCallback(android.support.v4.media.session.MediaSessionCompat.Callback callback, android.os.Handler handler);

        void setCaptioningEnabled(boolean z);

        void setCurrentControllerInfo(d.n.a aVar);

        void setExtras(android.os.Bundle bundle);

        void setFlags(int i);

        void setMediaButtonReceiver(android.app.PendingIntent pendingIntent);

        void setMetadata(android.support.v4.media.MediaMetadataCompat mediaMetadataCompat);

        void setPlaybackState(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat);

        void setPlaybackToLocal(int i);

        void setPlaybackToRemote(d.n.e eVar);

        void setQueue(java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> list);

        void setQueueTitle(java.lang.CharSequence charSequence);

        void setRatingType(int i);

        void setRepeatMode(int i);

        void setSessionActivity(android.app.PendingIntent pendingIntent);

        void setShuffleMode(int i);
    }

    public static class MediaSessionImplApi18 extends android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase {
        public static boolean sIsMbrPendingIntentSupported = true;

        public MediaSessionImplApi18(android.content.Context context, java.lang.String str, android.content.ComponentName componentName, android.app.PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public int getRccTransportControlFlagsFromActions(long j) {
            int rccTransportControlFlagsFromActions = super.getRccTransportControlFlagsFromActions(j);
            return (j & 256) != 0 ? rccTransportControlFlagsFromActions | 256 : rccTransportControlFlagsFromActions;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public void registerMediaButtonEventReceiver(android.app.PendingIntent pendingIntent, android.content.ComponentName componentName) {
            if (sIsMbrPendingIntentSupported) {
                try {
                    this.mAudioManager.registerMediaButtonEventReceiver(pendingIntent);
                } catch (java.lang.NullPointerException unused) {
                    android.util.Log.w(android.support.v4.media.session.MediaSessionCompat.TAG, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                    sIsMbrPendingIntentSupported = false;
                }
            }
            if (sIsMbrPendingIntentSupported) {
                return;
            }
            super.registerMediaButtonEventReceiver(pendingIntent, componentName);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(android.support.v4.media.session.MediaSessionCompat.Callback callback, android.os.Handler handler) {
            super.setCallback(callback, handler);
            if (callback == null) {
                this.mRcc.setPlaybackPositionUpdateListener(null);
            } else {
                this.mRcc.setPlaybackPositionUpdateListener(new android.media.RemoteControlClient.OnPlaybackPositionUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18.1
                    @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
                    public void onPlaybackPositionUpdate(long j) {
                        android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18.this.postToHandler(18, -1, -1, java.lang.Long.valueOf(j), null);
                    }
                });
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public void setRccState(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat) {
            long position = playbackStateCompat.getPosition();
            float playbackSpeed = playbackStateCompat.getPlaybackSpeed();
            long lastPositionUpdateTime = playbackStateCompat.getLastPositionUpdateTime();
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            if (playbackStateCompat.getState() == 3) {
                long j = 0;
                if (position > 0) {
                    if (lastPositionUpdateTime > 0) {
                        j = jElapsedRealtime - lastPositionUpdateTime;
                        if (playbackSpeed > 0.0f && playbackSpeed != 1.0f) {
                            j = (long) (j * playbackSpeed);
                        }
                    }
                    position += j;
                }
            }
            this.mRcc.setPlaybackState(getRccStateFromState(playbackStateCompat.getState()), position, playbackSpeed);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public void unregisterMediaButtonEventReceiver(android.app.PendingIntent pendingIntent, android.content.ComponentName componentName) {
            if (sIsMbrPendingIntentSupported) {
                this.mAudioManager.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.unregisterMediaButtonEventReceiver(pendingIntent, componentName);
            }
        }
    }

    public static class MediaSessionImplApi19 extends android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18 {
        public MediaSessionImplApi19(android.content.Context context, java.lang.String str, android.content.ComponentName componentName, android.app.PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public android.media.RemoteControlClient.MetadataEditor buildRccMetadata(android.os.Bundle bundle) throws java.lang.IllegalArgumentException {
            android.media.RemoteControlClient.MetadataEditor metadataEditorBuildRccMetadata = super.buildRccMetadata(bundle);
            android.support.v4.media.session.PlaybackStateCompat playbackStateCompat = this.mState;
            if (((playbackStateCompat == null ? 0L : playbackStateCompat.getActions()) & 128) != 0) {
                metadataEditorBuildRccMetadata.addEditableKey(268435457);
            }
            if (bundle == null) {
                return metadataEditorBuildRccMetadata;
            }
            if (bundle.containsKey(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_YEAR)) {
                metadataEditorBuildRccMetadata.putLong(8, bundle.getLong(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_YEAR));
            }
            if (bundle.containsKey(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_RATING)) {
                metadataEditorBuildRccMetadata.putObject(101, (java.lang.Object) bundle.getParcelable(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_RATING));
            }
            if (bundle.containsKey(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_USER_RATING)) {
                metadataEditorBuildRccMetadata.putObject(268435457, (java.lang.Object) bundle.getParcelable(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_USER_RATING));
            }
            return metadataEditorBuildRccMetadata;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18, android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public int getRccTransportControlFlagsFromActions(long j) {
            int rccTransportControlFlagsFromActions = super.getRccTransportControlFlagsFromActions(j);
            return (j & 128) != 0 ? rccTransportControlFlagsFromActions | 512 : rccTransportControlFlagsFromActions;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18, android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(android.support.v4.media.session.MediaSessionCompat.Callback callback, android.os.Handler handler) {
            super.setCallback(callback, handler);
            if (callback == null) {
                this.mRcc.setMetadataUpdateListener(null);
            } else {
                this.mRcc.setMetadataUpdateListener(new android.media.RemoteControlClient.OnMetadataUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi19.1
                    @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
                    public void onMetadataUpdate(int i, java.lang.Object obj) {
                        if (i == 268435457 && (obj instanceof android.media.Rating)) {
                            android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi19.this.postToHandler(19, -1, -1, android.support.v4.media.RatingCompat.fromRating(obj), null);
                        }
                    }
                });
            }
        }
    }

    public static class MediaSessionImplApi21 implements android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl {
        public boolean mCaptioningEnabled;
        public boolean mDestroyed = false;
        public final android.os.RemoteCallbackList<android.support.v4.media.session.IMediaControllerCallback> mExtraControllerCallbacks = new android.os.RemoteCallbackList<>();
        public android.support.v4.media.MediaMetadataCompat mMetadata;
        public android.support.v4.media.session.PlaybackStateCompat mPlaybackState;
        public java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> mQueue;
        public int mRatingType;
        public int mRepeatMode;
        public final java.lang.Object mSessionObj;
        public int mShuffleMode;
        public final android.support.v4.media.session.MediaSessionCompat.Token mToken;

        public class ExtraSession extends android.support.v4.media.session.IMediaSession.Stub {
            public ExtraSession() {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItemAt(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void adjustVolume(int i, int i2, java.lang.String str) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void fastForward() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.os.Bundle getExtras() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.app.PendingIntent getLaunchPendingIntent() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.support.v4.media.MediaMetadataCompat getMetadata() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.lang.String getPackageName() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.support.v4.media.session.PlaybackStateCompat getPlaybackState() {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21 mediaSessionImplApi21 = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this;
                return android.support.v4.media.session.MediaSessionCompat.getStateWithUpdatedPosition(mediaSessionImplApi21.mPlaybackState, mediaSessionImplApi21.mMetadata);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> getQueue() {
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.lang.CharSequence getQueueTitle() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRatingType() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this.mRatingType;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this.mRepeatMode;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getShuffleMode() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this.mShuffleMode;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.lang.String getTag() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.support.v4.media.session.ParcelableVolumeInfo getVolumeAttributes() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this.mCaptioningEnabled;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromMediaId(java.lang.String str, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromSearch(java.lang.String str, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromUri(android.net.Uri uri, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromMediaId(java.lang.String str, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromSearch(java.lang.String str, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromUri(android.net.Uri uri, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rate(android.support.v4.media.RatingCompat ratingCompat) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rateWithExtras(android.support.v4.media.RatingCompat ratingCompat, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void registerCallbackListener(android.support.v4.media.session.IMediaControllerCallback iMediaControllerCallback) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21 mediaSessionImplApi21 = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this;
                if (mediaSessionImplApi21.mDestroyed) {
                    return;
                }
                java.lang.String callingPackage = mediaSessionImplApi21.getCallingPackage();
                if (callingPackage == null) {
                    callingPackage = "android.media.session.MediaController";
                }
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this.mExtraControllerCallbacks.register(iMediaControllerCallback, new d.n.a(callingPackage, android.os.Binder.getCallingPid(), android.os.Binder.getCallingUid()));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItemAt(int i) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rewind() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long j) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCommand(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCustomAction(java.lang.String str, android.os.Bundle bundle) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean sendMediaButton(android.view.KeyEvent keyEvent) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean z) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int i) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleMode(int i) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean z) {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setVolumeTo(int i, int i2, java.lang.String str) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void skipToQueueItem(long j) {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() {
                throw new java.lang.AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void unregisterCallbackListener(android.support.v4.media.session.IMediaControllerCallback iMediaControllerCallback) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.this.mExtraControllerCallbacks.unregister(iMediaControllerCallback);
            }
        }

        public MediaSessionImplApi21(android.content.Context context, java.lang.String str, android.os.Bundle bundle) {
            this.mSessionObj = android.support.v4.media.session.MediaSessionCompatApi21.createSession(context, str);
            this.mToken = new android.support.v4.media.session.MediaSessionCompat.Token(android.support.v4.media.session.MediaSessionCompatApi21.getSessionToken(this.mSessionObj), new android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.ExtraSession(), bundle);
        }

        public MediaSessionImplApi21(java.lang.Object obj) {
            this.mSessionObj = android.support.v4.media.session.MediaSessionCompatApi21.verifySession(obj);
            this.mToken = new android.support.v4.media.session.MediaSessionCompat.Token(android.support.v4.media.session.MediaSessionCompatApi21.getSessionToken(this.mSessionObj), new android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21.ExtraSession());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public java.lang.String getCallingPackage() {
            if (android.os.Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return android.support.v4.media.session.MediaSessionCompatApi24.getCallingPackage(this.mSessionObj);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public d.n.a getCurrentControllerInfo() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public java.lang.Object getMediaSession() {
            return this.mSessionObj;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public android.support.v4.media.session.PlaybackStateCompat getPlaybackState() {
            return this.mPlaybackState;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public java.lang.Object getRemoteControlClient() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public android.support.v4.media.session.MediaSessionCompat.Token getSessionToken() {
            return this.mToken;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public boolean isActive() {
            return android.support.v4.media.session.MediaSessionCompatApi21.isActive(this.mSessionObj);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void release() {
            this.mDestroyed = true;
            android.support.v4.media.session.MediaSessionCompatApi21.release(this.mSessionObj);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void sendSessionEvent(java.lang.String str, android.os.Bundle bundle) {
            if (android.os.Build.VERSION.SDK_INT < 23) {
                for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                    try {
                        ((android.support.v4.media.session.IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onEvent(str, bundle);
                    } catch (android.os.RemoteException unused) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
            android.support.v4.media.session.MediaSessionCompatApi21.sendSessionEvent(this.mSessionObj, str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setActive(boolean z) {
            android.support.v4.media.session.MediaSessionCompatApi21.setActive(this.mSessionObj, z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(android.support.v4.media.session.MediaSessionCompat.Callback callback, android.os.Handler handler) {
            android.support.v4.media.session.MediaSessionCompatApi21.setCallback(this.mSessionObj, callback == null ? null : callback.mCallbackObj, handler);
            if (callback != null) {
                callback.setSessionImpl(this, handler);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCaptioningEnabled(boolean z) {
            if (this.mCaptioningEnabled != z) {
                this.mCaptioningEnabled = z;
                for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                    try {
                        ((android.support.v4.media.session.IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onCaptioningEnabledChanged(z);
                    } catch (android.os.RemoteException unused) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(d.n.a aVar) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setExtras(android.os.Bundle bundle) {
            android.support.v4.media.session.MediaSessionCompatApi21.setExtras(this.mSessionObj, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setFlags(int i) {
            android.support.v4.media.session.MediaSessionCompatApi21.setFlags(this.mSessionObj, i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMediaButtonReceiver(android.app.PendingIntent pendingIntent) {
            android.support.v4.media.session.MediaSessionCompatApi21.setMediaButtonReceiver(this.mSessionObj, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMetadata(android.support.v4.media.MediaMetadataCompat mediaMetadataCompat) {
            this.mMetadata = mediaMetadataCompat;
            android.support.v4.media.session.MediaSessionCompatApi21.setMetadata(this.mSessionObj, mediaMetadataCompat == null ? null : mediaMetadataCompat.getMediaMetadata());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackState(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat) {
            this.mPlaybackState = playbackStateCompat;
            for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onPlaybackStateChanged(playbackStateCompat);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mExtraControllerCallbacks.finishBroadcast();
            android.support.v4.media.session.MediaSessionCompatApi21.setPlaybackState(this.mSessionObj, playbackStateCompat == null ? null : playbackStateCompat.getPlaybackState());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToLocal(int i) {
            android.support.v4.media.session.MediaSessionCompatApi21.setPlaybackToLocal(this.mSessionObj, i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToRemote(d.n.e eVar) {
            throw null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueue(java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> list) {
            java.util.ArrayList arrayList;
            this.mQueue = list;
            if (list != null) {
                arrayList = new java.util.ArrayList();
                java.util.Iterator<android.support.v4.media.session.MediaSessionCompat.QueueItem> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getQueueItem());
                }
            } else {
                arrayList = null;
            }
            android.support.v4.media.session.MediaSessionCompatApi21.setQueue(this.mSessionObj, arrayList);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueueTitle(java.lang.CharSequence charSequence) {
            android.support.v4.media.session.MediaSessionCompatApi21.setQueueTitle(this.mSessionObj, charSequence);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRatingType(int i) {
            if (android.os.Build.VERSION.SDK_INT < 22) {
                this.mRatingType = i;
            } else {
                android.support.v4.media.session.MediaSessionCompatApi22.setRatingType(this.mSessionObj, i);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRepeatMode(int i) {
            if (this.mRepeatMode != i) {
                this.mRepeatMode = i;
                for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                    try {
                        ((android.support.v4.media.session.IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onRepeatModeChanged(i);
                    } catch (android.os.RemoteException unused) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setSessionActivity(android.app.PendingIntent pendingIntent) {
            android.support.v4.media.session.MediaSessionCompatApi21.setSessionActivity(this.mSessionObj, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setShuffleMode(int i) {
            if (this.mShuffleMode != i) {
                this.mShuffleMode = i;
                for (int iBeginBroadcast = this.mExtraControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                    try {
                        ((android.support.v4.media.session.IMediaControllerCallback) this.mExtraControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onShuffleModeChanged(i);
                    } catch (android.os.RemoteException unused) {
                    }
                }
                this.mExtraControllerCallbacks.finishBroadcast();
            }
        }
    }

    public static class MediaSessionImplApi28 extends android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21 {
        public MediaSessionImplApi28(android.content.Context context, java.lang.String str, android.os.Bundle bundle) {
            super(context, str, bundle);
        }

        public MediaSessionImplApi28(java.lang.Object obj) {
            super(obj);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public final d.n.a getCurrentControllerInfo() {
            return new d.n.a(((android.media.session.MediaSession) this.mSessionObj).getCurrentControllerInfo());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(d.n.a aVar) {
        }
    }

    public static class MediaSessionImplBase implements android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl {
        public static final int RCC_PLAYSTATE_NONE = 0;
        public final android.media.AudioManager mAudioManager;
        public volatile android.support.v4.media.session.MediaSessionCompat.Callback mCallback;
        public boolean mCaptioningEnabled;
        public final android.content.Context mContext;
        public android.os.Bundle mExtras;
        public int mFlags;
        public android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.MessageHandler mHandler;
        public int mLocalStream;
        public final android.content.ComponentName mMediaButtonReceiverComponentName;
        public final android.app.PendingIntent mMediaButtonReceiverIntent;
        public android.support.v4.media.MediaMetadataCompat mMetadata;
        public final java.lang.String mPackageName;
        public java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> mQueue;
        public java.lang.CharSequence mQueueTitle;
        public int mRatingType;
        public final android.media.RemoteControlClient mRcc;
        public d.n.a mRemoteUserInfo;
        public int mRepeatMode;
        public android.app.PendingIntent mSessionActivity;
        public int mShuffleMode;
        public android.support.v4.media.session.PlaybackStateCompat mState;
        public final android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.MediaSessionStub mStub;
        public final java.lang.String mTag;
        public final android.support.v4.media.session.MediaSessionCompat.Token mToken;
        public d.n.e mVolumeProvider;
        public int mVolumeType;
        public final java.lang.Object mLock = new java.lang.Object();
        public final android.os.RemoteCallbackList<android.support.v4.media.session.IMediaControllerCallback> mControllerCallbacks = new android.os.RemoteCallbackList<>();
        public boolean mDestroyed = false;
        public boolean mIsActive = false;
        public boolean mIsMbrRegistered = false;
        public boolean mIsRccRegistered = false;
        public d.n.e.a mVolumeCallback = new d.n.e.a() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.1
            @Override // d.n.e.a
            public void onVolumeChanged(d.n.e eVar) {
                if (eVar != null) {
                    return;
                }
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase mediaSessionImplBase = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this;
                int i = mediaSessionImplBase.mVolumeType;
                int i2 = mediaSessionImplBase.mLocalStream;
                throw null;
            }
        };

        public static final class Command {
            public final java.lang.String command;
            public final android.os.Bundle extras;
            public final android.os.ResultReceiver stub;

            public Command(java.lang.String str, android.os.Bundle bundle, android.os.ResultReceiver resultReceiver) {
                this.command = str;
                this.extras = bundle;
                this.stub = resultReceiver;
            }
        }

        public class MediaSessionStub extends android.support.v4.media.session.IMediaSession.Stub {
            public MediaSessionStub() {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat) {
                postToHandler(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void addQueueItemAt(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat, int i) {
                postToHandler(26, mediaDescriptionCompat, i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void adjustVolume(int i, int i2, java.lang.String str) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.adjustVolume(i, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void fastForward() {
                postToHandler(16);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.os.Bundle getExtras() {
                android.os.Bundle bundle;
                synchronized (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mLock) {
                    bundle = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mExtras;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                long j;
                synchronized (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mLock) {
                    j = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mFlags;
                }
                return j;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.app.PendingIntent getLaunchPendingIntent() {
                android.app.PendingIntent pendingIntent;
                synchronized (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mLock) {
                    pendingIntent = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mSessionActivity;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.support.v4.media.MediaMetadataCompat getMetadata() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mMetadata;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.lang.String getPackageName() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mPackageName;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.support.v4.media.session.PlaybackStateCompat getPlaybackState() {
                android.support.v4.media.session.PlaybackStateCompat playbackStateCompat;
                android.support.v4.media.MediaMetadataCompat mediaMetadataCompat;
                synchronized (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mLock) {
                    playbackStateCompat = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mState;
                    mediaMetadataCompat = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mMetadata;
                }
                return android.support.v4.media.session.MediaSessionCompat.getStateWithUpdatedPosition(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> getQueue() {
                java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> list;
                synchronized (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mLock) {
                    list = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mQueue;
                }
                return list;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.lang.CharSequence getQueueTitle() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mQueueTitle;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRatingType() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mRatingType;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mRepeatMode;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getShuffleMode() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mShuffleMode;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public java.lang.String getTag() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mTag;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public android.support.v4.media.session.ParcelableVolumeInfo getVolumeAttributes() {
                int i;
                int i2;
                int streamMaxVolume;
                int streamVolume;
                synchronized (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mLock) {
                    i = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mVolumeType;
                    i2 = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mLocalStream;
                    if (i == 2) {
                        throw null;
                    }
                    streamMaxVolume = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mAudioManager.getStreamMaxVolume(i2);
                    streamVolume = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mAudioManager.getStreamVolume(i2);
                }
                return new android.support.v4.media.session.ParcelableVolumeInfo(i, i2, 2, streamMaxVolume, streamVolume);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isCaptioningEnabled() {
                return android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mCaptioningEnabled;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                return (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mFlags & 2) != 0;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() {
                postToHandler(14);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() {
                postToHandler(12);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() {
                postToHandler(7);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromMediaId(java.lang.String str, android.os.Bundle bundle) {
                postToHandler(8, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromSearch(java.lang.String str, android.os.Bundle bundle) {
                postToHandler(9, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromUri(android.net.Uri uri, android.os.Bundle bundle) {
                postToHandler(10, uri, bundle);
            }

            public void postToHandler(int i) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.postToHandler(i, 0, 0, null, null);
            }

            public void postToHandler(int i, int i2) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.postToHandler(i, i2, 0, null, null);
            }

            public void postToHandler(int i, java.lang.Object obj) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.postToHandler(i, 0, 0, obj, null);
            }

            public void postToHandler(int i, java.lang.Object obj, int i2) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.postToHandler(i, i2, 0, obj, null);
            }

            public void postToHandler(int i, java.lang.Object obj, android.os.Bundle bundle) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.postToHandler(i, 0, 0, obj, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() {
                postToHandler(3);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromMediaId(java.lang.String str, android.os.Bundle bundle) {
                postToHandler(4, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromSearch(java.lang.String str, android.os.Bundle bundle) {
                postToHandler(5, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepareFromUri(android.net.Uri uri, android.os.Bundle bundle) {
                postToHandler(6, uri, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() {
                postToHandler(15);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rate(android.support.v4.media.RatingCompat ratingCompat) {
                postToHandler(19, ratingCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rateWithExtras(android.support.v4.media.RatingCompat ratingCompat, android.os.Bundle bundle) {
                postToHandler(31, ratingCompat, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void registerCallbackListener(android.support.v4.media.session.IMediaControllerCallback iMediaControllerCallback) {
                if (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mDestroyed) {
                    try {
                        iMediaControllerCallback.onSessionDestroyed();
                    } catch (java.lang.Exception unused) {
                    }
                } else {
                    android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mControllerCallbacks.register(iMediaControllerCallback, new d.n.a("android.media.session.MediaController", android.os.Binder.getCallingPid(), android.os.Binder.getCallingUid()));
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat) {
                postToHandler(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void removeQueueItemAt(int i) {
                postToHandler(28, i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rewind() {
                postToHandler(17);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long j) {
                postToHandler(18, java.lang.Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCommand(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) {
                postToHandler(1, new android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.Command(str, bundle, resultReceiverWrapper.mResultReceiver));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCustomAction(java.lang.String str, android.os.Bundle bundle) {
                postToHandler(20, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean sendMediaButton(android.view.KeyEvent keyEvent) {
                boolean z = (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mFlags & 1) != 0;
                if (z) {
                    postToHandler(21, keyEvent);
                }
                return z;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setCaptioningEnabled(boolean z) {
                postToHandler(29, java.lang.Boolean.valueOf(z));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int i) {
                postToHandler(23, i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleMode(int i) {
                postToHandler(30, i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean z) {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setVolumeTo(int i, int i2, java.lang.String str) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.setVolumeTo(i, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void skipToQueueItem(long j) {
                postToHandler(11, java.lang.Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() {
                postToHandler(13);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void unregisterCallbackListener(android.support.v4.media.session.IMediaControllerCallback iMediaControllerCallback) {
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mControllerCallbacks.unregister(iMediaControllerCallback);
            }
        }

        public class MessageHandler extends android.os.Handler {
            public static final int KEYCODE_MEDIA_PAUSE = 127;
            public static final int KEYCODE_MEDIA_PLAY = 126;
            public static final int MSG_ADD_QUEUE_ITEM = 25;
            public static final int MSG_ADD_QUEUE_ITEM_AT = 26;
            public static final int MSG_ADJUST_VOLUME = 2;
            public static final int MSG_COMMAND = 1;
            public static final int MSG_CUSTOM_ACTION = 20;
            public static final int MSG_FAST_FORWARD = 16;
            public static final int MSG_MEDIA_BUTTON = 21;
            public static final int MSG_NEXT = 14;
            public static final int MSG_PAUSE = 12;
            public static final int MSG_PLAY = 7;
            public static final int MSG_PLAY_MEDIA_ID = 8;
            public static final int MSG_PLAY_SEARCH = 9;
            public static final int MSG_PLAY_URI = 10;
            public static final int MSG_PREPARE = 3;
            public static final int MSG_PREPARE_MEDIA_ID = 4;
            public static final int MSG_PREPARE_SEARCH = 5;
            public static final int MSG_PREPARE_URI = 6;
            public static final int MSG_PREVIOUS = 15;
            public static final int MSG_RATE = 19;
            public static final int MSG_RATE_EXTRA = 31;
            public static final int MSG_REMOVE_QUEUE_ITEM = 27;
            public static final int MSG_REMOVE_QUEUE_ITEM_AT = 28;
            public static final int MSG_REWIND = 17;
            public static final int MSG_SEEK_TO = 18;
            public static final int MSG_SET_CAPTIONING_ENABLED = 29;
            public static final int MSG_SET_REPEAT_MODE = 23;
            public static final int MSG_SET_SHUFFLE_MODE = 30;
            public static final int MSG_SET_VOLUME = 22;
            public static final int MSG_SKIP_TO_ITEM = 11;
            public static final int MSG_STOP = 13;

            public MessageHandler(android.os.Looper looper) {
                super(looper);
            }

            private void onMediaButtonEvent(android.view.KeyEvent keyEvent, android.support.v4.media.session.MediaSessionCompat.Callback callback) {
                if (keyEvent == null || keyEvent.getAction() != 0) {
                    return;
                }
                android.support.v4.media.session.PlaybackStateCompat playbackStateCompat = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mState;
                long actions = playbackStateCompat == null ? 0L : playbackStateCompat.getActions();
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 79) {
                    if (keyCode == 126) {
                        if ((actions & 4) != 0) {
                            callback.onPlay();
                            return;
                        }
                        return;
                    }
                    if (keyCode == 127) {
                        if ((actions & 2) != 0) {
                            callback.onPause();
                            return;
                        }
                        return;
                    }
                    switch (keyCode) {
                        case 86:
                            if ((actions & 1) != 0) {
                                callback.onStop();
                                break;
                            }
                            break;
                        case 87:
                            if ((actions & 32) != 0) {
                                callback.onSkipToNext();
                                break;
                            }
                            break;
                        case 88:
                            if ((actions & 16) != 0) {
                                callback.onSkipToPrevious();
                                break;
                            }
                            break;
                        case 89:
                            if ((actions & 8) != 0) {
                                callback.onRewind();
                                break;
                            }
                            break;
                        case 90:
                            if ((actions & 64) != 0) {
                                callback.onFastForward();
                                break;
                            }
                            break;
                    }
                }
                android.util.Log.w(android.support.v4.media.session.MediaSessionCompat.TAG, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already");
            }

            @Override // android.os.Handler
            public void handleMessage(android.os.Message message) {
                android.support.v4.media.MediaDescriptionCompat description;
                android.support.v4.media.session.MediaSessionCompat.Callback callback = android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mCallback;
                if (callback == null) {
                    return;
                }
                android.os.Bundle data = message.getData();
                android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(data);
                android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.setCurrentControllerInfo(new d.n.a(data.getString(android.support.v4.media.session.MediaSessionCompat.DATA_CALLING_PACKAGE), data.getInt(android.support.v4.media.session.MediaSessionCompat.DATA_CALLING_PID), data.getInt(android.support.v4.media.session.MediaSessionCompat.DATA_CALLING_UID)));
                android.os.Bundle bundle = data.getBundle(android.support.v4.media.session.MediaSessionCompat.DATA_EXTRAS);
                android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle);
                try {
                    switch (message.what) {
                        case 1:
                            android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.Command command = (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.Command) message.obj;
                            callback.onCommand(command.command, command.extras, command.stub);
                            break;
                        case 2:
                            android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.adjustVolume(message.arg1, 0);
                            break;
                        case 3:
                            callback.onPrepare();
                            break;
                        case 4:
                            callback.onPrepareFromMediaId((java.lang.String) message.obj, bundle);
                            break;
                        case 5:
                            callback.onPrepareFromSearch((java.lang.String) message.obj, bundle);
                            break;
                        case 6:
                            callback.onPrepareFromUri((android.net.Uri) message.obj, bundle);
                            break;
                        case 7:
                            callback.onPlay();
                            break;
                        case 8:
                            callback.onPlayFromMediaId((java.lang.String) message.obj, bundle);
                            break;
                        case 9:
                            callback.onPlayFromSearch((java.lang.String) message.obj, bundle);
                            break;
                        case 10:
                            callback.onPlayFromUri((android.net.Uri) message.obj, bundle);
                            break;
                        case 11:
                            callback.onSkipToQueueItem(((java.lang.Long) message.obj).longValue());
                            break;
                        case 12:
                            callback.onPause();
                            break;
                        case 13:
                            callback.onStop();
                            break;
                        case 14:
                            callback.onSkipToNext();
                            break;
                        case 15:
                            callback.onSkipToPrevious();
                            break;
                        case 16:
                            callback.onFastForward();
                            break;
                        case 17:
                            callback.onRewind();
                            break;
                        case 18:
                            callback.onSeekTo(((java.lang.Long) message.obj).longValue());
                            break;
                        case 19:
                            callback.onSetRating((android.support.v4.media.RatingCompat) message.obj);
                            break;
                        case 20:
                            callback.onCustomAction((java.lang.String) message.obj, bundle);
                            break;
                        case 21:
                            android.view.KeyEvent keyEvent = (android.view.KeyEvent) message.obj;
                            android.content.Intent intent = new android.content.Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!callback.onMediaButtonEvent(intent)) {
                                onMediaButtonEvent(keyEvent, callback);
                                break;
                            }
                            break;
                        case 22:
                            android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.setVolumeTo(message.arg1, 0);
                            break;
                        case 23:
                            callback.onSetRepeatMode(message.arg1);
                            break;
                        case 25:
                            callback.onAddQueueItem((android.support.v4.media.MediaDescriptionCompat) message.obj);
                            break;
                        case 26:
                            callback.onAddQueueItem((android.support.v4.media.MediaDescriptionCompat) message.obj, message.arg1);
                            break;
                        case 27:
                            description = (android.support.v4.media.MediaDescriptionCompat) message.obj;
                            callback.onRemoveQueueItem(description);
                            break;
                        case 28:
                            if (android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mQueue != null) {
                                android.support.v4.media.session.MediaSessionCompat.QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mQueue.size()) ? null : android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.mQueue.get(message.arg1);
                                if (queueItem != null) {
                                    description = queueItem.getDescription();
                                    callback.onRemoveQueueItem(description);
                                    break;
                                }
                            }
                            break;
                        case 29:
                            callback.onSetCaptioningEnabled(((java.lang.Boolean) message.obj).booleanValue());
                            break;
                        case 30:
                            callback.onSetShuffleMode(message.arg1);
                            break;
                        case 31:
                            callback.onSetRating((android.support.v4.media.RatingCompat) message.obj, bundle);
                            break;
                    }
                } finally {
                    android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.this.setCurrentControllerInfo(null);
                }
            }
        }

        public MediaSessionImplBase(android.content.Context context, java.lang.String str, android.content.ComponentName componentName, android.app.PendingIntent pendingIntent) {
            if (componentName == null) {
                throw new java.lang.IllegalArgumentException("MediaButtonReceiver component may not be null.");
            }
            this.mContext = context;
            this.mPackageName = context.getPackageName();
            this.mAudioManager = (android.media.AudioManager) context.getSystemService("audio");
            this.mTag = str;
            this.mMediaButtonReceiverComponentName = componentName;
            this.mMediaButtonReceiverIntent = pendingIntent;
            this.mStub = new android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.MediaSessionStub();
            this.mToken = new android.support.v4.media.session.MediaSessionCompat.Token(this.mStub);
            this.mRatingType = 0;
            this.mVolumeType = 1;
            this.mLocalStream = 3;
            this.mRcc = new android.media.RemoteControlClient(pendingIntent);
        }

        private void sendCaptioningEnabled(boolean z) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onCaptioningEnabledChanged(z);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendEvent(java.lang.String str, android.os.Bundle bundle) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onEvent(str, bundle);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendExtras(android.os.Bundle bundle) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onExtrasChanged(bundle);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendMetadata(android.support.v4.media.MediaMetadataCompat mediaMetadataCompat) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onMetadataChanged(mediaMetadataCompat);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendQueue(java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> list) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onQueueChanged(list);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendQueueTitle(java.lang.CharSequence charSequence) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onQueueTitleChanged(charSequence);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendRepeatMode(int i) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onRepeatModeChanged(i);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendSessionDestroyed() {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onSessionDestroyed();
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
            this.mControllerCallbacks.kill();
        }

        private void sendShuffleMode(int i) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onShuffleModeChanged(i);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        private void sendState(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onPlaybackStateChanged(playbackStateCompat);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        public void adjustVolume(int i, int i2) {
            if (this.mVolumeType == 2) {
                return;
            }
            this.mAudioManager.adjustStreamVolume(this.mLocalStream, i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x001d A[PHI: r2
  0x001d: PHI (r2v30 android.graphics.Bitmap) = (r2v3 android.graphics.Bitmap), (r2v33 android.graphics.Bitmap) binds: [B:14:0x0037, B:8:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.media.RemoteControlClient.MetadataEditor buildRccMetadata(android.os.Bundle r7) throws java.lang.IllegalArgumentException {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.buildRccMetadata(android.os.Bundle):android.media.RemoteControlClient$MetadataEditor");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public java.lang.String getCallingPackage() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public d.n.a getCurrentControllerInfo() {
            d.n.a aVar;
            synchronized (this.mLock) {
                aVar = this.mRemoteUserInfo;
            }
            return aVar;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public java.lang.Object getMediaSession() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public android.support.v4.media.session.PlaybackStateCompat getPlaybackState() {
            android.support.v4.media.session.PlaybackStateCompat playbackStateCompat;
            synchronized (this.mLock) {
                playbackStateCompat = this.mState;
            }
            return playbackStateCompat;
        }

        public int getRccStateFromState(int i) {
            switch (i) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        public int getRccTransportControlFlagsFromActions(long j) {
            int i = (1 & j) != 0 ? 32 : 0;
            if ((2 & j) != 0) {
                i |= 16;
            }
            if ((4 & j) != 0) {
                i |= 4;
            }
            if ((8 & j) != 0) {
                i |= 2;
            }
            if ((16 & j) != 0) {
                i |= 1;
            }
            if ((32 & j) != 0) {
                i |= 128;
            }
            if ((64 & j) != 0) {
                i |= 64;
            }
            return (j & 512) != 0 ? i | 8 : i;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public java.lang.Object getRemoteControlClient() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public android.support.v4.media.session.MediaSessionCompat.Token getSessionToken() {
            return this.mToken;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public boolean isActive() {
            return this.mIsActive;
        }

        public void postToHandler(int i, int i2, int i3, java.lang.Object obj, android.os.Bundle bundle) {
            synchronized (this.mLock) {
                if (this.mHandler != null) {
                    android.os.Message messageObtainMessage = this.mHandler.obtainMessage(i, i2, i3, obj);
                    android.os.Bundle bundle2 = new android.os.Bundle();
                    bundle2.putString(android.support.v4.media.session.MediaSessionCompat.DATA_CALLING_PACKAGE, "android.media.session.MediaController");
                    bundle2.putInt(android.support.v4.media.session.MediaSessionCompat.DATA_CALLING_PID, android.os.Binder.getCallingPid());
                    bundle2.putInt(android.support.v4.media.session.MediaSessionCompat.DATA_CALLING_UID, android.os.Binder.getCallingUid());
                    if (bundle != null) {
                        bundle2.putBundle(android.support.v4.media.session.MediaSessionCompat.DATA_EXTRAS, bundle);
                    }
                    messageObtainMessage.setData(bundle2);
                    messageObtainMessage.sendToTarget();
                }
            }
        }

        public void registerMediaButtonEventReceiver(android.app.PendingIntent pendingIntent, android.content.ComponentName componentName) {
            this.mAudioManager.registerMediaButtonEventReceiver(componentName);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void release() {
            this.mIsActive = false;
            this.mDestroyed = true;
            update();
            sendSessionDestroyed();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void sendSessionEvent(java.lang.String str, android.os.Bundle bundle) {
            sendEvent(str, bundle);
        }

        public void sendVolumeInfoChanged(android.support.v4.media.session.ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int iBeginBroadcast = this.mControllerCallbacks.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.IMediaControllerCallback) this.mControllerCallbacks.getBroadcastItem(iBeginBroadcast)).onVolumeInfoChanged(parcelableVolumeInfo);
                } catch (android.os.RemoteException unused) {
                }
            }
            this.mControllerCallbacks.finishBroadcast();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setActive(boolean z) {
            if (z == this.mIsActive) {
                return;
            }
            this.mIsActive = z;
            if (update()) {
                setMetadata(this.mMetadata);
                setPlaybackState(this.mState);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCallback(android.support.v4.media.session.MediaSessionCompat.Callback callback, android.os.Handler handler) {
            this.mCallback = callback;
            if (callback != null) {
                if (handler == null) {
                    handler = new android.os.Handler();
                }
                synchronized (this.mLock) {
                    if (this.mHandler != null) {
                        this.mHandler.removeCallbacksAndMessages(null);
                    }
                    this.mHandler = new android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.MessageHandler(handler.getLooper());
                    this.mCallback.setSessionImpl(this, handler);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCaptioningEnabled(boolean z) {
            if (this.mCaptioningEnabled != z) {
                this.mCaptioningEnabled = z;
                sendCaptioningEnabled(z);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(d.n.a aVar) {
            synchronized (this.mLock) {
                this.mRemoteUserInfo = aVar;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setExtras(android.os.Bundle bundle) {
            this.mExtras = bundle;
            sendExtras(bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setFlags(int i) {
            synchronized (this.mLock) {
                this.mFlags = i;
            }
            update();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMediaButtonReceiver(android.app.PendingIntent pendingIntent) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setMetadata(android.support.v4.media.MediaMetadataCompat mediaMetadataCompat) {
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new android.support.v4.media.MediaMetadataCompat.Builder(mediaMetadataCompat, android.support.v4.media.session.MediaSessionCompat.sMaxBitmapSize).build();
            }
            synchronized (this.mLock) {
                this.mMetadata = mediaMetadataCompat;
            }
            sendMetadata(mediaMetadataCompat);
            if (this.mIsActive) {
                buildRccMetadata(mediaMetadataCompat == null ? null : mediaMetadataCompat.getBundle()).apply();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackState(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat) {
            synchronized (this.mLock) {
                this.mState = playbackStateCompat;
            }
            sendState(playbackStateCompat);
            if (this.mIsActive) {
                if (playbackStateCompat == null) {
                    this.mRcc.setPlaybackState(0);
                    this.mRcc.setTransportControlFlags(0);
                } else {
                    setRccState(playbackStateCompat);
                    this.mRcc.setTransportControlFlags(getRccTransportControlFlagsFromActions(playbackStateCompat.getActions()));
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToLocal(int i) {
            this.mLocalStream = i;
            this.mVolumeType = 1;
            int i2 = this.mVolumeType;
            int i3 = this.mLocalStream;
            sendVolumeInfoChanged(new android.support.v4.media.session.ParcelableVolumeInfo(i2, i3, 2, this.mAudioManager.getStreamMaxVolume(i3), this.mAudioManager.getStreamVolume(this.mLocalStream)));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToRemote(d.n.e eVar) {
            if (eVar == null) {
                throw new java.lang.IllegalArgumentException("volumeProvider may not be null");
            }
            this.mVolumeType = 2;
            this.mVolumeProvider = eVar;
            throw null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueue(java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> list) {
            this.mQueue = list;
            sendQueue(list);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setQueueTitle(java.lang.CharSequence charSequence) {
            this.mQueueTitle = charSequence;
            sendQueueTitle(charSequence);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRatingType(int i) {
            this.mRatingType = i;
        }

        public void setRccState(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat) {
            this.mRcc.setPlaybackState(getRccStateFromState(playbackStateCompat.getState()));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setRepeatMode(int i) {
            if (this.mRepeatMode != i) {
                this.mRepeatMode = i;
                sendRepeatMode(i);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setSessionActivity(android.app.PendingIntent pendingIntent) {
            synchronized (this.mLock) {
                this.mSessionActivity = pendingIntent;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setShuffleMode(int i) {
            if (this.mShuffleMode != i) {
                this.mShuffleMode = i;
                sendShuffleMode(i);
            }
        }

        public void setVolumeTo(int i, int i2) {
            if (this.mVolumeType == 2) {
                return;
            }
            this.mAudioManager.setStreamVolume(this.mLocalStream, i, i2);
        }

        public void unregisterMediaButtonEventReceiver(android.app.PendingIntent pendingIntent, android.content.ComponentName componentName) {
            this.mAudioManager.unregisterMediaButtonEventReceiver(componentName);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x005b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean update() {
            /*
                r4 = this;
                boolean r0 = r4.mIsActive
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L4a
                boolean r0 = r4.mIsMbrRegistered
                if (r0 != 0) goto L19
                int r0 = r4.mFlags
                r0 = r0 & r1
                if (r0 == 0) goto L19
                android.app.PendingIntent r0 = r4.mMediaButtonReceiverIntent
                android.content.ComponentName r3 = r4.mMediaButtonReceiverComponentName
                r4.registerMediaButtonEventReceiver(r0, r3)
                r4.mIsMbrRegistered = r1
                goto L2b
            L19:
                boolean r0 = r4.mIsMbrRegistered
                if (r0 == 0) goto L2b
                int r0 = r4.mFlags
                r0 = r0 & r1
                if (r0 != 0) goto L2b
                android.app.PendingIntent r0 = r4.mMediaButtonReceiverIntent
                android.content.ComponentName r3 = r4.mMediaButtonReceiverComponentName
                r4.unregisterMediaButtonEventReceiver(r0, r3)
                r4.mIsMbrRegistered = r2
            L2b:
                boolean r0 = r4.mIsRccRegistered
                if (r0 != 0) goto L3f
                int r0 = r4.mFlags
                r0 = r0 & 2
                if (r0 == 0) goto L3f
                android.media.AudioManager r0 = r4.mAudioManager
                android.media.RemoteControlClient r2 = r4.mRcc
                r0.registerRemoteControlClient(r2)
                r4.mIsRccRegistered = r1
                goto L6a
            L3f:
                boolean r0 = r4.mIsRccRegistered
                if (r0 == 0) goto L69
                int r0 = r4.mFlags
                r0 = r0 & 2
                if (r0 != 0) goto L69
                goto L5b
            L4a:
                boolean r0 = r4.mIsMbrRegistered
                if (r0 == 0) goto L57
                android.app.PendingIntent r0 = r4.mMediaButtonReceiverIntent
                android.content.ComponentName r1 = r4.mMediaButtonReceiverComponentName
                r4.unregisterMediaButtonEventReceiver(r0, r1)
                r4.mIsMbrRegistered = r2
            L57:
                boolean r0 = r4.mIsRccRegistered
                if (r0 == 0) goto L69
            L5b:
                android.media.RemoteControlClient r0 = r4.mRcc
                r0.setPlaybackState(r2)
                android.media.AudioManager r0 = r4.mAudioManager
                android.media.RemoteControlClient r1 = r4.mRcc
                r0.unregisterRemoteControlClient(r1)
                r4.mIsRccRegistered = r2
            L69:
                r1 = 0
            L6a:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.update():boolean");
        }
    }

    public interface OnActiveChangeListener {
        void onActiveChanged();
    }

    public static final class QueueItem implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<android.support.v4.media.session.MediaSessionCompat.QueueItem> CREATOR = new android.os.Parcelable.Creator<android.support.v4.media.session.MediaSessionCompat.QueueItem>() { // from class: android.support.v4.media.session.MediaSessionCompat.QueueItem.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.session.MediaSessionCompat.QueueItem createFromParcel(android.os.Parcel parcel) {
                return new android.support.v4.media.session.MediaSessionCompat.QueueItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.session.MediaSessionCompat.QueueItem[] newArray(int i) {
                return new android.support.v4.media.session.MediaSessionCompat.QueueItem[i];
            }
        };
        public static final int UNKNOWN_ID = -1;
        public final android.support.v4.media.MediaDescriptionCompat mDescription;
        public final long mId;
        public java.lang.Object mItem;

        public QueueItem(android.os.Parcel parcel) {
            this.mDescription = android.support.v4.media.MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.mId = parcel.readLong();
        }

        public QueueItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat, long j) {
            this(null, mediaDescriptionCompat, j);
        }

        public QueueItem(java.lang.Object obj, android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new java.lang.IllegalArgumentException("Description cannot be null.");
            }
            if (j == -1) {
                throw new java.lang.IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.mDescription = mediaDescriptionCompat;
            this.mId = j;
            this.mItem = obj;
        }

        public static android.support.v4.media.session.MediaSessionCompat.QueueItem fromQueueItem(java.lang.Object obj) {
            if (obj == null || android.os.Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new android.support.v4.media.session.MediaSessionCompat.QueueItem(obj, android.support.v4.media.MediaDescriptionCompat.fromMediaDescription(android.support.v4.media.session.MediaSessionCompatApi21.QueueItem.getDescription(obj)), android.support.v4.media.session.MediaSessionCompatApi21.QueueItem.getQueueId(obj));
        }

        public static java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> fromQueueItemList(java.util.List<?> list) {
            if (list == null || android.os.Build.VERSION.SDK_INT < 21) {
                return null;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(fromQueueItem(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public android.support.v4.media.MediaDescriptionCompat getDescription() {
            return this.mDescription;
        }

        public long getQueueId() {
            return this.mId;
        }

        public java.lang.Object getQueueItem() {
            if (this.mItem != null || android.os.Build.VERSION.SDK_INT < 21) {
                return this.mItem;
            }
            java.lang.Object objCreateItem = android.support.v4.media.session.MediaSessionCompatApi21.QueueItem.createItem(this.mDescription.getMediaDescription(), this.mId);
            this.mItem = objCreateItem;
            return objCreateItem;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("MediaSession.QueueItem {Description=");
            sbO.append(this.mDescription);
            sbO.append(", Id=");
            sbO.append(this.mId);
            sbO.append(" }");
            return sbO.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            this.mDescription.writeToParcel(parcel, i);
            parcel.writeLong(this.mId);
        }
    }

    public static final class ResultReceiverWrapper implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper> CREATOR = new android.os.Parcelable.Creator<android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper>() { // from class: android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper createFromParcel(android.os.Parcel parcel) {
                return new android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper[] newArray(int i) {
                return new android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper[i];
            }
        };
        public android.os.ResultReceiver mResultReceiver;

        public ResultReceiverWrapper(android.os.Parcel parcel) {
            this.mResultReceiver = (android.os.ResultReceiver) android.os.ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        public ResultReceiverWrapper(android.os.ResultReceiver resultReceiver) {
            this.mResultReceiver = resultReceiver;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            this.mResultReceiver.writeToParcel(parcel, i);
        }
    }

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface SessionFlags {
    }

    public static final class Token implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<android.support.v4.media.session.MediaSessionCompat.Token> CREATOR = new android.os.Parcelable.Creator<android.support.v4.media.session.MediaSessionCompat.Token>() { // from class: android.support.v4.media.session.MediaSessionCompat.Token.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.session.MediaSessionCompat.Token createFromParcel(android.os.Parcel parcel) {
                return new android.support.v4.media.session.MediaSessionCompat.Token(android.os.Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.session.MediaSessionCompat.Token[] newArray(int i) {
                return new android.support.v4.media.session.MediaSessionCompat.Token[i];
            }
        };
        public android.support.v4.media.session.IMediaSession mExtraBinder;
        public final java.lang.Object mInner;
        public android.os.Bundle mSessionToken2Bundle;

        public Token(java.lang.Object obj) {
            this(obj, null, null);
        }

        public Token(java.lang.Object obj, android.support.v4.media.session.IMediaSession iMediaSession) {
            this(obj, iMediaSession, null);
        }

        public Token(java.lang.Object obj, android.support.v4.media.session.IMediaSession iMediaSession, android.os.Bundle bundle) {
            this.mInner = obj;
            this.mExtraBinder = iMediaSession;
            this.mSessionToken2Bundle = bundle;
        }

        public static android.support.v4.media.session.MediaSessionCompat.Token fromBundle(android.os.Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            android.support.v4.media.session.IMediaSession iMediaSessionAsInterface = android.support.v4.media.session.IMediaSession.Stub.asInterface(d.b.k.r.x(bundle, android.support.v4.media.session.MediaSessionCompat.KEY_EXTRA_BINDER));
            android.os.Bundle bundle2 = bundle.getBundle(android.support.v4.media.session.MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE);
            android.support.v4.media.session.MediaSessionCompat.Token token = (android.support.v4.media.session.MediaSessionCompat.Token) bundle.getParcelable(android.support.v4.media.session.MediaSessionCompat.KEY_TOKEN);
            if (token == null) {
                return null;
            }
            return new android.support.v4.media.session.MediaSessionCompat.Token(token.mInner, iMediaSessionAsInterface, bundle2);
        }

        public static android.support.v4.media.session.MediaSessionCompat.Token fromToken(java.lang.Object obj) {
            return fromToken(obj, null);
        }

        public static android.support.v4.media.session.MediaSessionCompat.Token fromToken(java.lang.Object obj, android.support.v4.media.session.IMediaSession iMediaSession) {
            if (obj == null || android.os.Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new android.support.v4.media.session.MediaSessionCompat.Token(android.support.v4.media.session.MediaSessionCompatApi21.verifyToken(obj), iMediaSession);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof android.support.v4.media.session.MediaSessionCompat.Token)) {
                return false;
            }
            java.lang.Object obj2 = this.mInner;
            java.lang.Object obj3 = ((android.support.v4.media.session.MediaSessionCompat.Token) obj).mInner;
            if (obj2 == null) {
                return obj3 == null;
            }
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public android.support.v4.media.session.IMediaSession getExtraBinder() {
            return this.mExtraBinder;
        }

        public android.os.Bundle getSessionToken2Bundle() {
            return this.mSessionToken2Bundle;
        }

        public java.lang.Object getToken() {
            return this.mInner;
        }

        public int hashCode() {
            java.lang.Object obj = this.mInner;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public void setExtraBinder(android.support.v4.media.session.IMediaSession iMediaSession) {
            this.mExtraBinder = iMediaSession;
        }

        public void setSessionToken2Bundle(android.os.Bundle bundle) {
            this.mSessionToken2Bundle = bundle;
        }

        public android.os.Bundle toBundle() throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putParcelable(android.support.v4.media.session.MediaSessionCompat.KEY_TOKEN, this);
            android.support.v4.media.session.IMediaSession iMediaSession = this.mExtraBinder;
            if (iMediaSession != null) {
                d.b.k.r.f0(bundle, android.support.v4.media.session.MediaSessionCompat.KEY_EXTRA_BINDER, iMediaSession.asBinder());
            }
            android.os.Bundle bundle2 = this.mSessionToken2Bundle;
            if (bundle2 != null) {
                bundle.putBundle(android.support.v4.media.session.MediaSessionCompat.KEY_SESSION_TOKEN2_BUNDLE, bundle2);
            }
            return bundle;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((android.os.Parcelable) this.mInner, i);
            } else {
                parcel.writeStrongBinder((android.os.IBinder) this.mInner);
            }
        }
    }

    public MediaSessionCompat(android.content.Context context, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl mediaSessionImpl) {
        this.mActiveListeners = new java.util.ArrayList<>();
        this.mImpl = mediaSessionImpl;
        if (android.os.Build.VERSION.SDK_INT >= 21 && !android.support.v4.media.session.MediaSessionCompatApi21.hasCallback(mediaSessionImpl.getMediaSession())) {
            setCallback(new android.support.v4.media.session.MediaSessionCompat.Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.3
            });
        }
        this.mController = new android.support.v4.media.session.MediaControllerCompat(context, this);
    }

    public MediaSessionCompat(android.content.Context context, java.lang.String str) {
        this(context, str, null, null);
    }

    public MediaSessionCompat(android.content.Context context, java.lang.String str, android.content.ComponentName componentName, android.app.PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaSessionCompat(android.content.Context r3, java.lang.String r4, android.content.ComponentName r5, android.app.PendingIntent r6, android.os.Bundle r7) {
        /*
            r2 = this;
            r2.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2.mActiveListeners = r0
            if (r3 == 0) goto La5
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 != 0) goto L9d
            if (r5 != 0) goto L21
            android.content.ComponentName r5 = d.n.f.a.a(r3)
            if (r5 != 0) goto L21
            java.lang.String r0 = "MediaSessionCompat"
            java.lang.String r1 = "Couldn't find a unique registered media button receiver in the given context."
            android.util.Log.w(r0, r1)
        L21:
            if (r5 == 0) goto L34
            if (r6 != 0) goto L34
            android.content.Intent r6 = new android.content.Intent
            java.lang.String r0 = "android.intent.action.MEDIA_BUTTON"
            r6.<init>(r0)
            r6.setComponent(r5)
            r0 = 0
            android.app.PendingIntent r6 = android.app.PendingIntent.getBroadcast(r3, r0, r6, r0)
        L34:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 28
            if (r0 < r1) goto L4f
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi28 r5 = new android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi28
            r5.<init>(r3, r4, r7)
            r2.mImpl = r5
            android.support.v4.media.session.MediaSessionCompat$1 r4 = new android.support.v4.media.session.MediaSessionCompat$1
            r4.<init>()
        L46:
            r2.setCallback(r4)
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImpl r4 = r2.mImpl
            r4.setMediaButtonReceiver(r6)
            goto L7c
        L4f:
            r1 = 21
            if (r0 < r1) goto L60
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21 r5 = new android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi21
            r5.<init>(r3, r4, r7)
            r2.mImpl = r5
            android.support.v4.media.session.MediaSessionCompat$2 r4 = new android.support.v4.media.session.MediaSessionCompat$2
            r4.<init>()
            goto L46
        L60:
            r7 = 19
            if (r0 < r7) goto L6c
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi19 r7 = new android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi19
            r7.<init>(r3, r4, r5, r6)
        L69:
            r2.mImpl = r7
            goto L7c
        L6c:
            r7 = 18
            if (r0 < r7) goto L76
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi18 r7 = new android.support.v4.media.session.MediaSessionCompat$MediaSessionImplApi18
            r7.<init>(r3, r4, r5, r6)
            goto L69
        L76:
            android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase r7 = new android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase
            r7.<init>(r3, r4, r5, r6)
            goto L69
        L7c:
            android.support.v4.media.session.MediaControllerCompat r4 = new android.support.v4.media.session.MediaControllerCompat
            r4.<init>(r3, r2)
            r2.mController = r4
            int r4 = android.support.v4.media.session.MediaSessionCompat.sMaxBitmapSize
            if (r4 != 0) goto L9c
            r4 = 1
            r5 = 1134559232(0x43a00000, float:320.0)
            android.content.res.Resources r3 = r3.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            float r3 = android.util.TypedValue.applyDimension(r4, r5, r3)
            r4 = 1056964608(0x3f000000, float:0.5)
            float r3 = r3 + r4
            int r3 = (int) r3
            android.support.v4.media.session.MediaSessionCompat.sMaxBitmapSize = r3
        L9c:
            return
        L9d:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "tag must not be null or empty"
            r3.<init>(r4)
            throw r3
        La5:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "context must not be null"
            r3.<init>(r4)
            goto Lae
        Lad:
            throw r3
        Lae:
            goto Lad
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.<init>(android.content.Context, java.lang.String, android.content.ComponentName, android.app.PendingIntent, android.os.Bundle):void");
    }

    public MediaSessionCompat(android.content.Context context, java.lang.String str, android.os.Bundle bundle) {
        this(context, str, null, null, bundle);
    }

    public static void ensureClassLoader(android.os.Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(android.support.v4.media.session.MediaSessionCompat.class.getClassLoader());
        }
    }

    public static android.support.v4.media.session.MediaSessionCompat fromMediaSession(android.content.Context context, java.lang.Object obj) {
        if (context == null || obj == null || android.os.Build.VERSION.SDK_INT < 21) {
            return null;
        }
        return new android.support.v4.media.session.MediaSessionCompat(context, new android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21(obj));
    }

    public static android.support.v4.media.session.PlaybackStateCompat getStateWithUpdatedPosition(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat, android.support.v4.media.MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long j = -1;
        if (playbackStateCompat.getPosition() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.getState() != 3 && playbackStateCompat.getState() != 4 && playbackStateCompat.getState() != 5) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.getLastPositionUpdateTime() <= 0) {
            return playbackStateCompat;
        }
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        long position = playbackStateCompat.getPosition() + ((long) (playbackStateCompat.getPlaybackSpeed() * (jElapsedRealtime - r0)));
        if (mediaMetadataCompat != null && mediaMetadataCompat.containsKey(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_DURATION)) {
            j = mediaMetadataCompat.getLong(android.support.v4.media.MediaMetadataCompat.METADATA_KEY_DURATION);
        }
        return new android.support.v4.media.session.PlaybackStateCompat.Builder(playbackStateCompat).setState(playbackStateCompat.getState(), (j < 0 || position <= j) ? position < 0 ? 0L : position : j, playbackStateCompat.getPlaybackSpeed(), jElapsedRealtime).build();
    }

    public void addOnActiveChangeListener(android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener onActiveChangeListener) {
        if (onActiveChangeListener == null) {
            throw new java.lang.IllegalArgumentException("Listener may not be null");
        }
        this.mActiveListeners.add(onActiveChangeListener);
    }

    public java.lang.String getCallingPackage() {
        return this.mImpl.getCallingPackage();
    }

    public android.support.v4.media.session.MediaControllerCompat getController() {
        return this.mController;
    }

    public final d.n.a getCurrentControllerInfo() {
        return this.mImpl.getCurrentControllerInfo();
    }

    public java.lang.Object getMediaSession() {
        return this.mImpl.getMediaSession();
    }

    public java.lang.Object getRemoteControlClient() {
        return this.mImpl.getRemoteControlClient();
    }

    public android.support.v4.media.session.MediaSessionCompat.Token getSessionToken() {
        return this.mImpl.getSessionToken();
    }

    public boolean isActive() {
        return this.mImpl.isActive();
    }

    public void release() {
        this.mImpl.release();
    }

    public void removeOnActiveChangeListener(android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener onActiveChangeListener) {
        if (onActiveChangeListener == null) {
            throw new java.lang.IllegalArgumentException("Listener may not be null");
        }
        this.mActiveListeners.remove(onActiveChangeListener);
    }

    public void sendSessionEvent(java.lang.String str, android.os.Bundle bundle) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("event cannot be null or empty");
        }
        this.mImpl.sendSessionEvent(str, bundle);
    }

    public void setActive(boolean z) {
        this.mImpl.setActive(z);
        java.util.Iterator<android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener> it = this.mActiveListeners.iterator();
        while (it.hasNext()) {
            it.next().onActiveChanged();
        }
    }

    public void setCallback(android.support.v4.media.session.MediaSessionCompat.Callback callback) {
        setCallback(callback, null);
    }

    public void setCallback(android.support.v4.media.session.MediaSessionCompat.Callback callback, android.os.Handler handler) {
        if (callback == null) {
            this.mImpl.setCallback(null, null);
            return;
        }
        android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl mediaSessionImpl = this.mImpl;
        if (handler == null) {
            handler = new android.os.Handler();
        }
        mediaSessionImpl.setCallback(callback, handler);
    }

    public void setCaptioningEnabled(boolean z) {
        this.mImpl.setCaptioningEnabled(z);
    }

    public void setExtras(android.os.Bundle bundle) {
        this.mImpl.setExtras(bundle);
    }

    public void setFlags(int i) {
        this.mImpl.setFlags(i);
    }

    public void setMediaButtonReceiver(android.app.PendingIntent pendingIntent) {
        this.mImpl.setMediaButtonReceiver(pendingIntent);
    }

    public void setMetadata(android.support.v4.media.MediaMetadataCompat mediaMetadataCompat) {
        this.mImpl.setMetadata(mediaMetadataCompat);
    }

    public void setPlaybackState(android.support.v4.media.session.PlaybackStateCompat playbackStateCompat) {
        this.mImpl.setPlaybackState(playbackStateCompat);
    }

    public void setPlaybackToLocal(int i) {
        this.mImpl.setPlaybackToLocal(i);
    }

    public void setPlaybackToRemote(d.n.e eVar) {
        if (eVar == null) {
            throw new java.lang.IllegalArgumentException("volumeProvider may not be null!");
        }
        this.mImpl.setPlaybackToRemote(eVar);
    }

    public void setQueue(java.util.List<android.support.v4.media.session.MediaSessionCompat.QueueItem> list) {
        this.mImpl.setQueue(list);
    }

    public void setQueueTitle(java.lang.CharSequence charSequence) {
        this.mImpl.setQueueTitle(charSequence);
    }

    public void setRatingType(int i) {
        this.mImpl.setRatingType(i);
    }

    public void setRepeatMode(int i) {
        this.mImpl.setRepeatMode(i);
    }

    public void setSessionActivity(android.app.PendingIntent pendingIntent) {
        this.mImpl.setSessionActivity(pendingIntent);
    }

    public void setShuffleMode(int i) {
        this.mImpl.setShuffleMode(i);
    }
}
