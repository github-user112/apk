package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class CachedContent {
    public static final java.lang.String TAG = "CachedContent";
    public final java.util.TreeSet<com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan> cachedSpans;
    public final int id;
    public final java.lang.String key;
    public final java.util.ArrayList<com.google.android.exoplayer2.upstream.cache.CachedContent.Range> lockedRanges;
    public com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata metadata;

    public static final class Range {
        public final long length;
        public final long position;

        public Range(long j, long j2) {
            this.position = j;
            this.length = j2;
        }

        public boolean contains(long j, long j2) {
            long j3 = this.length;
            if (j3 == -1) {
                return j >= this.position;
            }
            if (j2 == -1) {
                return false;
            }
            long j4 = this.position;
            return j4 <= j && j + j2 <= j4 + j3;
        }

        public boolean intersects(long j, long j2) {
            long j3 = this.position;
            if (j3 > j) {
                return j2 == -1 || j + j2 > j3;
            }
            long j4 = this.length;
            return j4 == -1 || j3 + j4 > j;
        }
    }

    public CachedContent(int i, java.lang.String str) {
        this(i, str, com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata.EMPTY);
    }

    public CachedContent(int i, java.lang.String str, com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata defaultContentMetadata) {
        this.id = i;
        this.key = str;
        this.metadata = defaultContentMetadata;
        this.cachedSpans = new java.util.TreeSet<>();
        this.lockedRanges = new java.util.ArrayList<>();
    }

    public void addSpan(com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan) {
        this.cachedSpans.add(simpleCacheSpan);
    }

    public boolean applyMetadataMutations(com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations) {
        this.metadata = this.metadata.copyWithMutationsApplied(contentMetadataMutations);
        return !r2.equals(r0);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.upstream.cache.CachedContent.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = (com.google.android.exoplayer2.upstream.cache.CachedContent) obj;
        return this.id == cachedContent.id && this.key.equals(cachedContent.key) && this.cachedSpans.equals(cachedContent.cachedSpans) && this.metadata.equals(cachedContent.metadata);
    }

    public long getCachedBytesLength(long j, long j2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0);
        com.google.android.exoplayer2.util.Assertions.checkArgument(j2 >= 0);
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan span = getSpan(j, j2);
        if (span.isHoleSpan()) {
            return -java.lang.Math.min(span.isOpenEnded() ? Long.MAX_VALUE : span.length, j2);
        }
        long j3 = j + j2;
        long j4 = j3 >= 0 ? j3 : Long.MAX_VALUE;
        long jMax = span.position + span.length;
        if (jMax < j4) {
            for (com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan : this.cachedSpans.tailSet(span, false)) {
                long j5 = simpleCacheSpan.position;
                if (j5 > jMax) {
                    break;
                }
                jMax = java.lang.Math.max(jMax, j5 + simpleCacheSpan.length);
                if (jMax >= j4) {
                    break;
                }
            }
        }
        return java.lang.Math.min(jMax - j, j2);
    }

    public com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata getMetadata() {
        return this.metadata;
    }

    public com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan getSpan(long j, long j2) {
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpanCreateLookup = com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan.createLookup(this.key, j);
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpanFloor = this.cachedSpans.floor(simpleCacheSpanCreateLookup);
        if (simpleCacheSpanFloor != null && simpleCacheSpanFloor.position + simpleCacheSpanFloor.length > j) {
            return simpleCacheSpanFloor;
        }
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpanCeiling = this.cachedSpans.ceiling(simpleCacheSpanCreateLookup);
        if (simpleCacheSpanCeiling != null) {
            long j3 = simpleCacheSpanCeiling.position - j;
            j2 = j2 == -1 ? j3 : java.lang.Math.min(j3, j2);
        }
        return com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan.createHole(this.key, j, j2);
    }

    public java.util.TreeSet<com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan> getSpans() {
        return this.cachedSpans;
    }

    public int hashCode() {
        return this.metadata.hashCode() + ((this.key.hashCode() + (this.id * 31)) * 31);
    }

    public boolean isEmpty() {
        return this.cachedSpans.isEmpty();
    }

    public boolean isFullyLocked(long j, long j2) {
        for (int i = 0; i < this.lockedRanges.size(); i++) {
            if (this.lockedRanges.get(i).contains(j, j2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isFullyUnlocked() {
        return this.lockedRanges.isEmpty();
    }

    public boolean lockRange(long j, long j2) {
        for (int i = 0; i < this.lockedRanges.size(); i++) {
            if (this.lockedRanges.get(i).intersects(j, j2)) {
                return false;
            }
        }
        this.lockedRanges.add(new com.google.android.exoplayer2.upstream.cache.CachedContent.Range(j, j2));
        return true;
    }

    public boolean removeSpan(com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        if (!this.cachedSpans.remove(cacheSpan)) {
            return false;
        }
        java.io.File file = cacheSpan.file;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan setLastTouchTimestamp(com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan, long j, boolean z) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.cachedSpans.remove(simpleCacheSpan));
        java.io.File file = (java.io.File) com.google.android.exoplayer2.util.Assertions.checkNotNull(simpleCacheSpan.file);
        if (z) {
            java.io.File cacheFile = com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan.getCacheFile((java.io.File) com.google.android.exoplayer2.util.Assertions.checkNotNull(file.getParentFile()), this.id, simpleCacheSpan.position, j);
            if (file.renameTo(cacheFile)) {
                file = cacheFile;
            } else {
                java.lang.String strValueOf = java.lang.String.valueOf(file);
                java.lang.String strValueOf2 = java.lang.String.valueOf(cacheFile);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf2.length() + strValueOf.length() + 21);
                sb.append("Failed to rename ");
                sb.append(strValueOf);
                sb.append(" to ");
                sb.append(strValueOf2);
                com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            }
        }
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpanCopyWithFileAndLastTouchTimestamp = simpleCacheSpan.copyWithFileAndLastTouchTimestamp(file, j);
        this.cachedSpans.add(simpleCacheSpanCopyWithFileAndLastTouchTimestamp);
        return simpleCacheSpanCopyWithFileAndLastTouchTimestamp;
    }

    public void unlockRange(long j) {
        for (int i = 0; i < this.lockedRanges.size(); i++) {
            if (this.lockedRanges.get(i).position == j) {
                this.lockedRanges.remove(i);
                return;
            }
        }
        throw new java.lang.IllegalStateException();
    }
}
