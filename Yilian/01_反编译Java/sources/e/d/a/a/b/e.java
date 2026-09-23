package e.d.a.a.b;

/* loaded from: classes.dex */
public class e extends e.d.a.a.b.d {

    /* renamed from: c, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.String> f2808c;

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.Object f2809d;

    /* renamed from: e, reason: collision with root package name */
    public javax.crypto.SecretKey f2810e;

    public e(android.content.Context context, java.lang.String str) {
        super(context, str);
        this.f2808c = new java.util.HashMap();
        this.f2809d = new java.lang.Object();
        try {
            java.lang.String strA = super.a("/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138", null);
            java.lang.String strA2 = super.a("/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C", null);
            java.lang.String strA3 = super.a("/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B", null);
            java.lang.String strA4 = super.a("/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD", null);
            if (strA == null || strA2 == null || strA3 == null || strA4 == null) {
                return;
            }
            this.f2810e = d.s.y.a(e.d.a.a.b.c.b(strA), e.d.a.a.b.c.b(strA2), e.d.a.a.b.c.b(strA3), e.d.a.a.b.c.b(strA4));
        } catch (java.security.NoSuchAlgorithmException | java.security.spec.InvalidKeySpecException unused) {
            android.util.Log.e("SecurityResourcesReader", "Exception when reading the 'K&I' for 'Config'.");
            this.f2810e = null;
        }
    }

    public static byte[] b(javax.crypto.SecretKey secretKey, byte[] bArr) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        if (secretKey == null) {
            throw new java.lang.NullPointerException("key or cipherText must not be null.");
        }
        byte[] bArrCopyOfRange = java.util.Arrays.copyOfRange(bArr, 1, 17);
        javax.crypto.Cipher cipher = javax.crypto.Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKey, new javax.crypto.spec.IvParameterSpec(bArrCopyOfRange));
        return cipher.doFinal(bArr, bArrCopyOfRange.length + 1, (bArr.length - bArrCopyOfRange.length) - 1);
    }

    @Override // e.d.a.a.b.d, e.d.a.a.b.b
    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        if (this.f2810e == null) {
            android.util.Log.e("SecurityResourcesReader", "KEY is null return def directly");
            return str2;
        }
        synchronized (this.f2809d) {
            java.lang.String str3 = this.f2808c.get(str);
            if (str3 != null) {
                return str3;
            }
            java.lang.String strA = super.a(str, null);
            if (strA == null) {
                return str2;
            }
            try {
                java.lang.String str4 = new java.lang.String(b(this.f2810e, e.d.a.a.b.c.b(strA)), com.google.android.exoplayer2.C.UTF8_NAME);
                this.f2808c.put(str, str4);
                return str4;
            } catch (java.io.UnsupportedEncodingException | java.security.GeneralSecurityException unused) {
                android.util.Log.e("SecurityResourcesReader", "Exception when reading the 'V' for 'Config'.");
                return str2;
            }
        }
    }
}
