package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class ContentDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource {
    public android.content.res.AssetFileDescriptor assetFileDescriptor;
    public long bytesRemaining;
    public java.io.FileInputStream inputStream;
    public boolean opened;
    public final android.content.ContentResolver resolver;
    public android.net.Uri uri;

    public static final class Api31 {
        public static void disableTranscoding(android.os.Bundle bundle) {
            bundle.putParcelable("android.provider.extra.MEDIA_CAPABILITIES", new android.media.ApplicationMediaCapabilities.Builder().addSupportedVideoMimeType(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H265).addSupportedHdrType("android.media.feature.hdr.dolby_vision").addSupportedHdrType("android.media.feature.hdr.hdr10").addSupportedHdrType("android.media.feature.hdr.hdr10_plus").addSupportedHdrType("android.media.feature.hdr.hlg").build());
        }
    }

    public static class ContentDataSourceException extends com.google.android.exoplayer2.upstream.DataSourceException {
        @java.lang.Deprecated
        public ContentDataSourceException(java.io.IOException iOException) {
            this(iOException, 2000);
        }

        public ContentDataSourceException(java.io.IOException iOException, int i) {
            super(iOException, i);
        }
    }

    public ContentDataSource(android.content.Context context) {
        super(false);
        this.resolver = context.getContentResolver();
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
                        throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(e2, 2000);
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
                    throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(e3, 2000);
                }
            }
        } catch (java.io.IOException e4) {
            throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(e4, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.io.IOException {
        android.content.res.AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            android.net.Uri uri = dataSpec.uri;
            this.uri = uri;
            transferInitializing(dataSpec);
            if ("content".equals(dataSpec.uri.getScheme())) {
                android.os.Bundle bundle = new android.os.Bundle();
                if (com.google.android.exoplayer2.util.Util.SDK_INT >= 31) {
                    com.google.android.exoplayer2.upstream.ContentDataSource.Api31.disableTranscoding(bundle);
                }
                assetFileDescriptorOpenAssetFileDescriptor = this.resolver.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.resolver.openAssetFileDescriptor(uri, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT);
            }
            this.assetFileDescriptor = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                java.lang.String strValueOf = java.lang.String.valueOf(uri);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 36);
                sb.append("Could not open file descriptor for: ");
                sb.append(strValueOf);
                throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(new java.io.IOException(sb.toString()), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            java.io.FileInputStream fileInputStream = new java.io.FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.inputStream = fileInputStream;
            if (length != -1 && dataSpec.position > length) {
                throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(dataSpec.position + startOffset) - startOffset;
            if (jSkip != dataSpec.position) {
                throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(null, 2008);
            }
            if (length == -1) {
                java.nio.channels.FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.bytesRemaining = jPosition;
                    if (jPosition < 0) {
                        throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(null, 2008);
                    }
                }
            } else {
                long j = length - jSkip;
                this.bytesRemaining = j;
                if (j < 0) {
                    throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(null, 2008);
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
        } catch (com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException e2) {
            throw e2;
        } catch (java.io.IOException e3) {
            throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(e3, e3 instanceof java.io.FileNotFoundException ? com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND : 2000);
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
                throw new com.google.android.exoplayer2.upstream.ContentDataSource.ContentDataSourceException(e2, 2000);
            }
        }
        int i3 = ((java.io.FileInputStream) com.google.android.exoplayer2.util.Util.castNonNull(this.inputStream)).read(bArr, i, i2);
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
