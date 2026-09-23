package com.google.android.exoplayer2.metadata.mp4;

/* loaded from: classes.dex */
public final class MdtaMetadataEntry implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry>() { // from class: com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry[i];
        }
    };
    public static final java.lang.String KEY_ANDROID_CAPTURE_FPS = "com.android.capture.fps";
    public final java.lang.String key;
    public final int localeIndicator;
    public final int typeIndicator;
    public final byte[] value;

    public MdtaMetadataEntry(android.os.Parcel parcel) {
        this.key = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.value = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(parcel.createByteArray());
        this.localeIndicator = parcel.readInt();
        this.typeIndicator = parcel.readInt();
    }

    public MdtaMetadataEntry(java.lang.String str, byte[] bArr, int i, int i2) {
        this.key = str;
        this.value = bArr;
        this.localeIndicator = i;
        this.typeIndicator = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry mdtaMetadataEntry = (com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry) obj;
        return this.key.equals(mdtaMetadataEntry.key) && java.util.Arrays.equals(this.value, mdtaMetadataEntry.value) && this.localeIndicator == mdtaMetadataEntry.localeIndicator && this.typeIndicator == mdtaMetadataEntry.typeIndicator;
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
        return ((((java.util.Arrays.hashCode(this.value) + ((this.key.hashCode() + 527) * 31)) * 31) + this.localeIndicator) * 31) + this.typeIndicator;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        e.c.a.a.k2.a.$default$populateMediaMetadata(this, builder);
    }

    public java.lang.String toString() {
        java.lang.String strValueOf = java.lang.String.valueOf(this.key);
        return strValueOf.length() != 0 ? "mdta: key=".concat(strValueOf) : new java.lang.String("mdta: key=");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeByteArray(this.value);
        parcel.writeInt(this.localeIndicator);
        parcel.writeInt(this.typeIndicator);
    }
}
