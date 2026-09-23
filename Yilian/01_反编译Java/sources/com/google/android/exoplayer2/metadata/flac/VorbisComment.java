package com.google.android.exoplayer2.metadata.flac;

/* loaded from: classes.dex */
public final class VorbisComment implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.flac.VorbisComment> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.flac.VorbisComment>() { // from class: com.google.android.exoplayer2.metadata.flac.VorbisComment.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.flac.VorbisComment createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.metadata.flac.VorbisComment(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.flac.VorbisComment[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.flac.VorbisComment[i];
        }
    };
    public final java.lang.String key;
    public final java.lang.String value;

    public VorbisComment(android.os.Parcel parcel) {
        this.key = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
        this.value = (java.lang.String) com.google.android.exoplayer2.util.Util.castNonNull(parcel.readString());
    }

    public VorbisComment(java.lang.String str, java.lang.String str2) {
        this.key = str;
        this.value = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.flac.VorbisComment.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.metadata.flac.VorbisComment vorbisComment = (com.google.android.exoplayer2.metadata.flac.VorbisComment) obj;
        return this.key.equals(vorbisComment.key) && this.value.equals(vorbisComment.value);
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
        return this.value.hashCode() + ((this.key.hashCode() + 527) * 31);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder r7) {
        /*
            r6 = this;
            java.lang.String r0 = r6.key
            int r1 = r0.hashCode()
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r1) {
                case 62359119: goto L36;
                case 79833656: goto L2c;
                case 428414940: goto L22;
                case 1746739798: goto L18;
                case 1939198791: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L40
        Le:
            java.lang.String r1 = "ARTIST"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 1
            goto L41
        L18:
            java.lang.String r1 = "ALBUMARTIST"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 3
            goto L41
        L22:
            java.lang.String r1 = "DESCRIPTION"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 4
            goto L41
        L2c:
            java.lang.String r1 = "TITLE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 0
            goto L41
        L36:
            java.lang.String r1 = "ALBUM"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L40
            r0 = 2
            goto L41
        L40:
            r0 = -1
        L41:
            if (r0 == 0) goto L64
            if (r0 == r5) goto L5e
            if (r0 == r4) goto L58
            if (r0 == r3) goto L52
            if (r0 == r2) goto L4c
            goto L69
        L4c:
            java.lang.String r0 = r6.value
            r7.setDescription(r0)
            goto L69
        L52:
            java.lang.String r0 = r6.value
            r7.setAlbumArtist(r0)
            goto L69
        L58:
            java.lang.String r0 = r6.value
            r7.setAlbumTitle(r0)
            goto L69
        L5e:
            java.lang.String r0 = r6.value
            r7.setArtist(r0)
            goto L69
        L64:
            java.lang.String r0 = r6.value
            r7.setTitle(r0)
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.flac.VorbisComment.populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata$Builder):void");
    }

    public java.lang.String toString() {
        java.lang.String str = this.key;
        java.lang.String str2 = this.value;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str2).length() + java.lang.String.valueOf(str).length() + 5);
        sb.append("VC: ");
        sb.append(str);
        sb.append("=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeString(this.key);
        parcel.writeString(this.value);
    }
}
