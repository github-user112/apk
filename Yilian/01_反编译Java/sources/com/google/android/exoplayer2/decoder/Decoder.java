package com.google.android.exoplayer2.decoder;

/* loaded from: classes.dex */
public interface Decoder<I, O, E extends com.google.android.exoplayer2.decoder.DecoderException> {
    I dequeueInputBuffer();

    O dequeueOutputBuffer();

    void flush();

    java.lang.String getName();

    void queueInputBuffer(I i);

    void release();
}
