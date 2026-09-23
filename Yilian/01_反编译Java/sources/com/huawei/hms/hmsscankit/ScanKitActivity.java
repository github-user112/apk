package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class ScanKitActivity extends android.app.Activity {
    public static final java.lang.String TAG = "ScanKitActivity";
    public int lastRotation = Integer.MAX_VALUE;
    public android.view.OrientationEventListener mOrientationListener;
    public com.huawei.hms.hmsscankit.RemoteView remoteView;

    private void startOrientationChangeListener() {
        android.view.OrientationEventListener orientationEventListener = new android.view.OrientationEventListener(this) { // from class: com.huawei.hms.hmsscankit.ScanKitActivity.2
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                try {
                    int rotation = com.huawei.hms.hmsscankit.ScanKitActivity.this.getWindowManager().getDefaultDisplay().getRotation();
                    if (java.lang.Math.abs(com.huawei.hms.hmsscankit.ScanKitActivity.this.lastRotation - rotation) == 2) {
                        com.huawei.hms.hmsscankit.ScanKitActivity.this.recreate();
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append("onOrientationChanged: currentRotation");
                        sb.append(rotation);
                        android.util.Log.i(com.huawei.hms.hmsscankit.ScanKitActivity.TAG, sb.toString());
                    }
                    com.huawei.hms.hmsscankit.ScanKitActivity.this.lastRotation = rotation;
                } catch (java.lang.RuntimeException unused) {
                    android.util.Log.e(com.huawei.hms.hmsscankit.ScanKitActivity.TAG, "onOrientationChanged: RuntimeException");
                }
            }
        };
        this.mOrientationListener = orientationEventListener;
        orientationEventListener.enable();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, android.content.Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.remoteView.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        android.view.Window window;
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(com.huawei.hms.scankit.R.layout.scankit_layout);
        try {
        } catch (java.lang.NullPointerException unused) {
            com.huawei.hms.scankit.util.a.c(TAG, "getIntExtra can not get");
        }
        int intExtra = getIntent() != null ? getIntent().getIntExtra(com.huawei.hms.ml.scan.HmsScanBase.SCAN_FORMAT_FLAG, 0) : 0;
        com.huawei.hms.hmsscankit.RemoteView remoteView = new com.huawei.hms.hmsscankit.RemoteView(this, false, intExtra, null);
        this.remoteView = remoteView;
        remoteView.setOnResultCallback(new com.huawei.hms.hmsscankit.OnResultCallback() { // from class: com.huawei.hms.hmsscankit.ScanKitActivity.1
            @Override // com.huawei.hms.hmsscankit.OnResultCallback
            public void onResult(com.huawei.hms.ml.scan.HmsScan[] hmsScanArr) {
                if (hmsScanArr == null || hmsScanArr.length <= 0 || hmsScanArr[0] == null || android.text.TextUtils.isEmpty(hmsScanArr[0].originalValue)) {
                    return;
                }
                android.util.Log.i(com.huawei.hms.hmsscankit.ScanKitActivity.TAG, "onResult: obtain scanResult");
                android.content.Intent intent = new android.content.Intent();
                intent.putExtra(com.huawei.hms.hmsscankit.ScanUtil.RESULT, hmsScanArr[0]);
                com.huawei.hms.hmsscankit.ScanKitActivity.this.setResult(-1, intent);
                com.huawei.hms.hmsscankit.ScanKitActivity.this.finish();
            }
        });
        this.remoteView.onCreate(bundle);
        ((android.view.ViewGroup) findViewById(com.huawei.hms.scankit.R.id.ll_top)).addView(this.remoteView);
        boolean zIsInMultiWindowMode = android.os.Build.VERSION.SDK_INT >= 24 ? isInMultiWindowMode() : false;
        if (android.os.Build.VERSION.SDK_INT >= 19 && (window = getWindow()) != null) {
            window.addFlags(201326592);
            if (zIsInMultiWindowMode) {
                window.clearFlags(net.easyconn.ecsdk.ECTypes.ECInputImeOptions.EC_INPUT_IME_FLAG_NAVIGATE_NEXT);
            }
        }
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            startOrientationChangeListener();
        }
        android.util.Log.i(TAG, "ScankitActivity on create");
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.remoteView.onDestroy();
        android.util.Log.i(TAG, "ScankitActivity onDestroy");
        android.view.OrientationEventListener orientationEventListener = this.mOrientationListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.remoteView.onPause();
        android.util.Log.i(TAG, "ScankitActivity onPause");
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr) {
        this.remoteView.onRequestPermissionsResult(i, strArr, iArr, this);
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.remoteView.onResume();
        android.util.Log.i(TAG, "ScankitActivity onResume");
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.remoteView.onStart();
        android.util.Log.i(TAG, "ScankitActivity onStart");
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.remoteView.onStop();
        android.util.Log.i(TAG, "ScankitActivity onStop");
    }
}
