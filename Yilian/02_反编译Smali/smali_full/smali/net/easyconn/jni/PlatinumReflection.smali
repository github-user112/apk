.class public Lnet/easyconn/jni/PlatinumReflection;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;
    }
.end annotation


# static fields
.field public static final GET_PARAM_MEDIA_DURATION:Ljava/lang/String; = "get_param_media_duration"

.field public static final GET_PARAM_MEDIA_PLAYINGSTATE:Ljava/lang/String; = "get_param_media_playingstate"

.field public static final GET_PARAM_MEDIA_POSITION:Ljava/lang/String; = "get_param_media_position"

.field public static final GET_RENDERER_TOCONTRPOINT_CMD:Ljava/lang/String; = "get_dlna_renderer_tocontrolpointer.cmd"

.field public static final MEDIA_PLAYINGSTATE_NOMEDIA:Ljava/lang/String; = "NO_MEDIA_PRESENT"

.field public static final MEDIA_PLAYINGSTATE_PAUSE:Ljava/lang/String; = "PAUSED_PLAYBACK"

.field public static final MEDIA_PLAYINGSTATE_PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final MEDIA_PLAYINGSTATE_STOP:Ljava/lang/String; = "STOPPED"

.field public static final MEDIA_PLAYINGSTATE_TRANSTION:Ljava/lang/String; = "TRANSITIONING"

.field public static final MEDIA_RENDER_CTL_MSG_BASE:I = 0x100

.field public static final MEDIA_RENDER_CTL_MSG_NEXT:I = 0x109

.field public static final MEDIA_RENDER_CTL_MSG_PAUSE:I = 0x103

.field public static final MEDIA_RENDER_CTL_MSG_PLAY:I = 0x102

.field public static final MEDIA_RENDER_CTL_MSG_PRE:I = 0x108

.field public static final MEDIA_RENDER_CTL_MSG_SEEK:I = 0x104

.field public static final MEDIA_RENDER_CTL_MSG_SETIPADDR:I = 0x10b

.field public static final MEDIA_RENDER_CTL_MSG_SETLOCKSCREEN:I = 0x10c

.field public static final MEDIA_RENDER_CTL_MSG_SETMETADATA:I = 0x10a

.field public static final MEDIA_RENDER_CTL_MSG_SETMUTE:I = 0x106

.field public static final MEDIA_RENDER_CTL_MSG_SETPLAYMODE:I = 0x107

.field public static final MEDIA_RENDER_CTL_MSG_SETVOLUME:I = 0x105

.field public static final MEDIA_RENDER_CTL_MSG_SET_AV_URL:I = 0x100

.field public static final MEDIA_RENDER_CTL_MSG_STOP:I = 0x101

.field public static final MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_DURATION:I = 0x100

.field public static final MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_PLAYINGSTATE:I = 0x102

.field public static final MEDIA_RENDER_TOCONTRPOINT_SET_MEDIA_POSITION:I = 0x101

.field public static final MEDIA_SEEK_TIME_TYPE_REL_TIME:Ljava/lang/String; = "REL_TIME"

.field public static final MEDIA_SEEK_TIME_TYPE_TRACK_NR:Ljava/lang/String; = "TRACK_NR"

.field public static final RENDERER_TOCONTRPOINT_CMD_INTENT_NAME:Ljava/lang/String; = "net.easyconn.platinum.tocontrolpointer.cmd.intent"

.field public static libBits:I = -0x1

.field public static libChannels:I = -0x1

.field public static libIsAudio:I = -0x1

.field public static libSamplerate:I = -0x1

.field public static mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audio_destroy()V
    .locals 1

    sget-object v0, Lnet/easyconn/jni/PlatinumReflection;->mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;->audio_destroy()V

    :cond_0
    return-void
.end method

.method public static audio_init(IIII)V
    .locals 2

    sget-object v0, Lnet/easyconn/jni/PlatinumReflection;->mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;

    if-eqz v0, :cond_0

    sput p0, Lnet/easyconn/jni/PlatinumReflection;->libBits:I

    sput p1, Lnet/easyconn/jni/PlatinumReflection;->libChannels:I

    sput p2, Lnet/easyconn/jni/PlatinumReflection;->libSamplerate:I

    sput p3, Lnet/easyconn/jni/PlatinumReflection;->libIsAudio:I

    const-string v0, "audio_init: libBits ="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lnet/easyconn/jni/PlatinumReflection;->libBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " libChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lnet/easyconn/jni/PlatinumReflection;->libChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " libSamplerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lnet/easyconn/jni/PlatinumReflection;->libSamplerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " libIsAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lnet/easyconn/jni/PlatinumReflection;->libIsAudio:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget-object v0, Lnet/easyconn/jni/PlatinumReflection;->mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;->audio_init(IIII)V

    :cond_0
    return-void
.end method

.method public static audio_process([BII)V
    .locals 1

    sget-object v0, Lnet/easyconn/jni/PlatinumReflection;->mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;->audio_process([BII)V

    :cond_0
    return-void
.end method

.method public static onActionReflection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "onActionReflection:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lnet/easyconn/jni/PlatinumReflection;->mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;->onActionInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onActionReflection(ILjava/lang/String;[BLjava/lang/String;)V
    .locals 2

    const-string v0, "onActionReflection22:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lnet/easyconn/jni/PlatinumReflection;->mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;->onActionInvoke(ILjava/lang/String;[BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setActionInvokeListener(Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;)V
    .locals 0

    sput-object p0, Lnet/easyconn/jni/PlatinumReflection;->mListener:Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;

    return-void
.end method
