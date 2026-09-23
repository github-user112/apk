package com.google.android.exoplayer2.metadata.id3;

/* loaded from: classes.dex */
public final class ApicFrame extends com.google.android.exoplayer2.metadata.id3.Id3Frame {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.ApicFrame> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.ApicFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.ApicFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.ApicFrame createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.id3.ApicFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.ApicFrame[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.id3.ApicFrame[i];
        }
    };
    public static final java.lang.String ID = "APIC";
    public final java.lang.String description;
    public final java.lang.String mimeType;
    public final byte[] pictureData;
    public final int pictureType;

    public ApicFrame(android.os.Parcel parcel) {
        super(ID);
        this.mimeType = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.description = parcel.readString();
        this.pictureType = parcel.readInt();
        this.pictureData = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(parcel.createByteArray());
    }

    public ApicFrame(java.lang.String str, java.lang.String str2, int i, byte[] bArr) {
        super(ID);
        this.mimeType = str;
        this.description = str2;
        this.pictureType = i;
        this.pictureData = bArr;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.id3.ApicFrame.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.id3.ApicFrame apicFrame = (com.google.android.exoplayer2.metadata.id3.ApicFrame) obj;
        return this.pictureType == apicFrame.pictureType && com.google.android.exoplayer2.util.Util.areEqual(this.mimeType, apicFrame.mimeType) && com.google.android.exoplayer2.util.Util.areEqual(this.description, apicFrame.description) && java.util.Arrays.equals(this.pictureData, apicFrame.pictureData);
    }

    public int hashCode() {
        int i = (527 + this.pictureType) * 31;
        java.lang.String str = this.mimeType;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        java.lang.String str2 = this.description;
        return java.util.Arrays.hashCode(this.pictureData) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, com.google.android.exoplayer2.metadata.Metadata.Entry
    public void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        builder.maybeSetArtworkData(this.pictureData, this.pictureType);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public java.lang.String toString() {
        java.lang.String str = this.id;
        java.lang.String str2 = this.mimeType;
        java.lang.String str3 = this.description;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 25))), str, ": mimeType=", str2, ", description=");
        sbL.append(str3);
        return sbL.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.pictureType);
        parcel.writeByteArray(this.pictureData);
    }
}
