package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class LibraryLoader {
    public static final java.lang.String TAG = "LibraryLoader";
    public boolean isAvailable;
    public boolean loadAttempted;
    public java.lang.String[] nativeLibraries;

    public LibraryLoader(java.lang.String... strArr) {
        this.nativeLibraries = strArr;
    }

    public synchronized boolean isAvailable() {
        if (this.loadAttempted) {
            return this.isAvailable;
        }
        this.loadAttempted = true;
        try {
            for (java.lang.String str : this.nativeLibraries) {
                java.lang.System.loadLibrary(str);
            }
            this.isAvailable = true;
        } catch (java.lang.UnsatisfiedLinkError unused) {
            java.lang.String strValueOf = java.lang.String.valueOf(java.util.Arrays.toString(this.nativeLibraries));
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Failed to load ".concat(strValueOf) : new java.lang.String("Failed to load "));
        }
        return this.isAvailable;
    }

    public synchronized void setLibraries(java.lang.String... strArr) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.loadAttempted, "Cannot set libraries after loading");
        this.nativeLibraries = strArr;
    }
}
