package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class AudioFocusManager {
    public static final int AUDIO_FOCUS_STATE_HAVE_FOCUS = 1;
    public static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT = 2;
    public static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK = 3;
    public static final int AUDIO_FOCUS_STATE_NO_FOCUS = 0;
    public static final int PLAYER_COMMAND_DO_NOT_PLAY = -1;
    public static final int PLAYER_COMMAND_PLAY_WHEN_READY = 1;
    public static final int PLAYER_COMMAND_WAIT_FOR_CALLBACK = 0;
    public static final java.lang.String TAG = "AudioFocusManager";
    public static final float VOLUME_MULTIPLIER_DEFAULT = 1.0f;
    public static final float VOLUME_MULTIPLIER_DUCK = 0.2f;
    public com.google.android.exoplayer2.audio.AudioAttributes audioAttributes;
    public android.media.AudioFocusRequest audioFocusRequest;
    public final android.media.AudioManager audioManager;
    public int focusGainToRequest;
    public final com.google.android.exoplayer2.AudioFocusManager.AudioFocusListener focusListener;
    public com.google.android.exoplayer2.AudioFocusManager.PlayerControl playerControl;
    public boolean rebuildAudioFocusRequest;
    public float volumeMultiplier = 1.0f;
    public int audioFocusState = 0;

    public class AudioFocusListener implements android.media.AudioManager.OnAudioFocusChangeListener {
        public final android.os.Handler eventHandler;

        public AudioFocusListener(android.os.Handler handler) {
            this.eventHandler = handler;
        }

        public /* synthetic */ void a(int i) {
            com.google.android.exoplayer2.AudioFocusManager.this.handlePlatformAudioFocusChange(i);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            this.eventHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(i);
                }
            });
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface PlayerCommand {
    }

    public interface PlayerControl {
        void executePlayerCommand(int i);

        void setVolumeMultiplier(float f2);
    }

    public AudioFocusManager(android.content.Context context, android.os.Handler handler, com.google.android.exoplayer2.AudioFocusManager.PlayerControl playerControl) {
        this.audioManager = (android.media.AudioManager) com.google.android.exoplayer2.util.Assertions.checkNotNull((android.media.AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.playerControl = playerControl;
        this.focusListener = new com.google.android.exoplayer2.AudioFocusManager.AudioFocusListener(handler);
    }

    private void abandonAudioFocusDefault() {
        this.audioManager.abandonAudioFocus(this.focusListener);
    }

    private void abandonAudioFocusIfHeld() {
        if (this.audioFocusState == 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 26) {
            abandonAudioFocusV26();
        } else {
            abandonAudioFocusDefault();
        }
        setAudioFocusState(0);
    }

    private void abandonAudioFocusV26() {
        android.media.AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
        if (audioFocusRequest != null) {
            this.audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    public static int convertAudioAttributesToFocusGain(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            return 0;
        }
        int i = audioAttributes.usage;
        switch (i) {
            case 0:
                com.google.android.exoplayer2.util.Log.w(TAG, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (audioAttributes.contentType == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                e.a.c.a.a.t(37, "Unidentified audio usage: ", i, TAG);
                return 0;
            case 16:
                return com.google.android.exoplayer2.util.Util.SDK_INT >= 19 ? 4 : 2;
        }
    }

    private void executePlayerCommand(int i) {
        com.google.android.exoplayer2.AudioFocusManager.PlayerControl playerControl = this.playerControl;
        if (playerControl != null) {
            playerControl.executePlayerCommand(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePlatformAudioFocusChange(int i) {
        int i2;
        if (i == -3 || i == -2) {
            if (i == -2 || willPauseWhenDucked()) {
                executePlayerCommand(0);
                i2 = 2;
            } else {
                i2 = 3;
            }
            setAudioFocusState(i2);
            return;
        }
        if (i == -1) {
            executePlayerCommand(-1);
            abandonAudioFocusIfHeld();
        } else if (i != 1) {
            e.a.c.a.a.t(38, "Unknown focus change type: ", i, TAG);
        } else {
            setAudioFocusState(1);
            executePlayerCommand(1);
        }
    }

    private int requestAudioFocus() {
        if (this.audioFocusState == 1) {
            return 1;
        }
        if ((com.google.android.exoplayer2.util.Util.SDK_INT >= 26 ? requestAudioFocusV26() : requestAudioFocusDefault()) == 1) {
            setAudioFocusState(1);
            return 1;
        }
        setAudioFocusState(0);
        return -1;
    }

    private int requestAudioFocusDefault() {
        return this.audioManager.requestAudioFocus(this.focusListener, com.google.android.exoplayer2.util.Util.getStreamTypeForAudioUsage(((com.google.android.exoplayer2.audio.AudioAttributes) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioAttributes)).usage), this.focusGainToRequest);
    }

    private int requestAudioFocusV26() {
        if (this.audioFocusRequest == null || this.rebuildAudioFocusRequest) {
            this.audioFocusRequest = (this.audioFocusRequest == null ? new android.media.AudioFocusRequest.Builder(this.focusGainToRequest) : new android.media.AudioFocusRequest.Builder(this.audioFocusRequest)).setAudioAttributes(((com.google.android.exoplayer2.audio.AudioAttributes) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioAttributes)).getAudioAttributesV21()).setWillPauseWhenDucked(willPauseWhenDucked()).setOnAudioFocusChangeListener(this.focusListener).build();
            this.rebuildAudioFocusRequest = false;
        }
        return this.audioManager.requestAudioFocus(this.audioFocusRequest);
    }

    private void setAudioFocusState(int i) {
        if (this.audioFocusState == i) {
            return;
        }
        this.audioFocusState = i;
        float f2 = i == 3 ? 0.2f : 1.0f;
        if (this.volumeMultiplier == f2) {
            return;
        }
        this.volumeMultiplier = f2;
        com.google.android.exoplayer2.AudioFocusManager.PlayerControl playerControl = this.playerControl;
        if (playerControl != null) {
            playerControl.setVolumeMultiplier(f2);
        }
    }

    private boolean shouldAbandonAudioFocusIfHeld(int i) {
        return i == 1 || this.focusGainToRequest != 1;
    }

    private boolean willPauseWhenDucked() {
        com.google.android.exoplayer2.audio.AudioAttributes audioAttributes = this.audioAttributes;
        return audioAttributes != null && audioAttributes.contentType == 1;
    }

    public android.media.AudioManager.OnAudioFocusChangeListener getFocusListener() {
        return this.focusListener;
    }

    public float getVolumeMultiplier() {
        return this.volumeMultiplier;
    }

    public void release() {
        this.playerControl = null;
        abandonAudioFocusIfHeld();
    }

    public void setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes) {
        if (com.google.android.exoplayer2.util.Util.areEqual(this.audioAttributes, audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        int iConvertAudioAttributesToFocusGain = convertAudioAttributesToFocusGain(audioAttributes);
        this.focusGainToRequest = iConvertAudioAttributesToFocusGain;
        boolean z = true;
        if (iConvertAudioAttributesToFocusGain != 1 && iConvertAudioAttributesToFocusGain != 0) {
            z = false;
        }
        com.google.android.exoplayer2.util.Assertions.checkArgument(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int updateAudioFocus(boolean z, int i) {
        if (shouldAbandonAudioFocusIfHeld(i)) {
            abandonAudioFocusIfHeld();
            return z ? 1 : -1;
        }
        if (z) {
            return requestAudioFocus();
        }
        return -1;
    }
}
