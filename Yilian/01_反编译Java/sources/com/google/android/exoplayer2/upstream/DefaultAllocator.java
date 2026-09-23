package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class DefaultAllocator implements com.google.android.exoplayer2.upstream.Allocator {
    public static final int AVAILABLE_EXTRA_CAPACITY = 100;
    public int allocatedCount;
    public com.google.android.exoplayer2.upstream.Allocation[] availableAllocations;
    public int availableCount;
    public final int individualAllocationSize;
    public final byte[] initialAllocationBlock;
    public final com.google.android.exoplayer2.upstream.Allocation[] singleAllocationReleaseHolder;
    public int targetBufferSize;
    public final boolean trimOnReset;

    public DefaultAllocator(boolean z, int i) {
        this(z, i, 0);
    }

    public DefaultAllocator(boolean z, int i, int i2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > 0);
        com.google.android.exoplayer2.util.Assertions.checkArgument(i2 >= 0);
        this.trimOnReset = z;
        this.individualAllocationSize = i;
        this.availableCount = i2;
        this.availableAllocations = new com.google.android.exoplayer2.upstream.Allocation[i2 + 100];
        if (i2 > 0) {
            this.initialAllocationBlock = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.availableAllocations[i3] = new com.google.android.exoplayer2.upstream.Allocation(this.initialAllocationBlock, i3 * i);
            }
        } else {
            this.initialAllocationBlock = null;
        }
        this.singleAllocationReleaseHolder = new com.google.android.exoplayer2.upstream.Allocation[1];
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized com.google.android.exoplayer2.upstream.Allocation allocate() {
        com.google.android.exoplayer2.upstream.Allocation allocation;
        this.allocatedCount++;
        if (this.availableCount > 0) {
            com.google.android.exoplayer2.upstream.Allocation[] allocationArr = this.availableAllocations;
            int i = this.availableCount - 1;
            this.availableCount = i;
            allocation = (com.google.android.exoplayer2.upstream.Allocation) com.google.android.exoplayer2.util.Assertions.checkNotNull(allocationArr[i]);
            this.availableAllocations[this.availableCount] = null;
        } else {
            allocation = new com.google.android.exoplayer2.upstream.Allocation(new byte[this.individualAllocationSize], 0);
        }
        return allocation;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public int getIndividualAllocationLength() {
        return this.individualAllocationSize;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized int getTotalBytesAllocated() {
        return this.allocatedCount * this.individualAllocationSize;
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void release(com.google.android.exoplayer2.upstream.Allocation allocation) {
        this.singleAllocationReleaseHolder[0] = allocation;
        release(this.singleAllocationReleaseHolder);
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void release(com.google.android.exoplayer2.upstream.Allocation[] allocationArr) {
        if (this.availableCount + allocationArr.length >= this.availableAllocations.length) {
            this.availableAllocations = (com.google.android.exoplayer2.upstream.Allocation[]) java.util.Arrays.copyOf(this.availableAllocations, java.lang.Math.max(this.availableAllocations.length * 2, this.availableCount + allocationArr.length));
        }
        for (com.google.android.exoplayer2.upstream.Allocation allocation : allocationArr) {
            com.google.android.exoplayer2.upstream.Allocation[] allocationArr2 = this.availableAllocations;
            int i = this.availableCount;
            this.availableCount = i + 1;
            allocationArr2[i] = allocation;
        }
        this.allocatedCount -= allocationArr.length;
        notifyAll();
    }

    public synchronized void reset() {
        if (this.trimOnReset) {
            setTargetBufferSize(0);
        }
    }

    public synchronized void setTargetBufferSize(int i) {
        boolean z = i < this.targetBufferSize;
        this.targetBufferSize = i;
        if (z) {
            trim();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Allocator
    public synchronized void trim() {
        int i = 0;
        int iMax = java.lang.Math.max(0, com.google.android.exoplayer2.util.Util.ceilDivide(this.targetBufferSize, this.individualAllocationSize) - this.allocatedCount);
        if (iMax >= this.availableCount) {
            return;
        }
        if (this.initialAllocationBlock != null) {
            int i2 = this.availableCount - 1;
            while (i <= i2) {
                com.google.android.exoplayer2.upstream.Allocation allocation = (com.google.android.exoplayer2.upstream.Allocation) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.availableAllocations[i]);
                if (allocation.data == this.initialAllocationBlock) {
                    i++;
                } else {
                    com.google.android.exoplayer2.upstream.Allocation allocation2 = (com.google.android.exoplayer2.upstream.Allocation) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.availableAllocations[i2]);
                    if (allocation2.data != this.initialAllocationBlock) {
                        i2--;
                    } else {
                        this.availableAllocations[i] = allocation2;
                        this.availableAllocations[i2] = allocation;
                        i2--;
                        i++;
                    }
                }
            }
            iMax = java.lang.Math.max(iMax, i);
            if (iMax >= this.availableCount) {
                return;
            }
        }
        java.util.Arrays.fill(this.availableAllocations, iMax, this.availableCount, (java.lang.Object) null);
        this.availableCount = iMax;
    }
}
