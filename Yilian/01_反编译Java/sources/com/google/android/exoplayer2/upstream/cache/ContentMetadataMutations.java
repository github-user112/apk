package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public class ContentMetadataMutations {
    public final java.util.Map<java.lang.String, java.lang.Object> editedValues = new java.util.HashMap();
    public final java.util.List<java.lang.String> removedValues = new java.util.ArrayList();

    private com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations checkAndSet(java.lang.String str, java.lang.Object obj) {
        this.editedValues.put((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(str), com.google.android.exoplayer2.util.Assertions.checkNotNull(obj));
        this.removedValues.remove(str);
        return this;
    }

    public static com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations setContentLength(com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations, long j) {
        return contentMetadataMutations.set(com.google.android.exoplayer2.upstream.cache.ContentMetadata.KEY_CONTENT_LENGTH, j);
    }

    public static com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations setRedirectedUri(com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations, android.net.Uri uri) {
        return uri == null ? contentMetadataMutations.remove(com.google.android.exoplayer2.upstream.cache.ContentMetadata.KEY_REDIRECTED_URI) : contentMetadataMutations.set(com.google.android.exoplayer2.upstream.cache.ContentMetadata.KEY_REDIRECTED_URI, uri.toString());
    }

    public java.util.Map<java.lang.String, java.lang.Object> getEditedValues() {
        java.util.HashMap map = new java.util.HashMap(this.editedValues);
        for (java.util.Map.Entry entry : map.entrySet()) {
            java.lang.Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(java.util.Arrays.copyOf(bArr, bArr.length));
            }
        }
        return java.util.Collections.unmodifiableMap(map);
    }

    public java.util.List<java.lang.String> getRemovedValues() {
        return java.util.Collections.unmodifiableList(new java.util.ArrayList(this.removedValues));
    }

    public com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations remove(java.lang.String str) {
        this.removedValues.add(str);
        this.editedValues.remove(str);
        return this;
    }

    public com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations set(java.lang.String str, long j) {
        return checkAndSet(str, java.lang.Long.valueOf(j));
    }

    public com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations set(java.lang.String str, java.lang.String str2) {
        return checkAndSet(str, str2);
    }

    public com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations set(java.lang.String str, byte[] bArr) {
        return checkAndSet(str, java.util.Arrays.copyOf(bArr, bArr.length));
    }
}
