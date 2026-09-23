package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class AssetDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource {
    public final android.content.res.AssetManager assetManager;
    public long bytesRemaining;
    public java.io.InputStream inputStream;
    public boolean opened;
    public android.net.Uri uri;

    public static final class AssetDataSourceException extends com.google.android.exoplayer2.upstream.DataSourceException {
        @java.lang.Deprecated
        public AssetDataSourceException(java.io.IOException iOException) {
            super(iOException, 2000);
        }

        public AssetDataSourceException(java.lang.Throwable th, int i) {
            super(th, i);
        }
    }

    public AssetDataSource(android.content.Context context) {
        super(false);
        this.assetManager = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.uri = null;
        try {
            try {
                if (this.inputStream != null) {
                    this.inputStream.close();
                }
            } catch (java.io.IOException e2) {
                throw new com.google.android.exoplayer2.upstream.AssetDataSource.AssetDataSourceException(e2, 2000);
            }
        } finally {
            this.inputStream = null;
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.io.IOException {
        try {
            android.net.Uri uri = dataSpec.uri;
            this.uri = uri;
            java.lang.String strSubstring = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR)) {
                strSubstring = strSubstring.substring(1);
            }
            transferInitializing(dataSpec);
            java.io.InputStream inputStreamOpen = this.assetManager.open(strSubstring, 1);
            this.inputStream = inputStreamOpen;
            if (inputStreamOpen.skip(dataSpec.position) < dataSpec.position) {
                throw new com.google.android.exoplayer2.upstream.AssetDataSource.AssetDataSourceException(null, 2008);
            }
            if (dataSpec.length != -1) {
                this.bytesRemaining = dataSpec.length;
            } else {
                long jAvailable = this.inputStream.available();
                this.bytesRemaining = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.bytesRemaining = -1L;
                }
            }
            this.opened = true;
            transferStarted(dataSpec);
            return this.bytesRemaining;
        } catch (com.google.android.exoplayer2.upstream.AssetDataSource.AssetDataSourceException e2) {
            throw e2;
        } catch (java.io.IOException e3) {
            throw new com.google.android.exoplayer2.upstream.AssetDataSource.AssetDataSourceException(e3, e3 instanceof java.io.FileNotFoundException ? com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND : 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws java.io.IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.bytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) java.lang.Math.min(j, i2);
            } catch (java.io.IOException e2) {
                throw new com.google.android.exoplayer2.upstream.AssetDataSource.AssetDataSourceException(e2, 2000);
            }
        }
        int i3 = ((java.io.InputStream) com.google.android.exoplayer2.util.Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        long j2 = this.bytesRemaining;
        if (j2 != -1) {
            this.bytesRemaining = j2 - i3;
        }
        bytesTransferred(i3);
        return i3;
    }
}
