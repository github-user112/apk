package com.google.android.exoplayer2.metadata.id3;

/* loaded from: classes.dex */
public final class GeobFrame extends com.google.android.exoplayer2.metadata.id3.Id3Frame {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.GeobFrame> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.GeobFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.GeobFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.GeobFrame createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.id3.GeobFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.GeobFrame[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.id3.GeobFrame[i];
        }
    };
    public static final java.lang.String ID = "GEOB";
    public final byte[] data;
    public final java.lang.String description;
    public final java.lang.String filename;
    public final java.lang.String mimeType;

    public GeobFrame(android.os.Parcel parcel) {
        super(ID);
        this.mimeType = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.filename = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.description = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.data = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(parcel.createByteArray());
    }

    public GeobFrame(java.lang.String str, java.lang.String str2, java.lang.String str3, byte[] bArr) {
        super(ID);
        this.mimeType = str;
        this.filename = str2;
        this.description = str3;
        this.data = bArr;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.id3.GeobFrame.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.id3.GeobFrame geobFrame = (com.google.android.exoplayer2.metadata.id3.GeobFrame) obj;
        return com.google.android.exoplayer2.util.Util.areEqual(this.mimeType, geobFrame.mimeType) && com.google.android.exoplayer2.util.Util.areEqual(this.filename, geobFrame.filename) && com.google.android.exoplayer2.util.Util.areEqual(this.description, geobFrame.description) && java.util.Arrays.equals(this.data, geobFrame.data);
    }

    public int hashCode() {
        java.lang.String str = this.mimeType;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        java.lang.String str2 = this.filename;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        java.lang.String str3 = this.description;
        return java.util.Arrays.hashCode(this.data) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public java.lang.String toString() {
        java.lang.String str = this.id;
        java.lang.String str2 = this.mimeType;
        java.lang.String str3 = this.filename;
        java.lang.String str4 = this.description;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str4, e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 36)))), str, ": mimeType=", str2, ", filename=");
        sbL.append(str3);
        sbL.append(", description=");
        sbL.append(str4);
        return sbL.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.filename);
        parcel.writeString(this.description);
        parcel.writeByteArray(this.data);
    }
}
