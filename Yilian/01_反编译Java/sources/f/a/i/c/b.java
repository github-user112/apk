package f.a.i.c;

/* loaded from: classes.dex */
public abstract class b {
    public android.content.Context a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2876d;

    /* renamed from: e, reason: collision with root package name */
    public android.media.AudioTrack f2877e;
    public net.easyconn.ecsdk.ECTypes.ECAudioInfo i;
    public java.io.FileOutputStream k;
    public final java.lang.String l;
    public long m;
    public boolean b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2875c = false;

    /* renamed from: f, reason: collision with root package name */
    public java.util.Hashtable<java.lang.String, android.media.AudioTrack> f2878f = new java.util.Hashtable<>(5);

    /* renamed from: g, reason: collision with root package name */
    public java.util.Hashtable<java.lang.String, android.media.AudioAttributes> f2879g = new java.util.Hashtable<>(4);
    public int h = 3;
    public java.util.Hashtable<java.lang.String, java.io.FileOutputStream> j = new java.util.Hashtable<>(5);

    public b() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("AEcAudioTrack.");
        sbO.append(hashCode());
        this.l = sbO.toString();
    }

    public android.media.AudioAttributes a(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        if (android.os.Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!this.f2879g.containsKey(eCAudioType.name())) {
            android.media.AudioAttributes.Builder builder = new android.media.AudioAttributes.Builder();
            int iOrdinal = eCAudioType.ordinal();
            int i = 0;
            int i2 = 1;
            if (iOrdinal == 0) {
                i2 = 12;
            } else if (iOrdinal != 1) {
                i = 2;
            } else {
                i2 = 16;
            }
            builder.setUsage(i2);
            builder.setContentType(i);
            e.e.a.g.a(this.l + ", stand getAudioAttributes " + eCAudioType.name() + " setUsage = " + i2 + " setContentType = " + i);
            this.f2879g.put(eCAudioType.name(), builder.build());
        }
        return this.f2879g.get(eCAudioType.name());
    }

    public int b(net.easyconn.ecsdk.ECTypes.ECAudioChannelType eCAudioChannelType) {
        int iOrdinal = eCAudioChannelType.ordinal();
        return (iOrdinal == 0 || iOrdinal != 1) ? 4 : 12;
    }

    public int c(net.easyconn.ecsdk.ECTypes.ECAudioFormatType eCAudioFormatType) {
        int iOrdinal = eCAudioFormatType.ordinal();
        if (iOrdinal == 0) {
            return 3;
        }
        if (iOrdinal != 3) {
            return iOrdinal != 14 ? 1 : 4;
        }
        return 2;
    }

    public void d(android.content.Context context, net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo, int i) throws java.lang.IllegalStateException, java.lang.UnsupportedOperationException, java.io.IOException {
        android.media.AudioTrack audioTrack;
        android.content.Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        boolean z = f.a.i.g.a.b(applicationContext).a.getBoolean("key_ec_save_pcm_state", false);
        this.f2876d = z;
        if (this.f2875c || z) {
            java.lang.String str = eCAudioType.name() + eCAudioInfo.channel.name() + eCAudioInfo.sampleRate;
            try {
                java.io.File file = new java.io.File("/mnt/sdcard/" + str + ".pcm");
                if (!file.exists()) {
                    file.createNewFile();
                }
                if (this.j.contains(str)) {
                    this.k = this.j.get(str);
                } else {
                    java.io.FileOutputStream fileOutputStream = new java.io.FileOutputStream(file.getAbsolutePath(), true);
                    this.j.put(str, fileOutputStream);
                    this.k = fileOutputStream;
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
        e.e.a.g.b(e.a.c.a.a.j(new java.lang.StringBuilder(), this.l, ", initAudioTrack : audioInfo = %s, streamType = %d , audioType = %s"), eCAudioInfo.toString(), java.lang.Integer.valueOf(i), eCAudioType);
        this.h = i;
        this.i = eCAudioInfo;
        java.lang.String str2 = eCAudioInfo.format.name() + eCAudioInfo.channel.name() + eCAudioInfo.sampleRate;
        if (this.f2878f.containsKey(str2)) {
            this.f2877e = this.f2878f.get(str2);
        } else {
            f.a.i.d.a aVar = (f.a.i.d.a) this;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ECAudioInfo = (sampleRate:");
            sbO.append(eCAudioInfo.sampleRate);
            sbO.append(",channel:");
            sbO.append(eCAudioInfo.channel);
            sbO.append(",format:");
            sbO.append(eCAudioInfo.format);
            sbO.append(")");
            e.e.a.g.a(sbO.toString());
            if (android.os.Build.VERSION.SDK_INT < 26 || !aVar.n) {
                int minBufferSize = android.media.AudioTrack.getMinBufferSize(eCAudioInfo.sampleRate, aVar.b(eCAudioInfo.channel), aVar.c(eCAudioInfo.format));
                e.e.a.g.a("new AudioTrack-streamType=" + i);
                audioTrack = new android.media.AudioTrack(i, eCAudioInfo.sampleRate, aVar.b(eCAudioInfo.channel), aVar.c(eCAudioInfo.format), minBufferSize, 1);
            } else {
                e.e.a.g.a("Build.VERSION.SDK_INT >= Build.VERSION_CODES.O");
                audioTrack = new android.media.AudioTrack.Builder().setAudioAttributes(aVar.a(eCAudioType)).setAudioFormat(new android.media.AudioFormat.Builder().setEncoding(aVar.c(eCAudioInfo.format)).setChannelMask(aVar.b(eCAudioInfo.channel)).setSampleRate(eCAudioInfo.sampleRate).build()).setTransferMode(1).setBufferSizeInBytes(android.media.AudioTrack.getMinBufferSize(eCAudioInfo.sampleRate, aVar.b(eCAudioInfo.channel), aVar.c(eCAudioInfo.format))).build();
            }
            this.f2877e = audioTrack;
            this.f2878f.put(str2, audioTrack);
        }
        this.b = true;
        e.e.a.g.b(e.a.c.a.a.j(new java.lang.StringBuilder(), this.l, ", initAudioTrack play start , audioType = %s"), eCAudioType);
        if (this.f2877e.getPlayState() != 3) {
            e.e.a.g.e(e.a.c.a.a.j(new java.lang.StringBuilder(), this.l, ", initAudioTrack play"), new java.lang.Object[0]);
            this.f2877e.play();
        }
        e.e.a.g.b(e.a.c.a.a.j(new java.lang.StringBuilder(), this.l, ", initAudioTrack play end , audioType = %s"), eCAudioType);
    }

    public void e(byte[] bArr, int i, int i2) throws java.io.IOException {
        java.io.FileOutputStream fileOutputStream;
        if (this.f2877e != null) {
            if ((this.f2875c || this.f2876d) && (fileOutputStream = this.k) != null) {
                try {
                    fileOutputStream.write(bArr, 0, i2);
                } catch (java.lang.Exception e2) {
                    e2.printStackTrace();
                }
            }
            long jUptimeMillis = android.os.SystemClock.uptimeMillis();
            if (jUptimeMillis - this.m > 2000) {
                e.e.a.g.a(this.l + ", AudioTrack play write length = " + i2);
            }
            this.m = jUptimeMillis;
            if (this.b) {
                this.b = false;
                e.e.a.g.a(this.l + ", AudioTrack play write streamType = " + this.h + " dataLen = " + bArr.length + " offset = " + i);
            }
            this.f2877e.write(bArr, i, i2);
        }
    }
}
