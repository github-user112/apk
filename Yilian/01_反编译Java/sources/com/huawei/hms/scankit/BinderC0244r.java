package com.huawei.hms.scankit;

/* renamed from: com.huawei.hms.scankit.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class BinderC0244r extends com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate.Stub {
    public static volatile com.huawei.hms.scankit.BinderC0244r a = new com.huawei.hms.scankit.BinderC0244r();
    public volatile com.huawei.hms.scankit.p.Kc b = null;

    /* renamed from: c, reason: collision with root package name */
    public volatile com.huawei.hms.scankit.p.Pc f880c = null;

    public static com.huawei.hms.scankit.BinderC0244r a() {
        return a;
    }

    private com.huawei.hms.ml.scan.HmsScan[] a(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        boolean z;
        int iB;
        boolean z2;
        if (iObjectWrapper == null) {
            com.huawei.hms.scankit.util.a.b("IRemoteDecoder", "bitmap is null");
            return new com.huawei.hms.ml.scan.HmsScan[0];
        }
        java.lang.Object objUnwrap = com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
        if (iObjectWrapper2 == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2) instanceof android.os.Bundle)) {
            z = false;
            iB = 0;
            z2 = true;
        } else {
            iB = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getInt(com.huawei.hms.hmsscankit.DetailRect.FORMAT_FLAG);
            z2 = ((android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2)).getBoolean(com.huawei.hms.hmsscankit.DetailRect.PHOTO_MODE, false);
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
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrB = com.huawei.hms.scankit.D.a().b((android.graphics.Bitmap) objUnwrap, iB, z2, this.b);
        return !z ? com.huawei.hms.scankit.util.b.a(hmsScanArrB) : hmsScanArrB;
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
    public com.huawei.hms.feature.dynamic.IObjectWrapper buildBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) throws android.os.RemoteException {
        if (iObjectWrapper == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper) instanceof android.os.Bundle)) {
            throw new android.os.RemoteException("Bundle is Null");
        }
        android.os.Bundle bundle = (android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
        java.lang.String string = bundle.getString(com.huawei.hms.ml.scan.HmsBuildBitmapOption.TYPE_BUILD_BITMAP_CONTENT);
        int i = bundle.getInt(com.huawei.hms.ml.scan.HmsBuildBitmapOption.TYPE_BUILD_BITMAP_FOTMAT);
        int i2 = bundle.getInt(com.huawei.hms.ml.scan.HmsBuildBitmapOption.TYPE_BUILD_BITMAP_WIDTH);
        int i3 = bundle.getInt(com.huawei.hms.ml.scan.HmsBuildBitmapOption.TYPE_BUILD_BITMAP_HEIGHT);
        int i4 = bundle.getInt(com.huawei.hms.ml.scan.HmsBuildBitmapOption.TYPE_BUILD_BITMAP_MARGIN, 1);
        int i5 = bundle.getInt(com.huawei.hms.ml.scan.HmsBuildBitmapOption.TYPE_BUILD_BITMAP_COLOR, -1);
        try {
            android.graphics.Bitmap bitmapA = new com.huawei.hms.scankit.p.C0194pd().a(string, i, i2, i3, new com.huawei.hms.ml.scan.HmsBuildBitmapOption.Creator().setBitmapMargin(i4).setBitmapColor(i5).setBitmapBackgroundColor(bundle.getInt(com.huawei.hms.ml.scan.HmsBuildBitmapOption.TYPE_BUILD_BITMAP_BACKCOLOR, -1)).create());
            if (bitmapA != null) {
                return com.huawei.hms.feature.dynamic.ObjectWrapper.wrap(bitmapA);
            }
            throw new android.os.RemoteException("Bitmap is Null");
        } catch (com.huawei.hms.hmsscankit.WriterException e2) {
            throw new android.os.RemoteException(e2.getMessage());
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
    public void buildBitmapLog(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper) instanceof android.os.Bundle)) {
            return;
        }
        android.os.Bundle bundle = (android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper);
        try {
            if (this.f880c == null) {
                try {
                    try {
                        this.f880c = new com.huawei.hms.scankit.p.Pc();
                        if (this.f880c == null) {
                            return;
                        }
                    } catch (java.lang.RuntimeException e2) {
                        com.huawei.hms.scankit.util.a.b("IRemoteDecoderDelegateImpl", e2.getMessage());
                        if (this.f880c == null) {
                            return;
                        }
                    }
                } catch (java.lang.Exception e3) {
                    com.huawei.hms.scankit.util.a.b("IRemoteDecoderDelegateImpl", e3.getMessage());
                    if (this.f880c == null) {
                        return;
                    }
                }
            }
            this.f880c.a(bundle);
        } catch (java.lang.Throwable th) {
            if (this.f880c != null) {
                throw th;
            }
        }
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
    public com.huawei.hms.ml.scan.HmsScan[] decodeWithBitmap(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper, com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper2) {
        android.os.Bundle bundle = (iObjectWrapper2 == null || !(com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2) instanceof android.os.Bundle)) ? new android.os.Bundle() : (android.os.Bundle) com.huawei.hms.feature.dynamic.ObjectWrapper.unwrap(iObjectWrapper2);
        if (this.b == null) {
            try {
                this.b = new com.huawei.hms.scankit.p.Kc(bundle, "Bitmap");
            } catch (java.lang.RuntimeException | java.lang.Exception unused) {
                com.huawei.hms.scankit.util.a.b("IRemoteDecoderDelegateImpl", "Ha error");
            }
        }
        return a(iObjectWrapper, iObjectWrapper2);
    }

    @Override // com.huawei.hms.hmsscankit.api.IRemoteDecoderDelegate
    public com.huawei.hms.feature.dynamic.IObjectWrapper queryDeepLinkInfo(com.huawei.hms.feature.dynamic.IObjectWrapper iObjectWrapper) {
        return null;
    }
}
