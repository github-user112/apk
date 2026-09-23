package net.easyconn.jni;

/* loaded from: classes.dex */
public class PlatinumReflection {
    public static final java.lang.String GET_PARAM_MEDIA_DURATION = "get_param_media_duration";
    public static final java.lang.String GET_PARAM_MEDIA_PLAYINGSTATE = "get_param_media_playingstate";
    public static final java.lang.String GET_PARAM_MEDIA_POSITION = "get_param_media_position";
    public static final java.lang.String GET_RENDERER_TOCONTRPOINT_CMD = "get_dlna_renderer_tocontrolpointer.cmd";
    public static final java.lang.String MEDIA_PLAYINGSTATE_NOMEDIA = "NO_MEDIA_PRESENT";
    public static final java.lang.String MEDIA_PLAYINGSTATE_PAUSE = "PAUSED_PLAYBACK";
    public static final java.lang.String MEDIA_PLAYINGSTATE_PLAYING = "PLAYING";
    public static final java.lang.String MEDIA_PLAYINGSTATE_STOP = "STOPPED";
    public static final java.lang.String MEDIA_PLAYINGSTATE_TRANSTION = "TRANSITIONING";
    public static final int MEDIA_RENDER_CTL_MSG_BASE = 256;
    public static final int MEDIA_RENDER_CTL_MSG_NEXT = 265;
    public static final int MEDIA_RENDER_CTL_MSG_PAUSE = 259;
    public static final int MEDIA_RENDER_CTL_MSG_PLAY = 258;
    public static final int MEDIA_RENDER_CTL_MSG_PRE = 264;
    public static final int MEDIA_RENDER_CTL_MSG_SEEK = 260;
    public static final int MEDIA_RENDER_CTL_MSG_SETIPADDR = 267;
    public static final int MEDIA_RENDER_CTL_MSG_SETLOCKSCREEN = 268;
    public static final int MEDIA_RENDER_CTL_MSG_SETMETADATA = 266;
    public static final int MEDIA_RENDER_CTL_MSG_SETMUTE = 262;
    public static final int MEDIA_RENDER_CTL_MSG_SETPLAYMODE = 263;
    public static final int MEDIA_RENDER_CTL_MSG_SETVOLUME = 261;
    public static final int MEDIA_RENDER_CTL_MSG_SET_AV_URL = 256;
    public static final int MEDIA_RENDER_CTL_MSG_STOP = 257;
    public static final int MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_DURATION = 256;
    public static final int MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_PLAYINGSTATE = 258;
    public static final int MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_POSITION = 257;
    public static final java.lang.String MEDIA_SEEK_TIME_TYPE_REL_TIME = "REL_TIME";
    public static final java.lang.String MEDIA_SEEK_TIME_TYPE_TRACK_NR = "TRACK_NR";
    public static final java.lang.String RENDERER_TOCONTRPOINT_CMD_INTENT_NAME = "net.easyconn.platinum.tocontrolpointer.cmd.intent";
    public static int libBits = -1;
    public static int libChannels = -1;
    public static int libIsAudio = -1;
    public static int libSamplerate = -1;
    public static net.easyconn.jni.PlatinumReflection.ActionReflectionListener mListener;

    public interface ActionReflectionListener {
        void audio_destroy();

        void audio_init(int i, int i2, int i3, int i4);

        void audio_process(byte[] bArr, int i, int i2);

        void onActionInvoke(int i, java.lang.String str, java.lang.String str2, java.lang.String str3);

        void onActionInvoke(int i, java.lang.String str, byte[] bArr, java.lang.String str2);
    }

    public static void audio_destroy() {
        net.easyconn.jni.PlatinumReflection.ActionReflectionListener actionReflectionListener = mListener;
        if (actionReflectionListener != null) {
            actionReflectionListener.audio_destroy();
        }
    }

    public static void audio_init(int i, int i2, int i3, int i4) {
        if (mListener != null) {
            libBits = i;
            libChannels = i2;
            libSamplerate = i3;
            libIsAudio = i4;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("audio_init: libBits =");
            sbO.append(libBits);
            sbO.append(" libChannels=");
            sbO.append(libChannels);
            sbO.append(" libSamplerate=");
            sbO.append(libSamplerate);
            sbO.append(" libIsAudio=");
            e.a.c.a.a.A(sbO, libIsAudio);
            mListener.audio_init(i, i2, i3, i4);
        }
    }

    public static void audio_process(byte[] bArr, int i, int i2) {
        net.easyconn.jni.PlatinumReflection.ActionReflectionListener actionReflectionListener = mListener;
        if (actionReflectionListener != null) {
            actionReflectionListener.audio_process(bArr, i, i2);
        }
    }

    public static void onActionReflection(int i, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onActionReflection:");
        sbO.append(java.lang.Integer.toHexString(i));
        sbO.append(" ");
        sbO.append(str);
        e.e.a.g.a(sbO.toString());
        net.easyconn.jni.PlatinumReflection.ActionReflectionListener actionReflectionListener = mListener;
        if (actionReflectionListener != null) {
            actionReflectionListener.onActionInvoke(i, str, str2, str3);
        }
    }

    public static void onActionReflection(int i, java.lang.String str, byte[] bArr, java.lang.String str2) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onActionReflection22:");
        sbO.append(java.lang.Integer.toHexString(i));
        sbO.append(" ");
        sbO.append(str);
        e.e.a.g.a(sbO.toString());
        net.easyconn.jni.PlatinumReflection.ActionReflectionListener actionReflectionListener = mListener;
        if (actionReflectionListener != null) {
            actionReflectionListener.onActionInvoke(i, str, bArr, str2);
        }
    }

    public static void setActionInvokeListener(net.easyconn.jni.PlatinumReflection.ActionReflectionListener actionReflectionListener) {
        mListener = actionReflectionListener;
    }
}
