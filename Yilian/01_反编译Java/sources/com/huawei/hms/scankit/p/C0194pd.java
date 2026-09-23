package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.pd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0194pd implements com.huawei.hms.scankit.p.InterfaceC0199qd {
    /* JADX WARN: Can't wrap try/catch for region: R(10:12|(2:15|(1:17)(2:18|(1:36)(1:14)))(0)|37|(9:39|(1:42)|43|(1:46)|47|(1:50)|51|(1:53)(1:54)|55)(1:56)|57|(6:(1:59)(2:61|(1:63)(4:64|(1:66)(3:68|(2:71|(1:73)(2:74|(1:76)(2:77|(1:79)(2:80|(1:82)(2:83|(1:85)(2:86|(1:88)(2:89|(1:91)(2:92|(1:94)(2:95|(1:97))))))))))|70)|67|(8:203|106|204|(3:145|146|(1:148)(9:149|(4:151|(3:153|(2:155|214)(2:156|213)|157)|212|158)|211|159|160|161|(5:167|(1:169)(1:170)|(1:176)(1:177)|178|179)|172|173))(4:111|112|113|(1:115)(6:116|(4:118|(3:120|(2:129|(2:131|210)(2:132|208))(2:128|209)|133)|207|140)|206|141|142|143))|174|(0)(0)|178|179)(2:104|105)))|204|(3:145|146|(0)(0))(0)|(0)(0)|178|179)|60|(1:99)|203|106) */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01e1, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0296, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0297, code lost:
    
        r17 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x02ac, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x02ad, code lost:
    
        r17 = r5;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0211 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0212 A[Catch: Exception -> 0x01db, IllegalArgumentException -> 0x01de, OutOfMemoryError -> 0x01e1, TryCatch #6 {OutOfMemoryError -> 0x01e1, blocks: (B:106:0x0123, B:109:0x0129, B:111:0x012d, B:113:0x0149, B:116:0x0150, B:120:0x01a7, B:122:0x01ab, B:124:0x01af, B:126:0x01b3, B:128:0x01b7, B:133:0x01d8, B:129:0x01c7, B:131:0x01cd, B:132:0x01d3, B:140:0x01e4, B:141:0x01e7, B:146:0x020b, B:149:0x0212, B:153:0x0224, B:155:0x022a, B:157:0x0235, B:156:0x0230, B:158:0x0238, B:159:0x023b), top: B:203:0x0123 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0287  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap a(java.lang.String r27, int r28, int r29, int r30, com.huawei.hms.ml.scan.HmsBuildBitmapOption r31) throws com.huawei.hms.hmsscankit.WriterException {
        /*
            Method dump skipped, instructions count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0194pd.a(java.lang.String, int, int, int, com.huawei.hms.ml.scan.HmsBuildBitmapOption):android.graphics.Bitmap");
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        com.huawei.hms.scankit.p.InterfaceC0199qd td;
        switch (com.huawei.hms.scankit.p.C0189od.a[barcodeFormat.ordinal()]) {
            case 1:
                td = new com.huawei.hms.scankit.p.Td();
                break;
            case 2:
                td = new com.huawei.hms.scankit.p.Yd();
                break;
            case 3:
                td = new com.huawei.hms.scankit.p.Sd();
                break;
            case 4:
                td = new com.huawei.hms.scankit.p.Wd();
                break;
            case 5:
                td = new com.huawei.hms.scankit.p.he();
                break;
            case 6:
                td = new com.huawei.hms.scankit.p.Qd();
                break;
            case 7:
                td = new com.huawei.hms.scankit.p.Rd();
                break;
            case 8:
                td = new com.huawei.hms.scankit.p.Pd();
                break;
            case 9:
                td = new com.huawei.hms.scankit.p.Ud();
                break;
            case 10:
                td = new com.huawei.hms.scankit.p.Zd();
                break;
            case 11:
                td = new com.huawei.hms.scankit.p.Od();
                break;
            case 12:
                td = new com.huawei.hms.scankit.p.C0243zd();
                break;
            case 13:
                td = new com.huawei.hms.scankit.p.C0203rd();
                break;
            default:
                throw new java.lang.IllegalArgumentException("No encoder available for format " + barcodeFormat);
        }
        return td.a(str, barcodeFormat, i, i2, map);
    }
}
