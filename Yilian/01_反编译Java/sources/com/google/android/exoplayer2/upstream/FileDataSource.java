package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class FileDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource {
    public long bytesRemaining;
    public java.io.RandomAccessFile file;
    public boolean opened;
    public android.net.Uri uri;

    public static final class Api21 {
        public static boolean isPermissionError(java.lang.Throwable th) {
            return (th instanceof android.system.ErrnoException) && ((android.system.ErrnoException) th).errno == android.system.OsConstants.EACCES;
        }
    }

    public static final class Factory implements com.google.android.exoplayer2.upstream.DataSource.Factory {
        public com.google.android.exoplayer2.upstream.TransferListener listener;

        @Override // com.google.android.exoplayer2.upstream.DataSource.Factory
        public com.google.android.exoplayer2.upstream.FileDataSource createDataSource() {
            com.google.android.exoplayer2.upstream.FileDataSource fileDataSource = new com.google.android.exoplayer2.upstream.FileDataSource();
            com.google.android.exoplayer2.upstream.TransferListener transferListener = this.listener;
            if (transferListener != null) {
                fileDataSource.addTransferListener(transferListener);
            }
            return fileDataSource;
        }

        public com.google.android.exoplayer2.upstream.FileDataSource.Factory setListener(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
            this.listener = transferListener;
            return this;
        }
    }

    public static class FileDataSourceException extends com.google.android.exoplayer2.upstream.DataSourceException {
        @java.lang.Deprecated
        public FileDataSourceException(java.lang.Exception exc) {
            super(exc, 2000);
        }

        @java.lang.Deprecated
        public FileDataSourceException(java.lang.String str, java.io.IOException iOException) {
            super(str, iOException, 2000);
        }

        public FileDataSourceException(java.lang.String str, java.lang.Throwable th, int i) {
            super(str, th, i);
        }

        public FileDataSourceException(java.lang.Throwable th, int i) {
            super(th, i);
        }
    }

    public FileDataSource() {
        super(false);
    }

    public static java.io.RandomAccessFile openLocalFile(android.net.Uri uri) throws com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException {
        int i = com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_NO_PERMISSION;
        try {
            return new java.io.RandomAccessFile((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri.getPath()), com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT);
        } catch (java.io.FileNotFoundException e2) {
            if (!android.text.TextUtils.isEmpty(uri.getQuery()) || !android.text.TextUtils.isEmpty(uri.getFragment())) {
                throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(java.lang.String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e2, 1004);
            }
            if (com.google.android.exoplayer2.util.Util.SDK_INT < 21 || !com.google.android.exoplayer2.upstream.FileDataSource.Api21.isPermissionError(e2.getCause())) {
                i = com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND;
            }
            throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(e2, i);
        } catch (java.lang.SecurityException e3) {
            throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(e3, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_NO_PERMISSION);
        } catch (java.lang.RuntimeException e4) {
            throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(e4, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.uri = null;
        try {
            try {
                if (this.file != null) {
                    this.file.close();
                }
            } catch (java.io.IOException e2) {
                throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(e2, 2000);
            }
        } finally {
            this.file = null;
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
        android.net.Uri uri = dataSpec.uri;
        this.uri = uri;
        transferInitializing(dataSpec);
        java.io.RandomAccessFile randomAccessFileOpenLocalFile = openLocalFile(uri);
        this.file = randomAccessFileOpenLocalFile;
        try {
            randomAccessFileOpenLocalFile.seek(dataSpec.position);
            long length = dataSpec.length == -1 ? this.file.length() - dataSpec.position : dataSpec.length;
            this.bytesRemaining = length;
            if (length < 0) {
                throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(null, null, 2008);
            }
            this.opened = true;
            transferStarted(dataSpec);
            return this.bytesRemaining;
        } catch (java.io.IOException e2) {
            throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(e2, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws java.io.IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int i3 = ((java.io.RandomAccessFile) com.google.android.exoplayer2.util.Util.castNonNull(this.file)).read(bArr, i, (int) java.lang.Math.min(this.bytesRemaining, i2));
            if (i3 > 0) {
                this.bytesRemaining -= i3;
                bytesTransferred(i3);
            }
            return i3;
        } catch (java.io.IOException e2) {
            throw new com.google.android.exoplayer2.upstream.FileDataSource.FileDataSourceException(e2, 2000);
        }
    }
}
