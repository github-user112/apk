package com.google.android.exoplayer2.metadata.icy;

/* loaded from: classes.dex */
public final class IcyDecoder extends com.google.android.exoplayer2.metadata.SimpleMetadataDecoder {
    public static final java.util.regex.Pattern METADATA_ELEMENT = java.util.regex.Pattern.compile("(.+?)='(.*?)';", 32);
    public static final java.lang.String STREAM_KEY_NAME = "streamtitle";
    public static final java.lang.String STREAM_KEY_URL = "streamurl";
    public final java.nio.charset.CharsetDecoder utf8Decoder = e.c.b.a.c.f2667c.newDecoder();
    public final java.nio.charset.CharsetDecoder iso88591Decoder = e.c.b.a.c.b.newDecoder();

    private java.lang.String decodeToString(java.nio.ByteBuffer byteBuffer) {
        java.lang.String string;
        java.nio.charset.CharsetDecoder charsetDecoder;
        try {
            string = this.utf8Decoder.decode(byteBuffer).toString();
            charsetDecoder = this.utf8Decoder;
        } catch (java.nio.charset.CharacterCodingException unused) {
            this.utf8Decoder.reset();
            byteBuffer.rewind();
            try {
                string = this.iso88591Decoder.decode(byteBuffer).toString();
            } catch (java.nio.charset.CharacterCodingException unused2) {
                string = null;
            } catch (java.lang.Throwable th) {
                this.iso88591Decoder.reset();
                byteBuffer.rewind();
                throw th;
            }
            charsetDecoder = this.iso88591Decoder;
        } catch (java.lang.Throwable th2) {
            this.utf8Decoder.reset();
            byteBuffer.rewind();
            throw th2;
        }
        charsetDecoder.reset();
        byteBuffer.rewind();
        return string;
    }

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    public com.google.android.exoplayer2.metadata.Metadata decode(com.google.android.exoplayer2.metadata.MetadataInputBuffer metadataInputBuffer, java.nio.ByteBuffer byteBuffer) {
        java.lang.String strDecodeToString = decodeToString(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        java.lang.String str = null;
        if (strDecodeToString == null) {
            return new com.google.android.exoplayer2.metadata.Metadata(new com.google.android.exoplayer2.metadata.icy.IcyInfo(bArr, null, null));
        }
        java.util.regex.Matcher matcher = METADATA_ELEMENT.matcher(strDecodeToString);
        java.lang.String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            java.lang.String strGroup = matcher.group(1);
            java.lang.String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                java.lang.String strB0 = d.s.y.b0(strGroup);
                char c2 = 65535;
                int iHashCode = strB0.hashCode();
                if (iHashCode != -315603473) {
                    if (iHashCode == 1646559960 && strB0.equals(STREAM_KEY_NAME)) {
                        c2 = 0;
                    }
                } else if (strB0.equals(STREAM_KEY_URL)) {
                    c2 = 1;
                }
                if (c2 == 0) {
                    str = strGroup2;
                } else if (c2 == 1) {
                    str2 = strGroup2;
                }
            }
        }
        return new com.google.android.exoplayer2.metadata.Metadata(new com.google.android.exoplayer2.metadata.icy.IcyInfo(bArr, str, str2));
    }
}
