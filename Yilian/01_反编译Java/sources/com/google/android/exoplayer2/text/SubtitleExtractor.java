package com.google.android.exoplayer2.text;

/* loaded from: classes.dex */
public class SubtitleExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final int DEFAULT_BUFFER_SIZE = 1024;
    public static final int STATE_CREATED = 0;
    public static final int STATE_EXTRACTING = 2;
    public static final int STATE_FINISHED = 4;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_RELEASED = 5;
    public static final int STATE_SEEKING = 3;
    public int bytesRead;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public final com.google.android.exoplayer2.Format format;
    public final com.google.android.exoplayer2.text.SubtitleDecoder subtitleDecoder;
    public com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
    public final com.google.android.exoplayer2.text.CueEncoder cueEncoder = new com.google.android.exoplayer2.text.CueEncoder();
    public final com.google.android.exoplayer2.util.ParsableByteArray subtitleData = new com.google.android.exoplayer2.util.ParsableByteArray();
    public final java.util.List<java.lang.Long> timestamps = new java.util.ArrayList();
    public final java.util.List<com.google.android.exoplayer2.util.ParsableByteArray> samples = new java.util.ArrayList();
    public int state = 0;
    public long seekTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;

    public SubtitleExtractor(com.google.android.exoplayer2.text.SubtitleDecoder subtitleDecoder, com.google.android.exoplayer2.Format format) {
        this.subtitleDecoder = subtitleDecoder;
        this.format = format.buildUpon().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.TEXT_EXOPLAYER_CUES).setCodecs(format.sampleMimeType).build();
    }

    private void decode() throws java.lang.InterruptedException, com.google.android.exoplayer2.ParserException, java.io.InterruptedIOException {
        com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBuffer;
        com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer;
        try {
            com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBufferDequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            while (true) {
                subtitleInputBuffer = subtitleInputBufferDequeueInputBuffer;
                if (subtitleInputBuffer != null) {
                    break;
                }
                java.lang.Thread.sleep(5L);
                subtitleInputBufferDequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            }
            subtitleInputBuffer.ensureSpaceForWrite(this.bytesRead);
            subtitleInputBuffer.data.put(this.subtitleData.getData(), 0, this.bytesRead);
            subtitleInputBuffer.data.limit(this.bytesRead);
            this.subtitleDecoder.queueInputBuffer(subtitleInputBuffer);
            com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBufferDequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            while (true) {
                subtitleOutputBuffer = subtitleOutputBufferDequeueOutputBuffer;
                if (subtitleOutputBuffer != null) {
                    break;
                }
                java.lang.Thread.sleep(5L);
                subtitleOutputBufferDequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            }
            for (int i = 0; i < subtitleOutputBuffer.getEventTimeCount(); i++) {
                byte[] bArrEncode = this.cueEncoder.encode(subtitleOutputBuffer.getCues(subtitleOutputBuffer.getEventTime(i)));
                this.timestamps.add(java.lang.Long.valueOf(subtitleOutputBuffer.getEventTime(i)));
                this.samples.add(new com.google.android.exoplayer2.util.ParsableByteArray(bArrEncode));
            }
            subtitleOutputBuffer.release();
        } catch (com.google.android.exoplayer2.text.SubtitleDecoderException e2) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("SubtitleDecoder failed.", e2);
        } catch (java.lang.InterruptedException unused) {
            java.lang.Thread.currentThread().interrupt();
            throw new java.io.InterruptedIOException();
        }
    }

    private boolean readFromInput(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        int iCapacity = this.subtitleData.capacity();
        int i = this.bytesRead;
        if (iCapacity == i) {
            this.subtitleData.ensureCapacity(i + 1024);
        }
        int i2 = extractorInput.read(this.subtitleData.getData(), this.bytesRead, this.subtitleData.capacity() - this.bytesRead);
        if (i2 != -1) {
            this.bytesRead += i2;
        }
        long length = extractorInput.getLength();
        return (length != -1 && ((long) this.bytesRead) == length) || i2 == -1;
    }

    private boolean skipInput(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return extractorInput.skip((extractorInput.getLength() > (-1L) ? 1 : (extractorInput.getLength() == (-1L) ? 0 : -1)) != 0 ? d.s.y.n(extractorInput.getLength()) : 1024) == -1;
    }

    private void writeToOutput() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.trackOutput);
        com.google.android.exoplayer2.util.Assertions.checkState(this.timestamps.size() == this.samples.size());
        long j = this.seekTimeUs;
        for (int iBinarySearchFloor = j == com.google.android.exoplayer2.C.TIME_UNSET ? 0 : com.google.android.exoplayer2.util.Util.binarySearchFloor((java.util.List<? extends java.lang.Comparable<? super java.lang.Long>>) this.timestamps, java.lang.Long.valueOf(j), true, true); iBinarySearchFloor < this.samples.size(); iBinarySearchFloor++) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.samples.get(iBinarySearchFloor);
            parsableByteArray.setPosition(0);
            int length = parsableByteArray.getData().length;
            this.trackOutput.sampleData(parsableByteArray, length);
            this.trackOutput.sampleMetadata(this.timestamps.get(iBinarySearchFloor).longValue(), 1, length, 0, null);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.state == 0);
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 3);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.IndexSeekMap(new long[]{0}, new long[]{0}, com.google.android.exoplayer2.C.TIME_UNSET));
        this.trackOutput.format(this.format);
        this.state = 1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws java.lang.InterruptedException, com.google.android.exoplayer2.ParserException, java.io.InterruptedIOException {
        int i = this.state;
        com.google.android.exoplayer2.util.Assertions.checkState((i == 0 || i == 5) ? false : true);
        if (this.state == 1) {
            this.subtitleData.reset(extractorInput.getLength() != -1 ? d.s.y.n(extractorInput.getLength()) : 1024);
            this.bytesRead = 0;
            this.state = 2;
        }
        if (this.state == 2 && readFromInput(extractorInput)) {
            decode();
            writeToOutput();
            this.state = 4;
        }
        if (this.state == 3 && skipInput(extractorInput)) {
            writeToOutput();
            this.state = 4;
        }
        return this.state == 4 ? -1 : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
        if (this.state == 5) {
            return;
        }
        this.subtitleDecoder.release();
        this.state = 5;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        int i = this.state;
        com.google.android.exoplayer2.util.Assertions.checkState((i == 0 || i == 5) ? false : true);
        this.seekTimeUs = j2;
        if (this.state == 2) {
            this.state = 1;
        }
        if (this.state == 4) {
            this.state = 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return true;
    }
}
