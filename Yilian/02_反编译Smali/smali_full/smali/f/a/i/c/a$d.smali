.class public Lf/a/i/c/a$d;
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

    iput-object p1, p0, Lf/a/i/c/a$d;->a:Lf/a/i/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "ttsFocusChangeListener focusChange is "

    invoke-static {v0, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lf/a/i/c/a$d;->a:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-string v0, "tts loss focus, send message of abandon focus"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/c/a$d;->a:Lf/a/i/c/a;

    iget-object v0, v0, Lf/a/i/c/a;->audioManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v0, p0, Lf/a/i/c/a$d;->a:Lf/a/i/c/a;

    iget-boolean v1, v0, Lf/a/i/c/a;->isVrStarted:Z

    if-eqz v1, :cond_2

    const-string p1, "ttsFocusChangeListener vr started, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECAudioType;->EC_AUDIO_TYPE_TTS:Lnet/easyconn/ecsdk/ECTypes$ECAudioType;

    invoke-virtual {v0, v1, p1}, Lf/a/i/c/a;->handleFocusChange(Lnet/easyconn/ecsdk/ECTypes$ECAudioType;I)V

    :cond_3
    return-void
.end method
