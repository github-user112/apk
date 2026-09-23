package e.c.a.a.l2;

/* loaded from: classes.dex */
public final /* synthetic */ class o {
    public static boolean $default$isAfterLast(com.google.android.exoplayer2.offline.DownloadCursor downloadCursor) {
        return downloadCursor.getCount() == 0 || downloadCursor.getPosition() == downloadCursor.getCount();
    }

    public static boolean $default$isBeforeFirst(com.google.android.exoplayer2.offline.DownloadCursor downloadCursor) {
        return downloadCursor.getCount() == 0 || downloadCursor.getPosition() == -1;
    }

    public static boolean $default$isFirst(com.google.android.exoplayer2.offline.DownloadCursor downloadCursor) {
        return downloadCursor.getPosition() == 0 && downloadCursor.getCount() != 0;
    }

    public static boolean $default$isLast(com.google.android.exoplayer2.offline.DownloadCursor downloadCursor) {
        int count = downloadCursor.getCount();
        return downloadCursor.getPosition() == count + (-1) && count != 0;
    }
}
