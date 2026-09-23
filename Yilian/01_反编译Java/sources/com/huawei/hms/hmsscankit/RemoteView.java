package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class RemoteView extends android.widget.FrameLayout {
    public static final int REQUEST_CODE_PHOTO = 4371;
    public static final java.lang.String TAG = "ScanKitRemoteView";
    public boolean flagForGallery;
    public android.content.Context mContext;
    public boolean mContinuouslyScan;
    public com.huawei.hms.hmsscankit.RemoteView.a mRemoteHelper;
    public boolean mReturnedBitmap;

    public static class Builder {
        public android.app.Activity mContext;
        public com.huawei.hms.ml.scan.HmsScanAnalyzerOptions mFormat;
        public android.graphics.Rect mRect;
        public boolean mIsCustomed = true;
        public boolean mContinuouslyScan = true;
        public boolean mReturnedBitmap = false;

        public com.huawei.hms.hmsscankit.RemoteView build() {
            android.app.Activity activity = this.mContext;
            boolean z = this.mIsCustomed;
            com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions = this.mFormat;
            return new com.huawei.hms.hmsscankit.RemoteView(activity, z, hmsScanAnalyzerOptions == null ? 0 : hmsScanAnalyzerOptions.mode, this.mRect).setContinuouslyScan(this.mContinuouslyScan).enableReturnBitmap(this.mReturnedBitmap);
        }

        public com.huawei.hms.hmsscankit.RemoteView.Builder enableReturnBitmap() {
            this.mReturnedBitmap = true;
            return this;
        }

        public com.huawei.hms.hmsscankit.RemoteView.Builder setBoundingBox(android.graphics.Rect rect) {
            this.mRect = rect;
            return this;
        }

        public com.huawei.hms.hmsscankit.RemoteView.Builder setContext(android.app.Activity activity) {
            this.mContext = activity;
            return this;
        }

        public com.huawei.hms.hmsscankit.RemoteView.Builder setContinuouslyScan(boolean z) {
            this.mContinuouslyScan = z;
            return this;
        }

        public com.huawei.hms.hmsscankit.RemoteView.Builder setFormat(int i, int... iArr) {
            this.mFormat = new com.huawei.hms.ml.scan.HmsScanAnalyzerOptions.Creator().setHmsScanTypes(i, iArr).create();
            return this;
        }
    }

    public class a extends com.huawei.hms.feature.dynamic.DeferredLifecycleHelper<com.huawei.hms.hmsscankit.RemoteView.b> {

        /* renamed from: f, reason: collision with root package name */
        public android.view.ViewGroup f345f;

        /* renamed from: g, reason: collision with root package name */
        public android.app.Activity f346g;
        public com.huawei.hms.feature.dynamic.OnDelegateCreatedListener<com.huawei.hms.hmsscankit.RemoteView.b> h;
        public com.huawei.hms.hmsscankit.api.IRemoteViewDelegate i;
        public com.huawei.hms.hmsscankit.api.IOnResultCallback j = null;
        public boolean k;
        public boolean l;
        public int m;
        public com.huawei.hms.hmsscankit.api.IOnLightCallback n;
        public android.graphics.Rect o;
        public android.os.Bundle p;
        public boolean q;
        public boolean r;

        public a(android.app.Activity activity, android.view.ViewGroup viewGroup, boolean z, int i, android.graphics.Rect rect) {
            this.f345f = viewGroup;
            this.f346g = activity;
            this.k = z;
            this.m = i;
            this.o = rect;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, int i2, android.content.Intent intent) {
            java.lang.String str;
            if (i2 == -1 && intent != null && i == 4371) {
                try {
                    com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeWithBitmap = com.huawei.hms.hmsscankit.ScanUtil.decodeWithBitmap(com.huawei.hms.hmsscankit.RemoteView.this.mContext, com.huawei.hms.scankit.util.b.a(com.huawei.hms.hmsscankit.RemoteView.this.mContext, intent), new com.huawei.hms.ml.scan.HmsScanAnalyzerOptions.Creator().setPhotoMode(true).create());
                    if (this.j != null) {
                        this.j.onResult(hmsScanArrDecodeWithBitmap);
                    }
                } catch (android.os.RemoteException unused) {
                    str = "RemoteException in remoteview";
                    com.huawei.hms.scankit.util.a.b(com.huawei.hms.hmsscankit.RemoteView.TAG, str);
                } catch (java.lang.Error unused2) {
                    str = "Exception in error";
                    com.huawei.hms.scankit.util.a.b(com.huawei.hms.hmsscankit.RemoteView.TAG, str);
                } catch (java.lang.IllegalStateException unused3) {
                    str = "IllegalStateException in remoteview";
                    com.huawei.hms.scankit.util.a.b(com.huawei.hms.hmsscankit.RemoteView.TAG, str);
                } catch (java.lang.Exception unused4) {
                    str = "Exception in remoteview";
                    com.huawei.hms.scankit.util.a.b(com.huawei.hms.hmsscankit.RemoteView.TAG, str);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(android.os.Bundle bundle) {
            this.p = bundle;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.huawei.hms.hmsscankit.api.IOnErrorCallback iOnErrorCallback) {
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate != null) {
                try {
                    iRemoteViewDelegate.setOnErrorCallback(iOnErrorCallback);
                } catch (android.os.RemoteException unused) {
                    com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.huawei.hms.hmsscankit.api.IOnLightCallback iOnLightCallback) {
            this.n = iOnLightCallback;
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate != null) {
                try {
                    iRemoteViewDelegate.setOnLightVisbleCallBack(iOnLightCallback);
                } catch (android.os.RemoteException unused) {
                    com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.huawei.hms.hmsscankit.api.IOnResultCallback iOnResultCallback) {
            this.j = iOnResultCallback;
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate != null) {
                try {
                    iRemoteViewDelegate.setOnResultCallback(iOnResultCallback);
                } catch (android.os.RemoteException unused) {
                    com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b() {
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate == null) {
                return false;
            }
            try {
                return iRemoteViewDelegate.getLightStatus();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate != null) {
                try {
                    iRemoteViewDelegate.pauseContinuouslyScan();
                } catch (android.os.RemoteException unused) {
                    com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(boolean z) {
            this.l = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate != null) {
                try {
                    iRemoteViewDelegate.resumeContinuouslyScan();
                } catch (android.os.RemoteException unused) {
                    com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean e() {
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate == null) {
                return false;
            }
            try {
                iRemoteViewDelegate.turnOffLight();
                return true;
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean f() {
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate == null) {
                return false;
            }
            try {
                iRemoteViewDelegate.turnOnLight();
                return true;
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
                return false;
            }
        }

        public void a(boolean z) {
            this.q = z;
        }

        public void b(boolean z) {
            this.r = z;
        }

        @Override // com.huawei.hms.feature.dynamic.DeferredLifecycleHelper
        public void createDelegate(com.huawei.hms.feature.dynamic.OnDelegateCreatedListener<com.huawei.hms.hmsscankit.RemoteView.b> onDelegateCreatedListener) throws java.lang.IllegalAccessException, java.lang.InstantiationException {
            android.os.Bundle bundle;
            com.huawei.hms.hmsscankit.api.IRemoteCreator iRemoteCreatorC;
            this.h = onDelegateCreatedListener;
            if (onDelegateCreatedListener == null || getDelegate() != null) {
                return;
            }
            this.i = null;
            try {
                bundle = new android.os.Bundle();
                if (!this.k && this.m == 0 && this.o == null) {
                    com.huawei.hms.scankit.util.a.c(com.huawei.hms.hmsscankit.RemoteView.TAG, "!mCustomed && mFormatValue == 0 && mRect == null");
                } else {
                    bundle.putBoolean(com.huawei.hms.hmsscankit.DetailRect.CUSTOMED_FLAG, this.k);
                    bundle.putInt(com.huawei.hms.hmsscankit.DetailRect.FORMAT_FLAG, this.m);
                    if (this.o != null) {
                        bundle.putParcelable(com.huawei.hms.hmsscankit.DetailRect.RECT_FLAG, this.o);
                    }
                }
                if (this.q) {
                    bundle.putBoolean(com.huawei.hms.hmsscankit.DetailRect.SCAN_OFFSCEEN_FLAG, this.q);
                }
                if (this.l) {
                    bundle.putBoolean(com.huawei.hms.hmsscankit.DetailRect.DEEPLINK_JUMP_FLAG, this.l);
                    bundle.putAll(this.p);
                }
                bundle.putInt(com.huawei.hms.hmsscankit.DetailRect.TYPE_TRANS, 3);
                bundle.putBoolean(com.huawei.hms.hmsscankit.DetailRect.RETURN_BITMAP, this.r);
                bundle.putAll(com.huawei.hms.scankit.p.Rc.a(this.f346g));
                bundle.putBoolean(com.huawei.hms.hmsscankit.DetailRect.SCAN_NEW_UI, true);
                iRemoteCreatorC = com.huawei.hms.hmsscankit.j.c(this.f346g);
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
            if (iRemoteCreatorC == null) {
                return;
            }
            this.i = iRemoteCreatorC.newRemoteViewDelegate(com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(this.f346g), com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bundle));
            com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate = this.i;
            if (iRemoteViewDelegate == null) {
                return;
            }
            try {
                if (this.j != null) {
                    iRemoteViewDelegate.setOnResultCallback(this.j);
                    this.i.setOnClickListener(com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(new com.huawei.hms.hmsscankit.h(this)));
                }
                this.i.setOnClickListener(com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(new com.huawei.hms.hmsscankit.i(this)));
                if (this.n != null) {
                    this.i.setOnLightVisbleCallBack(this.n);
                }
            } catch (android.os.RemoteException unused2) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
            this.h.onDelegateCreated(new com.huawei.hms.hmsscankit.RemoteView.b(this.f345f, this.i));
        }
    }

    public static class b implements com.huawei.hms.feature.dynamic.LifecycleDelegate {
        public android.view.ViewGroup a;
        public android.view.View b;

        /* renamed from: c, reason: collision with root package name */
        public com.huawei.hms.hmsscankit.api.IRemoteViewDelegate f347c;

        public b(android.view.ViewGroup viewGroup, com.huawei.hms.hmsscankit.api.IRemoteViewDelegate iRemoteViewDelegate) {
            this.a = viewGroup;
            this.f347c = iRemoteViewDelegate;
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onCreate(android.os.Bundle bundle) {
            try {
                this.f347c.onCreate(bundle);
                this.b = (android.view.View) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(this.f347c.getView());
                this.a.removeAllViews();
                this.a.addView(this.b);
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
            return new android.view.View(null);
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.f347c.onDestroy();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onDestroyView() {
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onInflate(android.app.Activity activity, android.os.Bundle bundle, android.os.Bundle bundle2) {
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onLowMemory() {
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                this.f347c.onPause();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                this.f347c.onResume();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onSaveInstanceState(android.os.Bundle bundle) {
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onStart() {
            try {
                this.f347c.onStart();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }

        @Override // com.huawei.hms.feature.dynamic.LifecycleDelegate
        public void onStop() {
            try {
                this.f347c.onStop();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }
    }

    public RemoteView(android.app.Activity activity, boolean z, int i, android.graphics.Rect rect) {
        super(activity);
        this.mContinuouslyScan = true;
        this.mReturnedBitmap = false;
        this.flagForGallery = false;
        this.mContext = activity;
        this.mRemoteHelper = new com.huawei.hms.hmsscankit.RemoteView.a(activity, this, z, i, rect);
    }

    public RemoteView(android.app.Activity activity, boolean z, int i, android.graphics.Rect rect, boolean z2) {
        super(activity);
        this.mContinuouslyScan = true;
        this.mReturnedBitmap = false;
        this.flagForGallery = false;
        this.mContext = activity;
        com.huawei.hms.hmsscankit.RemoteView.a aVar = new com.huawei.hms.hmsscankit.RemoteView.a(activity, this, z, i, rect);
        this.mRemoteHelper = aVar;
        aVar.a(z2);
    }

    public RemoteView(android.app.Activity activity, boolean z, android.os.Bundle bundle) {
        super(activity);
        this.mContinuouslyScan = true;
        this.mReturnedBitmap = false;
        this.flagForGallery = false;
        this.mContext = activity;
        com.huawei.hms.hmsscankit.RemoteView.a aVar = new com.huawei.hms.hmsscankit.RemoteView.a(activity, this, false, 0, null);
        this.mRemoteHelper = aVar;
        aVar.c(z);
        this.mRemoteHelper.a(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPhotoCode(android.app.Activity activity) {
        if (!com.huawei.hms.scankit.util.b.b((android.content.Context) activity) && activity.checkPermission("android.permission.READ_EXTERNAL_STORAGE", android.os.Process.myPid(), android.os.Process.myUid()) != 0) {
            if (android.os.Build.VERSION.SDK_INT >= 23) {
                activity.requestPermissions(new java.lang.String[]{"android.permission.READ_EXTERNAL_STORAGE"}, REQUEST_CODE_PHOTO);
                return;
            }
            return;
        }
        try {
            android.content.Intent intent = new android.content.Intent("android.intent.action.PICK", android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
            if (com.huawei.hms.scankit.util.b.e(activity)) {
                if (com.huawei.hms.scankit.util.b.a(new android.content.Intent(), "com.android.gallery3d", activity) != null) {
                    com.huawei.hms.scankit.util.a.c(TAG, "Start Gallery:com.android.gallery3d");
                    intent.setPackage("com.android.gallery3d");
                } else if (com.huawei.hms.scankit.util.b.a(new android.content.Intent(), "com.huawei.photos", activity) != null) {
                    intent.setPackage("com.huawei.photos");
                    com.huawei.hms.scankit.util.a.c(TAG, "Start Gallery:com.huawei.photos");
                }
            }
            intent.setDataAndType(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
            this.flagForGallery = true;
            activity.startActivityForResult(intent, REQUEST_CODE_PHOTO);
        } catch (java.lang.Exception unused) {
            com.huawei.hms.scankit.util.a.b(TAG, "startPhotoCode Exception");
        }
    }

    public com.huawei.hms.hmsscankit.RemoteView enableReturnBitmap(boolean z) {
        this.mReturnedBitmap = z;
        this.mRemoteHelper.b(z);
        return this;
    }

    public boolean getLightStatus() {
        return this.mRemoteHelper.b();
    }

    public void onActivityResult(int i, int i2, android.content.Intent intent) {
        android.util.Log.i(TAG, "onActivityResult: ");
        this.mRemoteHelper.a(i, i2, intent);
    }

    public void onCreate(android.os.Bundle bundle) {
        android.util.Log.i(TAG, "onCreate:");
        android.content.Context context = this.mContext;
        if ((context instanceof android.app.Activity) && ((android.app.Activity) context).getWindow() != null) {
            ((android.app.Activity) this.mContext).getWindow().setFlags(16777216, 16777216);
        }
        this.mRemoteHelper.onCreate(bundle);
    }

    public final void onDestroy() {
        android.util.Log.i(TAG, "onDestroy: ");
        this.mRemoteHelper.onDestroy();
    }

    public final void onPause() {
        android.util.Log.i(TAG, "onPause: ");
        this.mRemoteHelper.onPause();
        if (this.flagForGallery) {
            this.mRemoteHelper.onStop();
        }
    }

    public void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr, android.app.Activity activity) {
        if (i == 4371 && iArr.length == 1 && iArr[0] == 0) {
            startPhotoCode(activity);
        }
    }

    public final void onResume() {
        android.util.Log.i(TAG, "onResume: ");
        this.mRemoteHelper.onResume();
        this.flagForGallery = false;
    }

    public final void onStart() {
        android.util.Log.i(TAG, "onStart: ");
        this.mRemoteHelper.onStart();
        this.flagForGallery = false;
    }

    public final void onStop() {
        android.util.Log.i(TAG, "onStop: ");
        if (this.flagForGallery) {
            return;
        }
        this.mRemoteHelper.onStop();
    }

    public void pauseContinuouslyScan() {
        this.mRemoteHelper.c();
    }

    public void resumeContinuouslyScan() {
        this.mRemoteHelper.d();
    }

    public void selectPictureFromLocalFile() {
        startPhotoCode((android.app.Activity) this.mContext);
    }

    public void selectPictureFromLocalFileFragment(android.app.Fragment fragment) {
        android.content.Intent intent = new android.content.Intent("android.intent.action.PICK", android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setDataAndType(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
        fragment.startActivityForResult(intent, REQUEST_CODE_PHOTO);
    }

    public com.huawei.hms.hmsscankit.RemoteView setContinuouslyScan(boolean z) {
        this.mContinuouslyScan = z;
        return this;
    }

    public void setOnErrorCallback(com.huawei.hms.hmsscankit.OnErrorCallback onErrorCallback) {
        this.mRemoteHelper.a(new com.huawei.hms.hmsscankit.c(onErrorCallback));
    }

    public void setOnLightVisibleCallback(com.huawei.hms.hmsscankit.OnLightVisibleCallBack onLightVisibleCallBack) {
        this.mRemoteHelper.a(new com.huawei.hms.hmsscankit.d(onLightVisibleCallBack));
    }

    public void setOnResultCallback(com.huawei.hms.hmsscankit.OnResultCallback onResultCallback) {
        this.mRemoteHelper.a(new com.huawei.hms.hmsscankit.e(onResultCallback, this.mContinuouslyScan));
    }

    public boolean switchLight() {
        return !getLightStatus() ? this.mRemoteHelper.f() : this.mRemoteHelper.e();
    }
}
