package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public interface Bundleable {

    public interface Creator<T extends com.google.android.exoplayer2.Bundleable> {
        T fromBundle(android.os.Bundle bundle);
    }

    android.os.Bundle toBundle();
}
