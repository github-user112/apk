package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: c, reason: collision with root package name */
    public static final java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> f450c;
    public static final java.util.Map<java.lang.String, java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat>> h;

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> f451d = java.util.EnumSet.of(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE);

    /* renamed from: e, reason: collision with root package name */
    public static final java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> f452e = java.util.EnumSet.of(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.DATA_MATRIX);

    /* renamed from: f, reason: collision with root package name */
    public static final java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> f453f = java.util.EnumSet.of(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.AZTEC);

    /* renamed from: g, reason: collision with root package name */
    public static final java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> f454g = java.util.EnumSet.of(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417);
    public static final java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> a = java.util.EnumSet.of(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8);
    public static final java.util.Set<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> b = java.util.EnumSet.of(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_39, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_93, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_128, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.ITF, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODABAR);

    static {
        java.util.EnumSet enumSetCopyOf = java.util.EnumSet.copyOf((java.util.Collection) a);
        f450c = enumSetCopyOf;
        enumSetCopyOf.addAll(b);
        java.util.HashMap map = new java.util.HashMap();
        h = map;
        map.put("ONE_D_MODE", f450c);
        h.put("PRODUCT_MODE", a);
        h.put("QR_CODE_MODE", f451d);
        h.put("DATA_MATRIX_MODE", f452e);
        h.put("AZTEC_MODE", f453f);
        h.put("PDF417_MODE", f454g);
    }
}
