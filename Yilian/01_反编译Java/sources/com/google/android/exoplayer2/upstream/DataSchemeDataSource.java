package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class DataSchemeDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource {
    public static final java.lang.String SCHEME_DATA = "data";
    public int bytesRemaining;
    public byte[] data;
    public com.google.android.exoplayer2.upstream.DataSpec dataSpec;
    public int readPosition;

    public DataSchemeDataSource() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        if (this.data != null) {
            this.data = null;
            transferEnded();
        }
        this.dataSpec = null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        com.google.android.exoplayer2.upstream.DataSpec dataSpec = this.dataSpec;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws com.google.android.exoplayer2.upstream.DataSourceException, com.google.android.exoplayer2.ParserException {
        transferInitializing(dataSpec);
        this.dataSpec = dataSpec;
        android.net.Uri uri = dataSpec.uri;
        java.lang.String scheme = uri.getScheme();
        boolean zEquals = "data".equals(scheme);
        java.lang.String strValueOf = java.lang.String.valueOf(scheme);
        com.google.android.exoplayer2.util.Assertions.checkArgument(zEquals, strValueOf.length() != 0 ? "Unsupported scheme: ".concat(strValueOf) : new java.lang.String("Unsupported scheme: "));
        java.lang.String[] strArrSplit = com.google.android.exoplayer2.util.Util.split(uri.getSchemeSpecificPart(), ",");
        if (strArrSplit.length != 2) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(uri);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf2.length() + 23);
            sb.append("Unexpected URI format: ");
            sb.append(strValueOf2);
            throw com.google.android.exoplayer2.ParserException.createForMalformedDataOfUnknownType(sb.toString(), null);
        }
        java.lang.String str = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.data = android.util.Base64.decode(str, 0);
            } catch (java.lang.IllegalArgumentException e2) {
                java.lang.String strValueOf3 = java.lang.String.valueOf(str);
                throw com.google.android.exoplayer2.ParserException.createForMalformedDataOfUnknownType(strValueOf3.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(strValueOf3) : new java.lang.String("Error while parsing Base64 encoded string: "), e2);
            }
        } else {
            this.data = com.google.android.exoplayer2.util.Util.getUtf8Bytes(java.net.URLDecoder.decode(str, e.c.b.a.c.a.name()));
        }
        long j = dataSpec.position;
        byte[] bArr = this.data;
        if (j > bArr.length) {
            this.data = null;
            throw new com.google.android.exoplayer2.upstream.DataSourceException(2008);
        }
        int i = (int) j;
        this.readPosition = i;
        int length = bArr.length - i;
        this.bytesRemaining = length;
        long j2 = dataSpec.length;
        if (j2 != -1) {
            this.bytesRemaining = (int) java.lang.Math.min(length, j2);
        }
        transferStarted(dataSpec);
        long j3 = dataSpec.length;
        return j3 != -1 ? j3 : this.bytesRemaining;
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.bytesRemaining;
        if (i3 == 0) {
            return -1;
        }
        int iMin = java.lang.Math.min(i2, i3);
        java.lang.System.arraycopy(com.google.android.exoplayer2.util.Util.castNonNull(this.data), this.readPosition, bArr, i, iMin);
        this.readPosition += iMin;
        this.bytesRemaining -= iMin;
        bytesTransferred(iMin);
        return iMin;
    }
}
