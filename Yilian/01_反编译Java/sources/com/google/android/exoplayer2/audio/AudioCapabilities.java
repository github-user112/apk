package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class AudioCapabilities {
    public static final int DEFAULT_MAX_CHANNEL_COUNT = 8;
    public static final int DEFAULT_SAMPLE_RATE_HZ = 48000;
    public static final java.lang.String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    public final int maxChannelCount;
    public final int[] supportedEncodings;
    public static final com.google.android.exoplayer2.audio.AudioCapabilities DEFAULT_AUDIO_CAPABILITIES = new com.google.android.exoplayer2.audio.AudioCapabilities(new int[]{2}, 8);
    public static final com.google.android.exoplayer2.audio.AudioCapabilities EXTERNAL_SURROUND_SOUND_CAPABILITIES = new com.google.android.exoplayer2.audio.AudioCapabilities(new int[]{2, 5, 6}, 8);
    public static final int[] ALL_SURROUND_ENCODINGS = {5, 6, 18, 17, 14, 7, 8};

    public static final class Api29 {
        public static int[] getDirectPlaybackSupportedEncodings() {
            e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
            for (int i : com.google.android.exoplayer2.audio.AudioCapabilities.ALL_SURROUND_ENCODINGS) {
                if (android.media.AudioTrack.isDirectPlaybackSupported(new android.media.AudioFormat.Builder().setChannelMask(12).setEncoding(i).setSampleRate(48000).build(), new android.media.AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build())) {
                    aVarJ.b(java.lang.Integer.valueOf(i));
                }
            }
            aVarJ.b(2);
            return d.s.y.a0(aVarJ.c());
        }
    }

    public AudioCapabilities(int[] iArr, int i) {
        if (iArr != null) {
            int[] iArrCopyOf = java.util.Arrays.copyOf(iArr, iArr.length);
            this.supportedEncodings = iArrCopyOf;
            java.util.Arrays.sort(iArrCopyOf);
        } else {
            this.supportedEncodings = new int[0];
        }
        this.maxChannelCount = i;
    }

    public static boolean deviceMaySetExternalSurroundSoundGlobalSetting() {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 17 && ("Amazon".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) || "Xiaomi".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER));
    }

    public static com.google.android.exoplayer2.audio.AudioCapabilities getCapabilities(android.content.Context context) {
        return getCapabilities(context, context.registerReceiver(null, new android.content.IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    public static com.google.android.exoplayer2.audio.AudioCapabilities getCapabilities(android.content.Context context, android.content.Intent intent) {
        return (deviceMaySetExternalSurroundSoundGlobalSetting() && android.provider.Settings.Global.getInt(context.getContentResolver(), EXTERNAL_SURROUND_SOUND_KEY, 0) == 1) ? EXTERNAL_SURROUND_SOUND_CAPABILITIES : (com.google.android.exoplayer2.util.Util.SDK_INT < 29 || !(com.google.android.exoplayer2.util.Util.isTv(context) || com.google.android.exoplayer2.util.Util.isAutomotive(context))) ? (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? DEFAULT_AUDIO_CAPABILITIES : new com.google.android.exoplayer2.audio.AudioCapabilities(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : new com.google.android.exoplayer2.audio.AudioCapabilities(com.google.android.exoplayer2.audio.AudioCapabilities.Api29.getDirectPlaybackSupportedEncodings(), 8);
    }

    public static android.net.Uri getExternalSurroundSoundGlobalSettingUri() {
        if (deviceMaySetExternalSurroundSoundGlobalSetting()) {
            return android.provider.Settings.Global.getUriFor(EXTERNAL_SURROUND_SOUND_KEY);
        }
        return null;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof com.google.android.exoplayer2.audio.AudioCapabilities)) {
            return false;
        }
        com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities = (com.google.android.exoplayer2.audio.AudioCapabilities) obj;
        return java.util.Arrays.equals(this.supportedEncodings, audioCapabilities.supportedEncodings) && this.maxChannelCount == audioCapabilities.maxChannelCount;
    }

    public int getMaxChannelCount() {
        return this.maxChannelCount;
    }

    public int hashCode() {
        return (java.util.Arrays.hashCode(this.supportedEncodings) * 31) + this.maxChannelCount;
    }

    public boolean supportsEncoding(int i) {
        return java.util.Arrays.binarySearch(this.supportedEncodings, i) >= 0;
    }

    public java.lang.String toString() {
        int i = this.maxChannelCount;
        java.lang.String string = java.util.Arrays.toString(this.supportedEncodings);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(string).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(string);
        sb.append("]");
        return sb.toString();
    }
}
