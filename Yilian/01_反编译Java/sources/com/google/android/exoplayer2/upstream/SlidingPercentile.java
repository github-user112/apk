package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public class SlidingPercentile {
    public static final int MAX_RECYCLED_SAMPLES = 5;
    public static final int SORT_ORDER_BY_INDEX = 1;
    public static final int SORT_ORDER_BY_VALUE = 0;
    public static final int SORT_ORDER_NONE = -1;
    public final int maxWeight;
    public int nextSampleIndex;
    public int recycledSampleCount;
    public int totalWeight;
    public static final java.util.Comparator<com.google.android.exoplayer2.upstream.SlidingPercentile.Sample> INDEX_COMPARATOR = new java.util.Comparator() { // from class: e.c.a.a.r2.f
        @Override // java.util.Comparator
        public final int compare(java.lang.Object obj, java.lang.Object obj2) {
            return com.google.android.exoplayer2.upstream.SlidingPercentile.a((com.google.android.exoplayer2.upstream.SlidingPercentile.Sample) obj, (com.google.android.exoplayer2.upstream.SlidingPercentile.Sample) obj2);
        }
    };
    public static final java.util.Comparator<com.google.android.exoplayer2.upstream.SlidingPercentile.Sample> VALUE_COMPARATOR = new java.util.Comparator() { // from class: e.c.a.a.r2.e
        @Override // java.util.Comparator
        public final int compare(java.lang.Object obj, java.lang.Object obj2) {
            return java.lang.Float.compare(((com.google.android.exoplayer2.upstream.SlidingPercentile.Sample) obj).value, ((com.google.android.exoplayer2.upstream.SlidingPercentile.Sample) obj2).value);
        }
    };
    public final com.google.android.exoplayer2.upstream.SlidingPercentile.Sample[] recycledSamples = new com.google.android.exoplayer2.upstream.SlidingPercentile.Sample[5];
    public final java.util.ArrayList<com.google.android.exoplayer2.upstream.SlidingPercentile.Sample> samples = new java.util.ArrayList<>();
    public int currentSortOrder = -1;

    public static class Sample {
        public int index;
        public float value;
        public int weight;

        public Sample() {
        }
    }

    public SlidingPercentile(int i) {
        this.maxWeight = i;
    }

    public static /* synthetic */ int a(com.google.android.exoplayer2.upstream.SlidingPercentile.Sample sample, com.google.android.exoplayer2.upstream.SlidingPercentile.Sample sample2) {
        return sample.index - sample2.index;
    }

    private void ensureSortedByIndex() {
        if (this.currentSortOrder != 1) {
            java.util.Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void ensureSortedByValue() {
        if (this.currentSortOrder != 0) {
            java.util.Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    public void addSample(int i, float f2) {
        com.google.android.exoplayer2.upstream.SlidingPercentile.Sample sample;
        int i2;
        com.google.android.exoplayer2.upstream.SlidingPercentile.Sample sample2;
        int i3;
        ensureSortedByIndex();
        int i4 = this.recycledSampleCount;
        if (i4 > 0) {
            com.google.android.exoplayer2.upstream.SlidingPercentile.Sample[] sampleArr = this.recycledSamples;
            int i5 = i4 - 1;
            this.recycledSampleCount = i5;
            sample = sampleArr[i5];
        } else {
            sample = new com.google.android.exoplayer2.upstream.SlidingPercentile.Sample();
        }
        int i6 = this.nextSampleIndex;
        this.nextSampleIndex = i6 + 1;
        sample.index = i6;
        sample.weight = i;
        sample.value = f2;
        this.samples.add(sample);
        int i7 = this.totalWeight + i;
        while (true) {
            this.totalWeight = i7;
            while (true) {
                int i8 = this.totalWeight;
                int i9 = this.maxWeight;
                if (i8 <= i9) {
                    return;
                }
                i2 = i8 - i9;
                sample2 = this.samples.get(0);
                i3 = sample2.weight;
                if (i3 <= i2) {
                    this.totalWeight -= i3;
                    this.samples.remove(0);
                    int i10 = this.recycledSampleCount;
                    if (i10 < 5) {
                        com.google.android.exoplayer2.upstream.SlidingPercentile.Sample[] sampleArr2 = this.recycledSamples;
                        this.recycledSampleCount = i10 + 1;
                        sampleArr2[i10] = sample2;
                    }
                }
            }
            sample2.weight = i3 - i2;
            i7 = this.totalWeight - i2;
        }
    }

    public float getPercentile(float f2) {
        ensureSortedByValue();
        float f3 = f2 * this.totalWeight;
        int i = 0;
        for (int i2 = 0; i2 < this.samples.size(); i2++) {
            com.google.android.exoplayer2.upstream.SlidingPercentile.Sample sample = this.samples.get(i2);
            i += sample.weight;
            if (i >= f3) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            return Float.NaN;
        }
        return this.samples.get(r5.size() - 1).value;
    }

    public void reset() {
        this.samples.clear();
        this.currentSortOrder = -1;
        this.nextSampleIndex = 0;
        this.totalWeight = 0;
    }
}
