package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class CacheWriter {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;
    public long bytesCached;
    public final com.google.android.exoplayer2.upstream.cache.Cache cache;
    public final java.lang.String cacheKey;
    public final com.google.android.exoplayer2.upstream.cache.CacheDataSource dataSource;
    public final com.google.android.exoplayer2.upstream.DataSpec dataSpec;
    public long endPosition;
    public volatile boolean isCanceled;
    public long nextPosition;
    public final com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener progressListener;
    public final byte[] temporaryBuffer;

    public interface ProgressListener {
        void onProgress(long j, long j2, long j3);
    }

    public CacheWriter(com.google.android.exoplayer2.upstream.cache.CacheDataSource cacheDataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, byte[] bArr, com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener progressListener) {
        this.dataSource = cacheDataSource;
        this.cache = cacheDataSource.getCache();
        this.dataSpec = dataSpec;
        this.temporaryBuffer = bArr == null ? new byte[131072] : bArr;
        this.progressListener = progressListener;
        this.cacheKey = cacheDataSource.getCacheKeyFactory().buildCacheKey(dataSpec);
        this.nextPosition = dataSpec.position;
    }

    private long getLength() {
        long j = this.endPosition;
        if (j == -1) {
            return -1L;
        }
        return j - this.dataSpec.position;
    }

    private void onNewBytesCached(long j) {
        this.bytesCached += j;
        com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener progressListener = this.progressListener;
        if (progressListener != null) {
            progressListener.onProgress(getLength(), this.bytesCached, j);
        }
    }

    private void onRequestEndPosition(long j) {
        if (this.endPosition == j) {
            return;
        }
        this.endPosition = j;
        com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener progressListener = this.progressListener;
        if (progressListener != null) {
            progressListener.onProgress(getLength(), this.bytesCached, 0L);
        }
    }

    private long readBlockToCache(long j, long j2) throws java.io.IOException {
        long jOpen;
        boolean z = true;
        boolean z2 = j + j2 == this.endPosition || j2 == -1;
        if (j2 != -1) {
            try {
                jOpen = this.dataSource.open(this.dataSpec.buildUpon().setPosition(j).setLength(j2).build());
            } catch (java.io.IOException unused) {
                com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
            }
        } else {
            jOpen = -1;
            z = false;
        }
        if (!z) {
            throwIfCanceled();
            try {
                jOpen = this.dataSource.open(this.dataSpec.buildUpon().setPosition(j).setLength(-1L).build());
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
                throw e2;
            }
        }
        if (z2 && jOpen != -1) {
            try {
                onRequestEndPosition(jOpen + j);
            } catch (java.io.IOException e3) {
                com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
                throw e3;
            }
        }
        int i = 0;
        int i2 = 0;
        while (i != -1) {
            throwIfCanceled();
            i = this.dataSource.read(this.temporaryBuffer, 0, this.temporaryBuffer.length);
            if (i != -1) {
                onNewBytesCached(i);
                i2 += i;
            }
        }
        if (z2) {
            onRequestEndPosition(j + i2);
        }
        this.dataSource.close();
        return i2;
    }

    private void throwIfCanceled() throws java.io.InterruptedIOException {
        if (this.isCanceled) {
            throw new java.io.InterruptedIOException();
        }
    }

    public void cache() throws java.io.IOException {
        long j;
        throwIfCanceled();
        com.google.android.exoplayer2.upstream.cache.Cache cache = this.cache;
        java.lang.String str = this.cacheKey;
        com.google.android.exoplayer2.upstream.DataSpec dataSpec = this.dataSpec;
        this.bytesCached = cache.getCachedBytes(str, dataSpec.position, dataSpec.length);
        com.google.android.exoplayer2.upstream.DataSpec dataSpec2 = this.dataSpec;
        long j2 = dataSpec2.length;
        if (j2 != -1) {
            this.endPosition = dataSpec2.position + j2;
        } else {
            long jA = e.c.a.a.r2.m.d.a(this.cache.getContentMetadata(this.cacheKey));
            if (jA == -1) {
                jA = -1;
            }
            this.endPosition = jA;
        }
        com.google.android.exoplayer2.upstream.cache.CacheWriter.ProgressListener progressListener = this.progressListener;
        if (progressListener != null) {
            progressListener.onProgress(getLength(), this.bytesCached, 0L);
        }
        while (true) {
            long j3 = this.endPosition;
            if (j3 != -1 && this.nextPosition >= j3) {
                return;
            }
            throwIfCanceled();
            long j4 = this.endPosition;
            long cachedLength = this.cache.getCachedLength(this.cacheKey, this.nextPosition, j4 == -1 ? Long.MAX_VALUE : j4 - this.nextPosition);
            if (cachedLength > 0) {
                j = this.nextPosition;
            } else {
                long j5 = -cachedLength;
                if (j5 == Long.MAX_VALUE) {
                    j5 = -1;
                }
                j = this.nextPosition;
                cachedLength = readBlockToCache(j, j5);
            }
            this.nextPosition = j + cachedLength;
        }
    }

    public void cancel() {
        this.isCanceled = true;
    }
}
