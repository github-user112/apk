package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public interface CacheKeyFactory {
    public static final com.google.android.exoplayer2.upstream.cache.CacheKeyFactory DEFAULT = new com.google.android.exoplayer2.upstream.cache.CacheKeyFactory() { // from class: e.c.a.a.r2.m.a
        @Override // com.google.android.exoplayer2.upstream.cache.CacheKeyFactory
        public final java.lang.String buildCacheKey(com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
            return e.c.a.a.r2.m.c.a(dataSpec);
        }
    };

    java.lang.String buildCacheKey(com.google.android.exoplayer2.upstream.DataSpec dataSpec);
}
