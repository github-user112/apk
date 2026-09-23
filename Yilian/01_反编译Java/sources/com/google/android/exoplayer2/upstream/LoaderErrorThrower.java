package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public interface LoaderErrorThrower {

    public static final class Dummy implements com.google.android.exoplayer2.upstream.LoaderErrorThrower {
        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError() {
        }

        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError(int i) {
        }
    }

    void maybeThrowError();

    void maybeThrowError(int i);
}
