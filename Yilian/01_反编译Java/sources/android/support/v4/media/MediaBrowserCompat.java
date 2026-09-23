package android.support.v4.media;

/* loaded from: classes.dex */
public final class MediaBrowserCompat {
    public static final java.lang.String CUSTOM_ACTION_DOWNLOAD = "android.support.v4.media.action.DOWNLOAD";
    public static final java.lang.String CUSTOM_ACTION_REMOVE_DOWNLOADED_FILE = "android.support.v4.media.action.REMOVE_DOWNLOADED_FILE";
    public static final java.lang.String EXTRA_DOWNLOAD_PROGRESS = "android.media.browse.extra.DOWNLOAD_PROGRESS";
    public static final java.lang.String EXTRA_MEDIA_ID = "android.media.browse.extra.MEDIA_ID";
    public static final java.lang.String EXTRA_PAGE = "android.media.browse.extra.PAGE";
    public static final java.lang.String EXTRA_PAGE_SIZE = "android.media.browse.extra.PAGE_SIZE";
    public final android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl mImpl;
    public static final java.lang.String TAG = "MediaBrowserCompat";
    public static final boolean DEBUG = android.util.Log.isLoggable(TAG, 3);

    public static class CallbackHandler extends android.os.Handler {
        public final java.lang.ref.WeakReference<android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl> mCallbackImplRef;
        public java.lang.ref.WeakReference<android.os.Messenger> mCallbacksMessengerRef;

