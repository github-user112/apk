package com.google.android.exoplayer2.text;

/* loaded from: classes.dex */
public interface SubtitleDecoderFactory {
    public static final com.google.android.exoplayer2.text.SubtitleDecoderFactory DEFAULT = new com.google.android.exoplayer2.text.SubtitleDecoderFactory() { // from class: com.google.android.exoplayer2.text.SubtitleDecoderFactory.1
        @Override // com.google.android.exoplayer2.text.SubtitleDecoderFactory
        public com.google.android.exoplayer2.text.SubtitleDecoder createDecoder(com.google.android.exoplayer2.Format format) {
            java.lang.String str = format.sampleMimeType;
            if (str != null) {
                switch (str) {
                    case "text/vtt":
                        return new com.google.android.exoplayer2.text.webvtt.WebvttDecoder();
                    case "text/x-ssa":
                        return new com.google.android.exoplayer2.text.ssa.SsaDecoder(format.initializationData);
                    case "application/x-mp4-vtt":
                        return new com.google.android.exoplayer2.text.webvtt.Mp4WebvttDecoder();
                    case "application/ttml+xml":
                        return new com.google.android.exoplayer2.text.ttml.TtmlDecoder();
                    case "application/x-subrip":
                        return new com.google.android.exoplayer2.text.subrip.SubripDecoder();
                    case "application/x-quicktime-tx3g":
                        return new com.google.android.exoplayer2.text.tx3g.Tx3gDecoder(format.initializationData);
                    case "application/cea-608":
                    case "application/x-mp4-cea-608":
                        return new com.google.android.exoplayer2.text.cea.Cea608Decoder(str, format.accessibilityChannel, com.google.android.exoplayer2.text.cea.Cea608Decoder.MIN_DATA_CHANNEL_TIMEOUT_MS);
                    case "application/cea-708":
                        return new com.google.android.exoplayer2.text.cea.Cea708Decoder(format.accessibilityChannel, format.initializationData);
                    case "application/dvbsubs":
                        return new com.google.android.exoplayer2.text.dvb.DvbDecoder(format.initializationData);
                    case "application/pgs":
                        return new com.google.android.exoplayer2.text.pgs.PgsDecoder();
                    case "text/x-exoplayer-cues":
                        return new com.google.android.exoplayer2.text.ExoplayerCuesDecoder();
                }
            }
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            throw new java.lang.IllegalArgumentException(strValueOf.length() != 0 ? "Attempted to create decoder for unsupported MIME type: ".concat(strValueOf) : new java.lang.String("Attempted to create decoder for unsupported MIME type: "));
        }

        @Override // com.google.android.exoplayer2.text.SubtitleDecoderFactory
        public boolean supportsFormat(com.google.android.exoplayer2.Format format) {
            java.lang.String str = format.sampleMimeType;
            return com.google.android.exoplayer2.util.MimeTypes.TEXT_VTT.equals(str) || com.google.android.exoplayer2.util.MimeTypes.TEXT_SSA.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_TTML.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4VTT.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SUBRIP.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_TX3G.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA608.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MP4CEA608.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA708.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_DVBSUBS.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_PGS.equals(str) || com.google.android.exoplayer2.util.MimeTypes.TEXT_EXOPLAYER_CUES.equals(str);
        }
    };

    com.google.android.exoplayer2.text.SubtitleDecoder createDecoder(com.google.android.exoplayer2.Format format);

    boolean supportsFormat(com.google.android.exoplayer2.Format format);
}
