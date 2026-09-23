package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class RawResourceDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource {
    public static final java.lang.String RAW_RESOURCE_SCHEME = "rawresource";
    public android.content.res.AssetFileDescriptor assetFileDescriptor;
    public long bytesRemaining;
    public java.io.InputStream inputStream;
    public boolean opened;
    public final java.lang.String packageName;
    public final android.content.res.Resources resources;
    public android.net.Uri uri;

    public static class RawResourceDataSourceException extends com.google.android.exoplayer2.upstream.DataSourceException {
        @java.lang.Deprecated
        public RawResourceDataSourceException(java.lang.String str) {
            super(str, null, 2000);
        }

        public RawResourceDataSourceException(java.lang.String str, java.lang.Throwable th, int i) {
            super(str, th, i);
        }

        @java.lang.Deprecated
        public RawResourceDataSourceException(java.lang.Throwable th) {
            super(th, 2000);
        }
    }

    public RawResourceDataSource(android.content.Context context) {
        super(false);
        this.resources = context.getResources();
        this.packageName = context.getPackageName();
    }

    public static android.net.Uri buildRawResourceUri(int i) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(26);
        sb.append("rawresource:///");
        sb.append(i);
        return android.net.Uri.parse(sb.toString());
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() {
        this.uri = null;
        try {
            try {
                if (this.inputStream != null) {
                    this.inputStream.close();
                }
                this.inputStream = null;
                try {
                    try {
                        if (this.assetFileDescriptor != null) {
                            this.assetFileDescriptor.close();
                        }
                    } catch (java.io.IOException e2) {
                        throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, e2, 2000);
                    }
                } finally {
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        transferEnded();
                    }
                }
            } catch (java.lang.Throwable th) {
                this.inputStream = null;
                try {
                    try {
                        if (this.assetFileDescriptor != null) {
                            this.assetFileDescriptor.close();
                        }
                        this.assetFileDescriptor = null;
                        if (this.opened) {
                            this.opened = false;
                            transferEnded();
                        }
                        throw th;
                    } finally {
                        this.assetFileDescriptor = null;
                        if (this.opened) {
                            this.opened = false;
                            transferEnded();
                        }
                    }
                } catch (java.io.IOException e3) {
                    throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, e3, 2000);
                }
            }
        } catch (java.io.IOException e4) {
            throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, e4, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws com.google.android.exoplayer2.upstream.DataSourceException, android.content.res.Resources.NotFoundException, java.lang.NumberFormatException {
        int identifier;
        android.net.Uri uri = dataSpec.uri;
        this.uri = uri;
        if (android.text.TextUtils.equals("rawresource", uri.getScheme()) || (android.text.TextUtils.equals(com.google.android.exoplayer2.upstream.DefaultDataSource.SCHEME_ANDROID_RESOURCE, uri.getScheme()) && uri.getPathSegments().size() == 1 && ((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                identifier = java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri.getLastPathSegment()));
            } catch (java.lang.NumberFormatException unused) {
                throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!android.text.TextUtils.equals(com.google.android.exoplayer2.upstream.DefaultDataSource.SCHEME_ANDROID_RESOURCE, uri.getScheme())) {
                throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            java.lang.String strSubstring = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri.getPath());
            if (strSubstring.startsWith(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR)) {
                strSubstring = strSubstring.substring(1);
            }
            java.lang.String host = uri.getHost();
            java.lang.String strValueOf = java.lang.String.valueOf(android.text.TextUtils.isEmpty(host) ? "" : java.lang.String.valueOf(host).concat(":"));
            java.lang.String strValueOf2 = java.lang.String.valueOf(strSubstring);
            identifier = this.resources.getIdentifier(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new java.lang.String(strValueOf), com.tencent.tinker.loader.shareutil.ShareConstants.DEXMODE_RAW, this.packageName);
            if (identifier == 0) {
                throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException("Resource not found.", null, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
            }
        }
        transferInitializing(dataSpec);
        try {
            android.content.res.AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.resources.openRawResourceFd(identifier);
            this.assetFileDescriptor = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                java.lang.String strValueOf3 = java.lang.String.valueOf(uri);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf3.length() + 24);
                sb.append("Resource is compressed: ");
                sb.append(strValueOf3);
                throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(sb.toString(), null, 2000);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            java.io.FileInputStream fileInputStream = new java.io.FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.inputStream = fileInputStream;
            if (length != -1) {
                try {
                    if (dataSpec.position > length) {
                        throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, null, 2008);
                    }
                } catch (com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException e2) {
                    throw e2;
                } catch (java.io.IOException e3) {
                    throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, e3, 2000);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
            if (jSkip != dataSpec.position) {
                throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, null, 2008);
            }
            if (length == -1) {
                java.nio.channels.FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.bytesRemaining = size;
                    if (size < 0) {
                        throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, null, 2008);
                    }
                }
            } else {
                long j = length - jSkip;
                this.bytesRemaining = j;
                if (j < 0) {
                    throw new com.google.android.exoplayer2.upstream.DataSourceException(2008);
                }
            }
            long jMin = dataSpec.length;
            if (jMin != -1) {
                long j2 = this.bytesRemaining;
                if (j2 != -1) {
                    jMin = java.lang.Math.min(j2, jMin);
                }
                this.bytesRemaining = jMin;
            }
            this.opened = true;
            transferStarted(dataSpec);
            long j3 = dataSpec.length;
            return j3 != -1 ? j3 : this.bytesRemaining;
        } catch (android.content.res.Resources.NotFoundException e4) {
            throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, e4, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
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
                throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException(null, e2, 2000);
            }
        }
        int i3 = ((java.io.InputStream) com.google.android.exoplayer2.util.Util.castNonNull(this.inputStream)).read(bArr, i, i2);
        if (i3 == -1) {
            if (this.bytesRemaining == -1) {
                return -1;
            }
            throw new com.google.android.exoplayer2.upstream.RawResourceDataSource.RawResourceDataSourceException("End of stream reached having not read sufficient data.", new java.io.EOFException(), 2000);
        }
        long j2 = this.bytesRemaining;
        if (j2 != -1) {
            this.bytesRemaining = j2 - i3;
        }
        bytesTransferred(i3);
        return i3;
    }
}
