package com.google.android.exoplayer2.metadata.id3;

/* loaded from: classes.dex */
public abstract class Id3Frame implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public final java.lang.String id;

    public Id3Frame(java.lang.String str) {
        this.id = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return e.c.a.a.k2.a.$default$getWrappedMetadataBytes(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ com.google.android.exoplayer2.Format getWrappedMetadataFormat() {
        return e.c.a.a.k2.a.$default$getWrappedMetadataFormat(this);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        e.c.a.a.k2.a.$default$populateMediaMetadata(this, builder);
    }

    public java.lang.String toString() {
        return this.id;
    }
}
