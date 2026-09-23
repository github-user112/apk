package com.google.android.exoplayer2.metadata.icy;

/* loaded from: classes.dex */
public final class IcyHeaders implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.icy.IcyHeaders> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.icy.IcyHeaders>() { // from class: com.google.android.exoplayer2.metadata.icy.IcyHeaders.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.icy.IcyHeaders createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.icy.IcyHeaders(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.icy.IcyHeaders[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.icy.IcyHeaders[i];
        }
    };
    public static final java.lang.String REQUEST_HEADER_ENABLE_METADATA_NAME = "Icy-MetaData";
    public static final java.lang.String REQUEST_HEADER_ENABLE_METADATA_VALUE = "1";
    public static final java.lang.String RESPONSE_HEADER_BITRATE = "icy-br";
    public static final java.lang.String RESPONSE_HEADER_GENRE = "icy-genre";
    public static final java.lang.String RESPONSE_HEADER_METADATA_INTERVAL = "icy-metaint";
    public static final java.lang.String RESPONSE_HEADER_NAME = "icy-name";
    public static final java.lang.String RESPONSE_HEADER_PUB = "icy-pub";
    public static final java.lang.String RESPONSE_HEADER_URL = "icy-url";
    public static final java.lang.String TAG = "IcyHeaders";
    public final int bitrate;
    public final java.lang.String genre;
    public final boolean isPublic;
    public final int metadataInterval;
    public final java.lang.String name;
    public final java.lang.String url;

    public IcyHeaders(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, boolean z, int i2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i2 == -1 || i2 > 0);
        this.bitrate = i;
        this.genre = str;
        this.name = str2;
        this.url = str3;
        this.isPublic = z;
        this.metadataInterval = i2;
    }

    public IcyHeaders(android.os.Parcel parcel) {
        this.bitrate = parcel.readInt();
        this.genre = parcel.readString();
        this.name = parcel.readString();
        this.url = parcel.readString();
        this.isPublic = com.google.android.exoplayer2.util.Util.readBoolean(parcel);
        this.metadataInterval = parcel.readInt();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.icy.IcyHeaders parse(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r13) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.icy.IcyHeaders.parse(java.util.Map):com.google.android.exoplayer2.metadata.icy.IcyHeaders");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.icy.IcyHeaders.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.icy.IcyHeaders icyHeaders = (com.google.android.exoplayer2.metadata.icy.IcyHeaders) obj;
        return this.bitrate == icyHeaders.bitrate && com.google.android.exoplayer2.util.Util.areEqual(this.genre, icyHeaders.genre) && com.google.android.exoplayer2.util.Util.areEqual(this.name, icyHeaders.name) && com.google.android.exoplayer2.util.Util.areEqual(this.url, icyHeaders.url) && this.isPublic == icyHeaders.isPublic && this.metadataInterval == icyHeaders.metadataInterval;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return e.c.a.a.k2.a.$default$getWrappedMetadataBytes(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ com.google.android.exoplayer2.Format getWrappedMetadataFormat() {
        return e.c.a.a.k2.a.$default$getWrappedMetadataFormat(this);
    }

    public int hashCode() {
        int i = (527 + this.bitrate) * 31;
        java.lang.String str = this.genre;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        java.lang.String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        java.lang.String str3 = this.url;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.isPublic ? 1 : 0)) * 31) + this.metadataInterval;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        e.c.a.a.k2.a.$default$populateMediaMetadata(this, builder);
    }

    public java.lang.String toString() {
        java.lang.String str = this.name;
        java.lang.String str2 = this.genre;
        int i = this.bitrate;
        int i2 = this.metadataInterval;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 80)), "IcyHeaders: name=\"", str, "\", genre=\"", str2);
        sbL.append("\", bitrate=");
        sbL.append(i);
        sbL.append(", metadataInterval=");
        sbL.append(i2);
        return sbL.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.bitrate);
        parcel.writeString(this.genre);
        parcel.writeString(this.name);
        parcel.writeString(this.url);
        com.google.android.exoplayer2.util.Util.writeBoolean(parcel, this.isPublic);
        parcel.writeInt(this.metadataInterval);
    }
}
