package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public abstract class SegmentBase {
    public final com.google.android.exoplayer2.source.dash.manifest.RangedUri initialization;
    public final long presentationTimeOffset;
    public final long timescale;

    public static abstract class MultiSegmentBase extends com.google.android.exoplayer2.source.dash.manifest.SegmentBase {
        public final long availabilityTimeOffsetUs;
        public final long duration;
        public final long periodStartUnixTimeUs;
        public final java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> segmentTimeline;
        public final long startNumber;
        public final long timeShiftBufferDepthUs;

        public MultiSegmentBase(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2, long j3, long j4, java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list, long j5, long j6, long j7) {
            super(rangedUri, j, j2);
            this.startNumber = j3;
            this.duration = j4;
            this.segmentTimeline = list;
            this.availabilityTimeOffsetUs = j5;
            this.timeShiftBufferDepthUs = j6;
            this.periodStartUnixTimeUs = j7;
        }

        public long getAvailableSegmentCount(long j, long j2) {
            long segmentCount = getSegmentCount(j);
            return segmentCount != -1 ? segmentCount : (int) (getSegmentNum((j2 - this.periodStartUnixTimeUs) + this.availabilityTimeOffsetUs, j) - getFirstAvailableSegmentNum(j, j2));
        }

        public long getFirstAvailableSegmentNum(long j, long j2) {
            if (getSegmentCount(j) == -1) {
                long j3 = this.timeShiftBufferDepthUs;
                if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
                    return java.lang.Math.max(getFirstSegmentNum(), getSegmentNum((j2 - this.periodStartUnixTimeUs) - j3, j));
                }
            }
            return getFirstSegmentNum();
        }

        public long getFirstSegmentNum() {
            return this.startNumber;
        }

        public long getNextSegmentAvailableTimeUs(long j, long j2) {
            if (this.segmentTimeline != null) {
                return com.google.android.exoplayer2.C.TIME_UNSET;
            }
            long availableSegmentCount = getAvailableSegmentCount(j, j2) + getFirstAvailableSegmentNum(j, j2);
            return (getSegmentDurationUs(availableSegmentCount, j) + getSegmentTimeUs(availableSegmentCount)) - this.availabilityTimeOffsetUs;
        }

        public abstract long getSegmentCount(long j);

        public final long getSegmentDurationUs(long j, long j2) {
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list = this.segmentTimeline;
            if (list != null) {
                return (list.get((int) (j - this.startNumber)).duration * 1000000) / this.timescale;
            }
            long segmentCount = getSegmentCount(j2);
            return (segmentCount == -1 || j != (getFirstSegmentNum() + segmentCount) - 1) ? (this.duration * 1000000) / this.timescale : j2 - getSegmentTimeUs(j);
        }

        public long getSegmentNum(long j, long j2) {
            long firstSegmentNum = getFirstSegmentNum();
            long segmentCount = getSegmentCount(j2);
            if (segmentCount == 0) {
                return firstSegmentNum;
            }
            if (this.segmentTimeline == null) {
                long j3 = (j / ((this.duration * 1000000) / this.timescale)) + this.startNumber;
                return j3 < firstSegmentNum ? firstSegmentNum : segmentCount == -1 ? j3 : java.lang.Math.min(j3, (firstSegmentNum + segmentCount) - 1);
            }
            long j4 = (segmentCount + firstSegmentNum) - 1;
            long j5 = firstSegmentNum;
            while (j5 <= j4) {
                long j6 = ((j4 - j5) / 2) + j5;
                long segmentTimeUs = getSegmentTimeUs(j6);
                if (segmentTimeUs < j) {
                    j5 = j6 + 1;
                } else {
                    if (segmentTimeUs <= j) {
                        return j6;
                    }
                    j4 = j6 - 1;
                }
            }
            return j5 == firstSegmentNum ? j5 : j4;
        }

        public final long getSegmentTimeUs(long j) {
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list = this.segmentTimeline;
            return com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(list != null ? list.get((int) (j - this.startNumber)).startTime - this.presentationTimeOffset : (j - this.startNumber) * this.duration, 1000000L, this.timescale);
        }

        public abstract com.google.android.exoplayer2.source.dash.manifest.RangedUri getSegmentUrl(com.google.android.exoplayer2.source.dash.manifest.Representation representation, long j);

        public boolean isExplicit() {
            return this.segmentTimeline != null;
        }
    }

    public static final class SegmentList extends com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase {
        public final java.util.List<com.google.android.exoplayer2.source.dash.manifest.RangedUri> mediaSegments;

        public SegmentList(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2, long j3, long j4, java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list, long j5, java.util.List<com.google.android.exoplayer2.source.dash.manifest.RangedUri> list2, long j6, long j7) {
            super(rangedUri, j, j2, j3, j4, list, j5, j6, j7);
            this.mediaSegments = list2;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public long getSegmentCount(long j) {
            return this.mediaSegments.size();
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getSegmentUrl(com.google.android.exoplayer2.source.dash.manifest.Representation representation, long j) {
            return this.mediaSegments.get((int) (j - this.startNumber));
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public boolean isExplicit() {
            return true;
        }
    }

    public static final class SegmentTemplate extends com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase {
        public final long endNumber;
        public final com.google.android.exoplayer2.source.dash.manifest.UrlTemplate initializationTemplate;
        public final com.google.android.exoplayer2.source.dash.manifest.UrlTemplate mediaTemplate;

        public SegmentTemplate(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2, long j3, long j4, long j5, java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list, long j6, com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate, com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate2, long j7, long j8) {
            super(rangedUri, j, j2, j3, j5, list, j6, j7, j8);
            this.initializationTemplate = urlTemplate;
            this.mediaTemplate = urlTemplate2;
            this.endNumber = j4;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase
        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getInitialization(com.google.android.exoplayer2.source.dash.manifest.Representation representation) {
            com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate = this.initializationTemplate;
            if (urlTemplate == null) {
                return super.getInitialization(representation);
            }
            com.google.android.exoplayer2.Format format = representation.format;
            return new com.google.android.exoplayer2.source.dash.manifest.RangedUri(urlTemplate.buildUri(format.id, 0L, format.bitrate, 0L), 0L, -1L);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public long getSegmentCount(long j) {
            if (this.segmentTimeline != null) {
                return r0.size();
            }
            long j2 = this.endNumber;
            if (j2 != -1) {
                return (j2 - this.startNumber) + 1;
            }
            if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
                return e.c.b.c.a.a(java.math.BigInteger.valueOf(j).multiply(java.math.BigInteger.valueOf(this.timescale)), java.math.BigInteger.valueOf(this.duration).multiply(java.math.BigInteger.valueOf(1000000L)), java.math.RoundingMode.CEILING).longValue();
            }
            return -1L;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.SegmentBase.MultiSegmentBase
        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getSegmentUrl(com.google.android.exoplayer2.source.dash.manifest.Representation representation, long j) {
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement> list = this.segmentTimeline;
            long j2 = list != null ? list.get((int) (j - this.startNumber)).startTime : (j - this.startNumber) * this.duration;
            com.google.android.exoplayer2.source.dash.manifest.UrlTemplate urlTemplate = this.mediaTemplate;
            com.google.android.exoplayer2.Format format = representation.format;
            return new com.google.android.exoplayer2.source.dash.manifest.RangedUri(urlTemplate.buildUri(format.id, j, format.bitrate, j2), 0L, -1L);
        }
    }

    public static final class SegmentTimelineElement {
        public final long duration;
        public final long startTime;

        public SegmentTimelineElement(long j, long j2) {
            this.startTime = j;
            this.duration = j2;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement segmentTimelineElement = (com.google.android.exoplayer2.source.dash.manifest.SegmentBase.SegmentTimelineElement) obj;
            return this.startTime == segmentTimelineElement.startTime && this.duration == segmentTimelineElement.duration;
        }

        public int hashCode() {
            return (((int) this.startTime) * 31) + ((int) this.duration);
        }
    }

    public static class SingleSegmentBase extends com.google.android.exoplayer2.source.dash.manifest.SegmentBase {
        public final long indexLength;
        public final long indexStart;

        public SingleSegmentBase() {
            this(null, 1L, 0L, 0L, 0L);
        }

        public SingleSegmentBase(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2, long j3, long j4) {
            super(rangedUri, j, j2);
            this.indexStart = j3;
            this.indexLength = j4;
        }

        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getIndex() {
            long j = this.indexLength;
            if (j <= 0) {
                return null;
            }
            return new com.google.android.exoplayer2.source.dash.manifest.RangedUri(null, this.indexStart, j);
        }
    }

    public SegmentBase(com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, long j, long j2) {
        this.initialization = rangedUri;
        this.timescale = j;
        this.presentationTimeOffset = j2;
    }

    public com.google.android.exoplayer2.source.dash.manifest.RangedUri getInitialization(com.google.android.exoplayer2.source.dash.manifest.Representation representation) {
        return this.initialization;
    }

    public long getPresentationTimeOffsetUs() {
        return com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(this.presentationTimeOffset, 1000000L, this.timescale);
    }
}
