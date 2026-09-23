package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public class SampleDataQueue {
    public static final int INITIAL_SCRATCH_SIZE = 32;
    public final int allocationLength;
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode firstAllocationNode;
    public com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode readAllocationNode;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch = new com.google.android.exoplayer2.util.ParsableByteArray(32);
    public long totalBytesWritten;
    public com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode writeAllocationNode;

    public static final class AllocationNode {
        public com.google.android.exoplayer2.upstream.Allocation allocation;
        public final long endPosition;
        public com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode next;
        public final long startPosition;
        public boolean wasInitialized;

        public AllocationNode(long j, int i) {
            this.startPosition = j;
            this.endPosition = j + i;
        }

        public com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode clear() {
            this.allocation = null;
            com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = this.next;
            this.next = null;
            return allocationNode;
        }

        public void initialize(com.google.android.exoplayer2.upstream.Allocation allocation, com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode) {
            this.allocation = allocation;
            this.next = allocationNode;
            this.wasInitialized = true;
        }

        public int translateOffset(long j) {
            return ((int) (j - this.startPosition)) + this.allocation.offset;
        }
    }

    public SampleDataQueue(com.google.android.exoplayer2.upstream.Allocator allocator) {
        this.allocator = allocator;
        this.allocationLength = allocator.getIndividualAllocationLength();
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = new com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode(0L, this.allocationLength);
        this.firstAllocationNode = allocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
    }

    private void clearAllocationNodes(com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode) {
        if (allocationNode.wasInitialized) {
            com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode2 = this.writeAllocationNode;
            int i = (((int) (allocationNode2.startPosition - allocationNode.startPosition)) / this.allocationLength) + (allocationNode2.wasInitialized ? 1 : 0);
            com.google.android.exoplayer2.upstream.Allocation[] allocationArr = new com.google.android.exoplayer2.upstream.Allocation[i];
            for (int i2 = 0; i2 < i; i2++) {
                allocationArr[i2] = allocationNode.allocation;
                allocationNode = allocationNode.clear();
            }
            this.allocator.release(allocationArr);
        }
    }

    public static com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode getNodeContainingPosition(com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode, long j) {
        while (j >= allocationNode.endPosition) {
            allocationNode = allocationNode.next;
        }
        return allocationNode;
    }

    private void postAppend(int i) {
        long j = this.totalBytesWritten + i;
        this.totalBytesWritten = j;
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = this.writeAllocationNode;
        if (j == allocationNode.endPosition) {
            this.writeAllocationNode = allocationNode.next;
        }
    }

    private int preAppend(int i) {
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = this.writeAllocationNode;
        if (!allocationNode.wasInitialized) {
            allocationNode.initialize(this.allocator.allocate(), new com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return java.lang.Math.min(i, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    public static com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode readData(com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode, long j, java.nio.ByteBuffer byteBuffer, int i) {
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode nodeContainingPosition = getNodeContainingPosition(allocationNode, j);
        while (i > 0) {
            int iMin = java.lang.Math.min(i, (int) (nodeContainingPosition.endPosition - j));
            byteBuffer.put(nodeContainingPosition.allocation.data, nodeContainingPosition.translateOffset(j), iMin);
            i -= iMin;
            j += iMin;
            if (j == nodeContainingPosition.endPosition) {
                nodeContainingPosition = nodeContainingPosition.next;
            }
        }
        return nodeContainingPosition;
    }

    public static com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode readData(com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode, long j, byte[] bArr, int i) {
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode nodeContainingPosition = getNodeContainingPosition(allocationNode, j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = java.lang.Math.min(i2, (int) (nodeContainingPosition.endPosition - j));
            java.lang.System.arraycopy(nodeContainingPosition.allocation.data, nodeContainingPosition.translateOffset(j), bArr, i - i2, iMin);
            i2 -= iMin;
            j += iMin;
            if (j == nodeContainingPosition.endPosition) {
                nodeContainingPosition = nodeContainingPosition.next;
            }
        }
        return nodeContainingPosition;
    }

    public static com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode readEncryptionData(com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder sampleExtrasHolder, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedShort;
        long j = sampleExtrasHolder.offset;
        parsableByteArray.reset(1);
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode data = readData(allocationNode, j, parsableByteArray.getData(), 1);
        long j2 = j + 1;
        byte b = parsableByteArray.getData()[0];
        boolean z = (b & 128) != 0;
        int i = b & com.google.android.exoplayer2.audio.DtsUtil.FIRST_BYTE_BE;
        com.google.android.exoplayer2.decoder.CryptoInfo cryptoInfo = decoderInputBuffer.cryptoInfo;
        byte[] bArr = cryptoInfo.iv;
        if (bArr == null) {
            cryptoInfo.iv = new byte[16];
        } else {
            java.util.Arrays.fill(bArr, (byte) 0);
        }
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode data2 = readData(data, j2, cryptoInfo.iv, i);
        long j3 = j2 + i;
        if (z) {
            parsableByteArray.reset(2);
            data2 = readData(data2, j3, parsableByteArray.getData(), 2);
            j3 += 2;
            unsignedShort = parsableByteArray.readUnsignedShort();
        } else {
            unsignedShort = 1;
        }
        int[] iArr = cryptoInfo.numBytesOfClearData;
        if (iArr == null || iArr.length < unsignedShort) {
            iArr = new int[unsignedShort];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 == null || iArr3.length < unsignedShort) {
            iArr3 = new int[unsignedShort];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i2 = unsignedShort * 6;
            parsableByteArray.reset(i2);
            data2 = readData(data2, j3, parsableByteArray.getData(), i2);
            j3 += i2;
            parsableByteArray.setPosition(0);
            for (int i3 = 0; i3 < unsignedShort; i3++) {
                iArr2[i3] = parsableByteArray.readUnsignedShort();
                iArr4[i3] = parsableByteArray.readUnsignedIntToInt();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = sampleExtrasHolder.size - ((int) (j3 - sampleExtrasHolder.offset));
        }
        com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData = (com.google.android.exoplayer2.extractor.TrackOutput.CryptoData) com.google.android.exoplayer2.util.Util.castNonNull(sampleExtrasHolder.cryptoData);
        cryptoInfo.set(unsignedShort, iArr2, iArr4, cryptoData.encryptionKey, cryptoInfo.iv, cryptoData.cryptoMode, cryptoData.encryptedBlocks, cryptoData.clearBlocks);
        long j4 = sampleExtrasHolder.offset;
        int i4 = (int) (j3 - j4);
        sampleExtrasHolder.offset = j4 + i4;
        sampleExtrasHolder.size -= i4;
        return data2;
    }

    public static com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode readSampleData(com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder sampleExtrasHolder, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        long j;
        java.nio.ByteBuffer byteBuffer;
        if (decoderInputBuffer.isEncrypted()) {
            allocationNode = readEncryptionData(allocationNode, decoderInputBuffer, sampleExtrasHolder, parsableByteArray);
        }
        if (decoderInputBuffer.hasSupplementalData()) {
            parsableByteArray.reset(4);
            com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode data = readData(allocationNode, sampleExtrasHolder.offset, parsableByteArray.getData(), 4);
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            sampleExtrasHolder.offset += 4;
            sampleExtrasHolder.size -= 4;
            decoderInputBuffer.ensureSpaceForWrite(unsignedIntToInt);
            allocationNode = readData(data, sampleExtrasHolder.offset, decoderInputBuffer.data, unsignedIntToInt);
            sampleExtrasHolder.offset += unsignedIntToInt;
            int i = sampleExtrasHolder.size - unsignedIntToInt;
            sampleExtrasHolder.size = i;
            decoderInputBuffer.resetSupplementalData(i);
            j = sampleExtrasHolder.offset;
            byteBuffer = decoderInputBuffer.supplementalData;
        } else {
            decoderInputBuffer.ensureSpaceForWrite(sampleExtrasHolder.size);
            j = sampleExtrasHolder.offset;
            byteBuffer = decoderInputBuffer.data;
        }
        return readData(allocationNode, j, byteBuffer, sampleExtrasHolder.size);
    }

    public void discardDownstreamTo(long j) {
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode;
        if (j == -1) {
            return;
        }
        while (true) {
            allocationNode = this.firstAllocationNode;
            if (j < allocationNode.endPosition) {
                break;
            }
            this.allocator.release(allocationNode.allocation);
            this.firstAllocationNode = this.firstAllocationNode.clear();
        }
        if (this.readAllocationNode.startPosition < allocationNode.startPosition) {
            this.readAllocationNode = allocationNode;
        }
    }

    public void discardUpstreamSampleBytes(long j) {
        this.totalBytesWritten = j;
        if (j != 0) {
            com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = this.firstAllocationNode;
            if (j != allocationNode.startPosition) {
                while (this.totalBytesWritten > allocationNode.endPosition) {
                    allocationNode = allocationNode.next;
                }
                com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode2 = allocationNode.next;
                clearAllocationNodes(allocationNode2);
                com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode3 = new com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode(allocationNode.endPosition, this.allocationLength);
                allocationNode.next = allocationNode3;
                if (this.totalBytesWritten != allocationNode.endPosition) {
                    allocationNode3 = allocationNode;
                }
                this.writeAllocationNode = allocationNode3;
                if (this.readAllocationNode == allocationNode2) {
                    this.readAllocationNode = allocationNode.next;
                    return;
                }
                return;
            }
        }
        clearAllocationNodes(this.firstAllocationNode);
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode4 = new com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode(this.totalBytesWritten, this.allocationLength);
        this.firstAllocationNode = allocationNode4;
        this.readAllocationNode = allocationNode4;
        this.writeAllocationNode = allocationNode4;
    }

    public long getTotalBytesWritten() {
        return this.totalBytesWritten;
    }

    public void peekToBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        readSampleData(this.readAllocationNode, decoderInputBuffer, sampleExtrasHolder, this.scratch);
    }

    public void readToBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, com.google.android.exoplayer2.source.SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        this.readAllocationNode = readSampleData(this.readAllocationNode, decoderInputBuffer, sampleExtrasHolder, this.scratch);
    }

    public void reset() {
        clearAllocationNodes(this.firstAllocationNode);
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = new com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode(0L, this.allocationLength);
        this.firstAllocationNode = allocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    public void rewind() {
        this.readAllocationNode = this.firstAllocationNode;
    }

    public int sampleData(com.google.android.exoplayer2.upstream.DataReader dataReader, int i, boolean z) throws java.io.EOFException {
        int iPreAppend = preAppend(i);
        com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = this.writeAllocationNode;
        int i2 = dataReader.read(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), iPreAppend);
        if (i2 != -1) {
            postAppend(i2);
            return i2;
        }
        if (z) {
            return -1;
        }
        throw new java.io.EOFException();
    }

    public void sampleData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        while (i > 0) {
            int iPreAppend = preAppend(i);
            com.google.android.exoplayer2.source.SampleDataQueue.AllocationNode allocationNode = this.writeAllocationNode;
            parsableByteArray.readBytes(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), iPreAppend);
            i -= iPreAppend;
            postAppend(iPreAppend);
        }
    }
}
