package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public final class TrackSelectionArray {
    public int hashCode;
    public final int length;
    public final com.google.android.exoplayer2.trackselection.TrackSelection[] trackSelections;

    public TrackSelectionArray(com.google.android.exoplayer2.trackselection.TrackSelection... trackSelectionArr) {
        this.trackSelections = trackSelectionArr;
        this.length = trackSelectionArr.length;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.trackselection.TrackSelectionArray.class != obj.getClass()) {
            return false;
        }
        return java.util.Arrays.equals(this.trackSelections, ((com.google.android.exoplayer2.trackselection.TrackSelectionArray) obj).trackSelections);
    }

    public com.google.android.exoplayer2.trackselection.TrackSelection get(int i) {
        return this.trackSelections[i];
    }

    public com.google.android.exoplayer2.trackselection.TrackSelection[] getAll() {
        return (com.google.android.exoplayer2.trackselection.TrackSelection[]) this.trackSelections.clone();
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = 527 + java.util.Arrays.hashCode(this.trackSelections);
        }
        return this.hashCode;
    }
}
