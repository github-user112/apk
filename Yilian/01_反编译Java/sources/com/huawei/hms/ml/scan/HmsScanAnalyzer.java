package com.huawei.hms.ml.scan;

/* loaded from: classes.dex */
public class HmsScanAnalyzer extends com.huawei.hms.mlsdk.common.MLAnalyzer<com.huawei.hms.ml.scan.HmsScan> {
    public static final java.lang.String TAG = "HmsScanAnalyzer";
    public android.content.Context mContext;
    public com.huawei.hms.ml.scan.HmsScanAnalyzerOptions mlVisionScanDetectorOptions;

    public static class Creator {
        public android.content.Context mContext;
        public com.huawei.hms.ml.scan.HmsScanAnalyzerOptions mOptions;

        public Creator() {
            this.mContext = e.d.a.b.c.a.b.a;
        }

        public Creator(android.content.Context context) {
            this.mContext = context;
        }

        public com.huawei.hms.ml.scan.HmsScanAnalyzer create() {
            android.content.Context context = this.mContext;
            com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptionsCreate = this.mOptions;
            if (hmsScanAnalyzerOptionsCreate == null) {
                hmsScanAnalyzerOptionsCreate = new com.huawei.hms.ml.scan.HmsScanAnalyzerOptions.Creator().setHmsScanTypes(0, new int[0]).create();
            }
            return new com.huawei.hms.ml.scan.HmsScanAnalyzer(context, hmsScanAnalyzerOptionsCreate);
        }

        public com.huawei.hms.ml.scan.HmsScanAnalyzer.Creator setHmsScanTypes(int i, int... iArr) {
            this.mOptions = new com.huawei.hms.ml.scan.HmsScanAnalyzerOptions.Creator().setHmsScanTypes(i, iArr).create();
            return this;
        }

        public com.huawei.hms.ml.scan.HmsScanAnalyzer.Creator setHmsScanTypes(com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) {
            if (hmsScanAnalyzerOptions == null) {
                hmsScanAnalyzerOptions = new com.huawei.hms.ml.scan.HmsScanAnalyzerOptions.Creator().setHmsScanTypes(0, new int[0]).create();
            }
            this.mOptions = hmsScanAnalyzerOptions;
            return this;
        }
    }

    public HmsScanAnalyzer() {
        e.d.a.b.c.a aVar = e.d.a.b.c.a.b;
        if (aVar != null) {
            this.mContext = aVar.a;
        } else {
            com.huawei.hms.scankit.util.a.d(TAG, "AGConnectInstanceImpl contect is null");
        }
    }

    public HmsScanAnalyzer(android.content.Context context, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) {
        this.mContext = context;
        this.mlVisionScanDetectorOptions = hmsScanAnalyzerOptions;
    }

    @Override // com.huawei.hms.mlsdk.common.MLAnalyzer
    public android.util.SparseArray<com.huawei.hms.ml.scan.HmsScan> analyseFrame(com.huawei.hms.mlsdk.common.MLFrame mLFrame) {
        if (mLFrame == null) {
            return new android.util.SparseArray<>();
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDetectForHmsDector = com.huawei.hms.hmsscankit.ScanUtil.detectForHmsDector(this.mContext, mLFrame, this.mlVisionScanDetectorOptions);
        android.util.SparseArray<com.huawei.hms.ml.scan.HmsScan> sparseArray = new android.util.SparseArray<>();
        for (com.huawei.hms.ml.scan.HmsScan hmsScan : hmsScanArrDetectForHmsDector) {
            if (hmsScan != null && !android.text.TextUtils.isEmpty(hmsScan.originalValue)) {
                sparseArray.append(hmsScan.originalValue.hashCode(), hmsScan);
            }
        }
        return sparseArray;
    }

    public e.d.b.a.b<java.util.List<com.huawei.hms.ml.scan.HmsScan>> analyzInAsyn(final com.huawei.hms.mlsdk.common.MLFrame mLFrame) {
        java.util.concurrent.Callable<java.util.List<com.huawei.hms.ml.scan.HmsScan>> callable = new java.util.concurrent.Callable<java.util.List<com.huawei.hms.ml.scan.HmsScan>>() { // from class: com.huawei.hms.ml.scan.HmsScanAnalyzer.1
            @Override // java.util.concurrent.Callable
            public java.util.List<com.huawei.hms.ml.scan.HmsScan> call() {
                if (mLFrame == null) {
                    return null;
                }
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDetectForHmsDector = com.huawei.hms.hmsscankit.ScanUtil.detectForHmsDector(com.huawei.hms.ml.scan.HmsScanAnalyzer.this.mContext, mLFrame, com.huawei.hms.ml.scan.HmsScanAnalyzer.this.mlVisionScanDetectorOptions);
                java.util.ArrayList arrayList = new java.util.ArrayList();
                for (com.huawei.hms.ml.scan.HmsScan hmsScan : hmsScanArrDetectForHmsDector) {
                    if (hmsScan != null && !android.text.TextUtils.isEmpty(hmsScan.originalValue)) {
                        arrayList.add(hmsScan);
                    }
                }
                return arrayList;
            }
        };
        e.d.b.a.f.d dVar = e.d.b.a.e.a;
        java.util.concurrent.ExecutorService executorService = e.d.b.a.d.f2811c.a;
        e.d.b.a.c cVar = new e.d.b.a.c();
        try {
            executorService.execute(new e.d.b.a.f.c(dVar, cVar, callable));
        } catch (java.lang.Exception e2) {
            cVar.a(e2);
        }
        return cVar.a;
    }

    public void destory() {
        super.destroy();
    }

    @Override // com.huawei.hms.mlsdk.common.MLAnalyzer
    public boolean isAvailable() {
        return com.huawei.hms.hmsscankit.ScanUtil.isScanAvailable(this.mContext);
    }

    public HmsScanAnalyzer(com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) {
        this.mContext = e.d.a.b.c.a.b.a;
        this.mlVisionScanDetectorOptions = hmsScanAnalyzerOptions;
    }
}
