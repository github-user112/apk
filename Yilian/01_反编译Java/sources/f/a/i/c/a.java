package f.a.i.c;

/* loaded from: classes.dex */
public abstract class a implements f.a.i.h.a, android.media.AudioManager.OnAudioFocusChangeListener, f.a.i.c.c.InterfaceC0081c {
    public static final int ARGS_AUDIO_LOSS_ABANDON = 1;
    public static final int COUNT_VR_FOCUS_RESULT_CONFIRM = 20;
    public static final int DEFAULT_PRE_CACHE_TIME = 200;
    public static final float DEF_MAX_VALUE = 1.0f;
    public static final float DEF_MIN_VALUE = 0.3f;
    public static final int MAX_CACHE_QUEUE_LENGTH = 50;
    public static final int MAX_RETRY_TIMES = 10;
    public static final int MSG_ON_ABANDON_FOCUS = 1;
    public static final int MSG_ON_REQUEST_FOCUS = 0;
    public static f.a.i.i.q mSdkManager;
    public static int retryNumber;
    public android.animation.ValueAnimator.AnimatorUpdateListener animatorUpdateListener;
    public android.os.Handler audioManagerHandler;
    public android.content.Context mContext;
    public float mCurrentMusicVolumeValue;
    public f.a.i.c.c mEaseAudioRecord;
    public java.util.concurrent.ExecutorService mExecutorService;
    public android.animation.ValueAnimator mMusicVolumeFadedownAnimotor;
    public android.animation.ValueAnimator mMusicVolumeFadeupAnimotor;
    public android.os.HandlerThread workThread;
    public java.util.Hashtable<java.lang.String, f.a.i.c.b> trackCache = new java.util.Hashtable<>(4);
    public java.util.Hashtable<java.lang.String, java.lang.Boolean> ecAudioTypeFocusMap = new java.util.Hashtable<>(4);
    public java.util.Hashtable<java.lang.String, java.lang.Boolean> ecAudioTypeRequestFocusMap = new java.util.Hashtable<>(4);
    public java.util.Hashtable<java.lang.String, java.util.concurrent.ConcurrentLinkedQueue<byte[]>> mCacheQueueMap = new java.util.Hashtable<>(4);
    public java.util.Hashtable<java.lang.String, java.lang.Boolean> mAudioStopMap = new java.util.Hashtable<>(4);
    public volatile java.util.Hashtable<java.lang.String, java.lang.Boolean> mAudioPlayEndMap = new java.util.Hashtable<>(4);
    public java.util.Hashtable<java.lang.String, f.a.i.c.a.g> mPlayerMap = new java.util.Hashtable<>(5);
    public boolean isVrStarted = false;
    public net.easyconn.ecsdk.ECTypes.ECAudioInfo mECAudioInfo = null;
    public f.a.i.h.h mPermissionRequestListener = null;
    public float mMinVolume = 0.3f;
    public float mMaxVolume = 1.0f;
    public android.media.AudioManager.OnAudioFocusChangeListener musicFocusChangeListener = new f.a.i.c.a.b();
    public android.media.AudioManager.OnAudioFocusChangeListener vrFocusChangeListener = new f.a.i.c.a.c();
    public android.media.AudioManager.OnAudioFocusChangeListener ttsFocusChangeListener = new f.a.i.c.a.d();
    public android.media.AudioManager.OnAudioFocusChangeListener talkieFocusChangeListener = new f.a.i.c.a.e();

    /* renamed from: f.a.i.c.a$a, reason: collision with other inner class name */
    public class ThreadFactoryC0080a implements java.util.concurrent.ThreadFactory {
        public ThreadFactoryC0080a(f.a.i.c.a aVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            return new java.lang.Thread(runnable, "audio_player_thread");
        }
    }

