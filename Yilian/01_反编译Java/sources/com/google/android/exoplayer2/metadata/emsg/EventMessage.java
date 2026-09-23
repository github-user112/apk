package com.google.android.exoplayer2.metadata.emsg;

/* loaded from: classes.dex */
public final class EventMessage implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final java.lang.String ID3_SCHEME_ID_AOM = "https://aomedia.org/emsg/ID3";
    public static final java.lang.String ID3_SCHEME_ID_APPLE = "https://developer.apple.com/streaming/emsg-id3";
    public static final java.lang.String SCTE35_SCHEME_ID = "urn:scte:scte35:2014:bin";
    public final long durationMs;
    public int hashCode;
    public final long id;
    public final byte[] messageData;
    public final java.lang.String schemeIdUri;
    public final java.lang.String value;
    public static final com.google.android.exoplayer2.Format ID3_FORMAT = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ID3).build();
    public static final com.google.android.exoplayer2.Format SCTE35_FORMAT = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SCTE35).build();
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.emsg.EventMessage> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.emsg.EventMessage>() { // from class: com.google.android.exoplayer2.metadata.emsg.EventMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.emsg.EventMessage createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.emsg.EventMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.emsg.EventMessage[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.emsg.EventMessage[i];
        }
    };

    public EventMessage(android.os.Parcel parcel) {
        this.schemeIdUri = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.value = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.durationMs = parcel.readLong();
        this.id = parcel.readLong();
        this.messageData = (byte[]) com.google.android.exoplayer2.util.Util.castNonNull(parcel.createByteArray());
    }

    public EventMessage(java.lang.String str, java.lang.String str2, long j, long j2, byte[] bArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.durationMs = j;
        this.id = j2;
        this.messageData = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.emsg.EventMessage.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.emsg.EventMessage eventMessage = (com.google.android.exoplayer2.metadata.emsg.EventMessage) obj;
        return this.durationMs == eventMessage.durationMs && this.id == eventMessage.id && com.google.android.exoplayer2.util.Util.areEqual(this.schemeIdUri, eventMessage.schemeIdUri) && com.google.android.exoplayer2.util.Util.areEqual(this.value, eventMessage.value) && java.util.Arrays.equals(this.messageData, eventMessage.messageData);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.messageData;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.Format getWrappedMetadataFormat() {
        /*
            r5 = this;
            java.lang.String r0 = r5.schemeIdUri
            int r1 = r0.hashCode()
            r2 = -1468477611(0xffffffffa878cf55, float:-1.38117235E-14)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L2c
            r2 = -795945609(0xffffffffd08ed577, float:-1.91708344E10)
            if (r1 == r2) goto L22
            r2 = 1303648457(0x4db418c9, float:3.776904E8)
            if (r1 == r2) goto L18
            goto L36
        L18:
            java.lang.String r1 = "https://developer.apple.com/streaming/emsg-id3"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
            r0 = 1
            goto L37
        L22:
            java.lang.String r1 = "https://aomedia.org/emsg/ID3"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
            r0 = 0
            goto L37
        L2c:
            java.lang.String r1 = "urn:scte:scte35:2014:bin"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L36
            r0 = 2
            goto L37
        L36:
            r0 = -1
        L37:
            if (r0 == 0) goto L42
            if (r0 == r4) goto L42
            if (r0 == r3) goto L3f
            r0 = 0
            return r0
        L3f:
            com.google.android.exoplayer2.Format r0 = com.google.android.exoplayer2.metadata.emsg.EventMessage.SCTE35_FORMAT
            return r0
        L42:
            com.google.android.exoplayer2.Format r0 = com.google.android.exoplayer2.metadata.emsg.EventMessage.ID3_FORMAT
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.emsg.EventMessage.getWrappedMetadataFormat():com.google.android.exoplayer2.Format");
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            java.lang.String str = this.schemeIdUri;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            java.lang.String str2 = this.value;
            int iHashCode2 = str2 != null ? str2.hashCode() : 0;
            long j = this.durationMs;
            int i = (((iHashCode + iHashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.id;
            this.hashCode = java.util.Arrays.hashCode(this.messageData) + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
        }
        return this.hashCode;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        e.c.a.a.k2.a.$default$populateMediaMetadata(this, builder);
    }

    public java.lang.String toString() {
        java.lang.String str = this.schemeIdUri;
        long j = this.id;
        long j2 = this.durationMs;
        java.lang.String str2 = this.value;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str2).length() + java.lang.String.valueOf(str).length() + 79);
        sb.append("EMSG: scheme=");
        sb.append(str);
        sb.append(", id=");
        sb.append(j);
        sb.append(", durationMs=");
        sb.append(j2);
        sb.append(", value=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.schemeIdUri);
        parcel.writeString(this.value);
        parcel.writeLong(this.durationMs);
        parcel.writeLong(this.id);
        parcel.writeByteArray(this.messageData);
    }
}
