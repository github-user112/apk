package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class CacheDataSink implements com.google.android.exoplayer2.upstream.DataSink {
    public static final int DEFAULT_BUFFER_SIZE = 20480;
    public static final long DEFAULT_FRAGMENT_SIZE = 5242880;
    public static final long MIN_RECOMMENDED_FRAGMENT_SIZE = 2097152;
    public static final java.lang.String TAG = "CacheDataSink";
    public final int bufferSize;
    public com.google.android.exoplayer2.upstream.cache.ReusableBufferedOutputStream bufferedOutputStream;
    public final com.google.android.exoplayer2.upstream.cache.Cache cache;
    public com.google.android.exoplayer2.upstream.DataSpec dataSpec;
    public long dataSpecBytesWritten;
    public long dataSpecFragmentSize;
    public java.io.File file;
    public final long fragmentSize;
    public java.io.OutputStream outputStream;
    public long outputStreamBytesWritten;

    public static final class CacheDataSinkException extends com.google.android.exoplayer2.upstream.cache.Cache.CacheException {
        public CacheDataSinkException(java.io.IOException iOException) {
            super(iOException);
        }
    }

    public static final class Factory implements com.google.android.exoplayer2.upstream.DataSink.Factory {
        public com.google.android.exoplayer2.upstream.cache.Cache cache;
        public long fragmentSize = com.google.android.exoplayer2.upstream.cache.CacheDataSink.DEFAULT_FRAGMENT_SIZE;
        public int bufferSize = 20480;

        @Override // com.google.android.exoplayer2.upstream.DataSink.Factory
        public com.google.android.exoplayer2.upstream.DataSink createDataSink() {
            return new com.google.android.exoplayer2.upstream.cache.CacheDataSink((com.google.android.exoplayer2.upstream.cache.Cache) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.cache), this.fragmentSize, this.bufferSize);
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSink.Factory setBufferSize(int i) {
            this.bufferSize = i;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSink.Factory setCache(com.google.android.exoplayer2.upstream.cache.Cache cache) {
            this.cache = cache;
            return this;
        }

        public com.google.android.exoplayer2.upstream.cache.CacheDataSink.Factory setFragmentSize(long j) {
            this.fragmentSize = j;
            return this;
        }
    }

    public CacheDataSink(com.google.android.exoplayer2.upstream.cache.Cache cache, long j) {
        this(cache, j, 20480);
    }

    public CacheDataSink(com.google.android.exoplayer2.upstream.cache.Cache cache, long j, int i) {
        com.google.android.exoplayer2.util.Assertions.checkState(j > 0 || j == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j != -1 && j < 2097152) {
            com.google.android.exoplayer2.util.Log.w(TAG, "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.cache = (com.google.android.exoplayer2.upstream.cache.Cache) com.google.android.exoplayer2.util.Assertions.checkNotNull(cache);
        this.fragmentSize = j == -1 ? Long.MAX_VALUE : j;
        this.bufferSize = i;
    }

    private void closeCurrentOutputStream() throws java.io.IOException {
        java.io.OutputStream outputStream = this.outputStream;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            com.google.android.exoplayer2.util.Util.closeQuietly(this.outputStream);
            this.outputStream = null;
            java.io.File file = (java.io.File) com.google.android.exoplayer2.util.Util.castNonNull(this.file);
            this.file = null;
            this.cache.commitFile(file, this.outputStreamBytesWritten);
        } catch (java.lang.Throwable th) {
            com.google.android.exoplayer2.util.Util.closeQuietly(this.outputStream);
            this.outputStream = null;
            java.io.File file2 = (java.io.File) com.google.android.exoplayer2.util.Util.castNonNull(this.file);
            this.file = null;
            file2.delete();
            throw th;
        }
    }

    private void openNextOutputStream(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        long j = dataSpec.length;
        this.file = this.cache.startFile((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(dataSpec.key), dataSpec.position + this.dataSpecBytesWritten, j != -1 ? java.lang.Math.min(j - this.dataSpecBytesWritten, this.dataSpecFragmentSize) : -1L);
        java.io.OutputStream fileOutputStream = new java.io.FileOutputStream(this.file);
        if (this.bufferSize > 0) {
            com.google.android.exoplayer2.upstream.cache.ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
            if (reusableBufferedOutputStream == null) {
                this.bufferedOutputStream = new com.google.android.exoplayer2.upstream.cache.ReusableBufferedOutputStream(fileOutputStream, this.bufferSize);
            } else {
                reusableBufferedOutputStream.reset(fileOutputStream);
            }
            fileOutputStream = this.bufferedOutputStream;
        }
        this.outputStream = fileOutputStream;
        this.outputStreamBytesWritten = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void close() throws com.google.android.exoplayer2.upstream.cache.CacheDataSink.CacheDataSinkException {
        if (this.dataSpec == null) {
            return;
        }
        try {
            closeCurrentOutputStream();
        } catch (java.io.IOException e2) {
            throw new com.google.android.exoplayer2.upstream.cache.CacheDataSink.CacheDataSinkException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws com.google.android.exoplayer2.upstream.cache.CacheDataSink.CacheDataSinkException {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(dataSpec.key);
        if (dataSpec.length == -1 && dataSpec.isFlagSet(2)) {
            this.dataSpec = null;
            return;
        }
        this.dataSpec = dataSpec;
        this.dataSpecFragmentSize = dataSpec.isFlagSet(4) ? this.fragmentSize : Long.MAX_VALUE;
        this.dataSpecBytesWritten = 0L;
        try {
            openNextOutputStream(dataSpec);
        } catch (java.io.IOException e2) {
            throw new com.google.android.exoplayer2.upstream.cache.CacheDataSink.CacheDataSinkException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) throws java.io.IOException {
        com.google.android.exoplayer2.upstream.DataSpec dataSpec = this.dataSpec;
        if (dataSpec == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.outputStreamBytesWritten == this.dataSpecFragmentSize) {
                    closeCurrentOutputStream();
                    openNextOutputStream(dataSpec);
                }
                int iMin = (int) java.lang.Math.min(i2 - i3, this.dataSpecFragmentSize - this.outputStreamBytesWritten);
                ((java.io.OutputStream) com.google.android.exoplayer2.util.Util.castNonNull(this.outputStream)).write(bArr, i + i3, iMin);
                i3 += iMin;
                long j = iMin;
                this.outputStreamBytesWritten += j;
                this.dataSpecBytesWritten += j;
            } catch (java.io.IOException e2) {
                throw new com.google.android.exoplayer2.upstream.cache.CacheDataSink.CacheDataSinkException(e2);
            }
        }
    }
}
