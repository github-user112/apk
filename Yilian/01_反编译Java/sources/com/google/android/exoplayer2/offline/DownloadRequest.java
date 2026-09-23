package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public final class DownloadRequest implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.offline.DownloadRequest> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.offline.DownloadRequest>() { // from class: com.google.android.exoplayer2.offline.DownloadRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.offline.DownloadRequest createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.offline.DownloadRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.offline.DownloadRequest[] newArray(int i) {
            return new com.google.android.exoplayer2.offline.DownloadRequest[i];
        }
    };
    public final java.lang.String customCacheKey;
    public final byte[] data;
    public final java.lang.String id;
    public final byte[] keySetId;
    public final java.lang.String mimeType;
    public final java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
    public final android.net.Uri uri;

    public static class Builder {
        public java.lang.String customCacheKey;
        public byte[] data;
        public final java.lang.String id;
        public byte[] keySetId;
        public java.lang.String mimeType;
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
        public final android.net.Uri uri;

        public Builder(java.lang.String str, android.net.Uri uri) {
            this.id = str;
            this.uri = uri;
        }

        public com.google.android.exoplayer2.offline.DownloadRequest build() {
            java.lang.String str = this.id;
            android.net.Uri uri = this.uri;
            java.lang.String str2 = this.mimeType;
            java.util.List listP = this.streamKeys;
            if (listP == null) {
                listP = e.c.b.b.s.p();
            }
            return new com.google.android.exoplayer2.offline.DownloadRequest(str, uri, str2, listP, this.keySetId, this.customCacheKey, this.data);
        }

        public com.google.android.exoplayer2.offline.DownloadRequest.Builder setCustomCacheKey(java.lang.String str) {
            this.customCacheKey = str;
            return this;
        }

        public com.google.android.exoplayer2.offline.DownloadRequest.Builder setData(byte[] bArr) {
            this.data = bArr;
            return this;
        }

        public com.google.android.exoplayer2.offline.DownloadRequest.Builder setKeySetId(byte[] bArr) {
            this.keySetId = bArr;
            return this;
        }

        public com.google.android.exoplayer2.offline.DownloadRequest.Builder setMimeType(java.lang.String str) {
            this.mimeType = str;
            return this;
        }

        public com.google.android.exoplayer2.offline.DownloadRequest.Builder setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            this.streamKeys = list;
            return this;
        }
    }

    public static class UnsupportedRequestException extends java.io.IOException {
    }

    public DownloadRequest(android.os.Parcel parcel) {
        this.id = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.uri = android.net.Uri.parse((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString()));
        this.mimeType = parcel.readString();
        int i = parcel.readInt();
        java.util.ArrayList arrayList = new java.util.ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add((com.google.android.exoplayer2.offline.StreamKey) parcel.readParcelable(com.google.android.exoplayer2.offline.StreamKey.class.getClassLoader()));
        }
        this.streamKeys = java.util.Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(parcel.createByteArray());
    }

    public DownloadRequest(java.lang.String str, android.net.Uri uri, java.lang.String str2, java.util.List<com.google.android.exoplayer2.offline.StreamKey> list, byte[] bArr, java.lang.String str3, byte[] bArr2) {
        int iInferContentTypeForUriAndMimeType = com.google.android.exoplayer2.util.Util.inferContentTypeForUriAndMimeType(uri, str2);
        if (iInferContentTypeForUriAndMimeType == 0 || iInferContentTypeForUriAndMimeType == 2 || iInferContentTypeForUriAndMimeType == 1) {
            boolean z = str3 == null;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(49);
            sb.append("customCacheKey must be null for type: ");
            sb.append(iInferContentTypeForUriAndMimeType);
            com.google.android.exoplayer2.util.Assertions.checkArgument(z, sb.toString());
        }
        this.id = str;
        this.uri = uri;
        this.mimeType = str2;
        java.util.ArrayList arrayList = new java.util.ArrayList(list);
        java.util.Collections.sort(arrayList);
        this.streamKeys = java.util.Collections.unmodifiableList(arrayList);
        this.keySetId = bArr != null ? java.util.Arrays.copyOf(bArr, bArr.length) : null;
        this.customCacheKey = str3;
        this.data = bArr2 != null ? java.util.Arrays.copyOf(bArr2, bArr2.length) : com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
    }

    public com.google.android.exoplayer2.offline.DownloadRequest copyWithId(java.lang.String str) {
        return new com.google.android.exoplayer2.offline.DownloadRequest(str, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data);
    }

    public com.google.android.exoplayer2.offline.DownloadRequest copyWithKeySetId(byte[] bArr) {
        return new com.google.android.exoplayer2.offline.DownloadRequest(this.id, this.uri, this.mimeType, this.streamKeys, bArr, this.customCacheKey, this.data);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.ArrayList] */
    public com.google.android.exoplayer2.offline.DownloadRequest copyWithMergedRequest(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest) {
        java.util.List listEmptyList;
        com.google.android.exoplayer2.util.Assertions.checkArgument(this.id.equals(downloadRequest.id));
        if (this.streamKeys.isEmpty() || downloadRequest.streamKeys.isEmpty()) {
            listEmptyList = java.util.Collections.emptyList();
        } else {
            listEmptyList = new java.util.ArrayList(this.streamKeys);
            for (int i = 0; i < downloadRequest.streamKeys.size(); i++) {
                com.google.android.exoplayer2.offline.StreamKey streamKey = downloadRequest.streamKeys.get(i);
                if (!listEmptyList.contains(streamKey)) {
                    listEmptyList.add(streamKey);
                }
            }
        }
        return new com.google.android.exoplayer2.offline.DownloadRequest(this.id, downloadRequest.uri, downloadRequest.mimeType, listEmptyList, downloadRequest.keySetId, downloadRequest.customCacheKey, downloadRequest.data);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.google.android.exoplayer2.offline.DownloadRequest)) {
            return false;
        }
        com.google.android.exoplayer2.offline.DownloadRequest downloadRequest = (com.google.android.exoplayer2.offline.DownloadRequest) obj;
        return this.id.equals(downloadRequest.id) && this.uri.equals(downloadRequest.uri) && com.google.android.exoplayer2.util.Util.areEqual(this.mimeType, downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && java.util.Arrays.equals(this.keySetId, downloadRequest.keySetId) && com.google.android.exoplayer2.util.Util.areEqual(this.customCacheKey, downloadRequest.customCacheKey) && java.util.Arrays.equals(this.data, downloadRequest.data);
    }

    public final int hashCode() {
        int iHashCode = (this.uri.hashCode() + (this.id.hashCode() * 31 * 31)) * 31;
        java.lang.String str = this.mimeType;
        int iHashCode2 = (java.util.Arrays.hashCode(this.keySetId) + ((this.streamKeys.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        java.lang.String str2 = this.customCacheKey;
        return java.util.Arrays.hashCode(this.data) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public com.google.android.exoplayer2.MediaItem toMediaItem() {
        return new com.google.android.exoplayer2.MediaItem.Builder().setMediaId(this.id).setUri(this.uri).setCustomCacheKey(this.customCacheKey).setMimeType(this.mimeType).setStreamKeys(this.streamKeys).build();
    }

    public java.lang.String toString() {
        java.lang.String str = this.mimeType;
        java.lang.String str2 = this.id;
        return e.a.c.a.a.G(e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 1)), str, ":", str2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.uri.toString());
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.streamKeys.size());
        for (int i2 = 0; i2 < this.streamKeys.size(); i2++) {
            parcel.writeParcelable(this.streamKeys.get(i2), 0);
        }
        parcel.writeByteArray(this.keySetId);
        parcel.writeString(this.customCacheKey);
        parcel.writeByteArray(this.data);
    }
}
