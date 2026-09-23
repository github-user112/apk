.class public Lnet/easyconn/framework/ecaudio/StandardEcAudioManager$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object p1, Lf/a/i/f/a;->b:Lf/a/i/f/a;

    sget-boolean v0, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->mIsUseMusicIntentReceiver:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "MusicIntentReceiver return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicIntentReceiver onReceive intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicIntentReceiver onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lf/a/i/f/a;->a(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "MusicIntentReceiver onReceive extras = null. return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Landroid/view/KeyEvent;

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast p2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string v0, "MusicIntentReceiver keyCode:"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/a/i/f/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->access$200()Lf/a/i/i/q;

    move-result-object v0

    if-nez v0, :cond_5

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "MusicIntentReceiver mSdkManager is null"

    invoke-static {v0, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    iget-object p1, p1, Lf/a/i/f/a;->a:Lf/a/i/f/a$a;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lf/a/i/f/a$a;->a(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 2
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_7

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_6

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->access$700()Lf/a/i/i/q;

    move-result-object p1

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PREVIOUS:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->access$600()Lf/a/i/i/q;

    move-result-object p1

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_NEXT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->access$500()Lf/a/i/i/q;

    move-result-object p1

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_STOP:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :cond_6
    invoke-static {}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->access$400()Lf/a/i/i/q;

    move-result-object p1

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :cond_7
    invoke-static {}, Lnet/easyconn/framework/ecaudio/StandardEcAudioManager;->access$300()Lf/a/i/i/q;

    move-result-object p1

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    :goto_0
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_CLICK:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-virtual {p1, p2, v0}, Lf/a/i/i/q;->b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
