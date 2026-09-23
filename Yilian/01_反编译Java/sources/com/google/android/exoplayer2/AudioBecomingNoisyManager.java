package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class AudioBecomingNoisyManager {
    public final android.content.Context context;
    public final com.google.android.exoplayer2.AudioBecomingNoisyManager.AudioBecomingNoisyReceiver receiver;
    public boolean receiverRegistered;

    public final class AudioBecomingNoisyReceiver extends android.content.BroadcastReceiver implements java.lang.Runnable {
        public final android.os.Handler eventHandler;
        public final com.google.android.exoplayer2.AudioBecomingNoisyManager.EventListener listener;

        public AudioBecomingNoisyReceiver(android.os.Handler handler, com.google.android.exoplayer2.AudioBecomingNoisyManager.EventListener eventListener) {
            this.eventHandler = handler;
            this.listener = eventListener;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.google.android.exoplayer2.AudioBecomingNoisyManager.this.receiverRegistered) {
                this.listener.onAudioBecomingNoisy();
            }
        }
    }

    public interface EventListener {
        void onAudioBecomingNoisy();
    }

    public AudioBecomingNoisyManager(android.content.Context context, android.os.Handler handler, com.google.android.exoplayer2.AudioBecomingNoisyManager.EventListener eventListener) {
        this.context = context.getApplicationContext();
        this.receiver = new com.google.android.exoplayer2.AudioBecomingNoisyManager.AudioBecomingNoisyReceiver(handler, eventListener);
    }

    public void setEnabled(boolean z) {
        boolean z2;
        if (z && !this.receiverRegistered) {
            this.context.registerReceiver(this.receiver, new android.content.IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            z2 = true;
        } else {
            if (z || !this.receiverRegistered) {
                return;
            }
            this.context.unregisterReceiver(this.receiver);
            z2 = false;
        }
        this.receiverRegistered = z2;
    }
}
