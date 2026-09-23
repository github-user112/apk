package com.google.android.exoplayer2.metadata.id3;

/* loaded from: classes.dex */
public final class TextInformationFrame extends com.google.android.exoplayer2.metadata.id3.Id3Frame {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.TextInformationFrame> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.id3.TextInformationFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.TextInformationFrame createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.id3.TextInformationFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.id3.TextInformationFrame[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.id3.TextInformationFrame[i];
        }
    };
    public final java.lang.String description;
    public final java.lang.String value;

    public TextInformationFrame(android.os.Parcel parcel) {
        super((java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString()));
        this.description = parcel.readString();
        this.value = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
    }

    public TextInformationFrame(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        super(str);
        this.description = str2;
        this.value = str3;
    }

    public static java.util.List<java.lang.Integer> parseId3v2point4TimestampFrameForDate(java.lang.String str) throws java.lang.NumberFormatException {
        int i;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(java.lang.Integer.valueOf(java.lang.Integer.parseInt(str.substring(0, 4))));
                arrayList.add(java.lang.Integer.valueOf(java.lang.Integer.parseInt(str.substring(5, 7))));
                i = java.lang.Integer.parseInt(str.substring(8, 10));
            } else {
                if (str.length() < 7) {
                    if (str.length() >= 4) {
                        i = java.lang.Integer.parseInt(str.substring(0, 4));
                    }
                    return arrayList;
                }
                arrayList.add(java.lang.Integer.valueOf(java.lang.Integer.parseInt(str.substring(0, 4))));
                i = java.lang.Integer.parseInt(str.substring(5, 7));
            }
            arrayList.add(java.lang.Integer.valueOf(i));
            return arrayList;
        } catch (java.lang.NumberFormatException unused) {
            return new java.util.ArrayList();
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.id3.TextInformationFrame.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.id3.TextInformationFrame textInformationFrame = (com.google.android.exoplayer2.metadata.id3.TextInformationFrame) obj;
        return com.google.android.exoplayer2.util.Util.areEqual(this.id, textInformationFrame.id) && com.google.android.exoplayer2.util.Util.areEqual(this.description, textInformationFrame.description) && com.google.android.exoplayer2.util.Util.areEqual(this.value, textInformationFrame.value);
    }

    public int hashCode() {
        int iHashCode = (this.id.hashCode() + 527) * 31;
        java.lang.String str = this.description;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        java.lang.String str2 = this.value;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0106  */
    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, com.google.android.exoplayer2.metadata.Metadata.Entry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder r8) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata$Builder):void");
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public java.lang.String toString() {
        java.lang.String str = this.id;
        java.lang.String str2 = this.description;
        java.lang.String str3 = this.value;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 22))), str, ": description=", str2, ": value=");
        sbL.append(str3);
        return sbL.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeString(this.description);
        parcel.writeString(this.value);
    }
}