    public class b implements android.media.AudioManager.OnAudioFocusChangeListener {
        public b() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            e.e.a.g.e(e.a.c.a.a.K("musicFocusChangeListener focusChange is ", i), new java.lang.Object[0]);
            net.easyconn.framework.broadcast.BroadcastManager.sendMusicFocusStatusBroadcast(f.a.i.c.a.this.mContext, i);
            f.a.i.c.a aVar = f.a.i.c.a.this;
            if (aVar.isVrStarted) {
                e.e.a.g.a("musicFocusChangeListener vr started, return");
                java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable = f.a.i.c.a.this.ecAudioTypeFocusMap;
                net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
                hashtable.put("EC_AUDIO_TYPE_MUSIC", java.lang.Boolean.FALSE);
                return;
            }
            aVar.handleFocusChange(net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC, i);
            f.a.i.i.q qVar = f.a.i.c.a.mSdkManager;
            if (qVar != null && qVar.H() == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_USB_LIGHTNING && i == -1) {
                f.a.i.c.a.mSdkManager.r.sendEmptyMessage(35);
            }
        }
    }

    public class c implements android.media.AudioManager.OnAudioFocusChangeListener {
        public c() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable;
            java.lang.Boolean bool;
            e.e.a.g.e(e.a.c.a.a.K("vrFocusChangeListener focusChange is ", i), new java.lang.Object[0]);
            if (i != -2 && i != -1) {
                if (i == 1) {
                    hashtable = f.a.i.c.a.this.ecAudioTypeFocusMap;
                    net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
                    bool = java.lang.Boolean.TRUE;
                }
                f.a.i.c.a.this.handleVrFocusChange(i);
            }
            hashtable = f.a.i.c.a.this.ecAudioTypeFocusMap;
            net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType2 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
            bool = java.lang.Boolean.FALSE;
            hashtable.put("EC_AUDIO_TYPE_VR", bool);
            f.a.i.c.a.this.handleVrFocusChange(i);
        }
    }

    public class d implements android.media.AudioManager.OnAudioFocusChangeListener {
        public d() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            e.e.a.g.e(e.a.c.a.a.K("ttsFocusChangeListener focusChange is ", i), new java.lang.Object[0]);
            if ((i == -2 || i == -3) && f.a.i.c.a.this.audioManagerHandler != null) {
                e.e.a.g.a("tts loss focus, send message of abandon focus");
                f.a.i.c.a.this.audioManagerHandler.obtainMessage(1, net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS).sendToTarget();
            }
            f.a.i.c.a aVar = f.a.i.c.a.this;
            if (aVar.isVrStarted) {
                e.e.a.g.a("ttsFocusChangeListener vr started, return");
            } else if (i != -1) {
                aVar.handleFocusChange(net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS, i);
            }
        }
    }

    public class e implements android.media.AudioManager.OnAudioFocusChangeListener {
        public e() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            e.e.a.g.e(e.a.c.a.a.K("talkieFocusChangeListener focusChange is ", i), new java.lang.Object[0]);
            f.a.i.c.a aVar = f.a.i.c.a.this;
            if (aVar.isVrStarted) {
                e.e.a.g.a("talkieFocusChangeListener vr started, return");
            } else {
                aVar.handleFocusChange(net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE, i);
            }
        }
    }

    public class f extends android.os.Handler {
        public f(android.os.Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = (net.easyconn.ecsdk.ECTypes.ECAudioType) message.obj;
            int i = message.what;
            if (i != 0) {
                if (i == 1 && eCAudioType != net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC) {
                    f.a.i.c.a.this.doAbandonAudioFocus(eCAudioType);
                    return;
                }
                return;
            }
            f.a.i.c.a.this.doRequestAudioFocus(eCAudioType);
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC && f.a.i.c.a.this.ecAudioTypeFocusMap.get(eCAudioType.name()).booleanValue()) {
                net.easyconn.framework.broadcast.BroadcastManager.sendMusicFocusStatusBroadcast(f.a.i.c.a.this.mContext, 1);
            }
        }
    }

    public class g implements java.lang.Runnable {
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public net.easyconn.ecsdk.ECTypes.ECAudioType f2870c;

        /* renamed from: e, reason: collision with root package name */
        public int f2872e;
        public java.lang.Object a = new java.lang.Object();

        /* renamed from: d, reason: collision with root package name */
        public java.util.concurrent.atomic.AtomicBoolean f2871d = new java.util.concurrent.atomic.AtomicBoolean(false);

        /* renamed from: f, reason: collision with root package name */
        public long f2873f = 0;

        public g(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
            this.f2870c = eCAudioType;
            this.b = eCAudioType.name();
            this.f2872e = (int) java.lang.Math.ceil(f.a.i.c.a.this.getPreCacheTime() / 100);
        }

        public g(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, boolean z) {
            this.f2870c = eCAudioType;
            this.b = eCAudioType.name();
            this.f2872e = (int) java.lang.Math.ceil(f.a.i.c.a.this.getPreCacheTime() / 100);
        }

        public final long a(int i, f.a.i.c.b bVar) {
            int iOrdinal = bVar.i.format.ordinal();
            int i2 = 4;
            int i3 = (iOrdinal != 0 ? iOrdinal != 3 ? iOrdinal != 14 ? (char) 1 : (char) 4 : (char) 2 : (char) 3) == 3 ? 1 : 2;
            long j = i * 1000;
            long j2 = j / r10.sampleRate;
            int iOrdinal2 = bVar.i.channel.ordinal();
            if (iOrdinal2 != 0 && iOrdinal2 == 1) {
                i2 = 12;
            }
            return (j2 / i2) / i3;
        }

        public final void b() throws java.lang.IllegalStateException {
            f.a.i.c.b bVar;
            android.media.AudioTrack audioTrack;
            android.os.Handler handler;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("AudioPlayer release audioType = ");
            sbO.append(this.f2870c.name());
            e.e.a.g.a(sbO.toString());
            this.f2873f = 0L;
            f.a.i.c.a aVar = f.a.i.c.a.this;
            if (!aVar.isVrStarted && (handler = aVar.audioManagerHandler) != null) {
                handler.obtainMessage(1, this.f2870c).sendToTarget();
            }
            if (f.a.i.c.a.this.trackCache.containsKey(this.b) && (audioTrack = (bVar = f.a.i.c.a.this.trackCache.get(this.b)).f2877e) != null && audioTrack.getState() == 1 && bVar.f2877e.getPlayState() != 1) {
                bVar.f2877e.stop();
            }
            if (f.a.i.c.a.this.mCacheQueueMap.containsKey(this.b)) {
                ((java.util.concurrent.ConcurrentLinkedQueue) f.a.i.c.a.this.mCacheQueueMap.get(this.b)).clear();
            }
            f.a.i.c.a.this.mAudioStopMap.put(this.b, java.lang.Boolean.FALSE);
            f.a.i.c.a.this.mAudioPlayEndMap.put(this.b, java.lang.Boolean.FALSE);
        }

        public void c(int i) {
            java.util.Hashtable<java.lang.String, f.a.i.c.b> hashtable = f.a.i.c.a.this.trackCache;
            if (hashtable.contains(hashtable.get(this.b)) && f.a.i.c.a.this.isPreCacheEnabled(this.f2870c)) {
                this.f2873f = a(i, f.a.i.c.a.this.trackCache.get(this.b)) + this.f2873f;
            }
        }

        @Override // java.lang.Runnable
        public void run() throws java.lang.IllegalStateException {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("AudioPlayer start ecAudioString = ");
            sbO.append(this.b);
            e.e.a.g.a(sbO.toString());
            this.f2871d.set(false);
            java.util.concurrent.ConcurrentLinkedQueue concurrentLinkedQueue = (java.util.concurrent.ConcurrentLinkedQueue) f.a.i.c.a.this.mCacheQueueMap.get(this.b);
            while (!this.f2871d.get()) {
                try {
                    try {
                        if (f.a.i.c.a.this.ecAudioTypeFocusMap.get(this.b).booleanValue() && f.a.i.c.a.this.trackCache.containsKey(this.b)) {
                            if (f.a.i.c.a.this.isPreCacheEnabled(this.f2870c)) {
                                e.e.a.g.a("caching.....ecAudioString = " + this.b + ", maxWaitRound = " + this.f2872e);
                                int i = 0;
                                long j = 0L;
                                while (this.f2873f < f.a.i.c.a.this.getPreCacheTime() && i < this.f2872e) {
                                    e.e.a.g.a("caching...wait, ecAudioString = " + this.b + ", cacheTimeSpanTotal = " + this.f2873f);
                                    if (j == this.f2873f && this.f2873f > 0) {
                                        i++;
                                    }
                                    j = this.f2873f;
                                    try {
                                        java.lang.Thread.sleep(100L);
                                    } catch (java.lang.InterruptedException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                            }
                            while (true) {
                                byte[] bArr = (byte[]) concurrentLinkedQueue.poll();
                                if (bArr == null) {
                                    break;
                                }
                                f.a.i.c.a.this.mAudioPlayEndMap.put(this.b, java.lang.Boolean.FALSE);
                                if (f.a.i.c.a.this.ecAudioTypeFocusMap.get(this.b).booleanValue()) {
                                    f.a.i.c.a.this.trackCache.get(this.b).e(bArr, 0, bArr.length);
                                }
                                this.f2873f -= a(bArr.length, f.a.i.c.a.this.trackCache.get(this.b));
                            }
                            if (f.a.i.c.a.this.mAudioStopMap.get(this.b).booleanValue()) {
                                f.a.i.c.a.this.sendAudioPlayEnd(this.f2870c);
                                b();
                            } else {
                                f.a.i.c.a.this.mAudioPlayEndMap.put(this.b, java.lang.Boolean.TRUE);
                            }
                            synchronized (this.a) {
                                if (!this.f2871d.get()) {
                                    this.a.wait();
                                }
                            }
                        }
                    } finally {
                        e.e.a.g.a("AudioPlayer end");
                        b();
                    }
                } catch (java.lang.Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    public a(f.a.i.i.q qVar, android.content.Context context) {
        this.mCurrentMusicVolumeValue = 1.0f;
        mSdkManager = qVar;
        this.mContext = context;
        this.mExecutorService = new java.util.concurrent.ThreadPoolExecutor(4, 4, 0L, java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.LinkedBlockingQueue(), new f.a.i.c.a.ThreadFactoryC0080a(this));
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable = this.ecAudioTypeFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        hashtable.put("EC_AUDIO_TYPE_MUSIC", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable2 = this.ecAudioTypeFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType2 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE;
        hashtable2.put("EC_AUDIO_TYPE_TALKIE", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable3 = this.ecAudioTypeFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType3 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS;
        hashtable3.put("EC_AUDIO_TYPE_TTS", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable4 = this.ecAudioTypeFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType4 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
        hashtable4.put("EC_AUDIO_TYPE_VR", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable5 = this.ecAudioTypeRequestFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType5 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        hashtable5.put("EC_AUDIO_TYPE_MUSIC", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable6 = this.ecAudioTypeRequestFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType6 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE;
        hashtable6.put("EC_AUDIO_TYPE_TALKIE", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable7 = this.ecAudioTypeRequestFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType7 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS;
        hashtable7.put("EC_AUDIO_TYPE_TTS", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable8 = this.ecAudioTypeRequestFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType8 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
        hashtable8.put("EC_AUDIO_TYPE_VR", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.util.concurrent.ConcurrentLinkedQueue<byte[]>> hashtable9 = this.mCacheQueueMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType9 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        hashtable9.put("EC_AUDIO_TYPE_MUSIC", new java.util.concurrent.ConcurrentLinkedQueue<>());
        java.util.Hashtable<java.lang.String, java.util.concurrent.ConcurrentLinkedQueue<byte[]>> hashtable10 = this.mCacheQueueMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType10 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE;
        hashtable10.put("EC_AUDIO_TYPE_TALKIE", new java.util.concurrent.ConcurrentLinkedQueue<>());
        java.util.Hashtable<java.lang.String, java.util.concurrent.ConcurrentLinkedQueue<byte[]>> hashtable11 = this.mCacheQueueMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType11 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS;
        hashtable11.put("EC_AUDIO_TYPE_TTS", new java.util.concurrent.ConcurrentLinkedQueue<>());
        java.util.Hashtable<java.lang.String, java.util.concurrent.ConcurrentLinkedQueue<byte[]>> hashtable12 = this.mCacheQueueMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType12 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
        hashtable12.put("EC_AUDIO_TYPE_VR", new java.util.concurrent.ConcurrentLinkedQueue<>());
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable13 = this.mAudioStopMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType13 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        hashtable13.put("EC_AUDIO_TYPE_MUSIC", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable14 = this.mAudioStopMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType14 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE;
        hashtable14.put("EC_AUDIO_TYPE_TALKIE", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable15 = this.mAudioStopMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType15 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS;
        hashtable15.put("EC_AUDIO_TYPE_TTS", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable16 = this.mAudioStopMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType16 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
        hashtable16.put("EC_AUDIO_TYPE_VR", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable17 = this.mAudioPlayEndMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType17 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        hashtable17.put("EC_AUDIO_TYPE_MUSIC", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable18 = this.mAudioPlayEndMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType18 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE;
        hashtable18.put("EC_AUDIO_TYPE_TALKIE", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable19 = this.mAudioPlayEndMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType19 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS;
        hashtable19.put("EC_AUDIO_TYPE_TTS", java.lang.Boolean.FALSE);
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable20 = this.mAudioPlayEndMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType20 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
        hashtable20.put("EC_AUDIO_TYPE_VR", java.lang.Boolean.FALSE);
        if (isVolumeFadeChange()) {
            setVolumeFadeChangeArea(0.3f, 1.0f);
            this.mMusicVolumeFadeupAnimotor = android.animation.ValueAnimator.ofFloat(this.mMinVolume, this.mMaxVolume);
            this.mMusicVolumeFadedownAnimotor = android.animation.ValueAnimator.ofFloat(this.mMaxVolume, this.mMinVolume);
            this.mCurrentMusicVolumeValue = this.mMaxVolume;
            setAnimatorUpdateListener();
            if (this.animatorUpdateListener != null) {
                this.mMusicVolumeFadedownAnimotor.setDuration(500L);
                this.mMusicVolumeFadedownAnimotor.addUpdateListener(this.animatorUpdateListener);
                this.mMusicVolumeFadeupAnimotor.setDuration(500L);
                this.mMusicVolumeFadeupAnimotor.addUpdateListener(this.animatorUpdateListener);
            }
        }
    }

    public void bindVoiceServer() {
        f.a.i.g.a aVarB = f.a.i.g.a.b(this.mContext.getApplicationContext());
        java.lang.String string = aVarB.a.getString(net.easyconn.framework.broadcast.BroadcastManager.EC_CARCONTROL_CMDS, "");
        boolean z = aVarB.a.getBoolean(net.easyconn.framework.broadcast.BroadcastManager.EC_CARCONTROL_SUPPORT_GLOBAL_NO_WAKEUP, false);
        if (android.text.TextUtils.isEmpty(string)) {
            net.easyconn.framework.broadcast.BroadcastManager.sendCarControlRequestBroadcast(this.mContext);
            return;
        }
        mSdkManager.L(string, z);
        java.lang.String string2 = aVarB.a.getString(net.easyconn.framework.broadcast.BroadcastManager.EC_CARCONTROL_WORDS, "");
        if (android.text.TextUtils.isEmpty(string2)) {
            return;
        }
        if (mSdkManager == null) {
            throw null;
        }
        net.easyconn.ecsdk.ECSDK.getInstance().registerSimilarSoundingWords(string2);
    }

    public boolean checkMusicHasFocus() {
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable = this.ecAudioTypeFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        return hashtable.get("EC_AUDIO_TYPE_MUSIC").booleanValue();
    }

    public boolean checkMusicHasRequestFocus() {
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable = this.ecAudioTypeRequestFocusMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        return hashtable.get("EC_AUDIO_TYPE_MUSIC").booleanValue();
    }

    public abstract void doAbandonAudioFocus(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    public abstract void doRequestAudioFocus(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType);

    public android.media.AudioManager.OnAudioFocusChangeListener getAudioFocusChangeListenerByType(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        int iOrdinal = eCAudioType.ordinal();
        if (iOrdinal == 0) {
            return this.ttsFocusChangeListener;
        }
        if (iOrdinal == 1) {
            return this.vrFocusChangeListener;
        }
        if (iOrdinal == 2) {
            return this.talkieFocusChangeListener;
        }
        if (iOrdinal != 3) {
            return null;
        }
        return this.musicFocusChangeListener;
    }

    public abstract f.a.i.c.b getEcAudioTrack();

    public int getFocusType(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        int iOrdinal = eCAudioType.ordinal();
        int i = 1;
        if (iOrdinal == 1) {
            i = 2;
        } else if (iOrdinal != 3) {
            i = 3;
        }
        e.a.c.a.a.v("getFocusType ret = ", i);
        return i;
    }

    public int getPreCacheTime() {
        return 200;
    }

    public void handleFocusChange(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, int i) {
        f.a.i.i.q qVar;
        net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType;
        net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue;
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable;
        java.lang.String strName;
        java.lang.Boolean bool;
        e.e.a.g.e(e.a.c.a.a.K("handleFocusChange focusChange = ", i), new java.lang.Object[0]);
        if (i == -3) {
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC || eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE) {
                mSdkManager.c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE, net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS);
                return;
            }
            return;
        }
        if (i == -2) {
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC || eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE) {
                qVar = mSdkManager;
                eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
                eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_SHORT_FUCUS_LOSS;
                qVar.c0(eCCarStatusType, eCCarStatusValue);
            }
            hashtable = this.ecAudioTypeFocusMap;
            strName = eCAudioType.name();
            bool = java.lang.Boolean.FALSE;
        } else if (i == -1) {
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC || eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE) {
                qVar = mSdkManager;
                eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
                eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_LONG_FUCUS_LOSS;
                qVar.c0(eCCarStatusType, eCCarStatusValue);
            }
            hashtable = this.ecAudioTypeFocusMap;
            strName = eCAudioType.name();
            bool = java.lang.Boolean.FALSE;
        } else {
            if (i != 1) {
                return;
            }
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC || eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE) {
                mSdkManager.c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE, net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_LONG_FUCUS_GAIN);
            }
            hashtable = this.ecAudioTypeFocusMap;
            strName = eCAudioType.name();
            bool = java.lang.Boolean.TRUE;
        }
        hashtable.put(strName, bool);
    }

    public void handleVrFocusChange(int i) {
    }

    public void init() {
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("EC_Audio_Manager_thread");
        this.workThread = handlerThread;
        handlerThread.start();
        this.audioManagerHandler = new f.a.i.c.a.f(this.workThread.getLooper());
    }

    public void initAudioTrack(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) throws java.lang.IllegalStateException, java.lang.UnsupportedOperationException, java.io.IOException {
        f.a.i.c.b ecAudioTrack;
        java.lang.String strName = eCAudioType.name();
        if (this.trackCache.containsKey(strName)) {
            ecAudioTrack = this.trackCache.get(strName);
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC) {
                e.e.a.g.a("initAudioTrack clear music cache");
                onInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC);
            }
        } else {
            ecAudioTrack = getEcAudioTrack();
            this.trackCache.put(strName, ecAudioTrack);
        }
        this.mAudioStopMap.put(strName, java.lang.Boolean.FALSE);
        e.e.a.g.a("AudioPlayer initAudioTrack ecAudioType = " + strName);
        if (!this.mPlayerMap.containsKey(strName)) {
            f.a.i.c.a.g gVar = new f.a.i.c.a.g(eCAudioType);
            this.mPlayerMap.put(strName, gVar);
            this.mExecutorService.execute(gVar);
        }
        android.content.Context context = this.mContext;
        if (ecAudioTrack == null) {
            throw null;
        }
        ecAudioTrack.d(context, eCAudioType, eCAudioInfo, 3);
    }

    public boolean isMusicPlaying() {
        java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable = this.mAudioStopMap;
        net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC;
        return !hashtable.get("EC_AUDIO_TYPE_MUSIC").booleanValue();
    }

    public abstract boolean isOnDataReturn(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2);

    public boolean isPreCacheEnabled(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        return false;
    }

    public boolean isVolumeFadeChange() {
        return false;
    }

    public void notifyMicStatus(boolean z) {
        java.lang.String string;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("notifyMicStatus ");
        if (mSdkManager == null) {
            string = "mSdkManager is null";
        } else {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("mSdkManager.isMirrorConnectionOpen() = ");
            sbO2.append(mSdkManager.V);
            string = sbO2.toString();
        }
        sbO.append(string);
        sbO.append(", isOpen = ");
        sbO.append(z);
        e.e.a.g.a(sbO.toString());
        f.a.i.i.q qVar = mSdkManager;
        if (qVar == null || !qVar.V) {
            return;
        }
        mSdkManager.c0(net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_MIC_STATUS, z ? net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_MIC_OPEN : net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_MIC_CLOSED);
    }

    public void onAirplayStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) throws java.lang.IllegalStateException, java.lang.UnsupportedOperationException, java.io.IOException {
        f.a.i.c.b ecAudioTrack;
        if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !this.isVrStarted) {
            e.e.a.g.a("AudioPlayer onStart type==ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !isVrStarted, return");
            return;
        }
        java.lang.String strName = eCAudioType.name();
        if (this.trackCache.containsKey(strName)) {
            ecAudioTrack = this.trackCache.get(strName);
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC) {
                e.e.a.g.a("initAudioTrack clear music cache");
                onInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC);
            }
        } else {
            ecAudioTrack = getEcAudioTrack();
            this.trackCache.put(strName, ecAudioTrack);
            e.e.a.g.a("initAudioTrack put ecAudioTrack = " + ecAudioTrack + " name = " + strName);
        }
        this.mAudioStopMap.put(strName, java.lang.Boolean.FALSE);
        e.e.a.g.a("AudioPlayer initAudioTrack ecAudioType = " + strName);
        if (!this.mPlayerMap.containsKey(strName)) {
            f.a.i.c.a.g gVar = new f.a.i.c.a.g(eCAudioType);
            this.mPlayerMap.put(strName, gVar);
            this.mExecutorService.execute(gVar);
        }
        android.content.Context context = this.mContext;
        if (ecAudioTrack == null) {
            throw null;
        }
        ecAudioTrack.d(context, eCAudioType, eCAudioInfo, 3);
        sendFocusRequestMessage(eCAudioType);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        f.a.i.i.q qVar;
        net.easyconn.ecsdk.ECTypes.ECCarStatusType eCCarStatusType;
        net.easyconn.ecsdk.ECTypes.ECCarStatusValue eCCarStatusValue;
        e.e.a.g.e(e.a.c.a.a.K("onAudioFocusChange focusChange is ", i), new java.lang.Object[0]);
        if (i == -3) {
            java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable = this.ecAudioTypeFocusMap;
            net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS;
            hashtable.put("EC_AUDIO_TYPE_TTS", java.lang.Boolean.FALSE);
            java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable2 = this.ecAudioTypeFocusMap;
            net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType2 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE;
            hashtable2.put("EC_AUDIO_TYPE_TALKIE", java.lang.Boolean.FALSE);
            qVar = mSdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_FADEDOWN_FUCUS_LOSS;
        } else if (i == -2) {
            java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable3 = this.ecAudioTypeFocusMap;
            net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType3 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR;
            hashtable3.put("EC_AUDIO_TYPE_VR", java.lang.Boolean.FALSE);
            java.util.Hashtable<java.lang.String, java.lang.Boolean> hashtable4 = this.ecAudioTypeFocusMap;
            net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType4 = net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS;
            hashtable4.put("EC_AUDIO_TYPE_TTS", java.lang.Boolean.FALSE);
            qVar = mSdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_SHORT_FUCUS_LOSS;
        } else if (i == -1) {
            qVar = mSdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_LONG_FUCUS_LOSS;
        } else if (i == 1) {
            qVar = mSdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_LONG_FUCUS_GAIN;
        } else if (i == 2) {
            qVar = mSdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_SHORT_FUCUS_GAIN;
        } else {
            if (i != 3) {
                return;
            }
            qVar = mSdkManager;
            eCCarStatusType = net.easyconn.ecsdk.ECTypes.ECCarStatusType.EC_CAR_AUDIO_FOCUS_CHANGE;
            eCCarStatusValue = net.easyconn.ecsdk.ECTypes.ECCarStatusValue.EC_CAR_STATUS_FADEDOWN_FUCUS_GAIN;
        }
        qVar.c0(eCCarStatusType, eCCarStatusValue);
    }

    @Override // f.a.i.h.a
    public int onCarMicRecord(boolean z, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) {
        e.a.c.a.a.z("onCarMicRecord isStart = ", z);
        if (z) {
            this.mECAudioInfo = eCAudioInfo;
            f.a.i.h.h hVar = this.mPermissionRequestListener;
            if (hVar != null) {
                if (!(d.g.f.a.a((f.a.k.g0) hVar, "android.permission.RECORD_AUDIO") == 0)) {
                    f.a.k.g0 g0Var = (f.a.k.g0) this.mPermissionRequestListener;
                    if (g0Var == null) {
                        throw null;
                    }
                    e.a.c.a.a.C(e.a.c.a.a.o("requestAudioRecordPermission start, isAudioRecordPermissionRequesting = "), g0Var.I);
                    if (!g0Var.I) {
                        g0Var.I = true;
                        d.g.e.a.m(g0Var, new java.lang.String[]{"android.permission.RECORD_AUDIO"}, 10001);
                        e.e.a.g.a("requestAudioRecordPermission end");
                    }
                    return 0;
                }
            }
            startRecord();
        } else {
            stopRecord();
        }
        return 0;
    }

    @Override // f.a.i.h.a
    public void onData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2) {
        java.lang.String strName = eCAudioType.name();
        f.a.i.c.a.g gVar = this.mPlayerMap.get(strName);
        if (gVar == null) {
            e.e.a.g.c("player == null return", new java.lang.Object[0]);
            return;
        }
        if (isOnDataReturn(eCAudioType, bArr, i, i2)) {
            e.e.a.g.c("onData isOnDataReturn", new java.lang.Object[0]);
            return;
        }
        if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC && mSdkManager.b.f2893d == net.easyconn.ecsdk.ECTypes.ECTransportType.EC_TRANSPORT_IOS_WIFI_AIRPLAY && !this.ecAudioTypeFocusMap.get(strName).booleanValue()) {
            e.e.a.g.c("onData return because is Airplay And no focus", new java.lang.Object[0]);
            return;
        }
        if (!this.mCacheQueueMap.containsKey(strName)) {
            e.e.a.g.c(e.a.c.a.a.e("AudioPlayer onData mCacheQueueMap not containsKey :", strName), new java.lang.Object[0]);
            return;
        }
        gVar.c(i2);
        this.mCacheQueueMap.get(strName).offer(bArr);
        java.lang.Object obj = gVar.a;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    @Override // f.a.i.h.a
    public void onInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        e.e.a.g.a("AudioPlayer type = " + eCAudioType + " onInterrupt");
        if (this.mCacheQueueMap.containsKey(eCAudioType.name())) {
            this.mCacheQueueMap.get(eCAudioType.name()).clear();
        }
    }

    public void onMiracastStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) throws java.lang.IllegalStateException, java.lang.UnsupportedOperationException, java.io.IOException {
        f.a.i.c.b ecAudioTrack;
        if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !this.isVrStarted) {
            e.e.a.g.a("AudioPlayer onStart type==ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !isVrStarted, return");
            return;
        }
        java.lang.String strName = eCAudioType.name();
        if (this.trackCache.containsKey(strName)) {
            ecAudioTrack = this.trackCache.get(strName);
            if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC) {
                e.e.a.g.a("initAudioTrack clear music cache");
                onInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC);
            }
        } else {
            ecAudioTrack = getEcAudioTrack();
            this.trackCache.put(strName, ecAudioTrack);
            e.e.a.g.a("initAudioTrack put ecAudioTrack = " + ecAudioTrack + " name = " + strName);
        }
        this.mAudioStopMap.put(strName, java.lang.Boolean.FALSE);
        e.e.a.g.a("AudioPlayer initAudioTrack ecAudioType = " + strName);
        if (!this.mPlayerMap.containsKey(strName)) {
            f.a.i.c.a.g gVar = new f.a.i.c.a.g(eCAudioType);
            this.mPlayerMap.put(strName, gVar);
            this.mExecutorService.execute(gVar);
        }
        android.content.Context context = this.mContext;
        if (ecAudioTrack == null) {
            throw null;
        }
        ecAudioTrack.d(context, eCAudioType, eCAudioInfo, 3);
        sendFocusRequestMessage(eCAudioType);
    }

    @Override // f.a.i.h.a
    public void onMusicInfo(net.easyconn.ecsdk.ECTypes.ECAppMusicInfo eCAppMusicInfo) {
    }

    @Override // f.a.i.h.a
    public void onQtData(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2) {
        java.lang.String strName = eCAudioType.name();
        f.a.i.c.a.g gVar = this.mPlayerMap.get("EC_AUDIO_TYPE_QT");
        if (gVar == null) {
            e.e.a.g.c("player == null return", new java.lang.Object[0]);
            return;
        }
        if (!this.ecAudioTypeFocusMap.get(eCAudioType.name()).booleanValue()) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("onData return because ");
            sbO.append(eCAudioType.name());
            sbO.append("is no focus");
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            return;
        }
        if (this.mCacheQueueMap.containsKey(strName)) {
            gVar.c(i2);
            this.mCacheQueueMap.get(strName).offer(bArr);
            java.lang.Object obj = gVar.a;
            synchronized (obj) {
                obj.notifyAll();
            }
        }
    }

    @Override // f.a.i.h.a
    public void onQtStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) throws java.lang.IllegalStateException, java.lang.UnsupportedOperationException, java.io.IOException {
        f.a.i.c.b ecAudioTrack;
        java.lang.StringBuilder sbO = e.a.c.a.a.o(" AudioPlayer onStart ");
        sbO.append(java.lang.Thread.currentThread().getId());
        e.e.a.g.a(sbO.toString());
        java.lang.String strName = eCAudioType.name();
        if (this.trackCache.containsKey(strName)) {
            ecAudioTrack = this.trackCache.get(strName);
        } else {
            ecAudioTrack = getEcAudioTrack();
            this.trackCache.put(strName, ecAudioTrack);
        }
        this.mAudioStopMap.put(strName, java.lang.Boolean.FALSE);
        e.e.a.g.a("AudioPlayer initAudioTrack ecAudioType = " + strName);
        if (!this.mPlayerMap.containsKey("EC_AUDIO_TYPE_QT")) {
            f.a.i.c.a.g gVar = new f.a.i.c.a.g(eCAudioType, true);
            this.mPlayerMap.put("EC_AUDIO_TYPE_QT", gVar);
            this.mExecutorService.execute(gVar);
        }
        sendFocusRequestMessage(eCAudioType);
        android.content.Context context = this.mContext;
        if (ecAudioTrack == null) {
            throw null;
        }
        ecAudioTrack.d(context, eCAudioType, eCAudioInfo, 3);
    }

    @Override // f.a.i.h.a
    public void onQtStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) throws java.lang.IllegalStateException {
        onStop(eCAudioType);
    }

    @Override // f.a.i.h.a
    public void onStart(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, net.easyconn.ecsdk.ECTypes.ECAudioInfo eCAudioInfo) throws java.lang.IllegalStateException, java.lang.UnsupportedOperationException, java.lang.InterruptedException, java.io.IOException {
        f.a.i.c.b ecAudioTrack;
        java.lang.String str;
        java.lang.StringBuilder sbO = e.a.c.a.a.o(" AudioPlayer onStart ");
        sbO.append(java.lang.Thread.currentThread().getId());
        e.e.a.g.a(sbO.toString());
        if (!mSdkManager.T) {
            str = "AudioPlayer onStart mirrorConnectionOpen false return";
        } else {
            if (eCAudioType != net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR || this.isVrStarted) {
                java.lang.String strName = eCAudioType.name();
                if (this.trackCache.containsKey(strName)) {
                    ecAudioTrack = this.trackCache.get(strName);
                    if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC) {
                        e.e.a.g.a("initAudioTrack clear music cache");
                        onInterrupt(net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC);
                    }
                } else {
                    ecAudioTrack = getEcAudioTrack();
                    this.trackCache.put(strName, ecAudioTrack);
                    e.e.a.g.a("initAudioTrack put ecAudioTrack = " + ecAudioTrack + " name = " + strName);
                }
                this.mAudioStopMap.put(strName, java.lang.Boolean.FALSE);
                e.e.a.g.a("AudioPlayer initAudioTrack ecAudioType = " + strName);
                if (!this.mPlayerMap.containsKey(strName)) {
                    f.a.i.c.a.g gVar = new f.a.i.c.a.g(eCAudioType);
                    this.mPlayerMap.put(strName, gVar);
                    this.mExecutorService.execute(gVar);
                }
                android.content.Context context = this.mContext;
                if (ecAudioTrack == null) {
                    throw null;
                }
                ecAudioTrack.d(context, eCAudioType, eCAudioInfo, 3);
                sendFocusRequestMessage(eCAudioType);
                if (eCAudioType == net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR) {
                    for (int i = 0; i < 20; i++) {
                        if (this.ecAudioTypeFocusMap.get(eCAudioType.name()).booleanValue()) {
                            e.e.a.g.c("AudioPlayer onStart wait vr focus ok, break", new java.lang.Object[0]);
                            return;
                        }
                        e.e.a.g.c(e.a.c.a.a.K("AudioPlayer onStart wait vr focus , count = ", i), new java.lang.Object[0]);
                        try {
                            java.lang.Thread.sleep(100L);
                        } catch (java.lang.InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return;
                }
                return;
            }
            str = "AudioPlayer onStart type==ECTypes.ECAudioType.EC_AUDIO_TYPE_VR && !isVrStarted, return";
        }
        e.e.a.g.a(str);
    }

    @Override // f.a.i.h.a
    public void onStop(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) throws java.lang.IllegalStateException {
        f.a.i.c.a.g gVar;
        java.lang.String strName = eCAudioType.name();
        e.a.c.a.a.w("AudioPlayer onStop begin ecAudioType = ", strName);
        this.mAudioStopMap.put(strName, java.lang.Boolean.TRUE);
        if (this.mAudioPlayEndMap.get(strName) == null) {
            return;
        }
        if (this.mAudioPlayEndMap.get(strName).booleanValue()) {
            sendAudioPlayEnd(eCAudioType);
            java.util.Hashtable<java.lang.String, f.a.i.c.a.g> hashtable = this.mPlayerMap;
            if (hashtable != null && (gVar = hashtable.get(strName)) != null) {
                gVar.b();
            }
        }
        e.a.c.a.a.w("AudioPlayer onStop end ecAudioType = ", strName);
    }

    @Override // f.a.i.h.a
    public void onTalkieRecordStatus(boolean z) {
        android.os.Handler handler;
        this.isVrStarted = z;
        if (z || (handler = this.audioManagerHandler) == null) {
            return;
        }
        handler.obtainMessage(1, net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR).sendToTarget();
    }

    @Override // f.a.i.h.a
    public void onVRStatus(boolean z) {
        android.os.Handler handler;
        this.isVrStarted = z;
        if (z || (handler = this.audioManagerHandler) == null) {
            return;
        }
        handler.obtainMessage(1, net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR).sendToTarget();
    }

    @Override // f.a.i.h.a
    public void onVoiceCMD(net.easyconn.ecsdk.ECTypes.ECCarCmd eCCarCmd) {
        e.e.a.g.e("onVoiceCMD cmd = " + eCCarCmd, new java.lang.Object[0]);
        android.content.Intent intent = new android.content.Intent(net.easyconn.framework.broadcast.BroadcastManager.BROADCAST_CARCONTROL_CMD);
        intent.putExtra("FunId", eCCarCmd.id);
        intent.putExtra("RegCmd", eCCarCmd.cmd);
        intent.putExtra("VrText", eCCarCmd.vrText);
        net.easyconn.framework.broadcast.BroadcastManager.sendBroadcast(this.mContext, intent);
    }

    @Override // f.a.i.h.a
    public void onVolume(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, float f2) {
        android.media.AudioTrack audioTrack;
        e.e.a.g.a("AudioPlayer type = " + eCAudioType + " volume = " + f2);
        java.lang.String strName = eCAudioType.name();
        if (!this.trackCache.containsKey(strName) || (audioTrack = ((f.a.i.d.a) this.trackCache.get(strName)).f2877e) == null) {
            return;
        }
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            audioTrack.setVolume(f2);
        } else {
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    public void onVolumeFadeDown() {
        if (!isVolumeFadeChange()) {
            e.e.a.g.a("onVolumeFadeDown is invalid");
            return;
        }
        if (this.mMusicVolumeFadedownAnimotor.isRunning()) {
            return;
        }
        if (this.mMusicVolumeFadeupAnimotor.isRunning()) {
            this.mMusicVolumeFadeupAnimotor.cancel();
        }
        float f2 = this.mCurrentMusicVolumeValue;
        float f3 = this.mMinVolume;
        if (f2 != f3) {
            this.mMusicVolumeFadedownAnimotor.setFloatValues(f2, f3);
            this.mMusicVolumeFadedownAnimotor.start();
        }
    }

    public void onVolumeFadeUp() {
        if (!isVolumeFadeChange()) {
            e.e.a.g.a("onVolumeFadeUp is invalid");
            return;
        }
        if (this.mMusicVolumeFadeupAnimotor.isRunning()) {
            return;
        }
        if (this.mMusicVolumeFadedownAnimotor.isRunning()) {
            this.mMusicVolumeFadedownAnimotor.cancel();
        }
        float f2 = this.mCurrentMusicVolumeValue;
        float f3 = this.mMaxVolume;
        if (f2 != f3) {
            this.mMusicVolumeFadeupAnimotor.setFloatValues(f2, f3);
            this.mMusicVolumeFadeupAnimotor.start();
        }
    }

    public void release() {
        e.e.a.g.a("AudioManager release");
        for (java.lang.String str : this.trackCache.keySet()) {
            doAbandonAudioFocus(net.easyconn.ecsdk.ECTypes.ECAudioType.valueOf(str));
            f.a.i.c.b bVar = this.trackCache.get(str);
            java.util.Iterator<java.lang.String> it = bVar.f2878f.keySet().iterator();
            while (it.hasNext()) {
                android.media.AudioTrack audioTrack = bVar.f2878f.get(it.next());
                if (audioTrack != null) {
                    if (audioTrack.getState() == 1 && audioTrack.getPlayState() != 1) {
                        audioTrack.stop();
                    }
                    audioTrack.flush();
                    audioTrack.release();
                }
            }
            if (bVar.f2875c || bVar.f2876d) {
                java.util.Iterator<java.lang.String> it2 = bVar.j.keySet().iterator();
                while (it2.hasNext()) {
                    java.io.FileOutputStream fileOutputStream = bVar.j.get(it2.next());
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (java.lang.Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
        releasePlayer();
        this.ecAudioTypeFocusMap.clear();
        this.ecAudioTypeRequestFocusMap.clear();
        this.mAudioStopMap.clear();
        this.mAudioPlayEndMap.clear();
        this.trackCache.clear();
        java.util.Iterator<java.util.concurrent.ConcurrentLinkedQueue<byte[]>> it3 = this.mCacheQueueMap.values().iterator();
        while (it3.hasNext()) {
            it3.next().clear();
        }
        this.mCacheQueueMap.clear();
        this.mExecutorService.shutdown();
        android.os.HandlerThread handlerThread = this.workThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    public void releaseFocus() {
        android.os.Handler handler = this.audioManagerHandler;
        if (handler != null) {
            handler.obtainMessage(1, net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_VR).sendToTarget();
            this.audioManagerHandler.obtainMessage(1, net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TTS).sendToTarget();
            this.audioManagerHandler.obtainMessage(1, net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_TALKIE).sendToTarget();
            android.os.Message messageObtainMessage = this.audioManagerHandler.obtainMessage(1, net.easyconn.ecsdk.ECTypes.ECAudioType.EC_AUDIO_TYPE_MUSIC);
            messageObtainMessage.arg1 = 1;
            messageObtainMessage.sendToTarget();
        }
    }

    public void releasePlayer() {
        java.util.Hashtable<java.lang.String, f.a.i.c.a.g> hashtable = this.mPlayerMap;
        if (hashtable != null) {
            java.util.Iterator<java.lang.String> it = hashtable.keySet().iterator();
            while (it.hasNext()) {
                f.a.i.c.a.g gVar = this.mPlayerMap.get(it.next());
                gVar.f2871d.set(true);
                java.lang.Object obj = gVar.a;
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
            this.mPlayerMap.clear();
        }
        java.util.Hashtable<java.lang.String, java.util.concurrent.ConcurrentLinkedQueue<byte[]>> hashtable2 = this.mCacheQueueMap;
        if (hashtable2 != null) {
            java.util.Iterator<java.lang.String> it2 = hashtable2.keySet().iterator();
            while (it2.hasNext()) {
                while (this.mCacheQueueMap.get(it2.next()).poll() != null) {
                }
            }
        }
    }

    public void sendAudioPlayEnd(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        f.a.i.i.q qVar = mSdkManager;
        if (qVar == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 21;
        messageObtain.obj = eCAudioType;
        qVar.r.sendMessage(messageObtain);
    }

    public void sendFocusRequestMessage(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        android.os.Handler handler;
        e.e.a.g.a("sendFocusRequestMessage type = " + eCAudioType + ", ecAudioTypeFocusMap.get(type.name()) = " + this.ecAudioTypeFocusMap.get(eCAudioType.name()));
        if (this.ecAudioTypeFocusMap.get(eCAudioType.name()).booleanValue() || (handler = this.audioManagerHandler) == null) {
            return;
        }
        handler.obtainMessage(0, eCAudioType).sendToTarget();
    }

    public void setAnimatorUpdateListener() {
    }

    public void setVolumeFadeChangeArea(float f2, float f3) {
        this.mMinVolume = f2;
        this.mMaxVolume = f3;
    }

    public void setmPermissionRequestListener(f.a.i.h.h hVar) {
        this.mPermissionRequestListener = hVar;
    }

    public synchronized void startRecord() {
        e.e.a.g.a("AbstractEcAudioManager startRecord start");
        if (this.mECAudioInfo == null) {
            return;
        }
        if (this.mEaseAudioRecord == null) {
            this.mEaseAudioRecord = new f.a.i.c.c(this.mECAudioInfo, this);
        }
        this.mEaseAudioRecord.a();
        e.e.a.g.a("AbstractEcAudioManager startRecord end");
    }

    public synchronized void stopRecord() {
        e.e.a.g.a("AbstractEcAudioManager stopRecord mEaseAudioRecord=" + this.mEaseAudioRecord);
        if (this.mEaseAudioRecord != null) {
            this.mEaseAudioRecord.b();
            f.a.i.c.c cVar = this.mEaseAudioRecord;
            if (cVar == null) {
                throw null;
            }
            e.e.a.g.a("EaseAudioRecord release");
            cVar.f2881d = false;
            android.media.AudioRecord audioRecord = cVar.a;
            if (audioRecord != null && audioRecord.getState() == 1) {
                e.e.a.g.a("EaseAudioRecord release1");
                cVar.a.release();
                e.e.a.g.a("EaseAudioRecord release2");
                cVar.a = null;
            }
            this.mEaseAudioRecord = null;
        }
    }

    public void unRegisterListener() {
        this.mPermissionRequestListener = null;
    }

    @Override // f.a.i.c.c.InterfaceC0081c
    public void uploadData(byte[] bArr, int i) {
        if (mSdkManager == null) {
            throw null;
        }
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.obj = bArr;
        messageObtain.arg1 = i;
        net.easyconn.ecsdk.ECSDK.getInstance().uploadAudioData((byte[]) messageObtain.obj, messageObtain.arg1);
    }
}