        public CallbackHandler(android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl) {
            this.mCallbackImplRef = new java.lang.ref.WeakReference<>(mediaBrowserServiceCallbackImpl);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            java.lang.ref.WeakReference<android.os.Messenger> weakReference = this.mCallbacksMessengerRef;
            if (weakReference == null || weakReference.get() == null || this.mCallbackImplRef.get() == null) {
                return;
            }
            android.os.Bundle data = message.getData();
            android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(data);
            android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl = this.mCallbackImplRef.get();
            android.os.Messenger messenger = this.mCallbacksMessengerRef.get();
            try {
                int i = message.what;
                if (i == 1) {
                    android.os.Bundle bundle = data.getBundle("data_root_hints");
                    android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle);
                    mediaBrowserServiceCallbackImpl.onServiceConnected(messenger, data.getString("data_media_item_id"), (android.support.v4.media.session.MediaSessionCompat.Token) data.getParcelable("data_media_session_token"), bundle);
                } else if (i == 2) {
                    mediaBrowserServiceCallbackImpl.onConnectionFailed(messenger);
                } else if (i != 3) {
                    android.util.Log.w(android.support.v4.media.MediaBrowserCompat.TAG, "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    android.os.Bundle bundle2 = data.getBundle("data_options");
                    android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle2);
                    android.os.Bundle bundle3 = data.getBundle("data_notify_children_changed_options");
                    android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle3);
                    mediaBrowserServiceCallbackImpl.onLoadChildren(messenger, data.getString("data_media_item_id"), data.getParcelableArrayList("data_media_item_list"), bundle2, bundle3);
                }
            } catch (android.os.BadParcelableException unused) {
                android.util.Log.e(android.support.v4.media.MediaBrowserCompat.TAG, "Could not unparcel the data.");
                if (message.what == 1) {
                    mediaBrowserServiceCallbackImpl.onConnectionFailed(messenger);
                }
            }
        }

        public void setCallbacksMessenger(android.os.Messenger messenger) {
            this.mCallbacksMessengerRef = new java.lang.ref.WeakReference<>(messenger);
        }
    }

    public static class ConnectionCallback {
        public android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal mConnectionCallbackInternal;
        public final java.lang.Object mConnectionCallbackObj;

        public interface ConnectionCallbackInternal {
            void onConnected();

            void onConnectionFailed();

            void onConnectionSuspended();
        }

        public class StubApi21 implements android.support.v4.media.MediaBrowserCompatApi21.ConnectionCallback {
            public StubApi21() {
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi21.ConnectionCallback
            public void onConnected() {
                android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal connectionCallbackInternal = android.support.v4.media.MediaBrowserCompat.ConnectionCallback.this.mConnectionCallbackInternal;
                if (connectionCallbackInternal != null) {
                    connectionCallbackInternal.onConnected();
                }
                android.support.v4.media.MediaBrowserCompat.ConnectionCallback.this.onConnected();
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi21.ConnectionCallback
            public void onConnectionFailed() {
                android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal connectionCallbackInternal = android.support.v4.media.MediaBrowserCompat.ConnectionCallback.this.mConnectionCallbackInternal;
                if (connectionCallbackInternal != null) {
                    connectionCallbackInternal.onConnectionFailed();
                }
                android.support.v4.media.MediaBrowserCompat.ConnectionCallback.this.onConnectionFailed();
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi21.ConnectionCallback
            public void onConnectionSuspended() {
                android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal connectionCallbackInternal = android.support.v4.media.MediaBrowserCompat.ConnectionCallback.this.mConnectionCallbackInternal;
                if (connectionCallbackInternal != null) {
                    connectionCallbackInternal.onConnectionSuspended();
                }
                android.support.v4.media.MediaBrowserCompat.ConnectionCallback.this.onConnectionSuspended();
            }
        }

        public ConnectionCallback() {
            this.mConnectionCallbackObj = android.os.Build.VERSION.SDK_INT >= 21 ? android.support.v4.media.MediaBrowserCompatApi21.createConnectionCallback(new android.support.v4.media.MediaBrowserCompat.ConnectionCallback.StubApi21()) : null;
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }

        public void setInternalConnectionCallback(android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal connectionCallbackInternal) {
            this.mConnectionCallbackInternal = connectionCallbackInternal;
        }
    }

    public static abstract class CustomActionCallback {
        public void onError(java.lang.String str, android.os.Bundle bundle, android.os.Bundle bundle2) {
        }

        public void onProgressUpdate(java.lang.String str, android.os.Bundle bundle, android.os.Bundle bundle2) {
        }

        public void onResult(java.lang.String str, android.os.Bundle bundle, android.os.Bundle bundle2) {
        }
    }

    public static class CustomActionResultReceiver extends android.support.v4.os.ResultReceiver {
        public final java.lang.String mAction;
        public final android.support.v4.media.MediaBrowserCompat.CustomActionCallback mCallback;
        public final android.os.Bundle mExtras;

        public CustomActionResultReceiver(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.CustomActionCallback customActionCallback, android.os.Handler handler) {
            super(handler);
            this.mAction = str;
            this.mExtras = bundle;
            this.mCallback = customActionCallback;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int i, android.os.Bundle bundle) {
            if (this.mCallback == null) {
                return;
            }
            android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle);
            if (i == -1) {
                this.mCallback.onError(this.mAction, this.mExtras, bundle);
                return;
            }
            if (i == 0) {
                this.mCallback.onResult(this.mAction, this.mExtras, bundle);
                return;
            }
            if (i == 1) {
                this.mCallback.onProgressUpdate(this.mAction, this.mExtras, bundle);
                return;
            }
            java.lang.StringBuilder sbP = e.a.c.a.a.p("Unknown result code: ", i, " (extras=");
            sbP.append(this.mExtras);
            sbP.append(", resultData=");
            sbP.append(bundle);
            sbP.append(")");
            android.util.Log.w(android.support.v4.media.MediaBrowserCompat.TAG, sbP.toString());
        }
    }

    public static abstract class ItemCallback {
        public final java.lang.Object mItemCallbackObj;

        public class StubApi23 implements android.support.v4.media.MediaBrowserCompatApi23.ItemCallback {
            public StubApi23() {
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi23.ItemCallback
            public void onError(java.lang.String str) {
                android.support.v4.media.MediaBrowserCompat.ItemCallback.this.onError(str);
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi23.ItemCallback
            public void onItemLoaded(android.os.Parcel parcel) {
                android.support.v4.media.MediaBrowserCompat.MediaItem mediaItemCreateFromParcel;
                android.support.v4.media.MediaBrowserCompat.ItemCallback itemCallback;
                if (parcel == null) {
                    itemCallback = android.support.v4.media.MediaBrowserCompat.ItemCallback.this;
                    mediaItemCreateFromParcel = null;
                } else {
                    parcel.setDataPosition(0);
                    mediaItemCreateFromParcel = android.support.v4.media.MediaBrowserCompat.MediaItem.CREATOR.createFromParcel(parcel);
                    parcel.recycle();
                    itemCallback = android.support.v4.media.MediaBrowserCompat.ItemCallback.this;
                }
                itemCallback.onItemLoaded(mediaItemCreateFromParcel);
            }
        }

        public ItemCallback() {
            this.mItemCallbackObj = android.os.Build.VERSION.SDK_INT >= 23 ? android.support.v4.media.MediaBrowserCompatApi23.createItemCallback(new android.support.v4.media.MediaBrowserCompat.ItemCallback.StubApi23()) : null;
        }

        public void onError(java.lang.String str) {
        }

        public void onItemLoaded(android.support.v4.media.MediaBrowserCompat.MediaItem mediaItem) {
        }
    }

    public static class ItemReceiver extends android.support.v4.os.ResultReceiver {
        public final android.support.v4.media.MediaBrowserCompat.ItemCallback mCallback;
        public final java.lang.String mMediaId;

        public ItemReceiver(java.lang.String str, android.support.v4.media.MediaBrowserCompat.ItemCallback itemCallback, android.os.Handler handler) {
            super(handler);
            this.mMediaId = str;
            this.mCallback = itemCallback;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int i, android.os.Bundle bundle) {
            android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.mCallback.onError(this.mMediaId);
                return;
            }
            android.os.Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof android.support.v4.media.MediaBrowserCompat.MediaItem)) {
                this.mCallback.onItemLoaded((android.support.v4.media.MediaBrowserCompat.MediaItem) parcelable);
            } else {
                this.mCallback.onError(this.mMediaId);
            }
        }
    }

    public interface MediaBrowserImpl {
        void connect();

        void disconnect();

        android.os.Bundle getExtras();

        void getItem(java.lang.String str, android.support.v4.media.MediaBrowserCompat.ItemCallback itemCallback);

        android.os.Bundle getNotifyChildrenChangedOptions();

        java.lang.String getRoot();

        android.content.ComponentName getServiceComponent();

        android.support.v4.media.session.MediaSessionCompat.Token getSessionToken();

        boolean isConnected();

        void search(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SearchCallback searchCallback);

        void sendCustomAction(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.CustomActionCallback customActionCallback);

        void subscribe(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback);

        void unsubscribe(java.lang.String str, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback);
    }

    public static class MediaBrowserImplApi21 implements android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl, android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl, android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal {
        public final java.lang.Object mBrowserObj;
        public android.os.Messenger mCallbacksMessenger;
        public final android.content.Context mContext;
        public android.support.v4.media.session.MediaSessionCompat.Token mMediaSessionToken;
        public android.os.Bundle mNotifyChildrenChangedOptions;
        public final android.os.Bundle mRootHints;
        public android.support.v4.media.MediaBrowserCompat.ServiceBinderWrapper mServiceBinderWrapper;
        public int mServiceVersion;
        public final android.support.v4.media.MediaBrowserCompat.CallbackHandler mHandler = new android.support.v4.media.MediaBrowserCompat.CallbackHandler(this);
        public final d.e.a<java.lang.String, android.support.v4.media.MediaBrowserCompat.Subscription> mSubscriptions = new d.e.a<>();

        public MediaBrowserImplApi21(android.content.Context context, android.content.ComponentName componentName, android.support.v4.media.MediaBrowserCompat.ConnectionCallback connectionCallback, android.os.Bundle bundle) {
            this.mContext = context;
            android.os.Bundle bundle2 = bundle != null ? new android.os.Bundle(bundle) : new android.os.Bundle();
            this.mRootHints = bundle2;
            bundle2.putInt("extra_client_version", 1);
            connectionCallback.setInternalConnectionCallback(this);
            this.mBrowserObj = android.support.v4.media.MediaBrowserCompatApi21.createBrowser(context, componentName, connectionCallback.mConnectionCallbackObj, this.mRootHints);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void connect() {
            android.support.v4.media.MediaBrowserCompatApi21.connect(this.mBrowserObj);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void disconnect() {
            android.os.Messenger messenger;
            android.support.v4.media.MediaBrowserCompat.ServiceBinderWrapper serviceBinderWrapper = this.mServiceBinderWrapper;
            if (serviceBinderWrapper != null && (messenger = this.mCallbacksMessenger) != null) {
                try {
                    serviceBinderWrapper.unregisterCallbackMessenger(messenger);
                } catch (android.os.RemoteException unused) {
                    android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error unregistering client messenger.");
                }
            }
            android.support.v4.media.MediaBrowserCompatApi21.disconnect(this.mBrowserObj);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.os.Bundle getExtras() {
            return android.support.v4.media.MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void getItem(final java.lang.String str, final android.support.v4.media.MediaBrowserCompat.ItemCallback itemCallback) {
            android.support.v4.media.MediaBrowserCompat.CallbackHandler callbackHandler;
            java.lang.Runnable runnable;
            if (android.text.TextUtils.isEmpty(str)) {
                throw new java.lang.IllegalArgumentException("mediaId is empty");
            }
            if (itemCallback == null) {
                throw new java.lang.IllegalArgumentException("cb is null");
            }
            if (!android.support.v4.media.MediaBrowserCompatApi21.isConnected(this.mBrowserObj)) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Not connected, unable to retrieve the MediaItem.");
                callbackHandler = this.mHandler;
                runnable = new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.1
                    @Override // java.lang.Runnable
                    public void run() {
                        itemCallback.onError(str);
                    }
                };
            } else {
                if (this.mServiceBinderWrapper != null) {
                    try {
                        this.mServiceBinderWrapper.getMediaItem(str, new android.support.v4.media.MediaBrowserCompat.ItemReceiver(str, itemCallback, this.mHandler), this.mCallbacksMessenger);
                        return;
                    } catch (android.os.RemoteException unused) {
                        android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error getting media item: " + str);
                        this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.3
                            @Override // java.lang.Runnable
                            public void run() {
                                itemCallback.onError(str);
                            }
                        });
                        return;
                    }
                }
                callbackHandler = this.mHandler;
                runnable = new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.2
                    @Override // java.lang.Runnable
                    public void run() {
                        itemCallback.onError(str);
                    }
                };
            }
            callbackHandler.post(runnable);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.os.Bundle getNotifyChildrenChangedOptions() {
            return this.mNotifyChildrenChangedOptions;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public java.lang.String getRoot() {
            return android.support.v4.media.MediaBrowserCompatApi21.getRoot(this.mBrowserObj);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.content.ComponentName getServiceComponent() {
            return android.support.v4.media.MediaBrowserCompatApi21.getServiceComponent(this.mBrowserObj);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.support.v4.media.session.MediaSessionCompat.Token getSessionToken() {
            if (this.mMediaSessionToken == null) {
                this.mMediaSessionToken = android.support.v4.media.session.MediaSessionCompat.Token.fromToken(android.support.v4.media.MediaBrowserCompatApi21.getSessionToken(this.mBrowserObj));
            }
            return this.mMediaSessionToken;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public boolean isConnected() {
            return android.support.v4.media.MediaBrowserCompatApi21.isConnected(this.mBrowserObj);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal
        public void onConnected() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
            android.os.Bundle extras = android.support.v4.media.MediaBrowserCompatApi21.getExtras(this.mBrowserObj);
            if (extras == null) {
                return;
            }
            this.mServiceVersion = extras.getInt("extra_service_version", 0);
            android.os.IBinder iBinderX = d.b.k.r.x(extras, "extra_messenger");
            if (iBinderX != null) {
                this.mServiceBinderWrapper = new android.support.v4.media.MediaBrowserCompat.ServiceBinderWrapper(iBinderX, this.mRootHints);
                android.os.Messenger messenger = new android.os.Messenger(this.mHandler);
                this.mCallbacksMessenger = messenger;
                this.mHandler.setCallbacksMessenger(messenger);
                try {
                    this.mServiceBinderWrapper.registerCallbackMessenger(this.mContext, this.mCallbacksMessenger);
                } catch (android.os.RemoteException unused) {
                    android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error registering client messenger.");
                }
            }
            android.support.v4.media.session.IMediaSession iMediaSessionAsInterface = android.support.v4.media.session.IMediaSession.Stub.asInterface(d.b.k.r.x(extras, "extra_session_binder"));
            if (iMediaSessionAsInterface != null) {
                this.mMediaSessionToken = android.support.v4.media.session.MediaSessionCompat.Token.fromToken(android.support.v4.media.MediaBrowserCompatApi21.getSessionToken(this.mBrowserObj), iMediaSessionAsInterface);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal
        public void onConnectionFailed() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void onConnectionFailed(android.os.Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal
        public void onConnectionSuspended() {
            this.mServiceBinderWrapper = null;
            this.mCallbacksMessenger = null;
            this.mMediaSessionToken = null;
            this.mHandler.setCallbacksMessenger(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void onLoadChildren(android.os.Messenger messenger, java.lang.String str, java.util.List list, android.os.Bundle bundle, android.os.Bundle bundle2) {
            if (this.mCallbacksMessenger != messenger) {
                return;
            }
            android.support.v4.media.MediaBrowserCompat.Subscription orDefault = this.mSubscriptions.getOrDefault(str, null);
            if (orDefault == null) {
                if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                    android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "onLoadChildren for id that isn't subscribed id=" + str);
                    return;
                }
                return;
            }
            android.support.v4.media.MediaBrowserCompat.SubscriptionCallback callback = orDefault.getCallback(bundle);
            if (callback != null) {
                if (bundle == null) {
                    if (list == null) {
                        callback.onError(str);
                        return;
                    } else {
                        this.mNotifyChildrenChangedOptions = bundle2;
                        callback.onChildrenLoaded(str, list);
                    }
                } else if (list == null) {
                    callback.onError(str, bundle);
                    return;
                } else {
                    this.mNotifyChildrenChangedOptions = bundle2;
                    callback.onChildrenLoaded(str, list, bundle);
                }
                this.mNotifyChildrenChangedOptions = null;
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void onServiceConnected(android.os.Messenger messenger, java.lang.String str, android.support.v4.media.session.MediaSessionCompat.Token token, android.os.Bundle bundle) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void search(final java.lang.String str, final android.os.Bundle bundle, final android.support.v4.media.MediaBrowserCompat.SearchCallback searchCallback) {
            if (!isConnected()) {
                throw new java.lang.IllegalStateException("search() called while not connected");
            }
            if (this.mServiceBinderWrapper == null) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "The connected service doesn't support search.");
                this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.4
                    @Override // java.lang.Runnable
                    public void run() {
                        searchCallback.onError(str, bundle);
                    }
                });
                return;
            }
            try {
                this.mServiceBinderWrapper.search(str, bundle, new android.support.v4.media.MediaBrowserCompat.SearchResultReceiver(str, bundle, searchCallback, this.mHandler), this.mCallbacksMessenger);
            } catch (android.os.RemoteException e2) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error searching items with query: " + str, e2);
                this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.5
                    @Override // java.lang.Runnable
                    public void run() {
                        searchCallback.onError(str, bundle);
                    }
                });
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void sendCustomAction(final java.lang.String str, final android.os.Bundle bundle, final android.support.v4.media.MediaBrowserCompat.CustomActionCallback customActionCallback) {
            if (!isConnected()) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Cannot send a custom action (");
                sb.append(str);
                sb.append(") with ");
                sb.append("extras ");
                sb.append(bundle);
                throw new java.lang.IllegalStateException(e.a.c.a.a.j(sb, " because the browser is not connected to the ", "service."));
            }
            if (this.mServiceBinderWrapper == null) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "The connected service doesn't support sendCustomAction.");
                if (customActionCallback != null) {
                    this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.6
                        @Override // java.lang.Runnable
                        public void run() {
                            customActionCallback.onError(str, bundle, null);
                        }
                    });
                }
            }
            try {
                this.mServiceBinderWrapper.sendCustomAction(str, bundle, new android.support.v4.media.MediaBrowserCompat.CustomActionResultReceiver(str, bundle, customActionCallback, this.mHandler), this.mCallbacksMessenger);
            } catch (android.os.RemoteException e2) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error sending a custom action: action=" + str + ", extras=" + bundle, e2);
                if (customActionCallback != null) {
                    this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.7
                        @Override // java.lang.Runnable
                        public void run() {
                            customActionCallback.onError(str, bundle, null);
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void subscribe(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.support.v4.media.MediaBrowserCompat.Subscription orDefault = this.mSubscriptions.getOrDefault(str, null);
            if (orDefault == null) {
                orDefault = new android.support.v4.media.MediaBrowserCompat.Subscription();
                this.mSubscriptions.put(str, orDefault);
            }
            subscriptionCallback.setSubscription(orDefault);
            android.os.Bundle bundle2 = bundle != null ? new android.os.Bundle(bundle) : null;
            orDefault.putCallback(bundle2, subscriptionCallback);
            android.support.v4.media.MediaBrowserCompat.ServiceBinderWrapper serviceBinderWrapper = this.mServiceBinderWrapper;
            if (serviceBinderWrapper == null) {
                android.support.v4.media.MediaBrowserCompatApi21.subscribe(this.mBrowserObj, str, subscriptionCallback.mSubscriptionCallbackObj);
                return;
            }
            try {
                serviceBinderWrapper.addSubscription(str, subscriptionCallback.mToken, bundle2, this.mCallbacksMessenger);
            } catch (android.os.RemoteException unused) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error subscribing media item: " + str);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void unsubscribe(java.lang.String r8, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback r9) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            /*
                r7 = this;
                d.e.a<java.lang.String, android.support.v4.media.MediaBrowserCompat$Subscription> r0 = r7.mSubscriptions
                r1 = 0
                java.lang.Object r0 = r0.getOrDefault(r8, r1)
                android.support.v4.media.MediaBrowserCompat$Subscription r0 = (android.support.v4.media.MediaBrowserCompat.Subscription) r0
                if (r0 != 0) goto Lc
                return
            Lc:
                android.support.v4.media.MediaBrowserCompat$ServiceBinderWrapper r2 = r7.mServiceBinderWrapper
                if (r2 != 0) goto L3e
                if (r9 != 0) goto L18
            L12:
                java.lang.Object r1 = r7.mBrowserObj
                android.support.v4.media.MediaBrowserCompatApi21.unsubscribe(r1, r8)
                goto L84
            L18:
                java.util.List r1 = r0.getCallbacks()
                java.util.List r2 = r0.getOptionsList()
                int r3 = r1.size()
                int r3 = r3 + (-1)
            L26:
                if (r3 < 0) goto L37
                java.lang.Object r4 = r1.get(r3)
                if (r4 != r9) goto L34
                r1.remove(r3)
                r2.remove(r3)
            L34:
                int r3 = r3 + (-1)
                goto L26
            L37:
                int r1 = r1.size()
                if (r1 != 0) goto L84
                goto L12
            L3e:
                if (r9 != 0) goto L46
                android.os.Messenger r3 = r7.mCallbacksMessenger     // Catch: android.os.RemoteException -> L6e
                r2.removeSubscription(r8, r1, r3)     // Catch: android.os.RemoteException -> L6e
                goto L84
            L46:
                java.util.List r1 = r0.getCallbacks()     // Catch: android.os.RemoteException -> L6e
                java.util.List r2 = r0.getOptionsList()     // Catch: android.os.RemoteException -> L6e
                int r3 = r1.size()     // Catch: android.os.RemoteException -> L6e
                int r3 = r3 + (-1)
            L54:
                if (r3 < 0) goto L84
                java.lang.Object r4 = r1.get(r3)     // Catch: android.os.RemoteException -> L6e
                if (r4 != r9) goto L6b
                android.support.v4.media.MediaBrowserCompat$ServiceBinderWrapper r4 = r7.mServiceBinderWrapper     // Catch: android.os.RemoteException -> L6e
                android.os.IBinder r5 = r9.mToken     // Catch: android.os.RemoteException -> L6e
                android.os.Messenger r6 = r7.mCallbacksMessenger     // Catch: android.os.RemoteException -> L6e
                r4.removeSubscription(r8, r5, r6)     // Catch: android.os.RemoteException -> L6e
                r1.remove(r3)     // Catch: android.os.RemoteException -> L6e
                r2.remove(r3)     // Catch: android.os.RemoteException -> L6e
            L6b:
                int r3 = r3 + (-1)
                goto L54
            L6e:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "removeSubscription failed with RemoteException parentId="
                r1.append(r2)
                r1.append(r8)
                java.lang.String r1 = r1.toString()
                java.lang.String r2 = "MediaBrowserCompat"
                android.util.Log.d(r2, r1)
            L84:
                boolean r0 = r0.isEmpty()
                if (r0 != 0) goto L8c
                if (r9 != 0) goto L91
            L8c:
                d.e.a<java.lang.String, android.support.v4.media.MediaBrowserCompat$Subscription> r9 = r7.mSubscriptions
                r9.remove(r8)
            L91:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21.unsubscribe(java.lang.String, android.support.v4.media.MediaBrowserCompat$SubscriptionCallback):void");
        }
    }

    public static class MediaBrowserImplApi23 extends android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21 {
        public MediaBrowserImplApi23(android.content.Context context, android.content.ComponentName componentName, android.support.v4.media.MediaBrowserCompat.ConnectionCallback connectionCallback, android.os.Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21, android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void getItem(java.lang.String str, android.support.v4.media.MediaBrowserCompat.ItemCallback itemCallback) {
            if (this.mServiceBinderWrapper == null) {
                android.support.v4.media.MediaBrowserCompatApi23.getItem(this.mBrowserObj, str, itemCallback.mItemCallbackObj);
            } else {
                super.getItem(str, itemCallback);
            }
        }
    }

    public static class MediaBrowserImplApi26 extends android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi23 {
        public MediaBrowserImplApi26(android.content.Context context, android.content.ComponentName componentName, android.support.v4.media.MediaBrowserCompat.ConnectionCallback connectionCallback, android.os.Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21, android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void subscribe(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (this.mServiceBinderWrapper != null && this.mServiceVersion >= 2) {
                super.subscribe(str, bundle, subscriptionCallback);
            } else if (bundle == null) {
                android.support.v4.media.MediaBrowserCompatApi21.subscribe(this.mBrowserObj, str, subscriptionCallback.mSubscriptionCallbackObj);
            } else {
                android.support.v4.media.MediaBrowserCompatApi26.subscribe(this.mBrowserObj, str, bundle, subscriptionCallback.mSubscriptionCallbackObj);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21, android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void unsubscribe(java.lang.String str, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (this.mServiceBinderWrapper != null && this.mServiceVersion >= 2) {
                super.unsubscribe(str, subscriptionCallback);
            } else if (subscriptionCallback == null) {
                android.support.v4.media.MediaBrowserCompatApi21.unsubscribe(this.mBrowserObj, str);
            } else {
                android.support.v4.media.MediaBrowserCompatApi26.unsubscribe(this.mBrowserObj, str, subscriptionCallback.mSubscriptionCallbackObj);
            }
        }
    }

    public static class MediaBrowserImplBase implements android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl, android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl {
        public static final int CONNECT_STATE_CONNECTED = 3;
        public static final int CONNECT_STATE_CONNECTING = 2;
        public static final int CONNECT_STATE_DISCONNECTED = 1;
        public static final int CONNECT_STATE_DISCONNECTING = 0;
        public static final int CONNECT_STATE_SUSPENDED = 4;
        public final android.support.v4.media.MediaBrowserCompat.ConnectionCallback mCallback;
        public android.os.Messenger mCallbacksMessenger;
        public final android.content.Context mContext;
        public android.os.Bundle mExtras;
        public android.support.v4.media.session.MediaSessionCompat.Token mMediaSessionToken;
        public android.os.Bundle mNotifyChildrenChangedOptions;
        public final android.os.Bundle mRootHints;
        public java.lang.String mRootId;
        public android.support.v4.media.MediaBrowserCompat.ServiceBinderWrapper mServiceBinderWrapper;
        public final android.content.ComponentName mServiceComponent;
        public android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection mServiceConnection;
        public final android.support.v4.media.MediaBrowserCompat.CallbackHandler mHandler = new android.support.v4.media.MediaBrowserCompat.CallbackHandler(this);
        public final d.e.a<java.lang.String, android.support.v4.media.MediaBrowserCompat.Subscription> mSubscriptions = new d.e.a<>();
        public int mState = 1;

        public class MediaServiceConnection implements android.content.ServiceConnection {
            public MediaServiceConnection() {
            }

            private void postOrRun(java.lang.Runnable runnable) {
                if (java.lang.Thread.currentThread() == android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mHandler.getLooper().getThread()) {
                    runnable.run();
                } else {
                    android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mHandler.post(runnable);
                }
            }

            public boolean isCurrent(java.lang.String str) {
                int i;
                android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                if (mediaBrowserImplBase.mServiceConnection == this && (i = mediaBrowserImplBase.mState) != 0 && i != 1) {
                    return true;
                }
                int i2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mState;
                if (i2 == 0 || i2 == 1) {
                    return false;
                }
                java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, " for ");
                sbQ.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceComponent);
                sbQ.append(" with mServiceConnection=");
                sbQ.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceConnection);
                sbQ.append(" this=");
                sbQ.append(this);
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, sbQ.toString());
                return false;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(final android.content.ComponentName componentName, final android.os.IBinder iBinder) {
                postOrRun(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("MediaServiceConnection.onServiceConnected name=");
                            sbO.append(componentName);
                            sbO.append(" binder=");
                            sbO.append(iBinder);
                            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, sbO.toString());
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.dump();
                        }
                        if (android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this.isCurrent("onServiceConnected")) {
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                            mediaBrowserImplBase.mServiceBinderWrapper = new android.support.v4.media.MediaBrowserCompat.ServiceBinderWrapper(iBinder, mediaBrowserImplBase.mRootHints);
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mCallbacksMessenger = new android.os.Messenger(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mHandler);
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                            mediaBrowserImplBase2.mHandler.setCallbacksMessenger(mediaBrowserImplBase2.mCallbacksMessenger);
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mState = 2;
                            try {
                                if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                                    android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "ServiceCallbacks.onConnect...");
                                    android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.dump();
                                }
                                android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceBinderWrapper.connect(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mContext, android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mCallbacksMessenger);
                            } catch (android.os.RemoteException unused) {
                                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("RemoteException during connect for ");
                                sbO2.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceComponent);
                                android.util.Log.w(android.support.v4.media.MediaBrowserCompat.TAG, sbO2.toString());
                                if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                                    android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "ServiceCallbacks.onConnect...");
                                    android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.dump();
                                }
                            }
                        }
                    }
                });
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(final android.content.ComponentName componentName) {
                postOrRun(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("MediaServiceConnection.onServiceDisconnected name=");
                            sbO.append(componentName);
                            sbO.append(" this=");
                            sbO.append(this);
                            sbO.append(" mServiceConnection=");
                            sbO.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceConnection);
                            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, sbO.toString());
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.dump();
                        }
                        if (android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.this.isCurrent("onServiceDisconnected")) {
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                            mediaBrowserImplBase.mServiceBinderWrapper = null;
                            mediaBrowserImplBase.mCallbacksMessenger = null;
                            mediaBrowserImplBase.mHandler.setCallbacksMessenger(null);
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                            mediaBrowserImplBase2.mState = 4;
                            mediaBrowserImplBase2.mCallback.onConnectionSuspended();
                        }
                    }
                });
            }
        }

        public MediaBrowserImplBase(android.content.Context context, android.content.ComponentName componentName, android.support.v4.media.MediaBrowserCompat.ConnectionCallback connectionCallback, android.os.Bundle bundle) {
            if (context == null) {
                throw new java.lang.IllegalArgumentException("context must not be null");
            }
            if (componentName == null) {
                throw new java.lang.IllegalArgumentException("service component must not be null");
            }
            if (connectionCallback == null) {
                throw new java.lang.IllegalArgumentException("connection callback must not be null");
            }
            this.mContext = context;
            this.mServiceComponent = componentName;
            this.mCallback = connectionCallback;
            this.mRootHints = bundle == null ? null : new android.os.Bundle(bundle);
        }

        public static java.lang.String getStateLabel(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? e.a.c.a.a.K("UNKNOWN/", i) : "CONNECT_STATE_SUSPENDED" : "CONNECT_STATE_CONNECTED" : "CONNECT_STATE_CONNECTING" : "CONNECT_STATE_DISCONNECTED" : "CONNECT_STATE_DISCONNECTING";
        }

        private boolean isCurrent(android.os.Messenger messenger, java.lang.String str) {
            int i;
            if (this.mCallbacksMessenger == messenger && (i = this.mState) != 0 && i != 1) {
                return true;
            }
            int i2 = this.mState;
            if (i2 == 0 || i2 == 1) {
                return false;
            }
            java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, " for ");
            sbQ.append(this.mServiceComponent);
            sbQ.append(" with mCallbacksMessenger=");
            sbQ.append(this.mCallbacksMessenger);
            sbQ.append(" this=");
            sbQ.append(this);
            android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, sbQ.toString());
            return false;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void connect() {
            int i = this.mState;
            if (i == 0 || i == 1) {
                this.mState = 2;
                this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.1
                    @Override // java.lang.Runnable
                    public void run() {
                        android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        if (mediaBrowserImplBase.mState == 0) {
                            return;
                        }
                        mediaBrowserImplBase.mState = 2;
                        if (android.support.v4.media.MediaBrowserCompat.DEBUG && mediaBrowserImplBase.mServiceConnection != null) {
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("mServiceConnection should be null. Instead it is ");
                            sbO.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceConnection);
                            throw new java.lang.RuntimeException(sbO.toString());
                        }
                        android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        if (mediaBrowserImplBase2.mServiceBinderWrapper != null) {
                            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("mServiceBinderWrapper should be null. Instead it is ");
                            sbO2.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceBinderWrapper);
                            throw new java.lang.RuntimeException(sbO2.toString());
                        }
                        if (mediaBrowserImplBase2.mCallbacksMessenger != null) {
                            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("mCallbacksMessenger should be null. Instead it is ");
                            sbO3.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mCallbacksMessenger);
                            throw new java.lang.RuntimeException(sbO3.toString());
                        }
                        android.content.Intent intent = new android.content.Intent("android.media.browse.MediaBrowserService");
                        intent.setComponent(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceComponent);
                        android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase3 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                        mediaBrowserImplBase3.mServiceConnection = mediaBrowserImplBase3.new MediaServiceConnection();
                        boolean zBindService = false;
                        try {
                            zBindService = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mContext.bindService(intent, android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceConnection, 1);
                        } catch (java.lang.Exception unused) {
                            java.lang.StringBuilder sbO4 = e.a.c.a.a.o("Failed binding to service ");
                            sbO4.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceComponent);
                            android.util.Log.e(android.support.v4.media.MediaBrowserCompat.TAG, sbO4.toString());
                        }
                        if (!zBindService) {
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.forceCloseConnection();
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mCallback.onConnectionFailed();
                        }
                        if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "connect...");
                            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.dump();
                        }
                    }
                });
            } else {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("connect() called while neigther disconnecting nor disconnected (state=");
                sbO.append(getStateLabel(this.mState));
                sbO.append(")");
                throw new java.lang.IllegalStateException(sbO.toString());
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void disconnect() {
            this.mState = 0;
            this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.2
                @Override // java.lang.Runnable
                public void run() {
                    android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                    android.os.Messenger messenger = mediaBrowserImplBase.mCallbacksMessenger;
                    if (messenger != null) {
                        try {
                            mediaBrowserImplBase.mServiceBinderWrapper.disconnect(messenger);
                        } catch (android.os.RemoteException unused) {
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("RemoteException during connect for ");
                            sbO.append(android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mServiceComponent);
                            android.util.Log.w(android.support.v4.media.MediaBrowserCompat.TAG, sbO.toString());
                        }
                    }
                    android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase mediaBrowserImplBase2 = android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this;
                    int i = mediaBrowserImplBase2.mState;
                    mediaBrowserImplBase2.forceCloseConnection();
                    if (i != 0) {
                        android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.mState = i;
                    }
                    if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                        android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "disconnect...");
                        android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.this.dump();
                    }
                }
            });
        }

        public void dump() {
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "MediaBrowserCompat...");
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mServiceComponent=" + this.mServiceComponent);
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mCallback=" + this.mCallback);
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mRootHints=" + this.mRootHints);
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mState=" + getStateLabel(this.mState));
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mServiceConnection=" + this.mServiceConnection);
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mServiceBinderWrapper=" + this.mServiceBinderWrapper);
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mCallbacksMessenger=" + this.mCallbacksMessenger);
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mRootId=" + this.mRootId);
            android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "  mMediaSessionToken=" + this.mMediaSessionToken);
        }

        public void forceCloseConnection() {
            android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection mediaServiceConnection = this.mServiceConnection;
            if (mediaServiceConnection != null) {
                this.mContext.unbindService(mediaServiceConnection);
            }
            this.mState = 1;
            this.mServiceConnection = null;
            this.mServiceBinderWrapper = null;
            this.mCallbacksMessenger = null;
            this.mHandler.setCallbacksMessenger(null);
            this.mRootId = null;
            this.mMediaSessionToken = null;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.os.Bundle getExtras() {
            if (isConnected()) {
                return this.mExtras;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getExtras() called while not connected (state=");
            sbO.append(getStateLabel(this.mState));
            sbO.append(")");
            throw new java.lang.IllegalStateException(sbO.toString());
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void getItem(final java.lang.String str, final android.support.v4.media.MediaBrowserCompat.ItemCallback itemCallback) {
            if (android.text.TextUtils.isEmpty(str)) {
                throw new java.lang.IllegalArgumentException("mediaId is empty");
            }
            if (itemCallback == null) {
                throw new java.lang.IllegalArgumentException("cb is null");
            }
            if (!isConnected()) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Not connected, unable to retrieve the MediaItem.");
                this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.3
                    @Override // java.lang.Runnable
                    public void run() {
                        itemCallback.onError(str);
                    }
                });
                return;
            }
            try {
                this.mServiceBinderWrapper.getMediaItem(str, new android.support.v4.media.MediaBrowserCompat.ItemReceiver(str, itemCallback, this.mHandler), this.mCallbacksMessenger);
            } catch (android.os.RemoteException unused) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error getting media item: " + str);
                this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.4
                    @Override // java.lang.Runnable
                    public void run() {
                        itemCallback.onError(str);
                    }
                });
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.os.Bundle getNotifyChildrenChangedOptions() {
            return this.mNotifyChildrenChangedOptions;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public java.lang.String getRoot() {
            if (isConnected()) {
                return this.mRootId;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getRoot() called while not connected(state=");
            sbO.append(getStateLabel(this.mState));
            sbO.append(")");
            throw new java.lang.IllegalStateException(sbO.toString());
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.content.ComponentName getServiceComponent() {
            if (isConnected()) {
                return this.mServiceComponent;
            }
            throw new java.lang.IllegalStateException(e.a.c.a.a.i(e.a.c.a.a.o("getServiceComponent() called while not connected (state="), this.mState, ")"));
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public android.support.v4.media.session.MediaSessionCompat.Token getSessionToken() {
            if (isConnected()) {
                return this.mMediaSessionToken;
            }
            throw new java.lang.IllegalStateException(e.a.c.a.a.i(e.a.c.a.a.o("getSessionToken() called while not connected(state="), this.mState, ")"));
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public boolean isConnected() {
            return this.mState == 3;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void onConnectionFailed(android.os.Messenger messenger) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("onConnectFailed for ");
            sbO.append(this.mServiceComponent);
            android.util.Log.e(android.support.v4.media.MediaBrowserCompat.TAG, sbO.toString());
            if (isCurrent(messenger, "onConnectFailed")) {
                if (this.mState == 2) {
                    forceCloseConnection();
                    this.mCallback.onConnectionFailed();
                } else {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("onConnect from service while mState=");
                    sbO2.append(getStateLabel(this.mState));
                    sbO2.append("... ignoring");
                    android.util.Log.w(android.support.v4.media.MediaBrowserCompat.TAG, sbO2.toString());
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void onLoadChildren(android.os.Messenger messenger, java.lang.String str, java.util.List list, android.os.Bundle bundle, android.os.Bundle bundle2) {
            if (isCurrent(messenger, "onLoadChildren")) {
                if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("onLoadChildren for ");
                    sbO.append(this.mServiceComponent);
                    sbO.append(" id=");
                    sbO.append(str);
                    android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, sbO.toString());
                }
                android.support.v4.media.MediaBrowserCompat.Subscription orDefault = this.mSubscriptions.getOrDefault(str, null);
                if (orDefault == null) {
                    if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                        android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "onLoadChildren for id that isn't subscribed id=" + str);
                        return;
                    }
                    return;
                }
                android.support.v4.media.MediaBrowserCompat.SubscriptionCallback callback = orDefault.getCallback(bundle);
                if (callback != null) {
                    if (bundle == null) {
                        if (list == null) {
                            callback.onError(str);
                            return;
                        } else {
                            this.mNotifyChildrenChangedOptions = bundle2;
                            callback.onChildrenLoaded(str, list);
                        }
                    } else if (list == null) {
                        callback.onError(str, bundle);
                        return;
                    } else {
                        this.mNotifyChildrenChangedOptions = bundle2;
                        callback.onChildrenLoaded(str, list, bundle);
                    }
                    this.mNotifyChildrenChangedOptions = null;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void onServiceConnected(android.os.Messenger messenger, java.lang.String str, android.support.v4.media.session.MediaSessionCompat.Token token, android.os.Bundle bundle) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (!isCurrent(messenger, "onConnect")) {
                return;
            }
            if (this.mState != 2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("onConnect from service while mState=");
                sbO.append(getStateLabel(this.mState));
                sbO.append("... ignoring");
                android.util.Log.w(android.support.v4.media.MediaBrowserCompat.TAG, sbO.toString());
                return;
            }
            this.mRootId = str;
            this.mMediaSessionToken = token;
            this.mExtras = bundle;
            this.mState = 3;
            if (android.support.v4.media.MediaBrowserCompat.DEBUG) {
                android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "ServiceCallbacks.onConnect...");
                dump();
            }
            this.mCallback.onConnected();
            try {
                java.util.Iterator it = ((d.e.g.b) this.mSubscriptions.entrySet()).iterator();
                while (true) {
                    d.e.g.d dVar = (d.e.g.d) it;
                    if (!dVar.hasNext()) {
                        return;
                    }
                    dVar.next();
                    d.e.g.d dVar2 = dVar;
                    java.lang.String str2 = (java.lang.String) dVar2.getKey();
                    android.support.v4.media.MediaBrowserCompat.Subscription subscription = (android.support.v4.media.MediaBrowserCompat.Subscription) dVar2.getValue();
                    java.util.List<android.support.v4.media.MediaBrowserCompat.SubscriptionCallback> callbacks = subscription.getCallbacks();
                    java.util.List<android.os.Bundle> optionsList = subscription.getOptionsList();
                    for (int i = 0; i < callbacks.size(); i++) {
                        this.mServiceBinderWrapper.addSubscription(str2, callbacks.get(i).mToken, optionsList.get(i), this.mCallbacksMessenger);
                    }
                }
            } catch (android.os.RemoteException unused) {
                android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "addSubscription failed with RemoteException.");
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void search(final java.lang.String str, final android.os.Bundle bundle, final android.support.v4.media.MediaBrowserCompat.SearchCallback searchCallback) {
            if (!isConnected()) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("search() called while not connected (state=");
                sbO.append(getStateLabel(this.mState));
                sbO.append(")");
                throw new java.lang.IllegalStateException(sbO.toString());
            }
            try {
                this.mServiceBinderWrapper.search(str, bundle, new android.support.v4.media.MediaBrowserCompat.SearchResultReceiver(str, bundle, searchCallback, this.mHandler), this.mCallbacksMessenger);
            } catch (android.os.RemoteException e2) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error searching items with query: " + str, e2);
                this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.5
                    @Override // java.lang.Runnable
                    public void run() {
                        searchCallback.onError(str, bundle);
                    }
                });
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void sendCustomAction(final java.lang.String str, final android.os.Bundle bundle, final android.support.v4.media.MediaBrowserCompat.CustomActionCallback customActionCallback) {
            if (!isConnected()) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Cannot send a custom action (");
                sb.append(str);
                sb.append(") with ");
                sb.append("extras ");
                sb.append(bundle);
                throw new java.lang.IllegalStateException(e.a.c.a.a.j(sb, " because the browser is not connected to the ", "service."));
            }
            try {
                this.mServiceBinderWrapper.sendCustomAction(str, bundle, new android.support.v4.media.MediaBrowserCompat.CustomActionResultReceiver(str, bundle, customActionCallback, this.mHandler), this.mCallbacksMessenger);
            } catch (android.os.RemoteException e2) {
                android.util.Log.i(android.support.v4.media.MediaBrowserCompat.TAG, "Remote error sending a custom action: action=" + str + ", extras=" + bundle, e2);
                if (customActionCallback != null) {
                    this.mHandler.post(new java.lang.Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.6
                        @Override // java.lang.Runnable
                        public void run() {
                            customActionCallback.onError(str, bundle, null);
                        }
                    });
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void subscribe(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.support.v4.media.MediaBrowserCompat.Subscription orDefault = this.mSubscriptions.getOrDefault(str, null);
            if (orDefault == null) {
                orDefault = new android.support.v4.media.MediaBrowserCompat.Subscription();
                this.mSubscriptions.put(str, orDefault);
            }
            android.os.Bundle bundle2 = bundle != null ? new android.os.Bundle(bundle) : null;
            orDefault.putCallback(bundle2, subscriptionCallback);
            if (isConnected()) {
                try {
                    this.mServiceBinderWrapper.addSubscription(str, subscriptionCallback.mToken, bundle2, this.mCallbacksMessenger);
                } catch (android.os.RemoteException unused) {
                    android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "addSubscription failed with RemoteException parentId=" + str);
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void unsubscribe(java.lang.String str, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.support.v4.media.MediaBrowserCompat.Subscription orDefault = this.mSubscriptions.getOrDefault(str, null);
            if (orDefault == null) {
                return;
            }
            try {
                if (subscriptionCallback != null) {
                    java.util.List<android.support.v4.media.MediaBrowserCompat.SubscriptionCallback> callbacks = orDefault.getCallbacks();
                    java.util.List<android.os.Bundle> optionsList = orDefault.getOptionsList();
                    for (int size = callbacks.size() - 1; size >= 0; size--) {
                        if (callbacks.get(size) == subscriptionCallback) {
                            if (isConnected()) {
                                this.mServiceBinderWrapper.removeSubscription(str, subscriptionCallback.mToken, this.mCallbacksMessenger);
                            }
                            callbacks.remove(size);
                            optionsList.remove(size);
                        }
                    }
                } else if (isConnected()) {
                    this.mServiceBinderWrapper.removeSubscription(str, null, this.mCallbacksMessenger);
                }
            } catch (android.os.RemoteException unused) {
                android.util.Log.d(android.support.v4.media.MediaBrowserCompat.TAG, "removeSubscription failed with RemoteException parentId=" + str);
            }
            if (orDefault.isEmpty() || subscriptionCallback == null) {
                this.mSubscriptions.remove(str);
            }
        }
    }

    public interface MediaBrowserServiceCallbackImpl {
        void onConnectionFailed(android.os.Messenger messenger);

        void onLoadChildren(android.os.Messenger messenger, java.lang.String str, java.util.List list, android.os.Bundle bundle, android.os.Bundle bundle2);

        void onServiceConnected(android.os.Messenger messenger, java.lang.String str, android.support.v4.media.session.MediaSessionCompat.Token token, android.os.Bundle bundle);
    }

    public static class MediaItem implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<android.support.v4.media.MediaBrowserCompat.MediaItem> CREATOR = new android.os.Parcelable.Creator<android.support.v4.media.MediaBrowserCompat.MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.MediaBrowserCompat.MediaItem createFromParcel(android.os.Parcel parcel) {
                return new android.support.v4.media.MediaBrowserCompat.MediaItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public android.support.v4.media.MediaBrowserCompat.MediaItem[] newArray(int i) {
                return new android.support.v4.media.MediaBrowserCompat.MediaItem[i];
            }
        };
        public static final int FLAG_BROWSABLE = 1;
        public static final int FLAG_PLAYABLE = 2;
        public final android.support.v4.media.MediaDescriptionCompat mDescription;
        public final int mFlags;

        @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
        public @interface Flags {
        }

        public MediaItem(android.os.Parcel parcel) {
            this.mFlags = parcel.readInt();
            this.mDescription = android.support.v4.media.MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat == null) {
                throw new java.lang.IllegalArgumentException("description cannot be null");
            }
            if (android.text.TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                throw new java.lang.IllegalArgumentException("description must have a non-empty media id");
            }
            this.mFlags = i;
            this.mDescription = mediaDescriptionCompat;
        }

        public static android.support.v4.media.MediaBrowserCompat.MediaItem fromMediaItem(java.lang.Object obj) {
            if (obj == null || android.os.Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new android.support.v4.media.MediaBrowserCompat.MediaItem(android.support.v4.media.MediaDescriptionCompat.fromMediaDescription(android.support.v4.media.MediaBrowserCompatApi21.MediaItem.getDescription(obj)), android.support.v4.media.MediaBrowserCompatApi21.MediaItem.getFlags(obj));
        }

        public static java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> fromMediaItemList(java.util.List<?> list) {
            if (list == null || android.os.Build.VERSION.SDK_INT < 21) {
                return null;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
            java.util.Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(fromMediaItem(it.next()));
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

        public int getFlags() {
            return this.mFlags;
        }

        public java.lang.String getMediaId() {
            return this.mDescription.getMediaId();
        }

        public boolean isBrowsable() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isPlayable() {
            return (this.mFlags & 2) != 0;
        }

        public java.lang.String toString() {
            return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeInt(this.mFlags);
            this.mDescription.writeToParcel(parcel, i);
        }
    }

    public static abstract class SearchCallback {
        public void onError(java.lang.String str, android.os.Bundle bundle) {
        }

        public void onSearchResult(java.lang.String str, android.os.Bundle bundle, java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> list) {
        }
    }

    public static class SearchResultReceiver extends android.support.v4.os.ResultReceiver {
        public final android.support.v4.media.MediaBrowserCompat.SearchCallback mCallback;
        public final android.os.Bundle mExtras;
        public final java.lang.String mQuery;

        public SearchResultReceiver(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SearchCallback searchCallback, android.os.Handler handler) {
            super(handler);
            this.mQuery = str;
            this.mExtras = bundle;
            this.mCallback = searchCallback;
        }

        @Override // android.support.v4.os.ResultReceiver
        public void onReceiveResult(int i, android.os.Bundle bundle) {
            android.support.v4.media.session.MediaSessionCompat.ensureClassLoader(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.mCallback.onError(this.mQuery, this.mExtras);
                return;
            }
            android.os.Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            java.util.ArrayList arrayList = null;
            if (parcelableArray != null) {
                arrayList = new java.util.ArrayList();
                for (android.os.Parcelable parcelable : parcelableArray) {
                    arrayList.add((android.support.v4.media.MediaBrowserCompat.MediaItem) parcelable);
                }
            }
            this.mCallback.onSearchResult(this.mQuery, this.mExtras, arrayList);
        }
    }

    public static class ServiceBinderWrapper {
        public android.os.Messenger mMessenger;
        public android.os.Bundle mRootHints;

        public ServiceBinderWrapper(android.os.IBinder iBinder, android.os.Bundle bundle) {
            this.mMessenger = new android.os.Messenger(iBinder);
            this.mRootHints = bundle;
        }

        private void sendRequest(int i, android.os.Bundle bundle, android.os.Messenger messenger) throws android.os.RemoteException {
            android.os.Message messageObtain = android.os.Message.obtain();
            messageObtain.what = i;
            messageObtain.arg1 = 1;
            messageObtain.setData(bundle);
            messageObtain.replyTo = messenger;
            this.mMessenger.send(messageObtain);
        }

        public void addSubscription(java.lang.String str, android.os.IBinder iBinder, android.os.Bundle bundle, android.os.Messenger messenger) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, android.os.RemoteException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.os.Bundle bundle2 = new android.os.Bundle();
            bundle2.putString("data_media_item_id", str);
            d.b.k.r.f0(bundle2, "data_callback_token", iBinder);
            bundle2.putBundle("data_options", bundle);
            sendRequest(3, bundle2, messenger);
        }

        public void connect(android.content.Context context, android.os.Messenger messenger) throws android.os.RemoteException {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.mRootHints);
            sendRequest(1, bundle, messenger);
        }

        public void disconnect(android.os.Messenger messenger) throws android.os.RemoteException {
            sendRequest(2, null, messenger);
        }

        public void getMediaItem(java.lang.String str, android.support.v4.os.ResultReceiver resultReceiver, android.os.Messenger messenger) throws android.os.RemoteException {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putString("data_media_item_id", str);
            bundle.putParcelable("data_result_receiver", resultReceiver);
            sendRequest(5, bundle, messenger);
        }

        public void registerCallbackMessenger(android.content.Context context, android.os.Messenger messenger) throws android.os.RemoteException {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putString("data_package_name", context.getPackageName());
            bundle.putBundle("data_root_hints", this.mRootHints);
            sendRequest(6, bundle, messenger);
        }

        public void removeSubscription(java.lang.String str, android.os.IBinder iBinder, android.os.Messenger messenger) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, android.os.RemoteException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putString("data_media_item_id", str);
            d.b.k.r.f0(bundle, "data_callback_token", iBinder);
            sendRequest(4, bundle, messenger);
        }

        public void search(java.lang.String str, android.os.Bundle bundle, android.support.v4.os.ResultReceiver resultReceiver, android.os.Messenger messenger) throws android.os.RemoteException {
            android.os.Bundle bundle2 = new android.os.Bundle();
            bundle2.putString("data_search_query", str);
            bundle2.putBundle("data_search_extras", bundle);
            bundle2.putParcelable("data_result_receiver", resultReceiver);
            sendRequest(8, bundle2, messenger);
        }

        public void sendCustomAction(java.lang.String str, android.os.Bundle bundle, android.support.v4.os.ResultReceiver resultReceiver, android.os.Messenger messenger) throws android.os.RemoteException {
            android.os.Bundle bundle2 = new android.os.Bundle();
            bundle2.putString("data_custom_action", str);
            bundle2.putBundle("data_custom_action_extras", bundle);
            bundle2.putParcelable("data_result_receiver", resultReceiver);
            sendRequest(9, bundle2, messenger);
        }

        public void unregisterCallbackMessenger(android.os.Messenger messenger) throws android.os.RemoteException {
            sendRequest(7, null, messenger);
        }
    }

    public static class Subscription {
        public final java.util.List<android.support.v4.media.MediaBrowserCompat.SubscriptionCallback> mCallbacks = new java.util.ArrayList();
        public final java.util.List<android.os.Bundle> mOptionsList = new java.util.ArrayList();

        public android.support.v4.media.MediaBrowserCompat.SubscriptionCallback getCallback(android.os.Bundle bundle) {
            for (int i = 0; i < this.mOptionsList.size(); i++) {
                if (d.b.k.r.a(this.mOptionsList.get(i), bundle)) {
                    return this.mCallbacks.get(i);
                }
            }
            return null;
        }

        public java.util.List<android.support.v4.media.MediaBrowserCompat.SubscriptionCallback> getCallbacks() {
            return this.mCallbacks;
        }

        public java.util.List<android.os.Bundle> getOptionsList() {
            return this.mOptionsList;
        }

        public boolean isEmpty() {
            return this.mCallbacks.isEmpty();
        }

        public void putCallback(android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) {
            for (int i = 0; i < this.mOptionsList.size(); i++) {
                if (d.b.k.r.a(this.mOptionsList.get(i), bundle)) {
                    this.mCallbacks.set(i, subscriptionCallback);
                    return;
                }
            }
            this.mCallbacks.add(subscriptionCallback);
            this.mOptionsList.add(bundle);
        }
    }

    public static abstract class SubscriptionCallback {
        public final java.lang.Object mSubscriptionCallbackObj;
        public java.lang.ref.WeakReference<android.support.v4.media.MediaBrowserCompat.Subscription> mSubscriptionRef;
        public final android.os.IBinder mToken = new android.os.Binder();

        public class StubApi21 implements android.support.v4.media.MediaBrowserCompatApi21.SubscriptionCallback {
            public StubApi21() {
            }

            public java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> applyOptions(java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> list, android.os.Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i = bundle.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE, -1);
                int i2 = bundle.getInt(android.support.v4.media.MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
                if (i == -1 && i2 == -1) {
                    return list;
                }
                int i3 = i2 * i;
                int size = i3 + i2;
                if (i < 0 || i2 < 1 || i3 >= list.size()) {
                    return java.util.Collections.emptyList();
                }
                if (size > list.size()) {
                    size = list.size();
                }
                return list.subList(i3, size);
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi21.SubscriptionCallback
            public void onChildrenLoaded(java.lang.String str, java.util.List<?> list) {
                java.lang.ref.WeakReference<android.support.v4.media.MediaBrowserCompat.Subscription> weakReference = android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.this.mSubscriptionRef;
                android.support.v4.media.MediaBrowserCompat.Subscription subscription = weakReference == null ? null : weakReference.get();
                if (subscription == null) {
                    android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.this.onChildrenLoaded(str, android.support.v4.media.MediaBrowserCompat.MediaItem.fromMediaItemList(list));
                    return;
                }
                java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> listFromMediaItemList = android.support.v4.media.MediaBrowserCompat.MediaItem.fromMediaItemList(list);
                java.util.List<android.support.v4.media.MediaBrowserCompat.SubscriptionCallback> callbacks = subscription.getCallbacks();
                java.util.List<android.os.Bundle> optionsList = subscription.getOptionsList();
                for (int i = 0; i < callbacks.size(); i++) {
                    android.os.Bundle bundle = optionsList.get(i);
                    if (bundle == null) {
                        android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.this.onChildrenLoaded(str, listFromMediaItemList);
                    } else {
                        android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.this.onChildrenLoaded(str, applyOptions(listFromMediaItemList, bundle), bundle);
                    }
                }
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi21.SubscriptionCallback
            public void onError(java.lang.String str) {
                android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.this.onError(str);
            }
        }

        public class StubApi26 extends android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.StubApi21 implements android.support.v4.media.MediaBrowserCompatApi26.SubscriptionCallback {
            public StubApi26() {
                super();
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi26.SubscriptionCallback
            public void onChildrenLoaded(java.lang.String str, java.util.List<?> list, android.os.Bundle bundle) {
                android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.this.onChildrenLoaded(str, android.support.v4.media.MediaBrowserCompat.MediaItem.fromMediaItemList(list), bundle);
            }

            @Override // android.support.v4.media.MediaBrowserCompatApi26.SubscriptionCallback
            public void onError(java.lang.String str, android.os.Bundle bundle) {
                android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.this.onError(str, bundle);
            }
        }

        public SubscriptionCallback() {
            int i = android.os.Build.VERSION.SDK_INT;
            this.mSubscriptionCallbackObj = i >= 26 ? android.support.v4.media.MediaBrowserCompatApi26.createSubscriptionCallback(new android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.StubApi26()) : i >= 21 ? android.support.v4.media.MediaBrowserCompatApi21.createSubscriptionCallback(new android.support.v4.media.MediaBrowserCompat.SubscriptionCallback.StubApi21()) : null;
        }

        public void onChildrenLoaded(java.lang.String str, java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> list) {
        }

        public void onChildrenLoaded(java.lang.String str, java.util.List<android.support.v4.media.MediaBrowserCompat.MediaItem> list, android.os.Bundle bundle) {
        }

        public void onError(java.lang.String str) {
        }

        public void onError(java.lang.String str, android.os.Bundle bundle) {
        }

        public void setSubscription(android.support.v4.media.MediaBrowserCompat.Subscription subscription) {
            this.mSubscriptionRef = new java.lang.ref.WeakReference<>(subscription);
        }
    }

    public MediaBrowserCompat(android.content.Context context, android.content.ComponentName componentName, android.support.v4.media.MediaBrowserCompat.ConnectionCallback connectionCallback, android.os.Bundle bundle) {
        int i = android.os.Build.VERSION.SDK_INT;
        this.mImpl = i >= 26 ? new android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi26(context, componentName, connectionCallback, bundle) : i >= 23 ? new android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi23(context, componentName, connectionCallback, bundle) : i >= 21 ? new android.support.v4.media.MediaBrowserCompat.MediaBrowserImplApi21(context, componentName, connectionCallback, bundle) : new android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase(context, componentName, connectionCallback, bundle);
    }

    public void connect() {
        this.mImpl.connect();
    }

    public void disconnect() {
        this.mImpl.disconnect();
    }

    public android.os.Bundle getExtras() {
        return this.mImpl.getExtras();
    }

    public void getItem(java.lang.String str, android.support.v4.media.MediaBrowserCompat.ItemCallback itemCallback) {
        this.mImpl.getItem(str, itemCallback);
    }

    public android.os.Bundle getNotifyChildrenChangedOptions() {
        return this.mImpl.getNotifyChildrenChangedOptions();
    }

    public java.lang.String getRoot() {
        return this.mImpl.getRoot();
    }

    public android.content.ComponentName getServiceComponent() {
        return this.mImpl.getServiceComponent();
    }

    public android.support.v4.media.session.MediaSessionCompat.Token getSessionToken() {
        return this.mImpl.getSessionToken();
    }

    public boolean isConnected() {
        return this.mImpl.isConnected();
    }

    public void search(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SearchCallback searchCallback) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("query cannot be empty");
        }
        if (searchCallback == null) {
            throw new java.lang.IllegalArgumentException("callback cannot be null");
        }
        this.mImpl.search(str, bundle, searchCallback);
    }

    public void sendCustomAction(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.CustomActionCallback customActionCallback) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("action cannot be empty");
        }
        this.mImpl.sendCustomAction(str, bundle, customActionCallback);
    }

    public void subscribe(java.lang.String str, android.os.Bundle bundle, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("parentId is empty");
        }
        if (subscriptionCallback == null) {
            throw new java.lang.IllegalArgumentException("callback is null");
        }
        if (bundle == null) {
            throw new java.lang.IllegalArgumentException("options are null");
        }
        this.mImpl.subscribe(str, bundle, subscriptionCallback);
    }

    public void subscribe(java.lang.String str, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("parentId is empty");
        }
        if (subscriptionCallback == null) {
            throw new java.lang.IllegalArgumentException("callback is null");
        }
        this.mImpl.subscribe(str, null, subscriptionCallback);
    }

    public void unsubscribe(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("parentId is empty");
        }
        this.mImpl.unsubscribe(str, null);
    }

    public void unsubscribe(java.lang.String str, android.support.v4.media.MediaBrowserCompat.SubscriptionCallback subscriptionCallback) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("parentId is empty");
        }
        if (subscriptionCallback == null) {
            throw new java.lang.IllegalArgumentException("callback is null");
        }
        this.mImpl.unsubscribe(str, subscriptionCallback);
    }
}
