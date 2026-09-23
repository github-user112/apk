package com.google.android.exoplayer2.metadata;

/* loaded from: classes.dex */
public interface MetadataDecoderFactory {
    public static final com.google.android.exoplayer2.metadata.MetadataDecoderFactory DEFAULT = new com.google.android.exoplayer2.metadata.MetadataDecoderFactory() { // from class: com.google.android.exoplayer2.metadata.MetadataDecoderFactory.1
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override // com.google.android.exoplayer2.metadata.MetadataDecoderFactory
        public com.google.android.exoplayer2.metadata.MetadataDecoder createDecoder(com.google.android.exoplayer2.Format format) {
            java.lang.String str = format.sampleMimeType;
            if (str != null) {
                char c2 = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_AIT)) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ICY)) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ID3)) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_EMSG)) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SCTE35)) {
                            c2 = 2;
                            break;
                        }
                        break;
                }
                if (c2 == 0) {
                    return new com.google.android.exoplayer2.metadata.id3.Id3Decoder();
                }
                if (c2 == 1) {
                    return new com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder();
                }
                if (c2 == 2) {
                    return new com.google.android.exoplayer2.metadata.scte35.SpliceInfoDecoder();
                }
                if (c2 == 3) {
                    return new com.google.android.exoplayer2.metadata.icy.IcyDecoder();
                }
                if (c2 == 4) {
                    return new com.google.android.exoplayer2.metadata.dvbsi.AppInfoTableDecoder();
                }
            }
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            throw new java.lang.IllegalArgumentException(strValueOf.length() != 0 ? "Attempted to create decoder for unsupported MIME type: ".concat(strValueOf) : new java.lang.String("Attempted to create decoder for unsupported MIME type: "));
        }

        @Override // com.google.android.exoplayer2.metadata.MetadataDecoderFactory
        public boolean supportsFormat(com.google.android.exoplayer2.Format format) {
            java.lang.String str = format.sampleMimeType;
            return com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ID3.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_EMSG.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SCTE35.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ICY.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_AIT.equals(str);
        }
    };

    com.google.android.exoplayer2.metadata.MetadataDecoder createDecoder(com.google.android.exoplayer2.Format format);

    boolean supportsFormat(com.google.android.exoplayer2.Format format);
}
