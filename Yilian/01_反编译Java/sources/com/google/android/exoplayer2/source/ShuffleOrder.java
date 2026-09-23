package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public interface ShuffleOrder {

    public static class DefaultShuffleOrder implements com.google.android.exoplayer2.source.ShuffleOrder {
        public final int[] indexInShuffled;
        public final java.util.Random random;
        public final int[] shuffled;

        public DefaultShuffleOrder(int i) {
            this(i, new java.util.Random());
        }

        public DefaultShuffleOrder(int i, long j) {
            this(i, new java.util.Random(j));
        }

        public DefaultShuffleOrder(int i, java.util.Random random) {
            this(createShuffledList(i, random), random);
        }

        public DefaultShuffleOrder(int[] iArr, long j) {
            this(java.util.Arrays.copyOf(iArr, iArr.length), new java.util.Random(j));
        }

        public DefaultShuffleOrder(int[] iArr, java.util.Random random) {
            this.shuffled = iArr;
            this.random = random;
            this.indexInShuffled = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.indexInShuffled[iArr[i]] = i;
            }
        }

        public static int[] createShuffledList(int i, java.util.Random random) {
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int i3 = i2 + 1;
                int iNextInt = random.nextInt(i3);
                iArr[i2] = iArr[iNextInt];
                iArr[iNextInt] = i2;
                i2 = i3;
            }
            return iArr;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public com.google.android.exoplayer2.source.ShuffleOrder cloneAndClear() {
            return new com.google.android.exoplayer2.source.ShuffleOrder.DefaultShuffleOrder(0, new java.util.Random(this.random.nextLong()));
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public com.google.android.exoplayer2.source.ShuffleOrder cloneAndInsert(int i, int i2) {
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (i3 < i2) {
                iArr[i3] = this.random.nextInt(this.shuffled.length + 1);
                int i4 = i3 + 1;
                int iNextInt = this.random.nextInt(i4);
                iArr2[i3] = iArr2[iNextInt];
                iArr2[iNextInt] = i3 + i;
                i3 = i4;
            }
            java.util.Arrays.sort(iArr);
            int[] iArr3 = new int[this.shuffled.length + i2];
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < this.shuffled.length + i2; i7++) {
                if (i5 >= i2 || i6 != iArr[i5]) {
                    int i8 = i6 + 1;
                    iArr3[i7] = this.shuffled[i6];
                    if (iArr3[i7] >= i) {
                        iArr3[i7] = iArr3[i7] + i2;
                    }
                    i6 = i8;
                } else {
                    iArr3[i7] = iArr2[i5];
                    i5++;
                }
            }
            return new com.google.android.exoplayer2.source.ShuffleOrder.DefaultShuffleOrder(iArr3, new java.util.Random(this.random.nextLong()));
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public com.google.android.exoplayer2.source.ShuffleOrder cloneAndRemove(int i, int i2) {
            int i3 = i2 - i;
            int[] iArr = new int[this.shuffled.length - i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.shuffled;
                if (i4 >= iArr2.length) {
                    return new com.google.android.exoplayer2.source.ShuffleOrder.DefaultShuffleOrder(iArr, new java.util.Random(this.random.nextLong()));
                }
                if (iArr2[i4] < i || iArr2[i4] >= i2) {
                    int i6 = i4 - i5;
                    int[] iArr3 = this.shuffled;
                    iArr[i6] = iArr3[i4] >= i ? iArr3[i4] - i3 : iArr3[i4];
                } else {
                    i5++;
                }
                i4++;
            }
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getFirstIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getLastIndex() {
            int[] iArr = this.shuffled;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getLength() {
            return this.shuffled.length;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getNextIndex(int i) {
            int i2 = this.indexInShuffled[i] + 1;
            int[] iArr = this.shuffled;
            if (i2 < iArr.length) {
                return iArr[i2];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getPreviousIndex(int i) {
            int i2 = this.indexInShuffled[i] - 1;
            if (i2 >= 0) {
                return this.shuffled[i2];
            }
            return -1;
        }
    }

    public static final class UnshuffledShuffleOrder implements com.google.android.exoplayer2.source.ShuffleOrder {
        public final int length;

        public UnshuffledShuffleOrder(int i) {
            this.length = i;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public com.google.android.exoplayer2.source.ShuffleOrder cloneAndClear() {
            return new com.google.android.exoplayer2.source.ShuffleOrder.UnshuffledShuffleOrder(0);
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public com.google.android.exoplayer2.source.ShuffleOrder cloneAndInsert(int i, int i2) {
            return new com.google.android.exoplayer2.source.ShuffleOrder.UnshuffledShuffleOrder(this.length + i2);
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public com.google.android.exoplayer2.source.ShuffleOrder cloneAndRemove(int i, int i2) {
            return new com.google.android.exoplayer2.source.ShuffleOrder.UnshuffledShuffleOrder((this.length - i2) + i);
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getFirstIndex() {
            return this.length > 0 ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getLastIndex() {
            int i = this.length;
            if (i > 0) {
                return i - 1;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getLength() {
            return this.length;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getNextIndex(int i) {
            int i2 = i + 1;
            if (i2 < this.length) {
                return i2;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.ShuffleOrder
        public int getPreviousIndex(int i) {
            int i2 = i - 1;
            if (i2 >= 0) {
                return i2;
            }
            return -1;
        }
    }

    com.google.android.exoplayer2.source.ShuffleOrder cloneAndClear();

    com.google.android.exoplayer2.source.ShuffleOrder cloneAndInsert(int i, int i2);

    com.google.android.exoplayer2.source.ShuffleOrder cloneAndRemove(int i, int i2);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i);

    int getPreviousIndex(int i);
}
