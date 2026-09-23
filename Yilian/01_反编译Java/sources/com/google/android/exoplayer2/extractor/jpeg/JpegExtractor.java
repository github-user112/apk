package com.google.android.exoplayer2.extractor.jpeg;

/* loaded from: classes.dex */
public final class JpegExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final long EXIF_HEADER = 1165519206;
    public static final int EXIF_ID_CODE_LENGTH = 6;
    public static final java.lang.String HEADER_XMP_APP1 = "http://ns.adobe.com/xap/1.0/";
    public static final int IMAGE_TRACK_ID = 1024;
    public static final int MARKER_APP0 = 65504;
    public static final int MARKER_APP1 = 65505;
    public static final int MARKER_SOI = 65496;
    public static final int MARKER_SOS = 65498;
    public static final int STATE_ENDED = 6;
    public static final int STATE_READING_MARKER = 0;
    public static final int STATE_READING_MOTION_PHOTO_VIDEO = 5;
    public static final int STATE_READING_SEGMENT = 2;
    public static final int STATE_READING_SEGMENT_LENGTH = 1;
    public static final int STATE_SNIFFING_MOTION_PHOTO_VIDEO = 4;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public com.google.android.exoplayer2.extractor.ExtractorInput lastExtractorInput;
    public int marker;
    public com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata motionPhotoMetadata;
    public com.google.android.exoplayer2.extractor.mp4.Mp4Extractor mp4Extractor;
    public com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorInput mp4ExtractorStartOffsetExtractorInput;
    public int segmentLength;
    public int state;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch = new com.google.android.exoplayer2.util.ParsableByteArray(6);
    public long mp4StartPosition = -1;

    private void advancePeekPositionToNextSegment(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        this.scratch.reset(2);
        extractorInput.peekFully(this.scratch.getData(), 0, 2);
        extractorInput.advancePeekPosition(this.scratch.readUnsignedShort() - 2);
    }

    private void endReadingWithImageTrack() {
        outputImageTrack(new com.google.android.exoplayer2.metadata.Metadata.Entry[0]);
        ((com.google.android.exoplayer2.extractor.ExtractorOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractorOutput)).endTracks();
        this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET));
        this.state = 6;
    }

    public static com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata getMotionPhotoMetadata(java.lang.String str, long j) {
        com.google.android.exoplayer2.extractor.jpeg.MotionPhotoDescription motionPhotoDescription;
        if (j == -1 || (motionPhotoDescription = com.google.android.exoplayer2.extractor.jpeg.XmpMotionPhotoDescriptionParser.parse(str)) == null) {
            return null;
        }
        return motionPhotoDescription.getMotionPhotoMetadata(j);
    }

    private void outputImageTrack(com.google.android.exoplayer2.metadata.Metadata.Entry... entryArr) {
        ((com.google.android.exoplayer2.extractor.ExtractorOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractorOutput)).track(1024, 4).format(new com.google.android.exoplayer2.Format.Builder().setContainerMimeType(com.google.android.exoplayer2.util.MimeTypes.IMAGE_JPEG).setMetadata(new com.google.android.exoplayer2.metadata.Metadata(entryArr)).build());
    }

    private int peekMarker(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        this.scratch.reset(2);
        extractorInput.peekFully(this.scratch.getData(), 0, 2);
        return this.scratch.readUnsignedShort();
    }

    private void readMarker(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        int i;
        this.scratch.reset(2);
        extractorInput.readFully(this.scratch.getData(), 0, 2);
        int unsignedShort = this.scratch.readUnsignedShort();
        this.marker = unsignedShort;
        if (unsignedShort == 65498) {
            if (this.mp4StartPosition == -1) {
                endReadingWithImageTrack();
                return;
            }
            i = 4;
        } else if ((unsignedShort >= 65488 && unsignedShort <= 65497) || this.marker == 65281) {
            return;
        } else {
            i = 1;
        }
        this.state = i;
    }

    private void readSegment(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        java.lang.String nullTerminatedString;
        if (this.marker == 65505) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(this.segmentLength);
            extractorInput.readFully(parsableByteArray.getData(), 0, this.segmentLength);
            if (this.motionPhotoMetadata == null && HEADER_XMP_APP1.equals(parsableByteArray.readNullTerminatedString()) && (nullTerminatedString = parsableByteArray.readNullTerminatedString()) != null) {
                com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata motionPhotoMetadata = getMotionPhotoMetadata(nullTerminatedString, extractorInput.getLength());
                this.motionPhotoMetadata = motionPhotoMetadata;
                if (motionPhotoMetadata != null) {
                    this.mp4StartPosition = motionPhotoMetadata.videoStartPosition;
                }
            }
        } else {
            extractorInput.skipFully(this.segmentLength);
        }
        this.state = 0;
    }

    private void readSegmentLength(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        this.scratch.reset(2);
        extractorInput.readFully(this.scratch.getData(), 0, 2);
        this.segmentLength = this.scratch.readUnsignedShort() - 2;
        this.state = 2;
    }

    private void sniffMotionPhotoVideo(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        if (extractorInput.peekFully(this.scratch.getData(), 0, 1, true)) {
            extractorInput.resetPeekPosition();
            if (this.mp4Extractor == null) {
                this.mp4Extractor = new com.google.android.exoplayer2.extractor.mp4.Mp4Extractor();
            }
            com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorInput startOffsetExtractorInput = new com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
            this.mp4ExtractorStartOffsetExtractorInput = startOffsetExtractorInput;
            if (this.mp4Extractor.sniff(startOffsetExtractorInput)) {
                this.mp4Extractor.init(new com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorOutput(this.mp4StartPosition, (com.google.android.exoplayer2.extractor.ExtractorOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractorOutput)));
                startReadingMotionPhoto();
                return;
            }
        }
        endReadingWithImageTrack();
    }

    private void startReadingMotionPhoto() {
        outputImageTrack((com.google.android.exoplayer2.metadata.Metadata.Entry) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.motionPhotoMetadata));
        this.state = 5;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        int i = this.state;
        if (i == 0) {
            readMarker(extractorInput);
            return 0;
        }
        if (i == 1) {
            readSegmentLength(extractorInput);
            return 0;
        }
        if (i == 2) {
            readSegment(extractorInput);
            return 0;
        }
        if (i == 4) {
            long position = extractorInput.getPosition();
            long j = this.mp4StartPosition;
            if (position != j) {
                positionHolder.position = j;
                return 1;
            }
            sniffMotionPhotoVideo(extractorInput);
            return 0;
        }
        if (i != 5) {
            if (i == 6) {
                return -1;
            }
            throw new java.lang.IllegalStateException();
        }
        if (this.mp4ExtractorStartOffsetExtractorInput == null || extractorInput != this.lastExtractorInput) {
            this.lastExtractorInput = extractorInput;
            this.mp4ExtractorStartOffsetExtractorInput = new com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorInput(extractorInput, this.mp4StartPosition);
        }
        int i2 = ((com.google.android.exoplayer2.extractor.mp4.Mp4Extractor) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mp4Extractor)).read(this.mp4ExtractorStartOffsetExtractorInput, positionHolder);
        if (i2 == 1) {
            positionHolder.position += this.mp4StartPosition;
        }
        return i2;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
        com.google.android.exoplayer2.extractor.mp4.Mp4Extractor mp4Extractor = this.mp4Extractor;
        if (mp4Extractor != null) {
            mp4Extractor.release();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.state = 0;
            this.mp4Extractor = null;
        } else if (this.state == 5) {
            ((com.google.android.exoplayer2.extractor.mp4.Mp4Extractor) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mp4Extractor)).seek(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        if (peekMarker(extractorInput) != 65496) {
            return false;
        }
        int iPeekMarker = peekMarker(extractorInput);
        this.marker = iPeekMarker;
        if (iPeekMarker == 65504) {
            advancePeekPositionToNextSegment(extractorInput);
            this.marker = peekMarker(extractorInput);
        }
        if (this.marker != 65505) {
            return false;
        }
        extractorInput.advancePeekPosition(2);
        this.scratch.reset(6);
        extractorInput.peekFully(this.scratch.getData(), 0, 6);
        return this.scratch.readUnsignedInt() == EXIF_HEADER && this.scratch.readUnsignedShort() == 0;
    }
}
