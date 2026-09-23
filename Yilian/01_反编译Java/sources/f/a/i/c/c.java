package f.a.i.c;

/* loaded from: classes.dex */
public class c {
    public static final java.util.concurrent.ScheduledExecutorService k = new java.util.concurrent.ScheduledThreadPoolExecutor(4, new f.a.i.c.c.a());
    public android.media.AudioRecord a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public f.a.i.c.c.InterfaceC0081c f2880c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f2881d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f2882e;

    /* renamed from: f, reason: collision with root package name */
    public java.io.File f2883f;

    /* renamed from: g, reason: collision with root package name */
    public java.io.FileOutputStream f2884g;
    public boolean i;
    public boolean h = false;
    public java.lang.Runnable j = new f.a.i.c.c.b();

    public class a implements java.util.concurrent.ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            return new java.lang.Thread(runnable, "EasyConnectAudioManager_Record_thread");
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.io.IOException {
            java.io.FileOutputStream fileOutputStream;
            f.a.i.c.c.InterfaceC0081c interfaceC0081c;
            f.a.i.c.c cVar = f.a.i.c.c.this;
            int i = 0;
            while (cVar.f2881d) {
                android.media.AudioRecord audioRecord = cVar.a;
                if (audioRecord != null) {
                    i = audioRecord.read(cVar.f2882e, 0, cVar.b);
                }
                if ((cVar.i || cVar.h) && (fileOutputStream = cVar.f2884g) != null) {
                    try {
                        fileOutputStream.write(cVar.f2882e, 0, i);
                    } catch (java.lang.Exception e2) {
                        e2.printStackTrace();
                    }
                }
                if (cVar.f2881d && i > 0 && (interfaceC0081c = cVar.f2880c) != null) {
                    interfaceC0081c.uploadData(cVar.f2882e, i);
                }
            }
        }
    }

    /* renamed from: f.a.i.c.c$c, reason: collision with other inner class name */
    public interface InterfaceC0081c {
        void uploadData(byte[] bArr, int i);
    }

    public c(net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo, f.a.i.c.c.InterfaceC0081c interfaceC0081c) {
        this.f2880c = interfaceC0081c;
        int i = eCAudioInfo.channel.ordinal() != 1 ? 16 : 12;
        int iOrdinal = eCAudioInfo.format.ordinal();
        int i2 = iOrdinal != 0 ? iOrdinal != 3 ? iOrdinal != 14 ? 1 : 4 : 2 : 3;
        int minBufferSize = android.media.AudioRecord.getMinBufferSize(eCAudioInfo.sampleRate, i, i2);
        this.b = minBufferSize;
        this.f2882e = new byte[minBufferSize];
        java.lang.StringBuilder sbP = e.a.c.a.a.p("EaseAudioRecord  audioSource = ", 1, ", audioInfo.sampleRate = ");
        sbP.append(eCAudioInfo.sampleRate);
        sbP.append(" ,channel = ");
        sbP.append(i);
        sbP.append(", format = ");
        sbP.append(i2);
        e.e.a.g.a(sbP.toString());
        this.a = new android.media.AudioRecord(1, eCAudioInfo.sampleRate, i, i2, this.b);
        boolean z = f.a.i.g.a.b(net.easyconn.FrameworkApplication.getContext()).a.getBoolean("key_ec_save_record_pcm_state", false);
        this.i = z;
        if (z || this.h) {
            java.io.File file = new java.io.File("/mnt/sdcard/ecAudioRecord.pcm");
            if (file.exists()) {
                file.delete();
            }
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("mAudioRecord init, state = ");
        sbO.append(this.a.getState());
        e.e.a.g.a(sbO.toString());
    }

    public void a() throws java.lang.IllegalStateException, java.lang.InterruptedException, java.io.IOException {
        e.e.a.g.a("EaseAudioRecord startRecord start");
        if (this.i || this.h) {
            try {
                java.io.File file = new java.io.File("/mnt/sdcard/ecAudioRecord.pcm");
                this.f2883f = file;
                if (!file.exists()) {
                    this.f2883f.createNewFile();
                }
                if (this.f2884g == null) {
                    this.f2884g = new java.io.FileOutputStream(this.f2883f.getAbsolutePath(), true);
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
        this.f2881d = true;
        android.media.AudioRecord audioRecord = this.a;
        if (audioRecord != null && audioRecord.getState() == 1) {
            int i = 0;
            while (this.f2881d && this.a != null && this.a.getRecordingState() != 3 && i < 3) {
                try {
                    e.e.a.g.a("mAudioRecord startRecord, recordingState1 = " + this.a.getRecordingState());
                    this.a.startRecording();
                    e.e.a.g.a("mAudioRecord startRecord, recordingState2 = " + this.a.getRecordingState());
                    if (this.a.getRecordingState() != 3) {
                        try {
                            java.lang.Thread.sleep(500L);
                        } catch (java.lang.InterruptedException e3) {
                            e3.printStackTrace();
                        }
                        i++;
                    }
                } catch (java.lang.Exception e4) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("startRecord Exception msg = ");
                    sbO.append(e4.getMessage());
                    e.e.a.g.a(sbO.toString());
                }
            }
            k.execute(this.j);
        }
        e.e.a.g.a("EaseAudioRecord startRecord end");
    }

    public void b() throws java.lang.IllegalStateException, java.io.IOException {
        if (this.a == null) {
            e.e.a.g.a("EaseAudioRecord stopRecord : mAudioRecord is null ,return");
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("EaseAudioRecord stopRecord : getState=");
        sbO.append(this.a.getState());
        sbO.append(" getRecordingState=");
        sbO.append(this.a.getRecordingState());
        e.e.a.g.a(sbO.toString());
        this.f2881d = false;
        android.media.AudioRecord audioRecord = this.a;
        if (audioRecord != null && audioRecord.getState() == 1) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("EaseAudioRecord stopRecord1 = ");
            sbO2.append(this.a.getRecordingState());
            e.e.a.g.a(sbO2.toString());
            this.a.stop();
            e.e.a.g.a("EaseAudioRecord stopRecord2 = " + this.a.getRecordingState());
        }
        if (this.i || this.h) {
            try {
                if (this.f2884g != null) {
                    this.f2884g.close();
                    this.f2884g = null;
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
