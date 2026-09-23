package com.google.android.exoplayer2.source.dash.manifest;

/* loaded from: classes.dex */
public class DashManifest implements com.google.android.exoplayer2.offline.FilterableManifest<com.google.android.exoplayer2.source.dash.manifest.DashManifest> {
    public final long availabilityStartTimeMs;
    public final long durationMs;
    public final boolean dynamic;
    public final android.net.Uri location;
    public final long minBufferTimeMs;
    public final long minUpdatePeriodMs;
    public final java.util.List<com.google.android.exoplayer2.source.dash.manifest.Period> periods;
    public final com.google.android.exoplayer2.source.dash.manifest.ProgramInformation programInformation;
    public final long publishTimeMs;
    public final com.google.android.exoplayer2.source.dash.manifest.ServiceDescriptionElement serviceDescription;
    public final long suggestedPresentationDelayMs;
    public final long timeShiftBufferDepthMs;
    public final com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement utcTiming;

    public DashManifest(long j, long j2, long j3, boolean z, long j4, long j5, long j6, long j7, com.google.android.exoplayer2.source.dash.manifest.ProgramInformation programInformation, com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement utcTimingElement, com.google.android.exoplayer2.source.dash.manifest.ServiceDescriptionElement serviceDescriptionElement, android.net.Uri uri, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Period> list) {
        this.availabilityStartTimeMs = j;
        this.durationMs = j2;
        this.minBufferTimeMs = j3;
        this.dynamic = z;
        this.minUpdatePeriodMs = j4;
        this.timeShiftBufferDepthMs = j5;
        this.suggestedPresentationDelayMs = j6;
        this.publishTimeMs = j7;
        this.programInformation = programInformation;
        this.utcTiming = utcTimingElement;
        this.location = uri;
        this.serviceDescription = serviceDescriptionElement;
        this.periods = list == null ? java.util.Collections.emptyList() : list;
    }

    public static java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> copyAdaptationSets(java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list, java.util.LinkedList<com.google.android.exoplayer2.offline.StreamKey> linkedList) {
        com.google.android.exoplayer2.offline.StreamKey streamKeyPoll = linkedList.poll();
        int i = streamKeyPoll.periodIndex;
        java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> arrayList = new java.util.ArrayList<>();
        do {
            int i2 = streamKeyPoll.groupIndex;
            com.google.android.exoplayer2.source.dash.manifest.AdaptationSet adaptationSet = list.get(i2);
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> list2 = adaptationSet.representations;
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            do {
                arrayList2.add(list2.get(streamKeyPoll.streamIndex));
                streamKeyPoll = linkedList.poll();
                if (streamKeyPoll.periodIndex != i) {
                    break;
                }
            } while (streamKeyPoll.groupIndex == i2);
            arrayList.add(new com.google.android.exoplayer2.source.dash.manifest.AdaptationSet(adaptationSet.id, adaptationSet.type, arrayList2, adaptationSet.accessibilityDescriptors, adaptationSet.essentialProperties, adaptationSet.supplementalProperties));
        } while (streamKeyPoll.periodIndex == i);
        linkedList.addFirst(streamKeyPoll);
        return arrayList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.offline.FilterableManifest
    public final com.google.android.exoplayer2.source.dash.manifest.DashManifest copy(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
        long j;
        java.util.LinkedList linkedList = new java.util.LinkedList(list);
        java.util.Collections.sort(linkedList);
        linkedList.add(new com.google.android.exoplayer2.offline.StreamKey(-1, -1, -1));
        java.util.ArrayList arrayList = new java.util.ArrayList();
        long j2 = 0;
        int i = 0;
        while (true) {
            int periodCount = getPeriodCount();
            j = com.google.android.exoplayer2.C.TIME_UNSET;
            if (i >= periodCount) {
                break;
            }
            if (((com.google.android.exoplayer2.offline.StreamKey) linkedList.peek()).periodIndex != i) {
                long periodDurationMs = getPeriodDurationMs(i);
                if (periodDurationMs != com.google.android.exoplayer2.C.TIME_UNSET) {
                    j2 += periodDurationMs;
                }
            } else {
                com.google.android.exoplayer2.source.dash.manifest.Period period = getPeriod(i);
                arrayList.add(new com.google.android.exoplayer2.source.dash.manifest.Period(period.id, period.startMs - j2, copyAdaptationSets(period.adaptationSets, linkedList), period.eventStreams));
            }
            i++;
        }
        long j3 = this.durationMs;
        if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
            j = j3 - j2;
        }
        return new com.google.android.exoplayer2.source.dash.manifest.DashManifest(this.availabilityStartTimeMs, j, this.minBufferTimeMs, this.dynamic, this.minUpdatePeriodMs, this.timeShiftBufferDepthMs, this.suggestedPresentationDelayMs, this.publishTimeMs, this.programInformation, this.utcTiming, this.serviceDescription, this.location, arrayList);
    }

    @Override // com.google.android.exoplayer2.offline.FilterableManifest
    public /* bridge */ /* synthetic */ com.google.android.exoplayer2.source.dash.manifest.DashManifest copy(java.util.List list) {
        return copy((java.util.List<com.google.android.exoplayer2.offline.StreamKey>) list);
    }

    public final com.google.android.exoplayer2.source.dash.manifest.Period getPeriod(int i) {
        return this.periods.get(i);
    }

    public final int getPeriodCount() {
        return this.periods.size();
    }

    public final long getPeriodDurationMs(int i) {
        long j;
        if (i == this.periods.size() - 1) {
            long j2 = this.durationMs;
            if (j2 == com.google.android.exoplayer2.C.TIME_UNSET) {
                return com.google.android.exoplayer2.C.TIME_UNSET;
            }
            j = j2 - this.periods.get(i).startMs;
        } else {
            j = this.periods.get(i + 1).startMs - this.periods.get(i).startMs;
        }
        return j;
    }

    public final long getPeriodDurationUs(int i) {
        return com.google.android.exoplayer2.util.Util.msToUs(getPeriodDurationMs(i));
    }
}
