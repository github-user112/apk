package f.a.e;

/* loaded from: classes.dex */
public abstract class d extends android.os.Binder implements android.os.IInterface {
    public d() {
        attachInterface(this, "net.easyconn.airplay.IMediaRenderServer");
    }

    @Override // android.os.IInterface
    public android.os.IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, android.os.Parcel parcel, android.os.Parcel parcel2, int i2) throws java.lang.IllegalStateException {
        android.media.AudioTrack audioTrack;
        if (i == 1598968902) {
            parcel2.writeString("net.easyconn.airplay.IMediaRenderServer");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                java.lang.String string = parcel.readString();
                net.easyconn.airplay.MediaRenderService.a aVar = (net.easyconn.airplay.MediaRenderService.a) this;
                if (net.easyconn.airplay.MediaRenderService.this.b == null) {
                    e.e.a.g.a("startMediaRender");
                    net.easyconn.airplay.MediaRenderService.this.f3129c = new f.a.e.a(aVar);
                    net.easyconn.jni.PlatinumReflection.setActionInvokeListener(net.easyconn.airplay.MediaRenderService.this.f3129c);
                    net.easyconn.airplay.MediaRenderService.this.b = new f.a.e.b(net.easyconn.airplay.MediaRenderService.this.getApplicationContext(), string, new f.a.e.e(aVar));
                    net.easyconn.airplay.MediaRenderService.this.b.start();
                }
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.jni.PlatinumJniProxy.responseGenaEvent(256, parcel.readString(), (java.lang.String) null);
                net.easyconn.jni.PlatinumJniProxy.responseGenaEvent(257, "00:00:00", (java.lang.String) null);
                net.easyconn.jni.PlatinumJniProxy.responseGenaEvent(258, net.easyconn.jni.PlatinumReflection.MEDIA_PLAYINGSTATE_PLAYING, (java.lang.String) null);
                parcel2.writeNoException();
                return true;
            case 3:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.jni.PlatinumJniProxy.responseGenaEvent(257, parcel.readString(), (java.lang.String) null);
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.jni.PlatinumJniProxy.responseGenaEvent(258, net.easyconn.jni.PlatinumReflection.MEDIA_PLAYINGSTATE_PAUSE, (java.lang.String) null);
                parcel2.writeNoException();
                return true;
            case 5:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.jni.PlatinumJniProxy.responseGenaEvent(258, net.easyconn.jni.PlatinumReflection.MEDIA_PLAYINGSTATE_PLAYING, (java.lang.String) null);
                parcel2.writeNoException();
                return true;
            case 6:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.airplay.MediaRenderService.a aVar2 = (net.easyconn.airplay.MediaRenderService.a) this;
                e.e.a.g.c("stop service~~~~~~", new java.lang.Object[0]);
                f.a.e.b bVar = net.easyconn.airplay.MediaRenderService.this.b;
                if (bVar != null) {
                    bVar.f2844f = true;
                    bVar.a();
                    f.a.e.b.a aVar3 = bVar.f2841c;
                    if (aVar3 != null) {
                        ((f.a.e.e) aVar3).a(5);
                    }
                    synchronized (bVar) {
                        bVar.notifyAll();
                    }
                    net.easyconn.airplay.MediaRenderService.this.b = null;
                }
                boolean zBooleanValue = (!f.a.i.m.g.h0(net.easyconn.airplay.MediaRenderService.this.getApplicationContext()) ? java.lang.Boolean.valueOf("KILL_MEDIA_SERVICE_WHEN_AIRPLAY_CLOSE") : java.lang.Boolean.valueOf(f.a.i.m.g.f2936c.getProperty("KILL_MEDIA_SERVICE_WHEN_AIRPLAY_CLOSE", "true"))).booleanValue();
                e.e.a.g.c("stop service isKill = " + zBooleanValue, new java.lang.Object[0]);
                if (zBooleanValue) {
                    android.os.Process.killProcess(android.os.Process.myPid());
                }
                parcel2.writeNoException();
                return true;
            case 7:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                f.a.e.a.f2833d = parcel.readInt() != 0;
                parcel2.writeNoException();
                return true;
            case 8:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                int i3 = parcel.readInt();
                f.a.e.a aVar4 = net.easyconn.airplay.MediaRenderService.this.f3129c;
                if (aVar4 != null && (audioTrack = aVar4.a) != null) {
                    float f2 = i3 / 100.0f;
                    audioTrack.setStereoVolume(f2, f2);
                }
                parcel2.writeNoException();
                return true;
            case 9:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.jni.PlatinumJniProxy.forceKeyFrame();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.airplay.MediaRenderService.a aVar5 = (net.easyconn.airplay.MediaRenderService.a) this;
                if (net.easyconn.airplay.MediaRenderService.this.f3129c != null) {
                    e.e.a.g.c("restartAudio...............", new java.lang.Object[0]);
                    net.easyconn.airplay.MediaRenderService.this.f3129c.audio_init(16, 1, com.google.android.exoplayer2.source.SilenceMediaSource.SAMPLE_RATE_HZ, 1);
                }
                parcel2.writeNoException();
                return true;
            case 11:
                parcel.enforceInterface("net.easyconn.airplay.IMediaRenderServer");
                net.easyconn.airplay.MediaRenderService.a aVar6 = (net.easyconn.airplay.MediaRenderService.a) this;
                if (net.easyconn.airplay.MediaRenderService.this.f3129c != null) {
                    e.e.a.g.c("destroyAudio...............", new java.lang.Object[0]);
                    net.easyconn.airplay.MediaRenderService.this.f3129c.audio_destroy();
                }
                parcel2.writeNoException();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
