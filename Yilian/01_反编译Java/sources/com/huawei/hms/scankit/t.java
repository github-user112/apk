package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class t extends com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate.Stub {
    public static volatile com.huawei.hms.scankit.t a = new com.huawei.hms.scankit.t();
    public volatile com.huawei.hms.scankit.p.Kc b = null;

    private android.os.Bundle a(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        return (iObjectWrapper == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper) instanceof android.os.Bundle)) ? new android.os.Bundle() : (android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
    }

    public static com.huawei.hms.scankit.t a() {
        return a;
    }

    private com.huawei.hms.ml.scan.HmsScan[] a(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        boolean z;
        boolean z2;
        int iB;
        if (iObjectWrapper == null) {
            com.huawei.hms.scankit.util.a.b("ScankitRemoteS", "bitmap is null");
            return new com.huawei.hms.ml.scan.HmsScan[0];
        }
        java.lang.Object objUnwrap = com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
        if (iObjectWrapper2 == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2) instanceof android.os.Bundle)) {
            z = false;
            z2 = false;
            iB = 0;
        } else {
            z2 = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getBoolean(com.huawei.hms.hmsscankit.DetailRect.PHOTO_MODE, false);
            iB = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getInt(com.huawei.hms.hmsscankit.DetailRect.FORMAT_FLAG);
            int i = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getInt(com.huawei.hms.hmsscankit.DetailRect.TYPE_TRANS, 0);
            com.huawei.hms.hmsscankit.DetailRect.HMSSCAN_SDK_VALUE = i;
            z = i >= 2;
            if (z) {
                iB = com.huawei.hms.scankit.util.b.b(iB);
            }
        }
        if (!(objUnwrap instanceof android.graphics.Bitmap)) {
            return new com.huawei.hms.ml.scan.HmsScan[0];
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrA = com.huawei.hms.scankit.D.a().a((android.graphics.Bitmap) objUnwrap, iB, z2, this.b);
        return !z ? com.huawei.hms.scankit.util.b.a(hmsScanArrA) : hmsScanArrA;
    }

    private com.huawei.hms.ml.scan.HmsScan[] a(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        boolean z;
        int i;
        boolean z2;
        if (iObjectWrapper == null) {
            com.huawei.hms.scankit.util.a.b("ScankitRemoteS", "bytebuffer is null");
            return new com.huawei.hms.ml.scan.HmsScan[0];
        }
        java.lang.Object objUnwrap = com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
        if (iObjectWrapper2 == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2) instanceof android.os.Bundle)) {
            z = false;
            i = 0;
            z2 = false;
        } else {
            int iB = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getInt(com.huawei.hms.hmsscankit.DetailRect.FORMAT_FLAG);
            boolean z3 = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getBoolean(com.huawei.hms.hmsscankit.DetailRect.PHOTO_MODE, false);
            int i2 = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getInt(com.huawei.hms.hmsscankit.DetailRect.TYPE_TRANS, 0);
            com.huawei.hms.hmsscankit.DetailRect.HMSSCAN_SDK_VALUE = i2;
            z = i2 >= 2;
            if (z) {
                iB = com.huawei.hms.scankit.util.b.b(iB);
            }
            i = iB;
            z2 = z3;
        }
        if (!(objUnwrap instanceof java.nio.ByteBuffer)) {
            return new com.huawei.hms.ml.scan.HmsScan[0];
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrA = com.huawei.hms.scankit.D.a().a((java.nio.ByteBuffer) objUnwrap, detailRect == null ? 1000 : detailRect.width, detailRect == null ? 1000 : detailRect.height, i, z2, this.b);
        return !z ? com.huawei.hms.scankit.util.b.a(hmsScanArrA) : hmsScanArrA;
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate
    public com.huawei.hms.ml.scan.HmsScan[] decodeInBitmap(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        android.os.Bundle bundleA = a(iObjectWrapper2);
        if (this.b == null) {
            try {
                this.b = new com.huawei.hms.scankit.p.Kc(bundleA, "MultiProcessor");
            } catch (java.lang.RuntimeException | java.lang.Exception unused) {
                com.huawei.hms.scankit.util.a.b("IRemoteDecoderDelegateImpl", "Ha error");
            }
        }
        return a(iObjectWrapper, iObjectWrapper2);
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteHmsDecoderDelegate
    public com.huawei.hms.ml.scan.HmsScan[] detectWithByteBuffer(com.huawei.hms.hmsscankit.DetailRect detailRect, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        android.os.Bundle bundleA = a(iObjectWrapper2);
        if (this.b == null) {
            try {
                this.b = new com.huawei.hms.scankit.p.Kc(bundleA, "MultiProcessor");
            } catch (java.lang.RuntimeException | java.lang.Exception unused) {
                com.huawei.hms.scankit.util.a.b("IRemoteDecoderDelegateImpl", "Ha error");
            }
        }
        return a(detailRect, iObjectWrapper, iObjectWrapper2);
    }
}
