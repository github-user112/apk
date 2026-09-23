package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class D {
    public static volatile com.huawei.hms.scankit.D a;

    public static com.huawei.hms.scankit.D a() {
        if (a == null) {
            synchronized (com.huawei.hms.scankit.D.class) {
                if (a == null) {
                    a = new com.huawei.hms.scankit.D();
                }
            }
        }
        return a;
    }

    public com.huawei.hms.ml.scan.HmsScan[] a(android.graphics.Bitmap bitmap, int i, boolean z, com.huawei.hms.scankit.p.Kc kc) {
        com.huawei.hms.scankit.p.Kc.a aVarA;
        if (kc != null) {
            kc.a("multi");
            aVarA = kc.a(z, bitmap.getWidth() * bitmap.getHeight());
            if (bitmap.getHeight() < 30 || bitmap.getWidth() < 30) {
                aVarA.a(-1005);
            }
        } else {
            aVarA = null;
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrA = com.huawei.hms.scankit.p.AbstractC0149gd.a(com.huawei.hms.scankit.k.a(bitmap, new com.huawei.hms.scankit.E(i, z)));
        if (kc != null) {
            kc.a(hmsScanArrA, aVarA);
        }
        return hmsScanArrA;
    }

    public com.huawei.hms.ml.scan.HmsScan[] a(java.nio.ByteBuffer byteBuffer, int i, int i2, int i3, boolean z, com.huawei.hms.scankit.p.Kc kc) {
        com.huawei.hms.scankit.p.Kc.a aVarA;
        int i4;
        if (kc != null) {
            kc.a("multi");
            int i5 = i2 * i;
            aVarA = kc.a(z, i5);
            if (i >= 30 && i2 >= 30) {
                i4 = byteBuffer.array().length < i5 ? -1008 : -1007;
            }
            aVarA.a(i4);
        } else {
            aVarA = null;
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrA = com.huawei.hms.scankit.p.AbstractC0149gd.a(com.huawei.hms.scankit.k.a(byteBuffer, new com.huawei.hms.scankit.E(i, i2, i3, true, z)));
        if (kc != null) {
            kc.a(hmsScanArrA, aVarA);
        }
        return hmsScanArrA;
    }

    public com.huawei.hms.ml.scan.HmsScan[] b(android.graphics.Bitmap bitmap, int i, boolean z, com.huawei.hms.scankit.p.Kc kc) {
        com.huawei.hms.scankit.p.Kc.a aVarA;
        if (kc != null) {
            kc.a("single");
            aVarA = kc.a(z, bitmap.getWidth() * bitmap.getHeight());
            if (bitmap.getHeight() < 30 || bitmap.getWidth() < 30) {
                aVarA.a(-1005);
            }
        } else {
            aVarA = null;
        }
        com.huawei.hms.ml.scan.HmsScan[] hmsScanArrA = com.huawei.hms.scankit.p.AbstractC0149gd.a(com.huawei.hms.scankit.k.b(bitmap, new com.huawei.hms.scankit.E(i, z)));
        if (kc != null) {
            kc.a(hmsScanArrA, aVarA);
        }
        return hmsScanArrA;
    }
}
