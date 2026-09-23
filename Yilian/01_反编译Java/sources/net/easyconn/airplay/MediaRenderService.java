package net.easyconn.airplay;

/* loaded from: classes.dex */
public class MediaRenderService extends android.app.Service {
    public android.os.IBinder a;
    public f.a.e.b b;

    /* renamed from: c, reason: collision with root package name */
    public f.a.e.a f3129c;

    public class a extends f.a.e.d {
        public a() {
        }
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        if (this.a == null) {
            this.a = new net.easyconn.airplay.MediaRenderService.a();
        }
        return this.a;
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i, int i2) {
        return 2;
    }
}
