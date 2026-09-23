package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public class Aes128DataSource implements com.google.android.exoplayer2.upstream.DataSource {
    public javax.crypto.CipherInputStream cipherInputStream;
    public final byte[] encryptionIv;
    public final byte[] encryptionKey;
    public final com.google.android.exoplayer2.upstream.DataSource upstream;

    public Aes128DataSource(com.google.android.exoplayer2.upstream.DataSource dataSource, byte[] bArr, byte[] bArr2) {
        this.upstream = dataSource;
        this.encryptionKey = bArr;
        this.encryptionIv = bArr2;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final void addTransferListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(transferListener);
        this.upstream.addTransferListener(transferListener);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        if (this.cipherInputStream != null) {
            this.cipherInputStream = null;
            this.upstream.close();
        }
    }

    public javax.crypto.Cipher getCipherInstance() {
        return javax.crypto.Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final java.util.Map<java.lang.String, java.util.List<java.lang.String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final android.net.Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public final long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        try {
            javax.crypto.Cipher cipherInstance = getCipherInstance();
            try {
                cipherInstance.init(2, new javax.crypto.spec.SecretKeySpec(this.encryptionKey, "AES"), new javax.crypto.spec.IvParameterSpec(this.encryptionIv));
                com.google.android.exoplayer2.upstream.DataSourceInputStream dataSourceInputStream = new com.google.android.exoplayer2.upstream.DataSourceInputStream(this.upstream, dataSpec);
                this.cipherInputStream = new javax.crypto.CipherInputStream(dataSourceInputStream, cipherInstance);
                dataSourceInputStream.open();
                return -1L;
            } catch (java.security.InvalidAlgorithmParameterException | java.security.InvalidKeyException e2) {
                throw new java.lang.RuntimeException(e2);
            }
        } catch (java.security.NoSuchAlgorithmException | javax.crypto.NoSuchPaddingException e3) {
            throw new java.lang.RuntimeException(e3);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public final int read(byte[] bArr, int i, int i2) throws java.io.IOException {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.cipherInputStream);
        int i3 = this.cipherInputStream.read(bArr, i, i2);
        if (i3 < 0) {
            return -1;
        }
        return i3;
    }
}
