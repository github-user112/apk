package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class CachedRegionTracker implements com.google.android.exoplayer2.upstream.cache.Cache.Listener {
    public static final int CACHED_TO_END = -2;
    public static final int NOT_CACHED = -1;
    public static final java.lang.String TAG = "CachedRegionTracker";
    public final com.google.android.exoplayer2.upstream.cache.Cache cache;
    public final java.lang.String cacheKey;
    public final com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex;
    public final java.util.TreeSet<com.google.android.exoplayer2.upstream.CachedRegionTracker.Region> regions = new java.util.TreeSet<>();
    public final com.google.android.exoplayer2.upstream.CachedRegionTracker.Region lookupRegion = new com.google.android.exoplayer2.upstream.CachedRegionTracker.Region(0, 0);

    public static class Region implements java.lang.Comparable<com.google.android.exoplayer2.upstream.CachedRegionTracker.Region> {
        public long endOffset;
        public int endOffsetIndex;
        public long startOffset;

        public Region(long j, long j2) {
            this.startOffset = j;
            this.endOffset = j2;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.upstream.CachedRegionTracker.Region region) {
            return com.google.android.exoplayer2.util.Util.compareLong(this.startOffset, region.startOffset);
        }
    }

    public CachedRegionTracker(com.google.android.exoplayer2.upstream.cache.Cache cache, java.lang.String str, com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex) {
        this.cache = cache;
        this.cacheKey = str;
        this.chunkIndex = chunkIndex;
        synchronized (this) {
            java.util.Iterator<com.google.android.exoplayer2.upstream.cache.CacheSpan> itDescendingIterator = cache.addListener(str, this).descendingIterator();
            while (itDescendingIterator.hasNext()) {
                mergeSpan(itDescendingIterator.next());
            }
        }
    }

    private void mergeSpan(com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        long j = cacheSpan.position;
        com.google.android.exoplayer2.upstream.CachedRegionTracker.Region region = new com.google.android.exoplayer2.upstream.CachedRegionTracker.Region(j, cacheSpan.length + j);
        com.google.android.exoplayer2.upstream.CachedRegionTracker.Region regionFloor = this.regions.floor(region);
        com.google.android.exoplayer2.upstream.CachedRegionTracker.Region regionCeiling = this.regions.ceiling(region);
        boolean zRegionsConnect = regionsConnect(regionFloor, region);
        if (regionsConnect(region, regionCeiling)) {
            if (zRegionsConnect) {
                regionFloor.endOffset = regionCeiling.endOffset;
                regionFloor.endOffsetIndex = regionCeiling.endOffsetIndex;
            } else {
                region.endOffset = regionCeiling.endOffset;
                region.endOffsetIndex = regionCeiling.endOffsetIndex;
                this.regions.add(region);
            }
            this.regions.remove(regionCeiling);
            return;
        }
        if (!zRegionsConnect) {
            int iBinarySearch = java.util.Arrays.binarySearch(this.chunkIndex.offsets, region.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region.endOffsetIndex = iBinarySearch;
            this.regions.add(region);
            return;
        }
        regionFloor.endOffset = region.endOffset;
        int i = regionFloor.endOffsetIndex;
        while (true) {
            com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex = this.chunkIndex;
            if (i >= chunkIndex.length - 1) {
                break;
            }
            int i2 = i + 1;
            if (chunkIndex.offsets[i2] > regionFloor.endOffset) {
                break;
            } else {
                i = i2;
            }
        }
        regionFloor.endOffsetIndex = i;
    }

    private boolean regionsConnect(com.google.android.exoplayer2.upstream.CachedRegionTracker.Region region, com.google.android.exoplayer2.upstream.CachedRegionTracker.Region region2) {
        return (region == null || region2 == null || region.endOffset != region2.startOffset) ? false : true;
    }

    public synchronized int getRegionEndTimeMs(long j) {
        this.lookupRegion.startOffset = j;
        com.google.android.exoplayer2.upstream.CachedRegionTracker.Region regionFloor = this.regions.floor(this.lookupRegion);
        if (regionFloor != null && j <= regionFloor.endOffset && regionFloor.endOffsetIndex != -1) {
            int i = regionFloor.endOffsetIndex;
            if (i == this.chunkIndex.length - 1) {
                if (regionFloor.endOffset == this.chunkIndex.offsets[i] + this.chunkIndex.sizes[i]) {
                    return -2;
                }
            }
            return (int) ((this.chunkIndex.timesUs[i] + (((regionFloor.endOffset - this.chunkIndex.offsets[i]) * this.chunkIndex.durationsUs[i]) / this.chunkIndex.sizes[i])) / 1000);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanAdded(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        mergeSpan(cacheSpan);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanRemoved(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        com.google.android.exoplayer2.upstream.CachedRegionTracker.Region region = new com.google.android.exoplayer2.upstream.CachedRegionTracker.Region(cacheSpan.position, cacheSpan.position + cacheSpan.length);
        com.google.android.exoplayer2.upstream.CachedRegionTracker.Region regionFloor = this.regions.floor(region);
        if (regionFloor == null) {
            com.google.android.exoplayer2.util.Log.e(TAG, "Removed a span we were not aware of");
            return;
        }
        this.regions.remove(regionFloor);
        if (regionFloor.startOffset < region.startOffset) {
            com.google.android.exoplayer2.upstream.CachedRegionTracker.Region region2 = new com.google.android.exoplayer2.upstream.CachedRegionTracker.Region(regionFloor.startOffset, region.startOffset);
            int iBinarySearch = java.util.Arrays.binarySearch(this.chunkIndex.offsets, region2.endOffset);
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 2;
            }
            region2.endOffsetIndex = iBinarySearch;
            this.regions.add(region2);
        }
        if (regionFloor.endOffset > region.endOffset) {
            com.google.android.exoplayer2.upstream.CachedRegionTracker.Region region3 = new com.google.android.exoplayer2.upstream.CachedRegionTracker.Region(region.endOffset + 1, regionFloor.endOffset);
            region3.endOffsetIndex = regionFloor.endOffsetIndex;
            this.regions.add(region3);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanTouched(com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan2) {
    }

    public void release() {
        this.cache.removeListener(this.cacheKey, this);
    }
}
