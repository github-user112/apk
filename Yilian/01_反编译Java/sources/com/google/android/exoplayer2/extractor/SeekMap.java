package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public interface SeekMap {

    public static final class SeekPoints {
        public final com.google.android.exoplayer2.extractor.SeekPoint first;
        public final com.google.android.exoplayer2.extractor.SeekPoint second;

        public SeekPoints(com.google.android.exoplayer2.extractor.SeekPoint seekPoint) {
            this(seekPoint, seekPoint);
        }

        public SeekPoints(com.google.android.exoplayer2.extractor.SeekPoint seekPoint, com.google.android.exoplayer2.extractor.SeekPoint seekPoint2) {
            this.first = (com.google.android.exoplayer2.extractor.SeekPoint) com.google.android.exoplayer2.util.Assertions.checkNotNull(seekPoint);
            this.second = (com.google.android.exoplayer2.extractor.SeekPoint) com.google.android.exoplayer2.util.Assertions.checkNotNull(seekPoint2);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.extractor.SeekMap.SeekPoints.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.extractor.SeekMap.SeekPoints seekPoints = (com.google.android.exoplayer2.extractor.SeekMap.SeekPoints) obj;
            return this.first.equals(seekPoints.first) && this.second.equals(seekPoints.second);
        }

        public int hashCode() {
            return this.second.hashCode() + (this.first.hashCode() * 31);
        }

        public java.lang.String toString() {
            java.lang.String string;
            java.lang.String strValueOf = java.lang.String.valueOf(this.first);
            if (this.first.equals(this.second)) {
                string = "";
            } else {
                java.lang.String strValueOf2 = java.lang.String.valueOf(this.second);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf2.length() + 2);
                sb.append(", ");
                sb.append(strValueOf2);
                string = sb.toString();
            }
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder(java.lang.String.valueOf(string).length() + strValueOf.length() + 2);
            sb2.append("[");
            sb2.append(strValueOf);
            sb2.append(string);
            sb2.append("]");
            return sb2.toString();
        }
    }

    public static class Unseekable implements com.google.android.exoplayer2.extractor.SeekMap {
        public final long durationUs;
        public final com.google.android.exoplayer2.extractor.SeekMap.SeekPoints startSeekPoints;

        public Unseekable(long j) {
            this(j, 0L);
        }

        public Unseekable(long j, long j2) {
            this.durationUs = j;
            this.startSeekPoints = new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(j2 == 0 ? com.google.android.exoplayer2.extractor.SeekPoint.START : new com.google.android.exoplayer2.extractor.SeekPoint(0L, j2));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
            return this.startSeekPoints;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return false;
        }
    }

    long getDurationUs();

    com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j);

    boolean isSeekable();
}
