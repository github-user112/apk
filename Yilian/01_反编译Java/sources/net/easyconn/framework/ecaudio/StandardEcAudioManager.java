package net.easyconn.framework.ecaudio;

/* loaded from: classes.dex */
public class StandardEcAudioManager extends f.a.i.c.a {
    public static boolean mIsUseMusicIntentReceiver = true;
    public android.media.AudioManager audioManager;
    public java.util.Hashtable<java.lang.String, android.media.AudioFocusRequest> focusCache;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ net.easyconn.ecsdk.ECTypes.ECAudioType a;
        public final /* synthetic */ int b;

        public a(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, int i) {
            this.a = eCAudioType;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.framework.ecaudio.StandardEcAudioManager.this.ecAudioTypeFocusMap.put(this.a.name(), java.lang.Boolean.valueOf(this.b == 1));
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ net.easyconn.ecsdk.ECTypes.ECAudioType a;
        public final /* synthetic */ int b;

        public b(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, int i) {
            this.a = eCAudioType;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            net.easyconn.framework.ecaudio.StandardEcAudioManager.this.ecAudioTypeFocusMap.put(this.a.name(), java.lang.Boolean.valueOf(this.b == 1));
        }
    }

    public static class c extends android.content.BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            f.a.i.i.q qVar;
            net.easyconn.ecsdk.ECTypes.ECBtnCode eCBtnCode;
            f.a.i.f.a aVar = f.a.i.f.a.logger;
            if (!net.easyconn.framework.ecaudio.StandardEcAudioManager.mIsUseMusicIntentReceiver) {
                e.e.a.g.c("MusicIntentReceiver return", new java.lang.Object[0]);
                return;
            }
            java.lang.String action = intent.getAction();
            e.e.a.g.c("MusicIntentReceiver onReceive intent = " + intent, new java.lang.Object[0]);
            aVar.a("MusicIntentReceiver onReceive action = " + action);
            if ("android.intent.action.MEDIA_BUTTON".equals(action)) {
                android.os.Bundle extras = intent.getExtras();
                if (extras == null) {
                    e.e.a.g.c("MusicIntentReceiver onReceive extras = null. return", new java.lang.Object[0]);
                    return;
                }
                java.lang.Object obj = extras.get("android.intent.extra.KEY_EVENT");
                if (obj instanceof android.view.KeyEvent) {
                    android.view.KeyEvent keyEvent = (android.view.KeyEvent) obj;
                    if (keyEvent.getAction() != 0) {
                        return;
                    }
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("MusicIntentReceiver keyCode:");
                    sbO.append(keyEvent.getKeyCode());
                    e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
                    aVar.a("MusicIntentReceiver keyCode:" + keyEvent.getKeyCode());
                    if (f.a.i.c.a.mSdkManager == null) {
                        e.e.a.g.c("MusicIntentReceiver mSdkManager is null", new java.lang.Object[0]);
                        f.a.i.f.a.InterfaceC0082a interfaceC0082a = aVar.a;
                        if (interfaceC0082a != null) {
                            interfaceC0082a.a("MusicIntentReceiver mSdkManager is null");
                            return;
                        }
                        return;
                    }
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 126) {
                        qVar = f.a.i.c.a.mSdkManager;
                        eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_PLAY;
                    } else if (keyCode != 127) {
                        switch (keyCode) {
                            case 86:
                                qVar = f.a.i.c.a.mSdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_STOP;
                                break;
                            case 87:
                                qVar = f.a.i.c.a.mSdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_NEXT;
                                break;
                            case 88:
                                qVar = f.a.i.c.a.mSdkManager;
                                eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_PREVIOUS;
                                break;
                            default:
                                return;
                        }
                    } else {
                        qVar = f.a.i.c.a.mSdkManager;
                        eCBtnCode = net.easyconn.ecsdk.ECTypes.ECBtnCode.EC_BTN_MUSIC_PAUSE;
                    }
                    qVar.b0(eCBtnCode, net.easyconn.ecsdk.ECTypes.ECBtnEventType.EC_BTN_TYPE_CLICK);
                }
            }
        }
    }

    public StandardEcAudioManager(f.a.i.i.q qVar, android.content.Context context) {
        super(qVar, context);
        this.focusCache = new java.util.Hashtable<>(4);
        this.audioManager = (android.media.AudioManager) context.getSystemService("audio");
        if (isUseMusicIntentReceiver()) {
            this.audioManager.registerMediaButtonEventReceiver(new android.content.ComponentName(context, (java.lang.Class<?>) net.easyconn.framework.ecaudio.StandardEcAudioManager.c.class));
        }
        mIsUseMusicIntentReceiver = isUseMusicIntentReceiver();
    }

    public boolean allowUseHighLevelAudioTocus() {
        e.e.a.g.a("StandardEcAudioManager allowUseHighLevelAudioTocus is true");
        return true;
    }

    @Override // f.a.i.c.a
    public void doAbandonAudioFocus(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType) {
        boolean z;
        java.lang.String string;
        f.a.i.f.a aVar = f.a.i.f.a.logger;
        e.e.a.g.a("doAbandonAudioFocus Method Start");
        if (eCAudioType == null) {
            e.e.a.g.a("doAbandonAudioFocus error: ecAudioType = null ecAudioType = " + eCAudioType);
            return;
        }
        this.ecAudioTypeFocusMap.put(eCAudioType.name(), java.lang.Boolean.FALSE);
        this.ecAudioTypeRequestFocusMap.put(eCAudioType.name(), java.lang.Boolean.FALSE);
        if (android.os.Build.VERSION.SDK_INT < 26 || !allowUseHighLevelAudioTocus()) {
            z = this.audioManager.abandonAudioFocus(getAudioFocusChangeListenerByType(eCAudioType)) == 1;
            e.e.a.g.a("doAbandonAudioFocus < version O complete,  ecAudioType = " + eCAudioType + " result is " + z);
            string = "doAbandonAudioFocus < version O complete,  ecAudioType = " + eCAudioType + " result is " + z;
        } else {
            android.media.AudioFocusRequest audioFocusRequest = this.focusCache.get(eCAudioType.name());
            if (audioFocusRequest == null) {
                e.e.a.g.a("doAbandonAudioFocus >= version O error, audioFocusRequest = null ecAudioType = " + eCAudioType);
                return;
            }
            z = this.audioManager.abandonAudioFocusRequest(audioFocusRequest) == 1;
            e.e.a.g.a("doAbandonAudioFocus >= version O complete, ecAudioType = " + eCAudioType + " result is " + z);
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("doAbandonAudioFocus >= version O complete, result is ");
            sb.append(z);
            string = sb.toString();
        }
        aVar.a(string);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0183  */
    @Override // f.a.i.c.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doRequestAudioFocus(net.easyconn.ecsdk.ECTypes.ECAudioType r12) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.easyconn.framework.ecaudio.StandardEcAudioManager.doRequestAudioFocus(net.easyconn.ecsdk.ECTypes$ECAudioType):void");
    }

    @Override // f.a.i.c.a
    public f.a.i.c.b getEcAudioTrack() {
        return new f.a.i.d.a(allowUseHighLevelAudioTocus());
    }

    public int getVrFocusResultDelayTime() {
        return 0;
    }

    @Override // f.a.i.c.a
    public boolean isOnDataReturn(net.easyconn.ecsdk.ECTypes.ECAudioType eCAudioType, byte[] bArr, int i, int i2) {
        return false;
    }

    public boolean isUseMusicIntentReceiver() {
        return false;
    }

    @Override // f.a.i.c.a
    public void release() {
        super.release();
        if (isUseMusicIntentReceiver()) {
            this.audioManager.unregisterMediaButtonEventReceiver(new android.content.ComponentName(this.mContext, (java.lang.Class<?>) net.easyconn.framework.ecaudio.StandardEcAudioManager.c.class));
        }
    }
}
