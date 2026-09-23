package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class LeastRecentlyUsedCacheEvictor implements com.google.android.exoplayer2.upstream.cache.CacheEvictor {
    public long currentSize;
    public final java.util.TreeSet<com.google.android.exoplayer2.upstream.cache.CacheSpan> leastRecentlyUsed = new java.util.TreeSet<>(new java.util.Comparator() { // from class: e.c.a.a.r2.m.b
        @Override // java.util.Comparator
        public final int compare(java.lang.Object obj, java.lang.Object obj2) {
            return com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor.compare((com.google.android.exoplayer2.upstream.cache.CacheSpan) obj, (com.google.android.exoplayer2.upstream.cache.CacheSpan) obj2);
        }
    });
    public final long maxBytes;

    public LeastRecentlyUsedCacheEvictor(long j) {
        this.maxBytes = j;
    }

    public static int compare(com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan2) {
        long j = cacheSpan.lastTouchTimestamp;
        long j2 = cacheSpan2.lastTouchTimestamp;
        return j - j2 == 0 ? cacheSpan.compareTo(cacheSpan2) : j < j2 ? -1 : 1;
    }

    private void evictCache(com.google.android.exoplayer2.upstream.cache.Cache cache, long j) {
        while (this.currentSize + j > this.maxBytes && !this.leastRecentlyUsed.isEmpty()) {
            cache.removeSpan(this.leastRecentlyUsed.first());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheEvictor
    public void onCacheInitialized() {
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanAdded(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        this.leastRecentlyUsed.add(cacheSpan);
        this.currentSize += cacheSpan.length;
        evictCache(cache, 0L);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanRemoved(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        this.leastRecentlyUsed.remove(cacheSpan);
        this.currentSize -= cacheSpan.length;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanTouched(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan2) {
        onSpanRemoved(cache, cacheSpan);
        onSpanAdded(cache, cacheSpan2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheEvictor
    public void onStartFile(com.google.android.exoplayer2.upstream.cache.Cache cache, java.lang.String str, long j, long j2) {
        if (j2 != -1) {
            evictCache(cache, j2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheEvictor
    public boolean requiresCacheSpanTouches() {
        return true;
    }
}
