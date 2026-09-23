package com.google.android.exoplayer2.metadata.mp4;

/* loaded from: classes.dex */
public final class SmtaMetadataEntry implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry>() { // from class: com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry[i];
        }
    };
    public final float captureFrameRate;
    public final int svcTemporalLayerCount;

    public SmtaMetadataEntry(float f2, int i) {
        this.captureFrameRate = f2;
        this.svcTemporalLayerCount = i;
    }

    public SmtaMetadataEntry(android.os.Parcel parcel) {
        this.captureFrameRate = parcel.readFloat();
        this.svcTemporalLayerCount = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry smtaMetadataEntry = (com.google.android.exoplayer2.metadata.mp4.SmtaMetadataEntry) obj;
        return this.captureFrameRate == smtaMetadataEntry.captureFrameRate && this.svcTemporalLayerCount == smtaMetadataEntry.svcTemporalLayerCount;
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
        return ((527 + java.lang.Float.valueOf(this.captureFrameRate).hashCode()) * 31) + this.svcTemporalLayerCount;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        e.c.a.a.k2.a.$default$populateMediaMetadata(this, builder);
    }

    public java.lang.String toString() {
        float f2 = this.captureFrameRate;
        int i = this.svcTemporalLayerCount;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(73);
        sb.append("smta: captureFrameRate=");
        sb.append(f2);
        sb.append(", svcTemporalLayerCount=");
        sb.append(i);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeFloat(this.captureFrameRate);
        parcel.writeInt(this.svcTemporalLayerCount);
    }
}
