package com.google.android.exoplayer2.metadata.id3;

/* loaded from: classes.dex */
public final class PrivFrame extends com.google.android.exoplayer2.metadata.id3.Id3Frame {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.PrivFrame> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.PrivFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.PrivFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.PrivFrame createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.id3.PrivFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.PrivFrame[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.id3.PrivFrame[i];
        }
    };
    public static final java.lang.String ID = "PRIV";
    public final java.lang.String owner;
    public final byte[] privateData;

    public PrivFrame(android.os.Parcel parcel) {
        super(ID);
        this.owner = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.privateData = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(parcel.createByteArray());
    }

    public PrivFrame(java.lang.String str, byte[] bArr) {
        super(ID);
        this.owner = str;
        this.privateData = bArr;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.id3.PrivFrame.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.id3.PrivFrame privFrame = (com.google.android.exoplayer2.metadata.id3.PrivFrame) obj;
        return com.google.android.exoplayer2.util.Util.areEqual(this.owner, privFrame.owner) && java.util.Arrays.equals(this.privateData, privFrame.privateData);
    }

    public int hashCode() {
        java.lang.String str = this.owner;
        return java.util.Arrays.hashCode(this.privateData) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public java.lang.String toString() {
        java.lang.String str = this.id;
        java.lang.String str2 = this.owner;
        return e.a.c.a.a.G(e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 8)), str, ": owner=", str2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.owner);
        parcel.writeByteArray(this.privateData);
    }
}
