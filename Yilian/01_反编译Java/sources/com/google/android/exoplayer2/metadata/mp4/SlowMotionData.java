package com.google.android.exoplayer2.metadata.mp4;

/* loaded from: classes.dex */
public final class SlowMotionData implements com.google.android.exoplayer2.metadata.Metadata.Entry {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.SlowMotionData> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.SlowMotionData>() { // from class: com.google.android.exoplayer2.metadata.mp4.SlowMotionData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.mp4.SlowMotionData createFromParcel(android.os.Parcel parcel) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            parcel.readList(arrayList, com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment.class.getClassLoader());
            return new com.google.android.exoplayer2.metadata.mp4.SlowMotionData(arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.metadata.mp4.SlowMotionData[] newArray(int i) {
            return new com.google.android.exoplayer2.metadata.mp4.SlowMotionData[i];
        }
    };
    public final java.util.List<com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment> segments;

    public static final class Segment implements android.os.Parcelable {
        public static final java.util.Comparator<com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment> BY_START_THEN_END_THEN_DIVISOR = new java.util.Comparator() { // from class: e.c.a.a.k2.c.a
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                return com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment.a((com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment) obj, (com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment) obj2);
            }
        };
        public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment>() { // from class: com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment createFromParcel(android.os.Parcel parcel) {
                return new com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment[] newArray(int i) {
                return new com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment[i];
            }
        };
        public final long endTimeMs;
        public final int speedDivisor;
        public final long startTimeMs;

        public Segment(long j, long j2, int i) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(j < j2);
            this.startTimeMs = j;
            this.endTimeMs = j2;
            this.speedDivisor = i;
        }

        public static int a(com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment segment, com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment segment2) {
            return e.c.b.b.p.a.b(segment.startTimeMs, segment2.startTimeMs).b(segment.endTimeMs, segment2.endTimeMs).a(segment.speedDivisor, segment2.speedDivisor).f();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment segment = (com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment) obj;
            return this.startTimeMs == segment.startTimeMs && this.endTimeMs == segment.endTimeMs && this.speedDivisor == segment.speedDivisor;
        }

        public int hashCode() {
            return java.util.Arrays.hashCode(new java.lang.Object[]{java.lang.Long.valueOf(this.startTimeMs), java.lang.Long.valueOf(this.endTimeMs), java.lang.Integer.valueOf(this.speedDivisor)});
        }

        public java.lang.String toString() {
            return com.google.android.exoplayer2.util.Util.formatInvariant("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", java.lang.Long.valueOf(this.startTimeMs), java.lang.Long.valueOf(this.endTimeMs), java.lang.Integer.valueOf(this.speedDivisor));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeLong(this.startTimeMs);
            parcel.writeLong(this.endTimeMs);
            parcel.writeInt(this.speedDivisor);
        }
    }

    public SlowMotionData(java.util.List<com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment> list) {
        this.segments = list;
        com.google.android.exoplayer2.util.Assertions.checkArgument(!doSegmentsOverlap(list));
    }

    public static boolean doSegmentsOverlap(java.util.List<com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j = list.get(0).endTimeMs;
        for (int i = 1; i < list.size(); i++) {
            if (list.get(i).startTimeMs < j) {
                return true;
            }
            j = list.get(i).endTimeMs;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.metadata.mp4.SlowMotionData.class != obj.getClass()) {
            return false;
        }
        return this.segments.equals(((com.google.android.exoplayer2.metadata.mp4.SlowMotionData) obj).segments);
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
        return this.segments.hashCode();
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        e.c.a.a.k2.a.$default$populateMediaMetadata(this, builder);
    }

    public java.lang.String toString() {
        java.lang.String strValueOf = java.lang.String.valueOf(this.segments);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 21);
        sb.append("SlowMotion: segments=");
        sb.append(strValueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeList(this.segments);
    }
}
