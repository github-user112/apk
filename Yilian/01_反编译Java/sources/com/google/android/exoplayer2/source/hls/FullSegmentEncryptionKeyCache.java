package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class FullSegmentEncryptionKeyCache {
    public final java.util.LinkedHashMap<android.net.Uri, byte[]> backingMap;

    public FullSegmentEncryptionKeyCache(final int i) {
        this.backingMap = new java.util.LinkedHashMap<android.net.Uri, byte[]>(this, i + 1, 1.0f, false) { // from class: com.google.android.exoplayer2.source.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            public boolean removeEldestEntry(java.util.Map.Entry<android.net.Uri, byte[]> entry) {
                return size() > i;
            }
        };
    }

    public boolean containsUri(android.net.Uri uri) {
        return this.backingMap.containsKey(com.google.android.exoplayer2.util.Assertions.checkNotNull(uri));
    }

    public byte[] get(android.net.Uri uri) {
        if (uri == null) {
            return null;
        }
        return this.backingMap.get(uri);
    }

    public byte[] put(android.net.Uri uri, byte[] bArr) {
        return this.backingMap.put((android.net.Uri) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri), (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr));
    }

    public byte[] remove(android.net.Uri uri) {
        return this.backingMap.remove(com.google.android.exoplayer2.util.Assertions.checkNotNull(uri));
    }
}
