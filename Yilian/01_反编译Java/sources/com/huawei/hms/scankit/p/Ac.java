package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Ac {
    public static java.util.List<java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat>> a(int i) {
        if (i <= 0) {
            i = 8191;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        java.util.ArrayList arrayList4 = new java.util.ArrayList();
        java.util.ArrayList arrayList5 = new java.util.ArrayList();
        if (i > 0) {
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat[] barcodeFormatArr = {com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_128, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_39, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_93, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODABAR, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.DATA_MATRIX, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.ITF, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.AZTEC};
            int[] iArr = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096};
            if ((iArr[8] & i) != 0) {
                arrayList.add(barcodeFormatArr[8]);
            }
            if ((iArr[11] & i) != 0) {
                arrayList3.add(barcodeFormatArr[11]);
            }
            for (int i2 = 0; i2 < 13; i2++) {
                if ((iArr[i2] & i) != 0 && i2 != 8 && i2 != 11) {
                    if (i2 == 4) {
                        arrayList5.add(barcodeFormatArr[i2]);
                    } else if (i2 == 12) {
                        arrayList4.add(barcodeFormatArr[i2]);
                    } else {
                        arrayList2.add(barcodeFormatArr[i2]);
                    }
                }
            }
        }
        java.util.ArrayList arrayList6 = new java.util.ArrayList();
        arrayList6.add(arrayList);
        arrayList6.add(arrayList2);
        arrayList6.add(arrayList3);
        arrayList6.add(arrayList5);
        arrayList6.add(arrayList4);
        return arrayList6;
    }
}
