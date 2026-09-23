package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class StreamVolumeManager {
    public static final java.lang.String TAG = "StreamVolumeManager";
    public static final java.lang.String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    public static final int VOLUME_FLAGS = 1;
    public final android.content.Context applicationContext;
    public final android.media.AudioManager audioManager;
    public final android.os.Handler eventHandler;
    public final com.google.android.exoplayer2.StreamVolumeManager.Listener listener;
    public boolean muted;
    public com.google.android.exoplayer2.StreamVolumeManager.VolumeChangeReceiver receiver;
    public int streamType;
    public int volume;

    public interface Listener {
        void onStreamTypeChanged(int i);

        void onStreamVolumeChanged(int i, boolean z);
    }

    public final class VolumeChangeReceiver extends android.content.BroadcastReceiver {
        public VolumeChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            android.os.Handler handler = com.google.android.exoplayer2.StreamVolumeManager.this.eventHandler;
            final com.google.android.exoplayer2.StreamVolumeManager streamVolumeManager = com.google.android.exoplayer2.StreamVolumeManager.this;
            handler.post(new java.lang.Runnable() { // from class: e.c.a.a.o1
                @Override // java.lang.Runnable
                public final void run() {
                    streamVolumeManager.updateVolumeAndNotifyIfChanged();
                }
            });
        }
    }

    public StreamVolumeManager(android.content.Context context, android.os.Handler handler, com.google.android.exoplayer2.StreamVolumeManager.Listener listener) {
        android.content.Context applicationContext = context.getApplicationContext();
        this.applicationContext = applicationContext;
        this.eventHandler = handler;
        this.listener = listener;
        android.media.AudioManager audioManager = (android.media.AudioManager) com.google.android.exoplayer2.util.Assertions.checkStateNotNull((android.media.AudioManager) applicationContext.getSystemService("audio"));
        this.audioManager = audioManager;
        this.streamType = 3;
        this.volume = getVolumeFromManager(audioManager, 3);
        this.muted = getMutedFromManager(this.audioManager, this.streamType);
        com.google.android.exoplayer2.StreamVolumeManager.VolumeChangeReceiver volumeChangeReceiver = new com.google.android.exoplayer2.StreamVolumeManager.VolumeChangeReceiver();
        try {
            this.applicationContext.registerReceiver(volumeChangeReceiver, new android.content.IntentFilter(VOLUME_CHANGED_ACTION));
            this.receiver = volumeChangeReceiver;
        } catch (java.lang.RuntimeException e2) {
            com.google.android.exoplayer2.util.Log.w(TAG, "Error registering stream volume receiver", e2);
        }
    }

    public static boolean getMutedFromManager(android.media.AudioManager audioManager, int i) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 23 ? audioManager.isStreamMute(i) : getVolumeFromManager(audioManager, i) == 0;
    }

    public static int getVolumeFromManager(android.media.AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (java.lang.RuntimeException e2) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i);
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString(), e2);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVolumeAndNotifyIfChanged() {
        int volumeFromManager = getVolumeFromManager(this.audioManager, this.streamType);
        boolean mutedFromManager = getMutedFromManager(this.audioManager, this.streamType);
        if (this.volume == volumeFromManager && this.muted == mutedFromManager) {
            return;
        }
        this.volume = volumeFromManager;
        this.muted = mutedFromManager;
        this.listener.onStreamVolumeChanged(volumeFromManager, mutedFromManager);
    }

    public void decreaseVolume() {
        if (this.volume <= getMinVolume()) {
            return;
        }
        this.audioManager.adjustStreamVolume(this.streamType, -1, 1);
        updateVolumeAndNotifyIfChanged();
    }

    public int getMaxVolume() {
        return this.audioManager.getStreamMaxVolume(this.streamType);
    }

    public int getMinVolume() {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 28) {
            return this.audioManager.getStreamMinVolume(this.streamType);
        }
        return 0;
    }

    public int getVolume() {
        return this.volume;
    }

    public void increaseVolume() {
        if (this.volume >= getMaxVolume()) {
            return;
        }
        this.audioManager.adjustStreamVolume(this.streamType, 1, 1);
        updateVolumeAndNotifyIfChanged();
    }

    public boolean isMuted() {
        return this.muted;
    }

    public void release() {
        com.google.android.exoplayer2.StreamVolumeManager.VolumeChangeReceiver volumeChangeReceiver = this.receiver;
        if (volumeChangeReceiver != null) {
            try {
                this.applicationContext.unregisterReceiver(volumeChangeReceiver);
            } catch (java.lang.RuntimeException e2) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Error unregistering stream volume receiver", e2);
            }
            this.receiver = null;
        }
    }

    public void setMuted(boolean z) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 23) {
            this.audioManager.adjustStreamVolume(this.streamType, z ? -100 : 100, 1);
        } else {
            this.audioManager.setStreamMute(this.streamType, z);
        }
        updateVolumeAndNotifyIfChanged();
    }

    public void setStreamType(int i) {
        if (this.streamType == i) {
            return;
        }
        this.streamType = i;
        updateVolumeAndNotifyIfChanged();
        this.listener.onStreamTypeChanged(i);
    }

    public void setVolume(int i) {
        if (i < getMinVolume() || i > getMaxVolume()) {
            return;
        }
        this.audioManager.setStreamVolume(this.streamType, i, 1);
        updateVolumeAndNotifyIfChanged();
    }
}
