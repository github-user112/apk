.class public Lf/a/i/c/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/c/a;


# direct methods
.method public constructor <init>(Lf/a/i/c/a;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/c/a$b;->a:Lf/a/i/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    const-string v0, "musicFocusChangeListener focusChange is "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a$b;->a:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendMusicFocusStatusBroadcast(Landroid/content/Context;I)V

    iget-object v0, p0, Lf/a/i/c/a$b;->a:Lf/a/i/c/a;

    iget-boolean v1, v0, Lf/a/i/c/a;->isVrStarted:Z

    if-eqz v1, :cond_0

    const-string p1, "musicFocusChangeListener vr started, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/i/c/a$b;->a:Lf/a/i/c/a;

    iget-object p1, p1, Lf/a/i/c/a;->ecAudioTypeFocusMap:Ljava/util/Hashtable;

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "EC_AUDIO_TYPE_MUSIC"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_MUSIC:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v1, p1}, Lf/a/i/c/a;->handleFocusChange(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V

    sget-object v0, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/i/i/q;->H()Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    move-result-object v0

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECTransportType;->EC_TRANSPORT_IOS_USB_LIGHTNING:Lnet/easyconn/ecsdk/ECTypes$ECTransportType;

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lf/a/i/c/a;->mSdkManager:Lf/a/i/i/q;

    .line 1
    iget-object p1, p1, Lf/a/i/i/q;->r:Landroid/os/Handler;

    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
