package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public abstract class Representation {
    public static final long REVISION_ID_DEFAULT = -1;
    public final e.c.b.b.s<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> baseUrls;
    public final com.google.android.exoplayer2.Format format;
    public final java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> inbandEventStreams;
    public final com.google.android.exoplayer2.source.dash.manifest.RangedUri initializationUri;
    public final long presentationTimeOffsetUs;
    public final long revisionId;

    public static class MultiSegmentRepresentation extends com.google.android.exoplayer2.source.dash.manifest.Representation implements com.google.android.exoplayer2.source.dash.DashSegmentIndex {
        public final com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase segmentBase;

        public MultiSegmentRepresentation(long j, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase multiSegmentBase, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2) {
            super(j, format, list, multiSegmentBase, list2);
            this.segmentBase = multiSegmentBase;
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getAvailableSegmentCount(long j, long j2) {
            return this.segmentBase.getAvailableSegmentCount(j, j2);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.Representation
        public java.lang.String getCacheKey() {
            return null;
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getDurationUs(long j, long j2) {
            return this.segmentBase.getSegmentDurationUs(j, j2);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getFirstAvailableSegmentNum(long j, long j2) {
            return this.segmentBase.getFirstAvailableSegmentNum(j, j2);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getFirstSegmentNum() {
            return this.segmentBase.getFirstSegmentNum();
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.Representation
        public com.google.android.exoplayer2.source.dash.DashSegmentIndex getIndex() {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.Representation
        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getIndexUri() {
            return null;
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getNextSegmentAvailableTimeUs(long j, long j2) {
            return this.segmentBase.getNextSegmentAvailableTimeUs(j, j2);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getSegmentCount(long j) {
            return this.segmentBase.getSegmentCount(j);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getSegmentNum(long j, long j2) {
            return this.segmentBase.getSegmentNum(j, j2);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getSegmentUrl(long j) {
            return this.segmentBase.getSegmentUrl(this, j);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public long getTimeUs(long j) {
            return this.segmentBase.getSegmentTimeUs(j);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
        public boolean isExplicit() {
            return this.segmentBase.isExplicit();
        }
    }

    public static class SingleSegmentRepresentation extends com.google.android.exoplayer2.source.dash.manifest.Representation {
        public final java.lang.String cacheKey;
        public final long contentLength;
        public final com.google.android.exoplayer2.source.dash.manifest.RangedUri indexUri;
        public final com.google.android.exoplayer2.source.dash.manifest.SingleSegmentIndex segmentIndex;
        public final android.net.Uri uri;

        public SingleSegmentRepresentation(long j, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase singleSegmentBase, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2, java.lang.String str, long j2) {
            super(j, format, list, singleSegmentBase, list2);
            this.uri = android.net.Uri.parse(list.get(0).url);
            com.google.android.exoplayer2.source.dash.manifest.RangedUri index = singleSegmentBase.getIndex();
            this.indexUri = index;
            this.cacheKey = str;
            this.contentLength = j2;
            this.segmentIndex = index != null ? null : new com.google.android.exoplayer2.source.dash.manifest.SingleSegmentIndex(new com.google.android.exoplayer2.source.dash.manifest.RangedUri(null, 0L, j2));
        }

        public static com.google.android.exoplayer2.source.dash.manifest.Representation.SingleSegmentRepresentation newInstance(long j, com.google.android.exoplayer2.Format format, java.lang.String str, long j2, long j3, long j4, long j5, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list, java.lang.String str2, long j6) {
            return new com.google.android.exoplayer2.source.dash.manifest.Representation.SingleSegmentRepresentation(j, format, e.c.b.b.s.q(new com.google.android.exoplayer2.source.dash.manifest.BaseUrl(str)), new com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase(new com.google.android.exoplayer2.source.dash.manifest.RangedUri(null, j2, (j3 - j2) + 1), 1L, 0L, j4, (j5 - j4) + 1), list, str2, j6);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.Representation
        public java.lang.String getCacheKey() {
            return this.cacheKey;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.Representation
        public com.google.android.exoplayer2.source.dash.DashSegmentIndex getIndex() {
            return this.segmentIndex;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.Representation
        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getIndexUri() {
            return this.indexUri;
        }
    }

    public Representation(long j, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentBase, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(!list.isEmpty());
        this.revisionId = j;
        this.format = format;
        this.baseUrls = e.c.b.b.s.l(list);
        this.inbandEventStreams = list2 == null ? java.util.Collections.emptyList() : java.util.Collections.unmodifiableList(list2);
        this.initializationUri = segmentBase.getInitialization(this);
        this.presentationTimeOffsetUs = segmentBase.getPresentationTimeOffsetUs();
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Representation newInstance(long j, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentBase) {
        return newInstance(j, format, list, segmentBase, null);
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Representation newInstance(long j, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentBase, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2) {
        return newInstance(j, format, list, segmentBase, list2, null);
    }

    public static com.google.android.exoplayer2.source.dash.manifest.Representation newInstance(long j, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list, com.google.android.exoplayer2.source.dash.manifest.SegmentBase segmentBase, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> list2, java.lang.String str) {
        if (segmentBase instanceof com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase) {
            return new com.google.android.exoplayer2.source.dash.manifest.Representation.SingleSegmentRepresentation(j, format, list, (com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SingleSegmentBase) segmentBase, list2, str, -1L);
        }
        if (segmentBase instanceof com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase) {
            return new com.google.android.exoplayer2.source.dash.manifest.Representation.MultiSegmentRepresentation(j, format, list, (com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase) segmentBase, list2);
        }
        throw new java.lang.IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    public abstract java.lang.String getCacheKey();

    public abstract com.google.android.exoplayer2.source.dash.DashSegmentIndex getIndex();

    public abstract com.google.android.exoplayer2.source.dash.manifest.RangedUri getIndexUri();

    public com.google.android.exoplayer2.source.dash.manifest.RangedUri getInitializationUri() {
        return this.initializationUri;
    }
}
