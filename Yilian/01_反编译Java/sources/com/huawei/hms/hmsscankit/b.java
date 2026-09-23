package com.huawei.hms.hmsscankit;

/* loaded from: classes.dex */
public class b {
    public static volatile com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate a;

    public static com.huawei.hms.ml.scan.HmsScan[] a(android.content.Context context, com.huawei.hms.mlsdk.common.MLFrame mLFrame, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException {
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArr = new com.huawei.hms.ml.scan.HmsScan[0];
        if (a == null) {
            com.huawei.hms.hmsscankit.api.IRemoteCreator iRemoteCreatorB = com.huawei.hms.hmsscankit.j.b(context);
            if (iRemoteCreatorB == null) {
                return hmsScanArr;
            }
            try {
                a = iRemoteCreatorB.newRemoteHmsDecoderDelegate();
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }
        if (a != null) {
            try {
                com.huawei.hms.hmsscankit.DetailRect detailRect = mLFrame.acquireProperty() != null ? new com.huawei.hms.hmsscankit.DetailRect(mLFrame.acquireProperty().getWidth(), mLFrame.acquireProperty().getHeight()) : new com.huawei.hms.hmsscankit.DetailRect();
                android.os.Bundle bundle = new android.os.Bundle();
                if (hmsScanAnalyzerOptions != null && hmsScanAnalyzerOptions.mode != 0) {
                    bundle.putInt(com.huawei.hms.hmsscankit.DetailRect.FORMAT_FLAG, hmsScanAnalyzerOptions.mode);
                }
                bundle.putInt(com.huawei.hms.hmsscankit.DetailRect.TYPE_TRANS, 3);
                bundle.putAll(com.huawei.hms.scankit.p.Rc.a(context));
                com.huawei.hms.ml.scan.HmsScan[] hmsScanArrDecodeInBitmap = mLFrame.readBitmap() != null ? a.decodeInBitmap(detailRect, com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(mLFrame.readBitmap()), com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bundle)) : a.detectWithByteBuffer(detailRect, com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(mLFrame.acquireGrayByteBuffer()), com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bundle));
                if (hmsScanArrDecodeInBitmap != null) {
                    return hmsScanArrDecodeInBitmap;
                }
            } catch (android.os.RemoteException unused2) {
                com.huawei.hms.scankit.util.a.b("exception", "RemoteException");
            }
        }
        return hmsScanArr;
    }
}
