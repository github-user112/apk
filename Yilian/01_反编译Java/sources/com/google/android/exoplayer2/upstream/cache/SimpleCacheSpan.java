package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class SimpleCacheSpan extends com.google.android.exoplayer2.upstream.cache.CacheSpan {
    public static final java.util.regex.Pattern CACHE_FILE_PATTERN_V1 = java.util.regex.Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    public static final java.util.regex.Pattern CACHE_FILE_PATTERN_V2 = java.util.regex.Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    public static final java.util.regex.Pattern CACHE_FILE_PATTERN_V3 = java.util.regex.Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);
    public static final java.lang.String COMMON_SUFFIX = ".exo";
    public static final java.lang.String SUFFIX = ".v3.exo";

    public SimpleCacheSpan(java.lang.String str, long j, long j2, long j3, java.io.File file) {
        super(str, j, j2, j3, file);
    }

    public static com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan createCacheEntry(java.io.File file, long j, long j2, com.google.android.exoplayer2.upstream.cache.CachedContentIndex cachedContentIndex) {
        java.io.File file2;
        java.lang.String keyForId;
        java.lang.String name = file.getName();
        if (name.endsWith(SUFFIX)) {
            file2 = file;
        } else {
            java.io.File fileUpgradeFile = upgradeFile(file, cachedContentIndex);
            if (fileUpgradeFile == null) {
                return null;
            }
            file2 = fileUpgradeFile;
            name = fileUpgradeFile.getName();
        }
        java.util.regex.Matcher matcher = CACHE_FILE_PATTERN_V3.matcher(name);
        if (!matcher.matches() || (keyForId = cachedContentIndex.getKeyForId(java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1))))) == null) {
            return null;
        }
        long length = j == -1 ? file2.length() : j;
        if (length == 0) {
            return null;
        }
        return new com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan(keyForId, java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2))), length, j2 == com.google.android.exoplayer2.C.TIME_UNSET ? java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(3))) : j2, file2);
    }

    public static com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan createCacheEntry(java.io.File file, long j, com.google.android.exoplayer2.upstream.cache.CachedContentIndex cachedContentIndex) {
        return createCacheEntry(file, j, com.google.android.exoplayer2.C.TIME_UNSET, cachedContentIndex);
    }

    public static com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan createHole(java.lang.String str, long j, long j2) {
        return new com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan(str, j, j2, com.google.android.exoplayer2.C.TIME_UNSET, null);
    }

    public static com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan createLookup(java.lang.String str, long j) {
        return new com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan(str, j, -1L, com.google.android.exoplayer2.C.TIME_UNSET, null);
    }

    public static java.io.File getCacheFile(java.io.File file, int i, long j, long j2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(60);
        sb.append(i);
        sb.append(".");
        sb.append(j);
        sb.append(".");
        sb.append(j2);
        sb.append(SUFFIX);
        return new java.io.File(file, sb.toString());
    }

    public static java.io.File upgradeFile(java.io.File file, com.google.android.exoplayer2.upstream.cache.CachedContentIndex cachedContentIndex) {
        java.lang.String strUnescapeFileName;
        java.lang.String name = file.getName();
        java.util.regex.Matcher matcher = CACHE_FILE_PATTERN_V2.matcher(name);
        if (matcher.matches()) {
            strUnescapeFileName = com.google.android.exoplayer2.util.Util.unescapeFileName((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)));
        } else {
            matcher = CACHE_FILE_PATTERN_V1.matcher(name);
            strUnescapeFileName = matcher.matches() ? (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)) : null;
        }
        if (strUnescapeFileName == null) {
            return null;
        }
        java.io.File cacheFile = getCacheFile((java.io.File) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(file.getParentFile()), cachedContentIndex.assignIdForKey(strUnescapeFileName), java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2))), java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(3))));
        if (file.renameTo(cacheFile)) {
            return cacheFile;
        }
        return null;
    }

    public com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan copyWithFileAndLastTouchTimestamp(java.io.File file, long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.isCached);
        return new com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan(this.key, this.position, this.length, j, file);
    }
}
