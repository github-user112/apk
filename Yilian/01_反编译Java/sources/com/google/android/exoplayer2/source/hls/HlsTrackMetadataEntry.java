package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class HlsTrackMetadataEntry implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry>() { // from class: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry[] newArray(int i) {
            return new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry[i];
        }
    };
    public final java.lang.String groupId;
    public final java.lang.String name;
    public final java.util.List<com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo> variantInfos;

    public static final class VariantInfo implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo>() { // from class: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo createFromParcel(android.os.Parcel parcel) {
                return new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo[] newArray(int i) {
                return new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo[i];
            }
        };
        public final java.lang.String audioGroupId;
        public final int averageBitrate;
        public final java.lang.String captionGroupId;
        public final int peakBitrate;
        public final java.lang.String subtitleGroupId;
        public final java.lang.String videoGroupId;

        public VariantInfo(int i, int i2, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
            this.averageBitrate = i;
            this.peakBitrate = i2;
            this.videoGroupId = str;
            this.audioGroupId = str2;
            this.subtitleGroupId = str3;
            this.captionGroupId = str4;
        }

        public VariantInfo(android.os.Parcel parcel) {
            this.averageBitrate = parcel.readInt();
            this.peakBitrate = parcel.readInt();
            this.videoGroupId = parcel.readString();
            this.audioGroupId = parcel.readString();
            this.subtitleGroupId = parcel.readString();
            this.captionGroupId = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo variantInfo = (com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo) obj;
            return this.averageBitrate == variantInfo.averageBitrate && this.peakBitrate == variantInfo.peakBitrate && android.text.TextUtils.equals(this.videoGroupId, variantInfo.videoGroupId) && android.text.TextUtils.equals(this.audioGroupId, variantInfo.audioGroupId) && android.text.TextUtils.equals(this.subtitleGroupId, variantInfo.subtitleGroupId) && android.text.TextUtils.equals(this.captionGroupId, variantInfo.captionGroupId);
        }

        public int hashCode() {
            int i = ((this.averageBitrate * 31) + this.peakBitrate) * 31;
            java.lang.String str = this.videoGroupId;
            int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
            java.lang.String str2 = this.audioGroupId;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            java.lang.String str3 = this.subtitleGroupId;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            java.lang.String str4 = this.captionGroupId;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeInt(this.averageBitrate);
            parcel.writeInt(this.peakBitrate);
            parcel.writeString(this.videoGroupId);
            parcel.writeString(this.audioGroupId);
            parcel.writeString(this.subtitleGroupId);
            parcel.writeString(this.captionGroupId);
        }
    }

    public HlsTrackMetadataEntry(android.os.Parcel parcel) {
        this.groupId = parcel.readString();
        this.name = parcel.readString();
        int i = parcel.readInt();
        java.util.ArrayList arrayList = new java.util.ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add((com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo) parcel.readParcelable(com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo.class.getClassLoader()));
        }
        this.variantInfos = java.util.Collections.unmodifiableList(arrayList);
    }

    public HlsTrackMetadataEntry(java.lang.String str, java.lang.String str2, java.util.List<com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.VariantInfo> list) {
        this.groupId = str;
        this.name = str2;
        this.variantInfos = java.util.Collections.unmodifiableList(new java.util.ArrayList(list));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry hlsTrackMetadataEntry = (com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry) obj;
        return android.text.TextUtils.equals(this.groupId, hlsTrackMetadataEntry.groupId) && android.text.TextUtils.equals(this.name, hlsTrackMetadataEntry.name) && this.variantInfos.equals(hlsTrackMetadataEntry.variantInfos);
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
        java.lang.String str = this.groupId;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        java.lang.String str2 = this.name;
        return this.variantInfos.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        e.c.a.a.k2.a.$default$populateMediaMetadata(this, builder);
    }

    public java.lang.String toString() {
        java.lang.String string;
        java.lang.String str = this.groupId;
        if (str != null) {
            java.lang.String str2 = this.name;
            java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 5)), " [", str, ", ", str2);
            sbL.append("]");
            string = sbL.toString();
        } else {
            string = "";
        }
        java.lang.String strValueOf = java.lang.String.valueOf(string);
        return strValueOf.length() != 0 ? "HlsTrackMetadataEntry".concat(strValueOf) : new java.lang.String("HlsTrackMetadataEntry");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.groupId);
        parcel.writeString(this.name);
        int size = this.variantInfos.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable(this.variantInfos.get(i2), 0);
        }
    }
}
