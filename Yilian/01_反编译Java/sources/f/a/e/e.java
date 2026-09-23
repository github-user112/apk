package f.a.e;

/* loaded from: classes.dex */
public class e implements f.a.e.b.a {
    public final /* synthetic */ net.easyconn.airplay.MediaRenderService.a a;

    public e(net.easyconn.airplay.MediaRenderService.a aVar) {
        this.a = aVar;
    }

    public void a(int i) {
        e.e.a.g.c(e.a.c.a.a.K("airplay state change! ", i), new java.lang.Object[0]);
        if (i == 6) {
            net.easyconn.airplay.MediaRenderService.this.b = null;
        }
        android.content.Intent intent = new android.content.Intent();
        intent.setAction("com.carbit.airplay_ctr");
        intent.putExtra(com.umeng.analytics.pro.c.y, 0);
        intent.putExtra(com.google.android.exoplayer2.offline.DefaultDownloadIndex.COLUMN_STATE, i);
        net.easyconn.airplay.MediaRenderService.this.sendBroadcast(intent);
    }
}
