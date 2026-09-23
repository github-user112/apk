package com.google.android.exoplayer2.metadata.flac;

/* loaded from: classes.dex */
public final class PictureFrame implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.flac.PictureFrame> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.flac.PictureFrame>() { // from class: com.google.android.exoplayer2.metadata.flac.PictureFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.flac.PictureFrame createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.flac.PictureFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.flac.PictureFrame[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.flac.PictureFrame[i];
        }
    };
    public final int colors;
    public final int depth;
    public final java.lang.String description;
    public final int height;
    public final java.lang.String mimeType;
    public final byte[] pictureData;
    public final int pictureType;
    public final int width;

    public PictureFrame(int i, java.lang.String str, java.lang.String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.pictureType = i;
        this.mimeType = str;
        this.description = str2;
        this.width = i2;
        this.height = i3;
        this.depth = i4;
        this.colors = i5;
        this.pictureData = bArr;
    }

    public PictureFrame(android.os.Parcel parcel) {
        this.pictureType = parcel.readInt();
        this.mimeType = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.description = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.depth = parcel.readInt();
        this.colors = parcel.readInt();
        this.pictureData = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(parcel.createByteArray());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.flac.PictureFrame.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.flac.PictureFrame pictureFrame = (com.google.android.exoplayer2.metadata.flac.PictureFrame) obj;
        return this.pictureType == pictureFrame.pictureType && this.mimeType.equals(pictureFrame.mimeType) && this.description.equals(pictureFrame.description) && this.width == pictureFrame.width && this.height == pictureFrame.height && this.depth == pictureFrame.depth && this.colors == pictureFrame.colors && java.util.Arrays.equals(this.pictureData, pictureFrame.pictureData);
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
        return java.util.Arrays.hashCode(this.pictureData) + ((((((((((this.description.hashCode() + ((this.mimeType.hashCode() + ((527 + this.pictureType) * 31)) * 31)) * 31) + this.width) * 31) + this.height) * 31) + this.depth) * 31) + this.colors) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        builder.maybeSetArtworkData(this.pictureData, this.pictureType);
    }

    public java.lang.String toString() {
        java.lang.String str = this.mimeType;
        java.lang.String str2 = this.description;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str2).length() + java.lang.String.valueOf(str).length() + 32);
        sb.append("Picture: mimeType=");
        sb.append(str);
        sb.append(", description=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.pictureType);
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.depth);
        parcel.writeInt(this.colors);
        parcel.writeByteArray(this.pictureData);
    }
}
