.class public abstract Lf/a/e/d;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "net.easyconn.airplay.IMediaRenderServer"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const-string v0, "net.easyconn.airplay.IMediaRenderServer"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9

    const/16 v1, 0x101

    const/16 v3, 0x102

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lnet/easyconn/airplay/MediaRenderService$a;

    .line 1
    iget-object p2, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p2, p2, Lnet/easyconn/airplay/MediaRenderService;->c:Lf/a/e/a;

    if-eqz p2, :cond_0

    new-array p2, v4, [Ljava/lang/Object;

    const-string p4, "destroyAudio..............."

    invoke-static {p4, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p1, p1, Lnet/easyconn/airplay/MediaRenderService;->c:Lf/a/e/a;

    invoke-virtual {p1}, Lf/a/e/a;->audio_destroy()V

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lnet/easyconn/airplay/MediaRenderService$a;

    .line 3
    iget-object p2, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p2, p2, Lnet/easyconn/airplay/MediaRenderService;->c:Lf/a/e/a;

    if-eqz p2, :cond_1

    new-array p2, v4, [Ljava/lang/Object;

    const-string p4, "restartAudio..............."

    invoke-static {p4, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p1, p1, Lnet/easyconn/airplay/MediaRenderService;->c:Lf/a/e/a;

    const/16 p2, 0x10

    const p4, 0xac44

    invoke-virtual {p1, p2, v2, p4, v2}, Lf/a/e/a;->audio_init(IIII)V

    .line 4
    :cond_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lnet/easyconn/jni/PlatinumJniProxy;->forceKeyFrame()I

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    move-object p2, p0

    check-cast p2, Lnet/easyconn/airplay/MediaRenderService$a;

    .line 7
    iget-object p2, p2, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p2, p2, Lnet/easyconn/airplay/MediaRenderService;->c:Lf/a/e/a;

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p2, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    if-eqz p2, :cond_2

    int-to-float p1, p1

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p1, p4

    invoke-virtual {p2, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 9
    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    .line 10
    :cond_3
    sput-boolean v4, Lf/a/e/a;->d:Z

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    move-object p1, p0

    check-cast p1, Lnet/easyconn/airplay/MediaRenderService$a;

    const-string p2, "stop service~~~~~~"

    new-array p4, v4, [Ljava/lang/Object;

    .line 12
    invoke-static {p2, p4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p2, p2, Lnet/easyconn/airplay/MediaRenderService;->b:Lf/a/e/b;

    if-eqz p2, :cond_5

    .line 13
    iput-boolean v2, p2, Lf/a/e/b;->f:Z

    invoke-virtual {p2}, Lf/a/e/b;->a()Z

    iget-object p4, p2, Lf/a/e/b;->c:Lf/a/e/b$a;

    if-eqz p4, :cond_4

    const/4 v0, 0x5

    check-cast p4, Lf/a/e/e;

    invoke-virtual {p4, v0}, Lf/a/e/e;->a(I)V

    .line 14
    :cond_4
    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p2, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iput-object v5, p2, Lnet/easyconn/airplay/MediaRenderService;->b:Lf/a/e/b;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 17
    :cond_5
    :goto_0
    iget-object p1, p1, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "KILL_MEDIA_SERVICE_WHEN_AIRPLAY_CLOSE"

    if-nez p1, :cond_6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_6
    sget-object p1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string p4, "true"

    invoke-virtual {p1, p2, p4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "stop service isKill = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p2, p4}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 20
    :cond_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-string p1, "PLAYING"

    .line 21
    invoke-static {v3, p1, v5}, Lnet/easyconn/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-string p1, "PAUSED_PLAYBACK"

    .line 23
    invoke-static {v3, p1, v5}, Lnet/easyconn/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {v1, p1, v5}, Lnet/easyconn/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x100

    .line 27
    invoke-static {p2, p1, v5}, Lnet/easyconn/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p1, "00:00:00"

    invoke-static {v1, p1, v5}, Lnet/easyconn/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p1, "PLAYING"

    invoke-static {v3, p1, v5}, Lnet/easyconn/jni/PlatinumJniProxy;->responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lnet/easyconn/airplay/MediaRenderService$a;

    .line 29
    iget-object p4, p2, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p4, p4, Lnet/easyconn/airplay/MediaRenderService;->b:Lf/a/e/b;

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    const-string p4, "startMediaRender"

    invoke-static {p4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p4, p2, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    new-instance v0, Lf/a/e/a;

    invoke-direct {v0, p2}, Lf/a/e/a;-><init>(Lnet/easyconn/airplay/MediaRenderService$a;)V

    iput-object v0, p4, Lnet/easyconn/airplay/MediaRenderService;->c:Lf/a/e/a;

    iget-object p4, p2, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p4, p4, Lnet/easyconn/airplay/MediaRenderService;->c:Lf/a/e/a;

    invoke-static {p4}, Lnet/easyconn/jni/PlatinumReflection;->setActionInvokeListener(Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;)V

    iget-object p4, p2, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    new-instance v0, Lf/a/e/b;

    iget-object v1, p2, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lf/a/e/e;

    invoke-direct {v3, p2}, Lf/a/e/e;-><init>(Lnet/easyconn/airplay/MediaRenderService$a;)V

    invoke-direct {v0, v1, p1, v3}, Lf/a/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/e/b$a;)V

    iput-object v0, p4, Lnet/easyconn/airplay/MediaRenderService;->b:Lf/a/e/b;

    iget-object p1, p2, Lnet/easyconn/airplay/MediaRenderService$a;->a:Lnet/easyconn/airplay/MediaRenderService;

    iget-object p1, p1, Lnet/easyconn/airplay/MediaRenderService;->b:Lf/a/e/b;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 30
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
