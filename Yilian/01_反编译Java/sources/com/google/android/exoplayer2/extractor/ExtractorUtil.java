package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class ExtractorUtil {
    @org.checkerframework.dataflow.qual.Pure
    public static void checkContainerInput(boolean z, java.lang.String str) throws com.google.android.exoplayer2.ParserException {
        if (!z) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(str, null);
        }
    }

    public static boolean peekFullyQuietly(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, byte[] bArr, int i, int i2, boolean z) throws java.io.EOFException {
        try {
            return extractorInput.peekFully(bArr, i, i2, z);
        } catch (java.io.EOFException e2) {
            if (z) {
                return false;
            }
            throw e2;
        }
    }

    public static int peekToLength(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int iPeek = extractorInput.peek(bArr, i + i3, i2 - i3);
            if (iPeek == -1) {
                break;
            }
            i3 += iPeek;
        }
        return i3;
    }

    public static boolean readFullyQuietly(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, byte[] bArr, int i, int i2) {
        try {
            extractorInput.readFully(bArr, i, i2);
            return true;
        } catch (java.io.EOFException unused) {
            return false;
        }
    }

    public static boolean skipFullyQuietly(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        try {
            extractorInput.skipFully(i);
            return true;
        } catch (java.io.EOFException unused) {
            return false;
        }
    }
}
