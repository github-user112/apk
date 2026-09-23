package e.c.a.a.l2;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements java.util.Comparator {
    public static final /* synthetic */ e.c.a.a.l2.l a = new e.c.a.a.l2.l();

    private /* synthetic */ l() {
    }

    @Override // java.util.Comparator
    public final int compare(java.lang.Object obj, java.lang.Object obj2) {
        return com.google.android.exoplayer2.offline.DownloadManager.InternalHandler.compareStartTimes((com.google.android.exoplayer2.offline.Download) obj, (com.google.android.exoplayer2.offline.Download) obj2);
    }
}
