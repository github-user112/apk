package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public class DataSourceException extends java.io.IOException {

    @java.lang.Deprecated
    public static final int POSITION_OUT_OF_RANGE = 2008;
    public final int reason;

    public DataSourceException(int i) {
        this.reason = i;
    }

    public DataSourceException(java.lang.String str, int i) {
        super(str);
        this.reason = i;
    }

    public DataSourceException(java.lang.String str, java.lang.Throwable th, int i) {
        super(str, th);
        this.reason = i;
    }

    public DataSourceException(java.lang.Throwable th, int i) {
        super(th);
        this.reason = i;
    }

    public static boolean isCausedByPositionOutOfRange(java.io.IOException iOException) {
        for (java.io.IOException cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof com.google.android.exoplayer2.upstream.DataSourceException) && ((com.google.android.exoplayer2.upstream.DataSourceException) cause).reason == 2008) {
                return true;
            }
        }
        return false;
    }
}
