package com.google.android.exoplayer2.text.webvtt;

/* loaded from: classes.dex */
public final class WebvttSubtitle implements com.google.android.exoplayer2.text.Subtitle {
    public final java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueInfo> cueInfos;
    public final long[] cueTimesUs;
    public final long[] sortedCueTimesUs;

    public WebvttSubtitle(java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCueInfo> list) {
        this.cueInfos = java.util.Collections.unmodifiableList(new java.util.ArrayList(list));
        this.cueTimesUs = new long[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.text.webvtt.WebvttCueInfo webvttCueInfo = list.get(i);
            int i2 = i * 2;
            long[] jArr = this.cueTimesUs;
            jArr[i2] = webvttCueInfo.startTimeUs;
            jArr[i2 + 1] = webvttCueInfo.endTimeUs;
        }
        long[] jArr2 = this.cueTimesUs;
        long[] jArrCopyOf = java.util.Arrays.copyOf(jArr2, jArr2.length);
        this.sortedCueTimesUs = jArrCopyOf;
        java.util.Arrays.sort(jArrCopyOf);
    }

    public static /* synthetic */ int a(com.google.android.exoplayer2.text.webvtt.WebvttCueInfo webvttCueInfo, com.google.android.exoplayer2.text.webvtt.WebvttCueInfo webvttCueInfo2) {
        return (webvttCueInfo.startTimeUs > webvttCueInfo2.startTimeUs ? 1 : (webvttCueInfo.startTimeUs == webvttCueInfo2.startTimeUs ? 0 : -1));
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public java.util.List<com.google.android.exoplayer2.text.Cue> getCues(long j) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        for (int i = 0; i < this.cueInfos.size(); i++) {
            long[] jArr = this.cueTimesUs;
            int i2 = i * 2;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                com.google.android.exoplayer2.text.webvtt.WebvttCueInfo webvttCueInfo = this.cueInfos.get(i);
                com.google.android.exoplayer2.text.Cue cue = webvttCueInfo.cue;
                if (cue.line == -3.4028235E38f) {
                    arrayList2.add(webvttCueInfo);
                } else {
                    arrayList.add(cue);
                }
            }
        }
        java.util.Collections.sort(arrayList2, new java.util.Comparator() { // from class: e.c.a.a.o2.c.b
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                return com.google.android.exoplayer2.text.webvtt.WebvttSubtitle.a((com.google.android.exoplayer2.text.webvtt.WebvttCueInfo) obj, (com.google.android.exoplayer2.text.webvtt.WebvttCueInfo) obj2);
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            arrayList.add(((com.google.android.exoplayer2.text.webvtt.WebvttCueInfo) arrayList2.get(i3)).cue.buildUpon().setLine((-1) - i3, 1).build());
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0);
        com.google.android.exoplayer2.util.Assertions.checkArgument(i < this.sortedCueTimesUs.length);
        return this.sortedCueTimesUs[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.sortedCueTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int iBinarySearchCeil = com.google.android.exoplayer2.util.Util.binarySearchCeil(this.sortedCueTimesUs, j, false, false);
        if (iBinarySearchCeil < this.sortedCueTimesUs.length) {
            return iBinarySearchCeil;
        }
        return -1;
    }
}
