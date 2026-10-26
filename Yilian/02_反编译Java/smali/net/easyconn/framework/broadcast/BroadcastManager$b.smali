.class public Lnet/easyconn/framework/broadcast/BroadcastManager$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/framework/broadcast/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/framework/broadcast/BroadcastManager;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/broadcast/BroadcastManager;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received Receive broadcast intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, p1, p2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive broadcast action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/view/KeyEvent;

    if-nez p2, :cond_2

    return-void

    :cond_2
    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    sget-object p2, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    .line 1
    iget-object p2, p2, Lf/a/i/i/q;->a:Landroid/content/Context;

    .line 2
    check-cast p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 3
    iget-object p2, p2, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    invoke-virtual {p2}, Lf/a/i/c/a;->checkMusicHasFocus()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p1, "sendBtnEvent no fucus return "

    .line 4
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x55

    if-eq p1, p2, :cond_9

    const/16 p2, 0x57

    if-eq p1, p2, :cond_8

    const/16 p2, 0x58

    if-eq p1, p2, :cond_7

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_6

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_5

    goto :goto_1

    :cond_5
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :cond_6
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :cond_7
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PREVIOUS:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :cond_8
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_NEXT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_0

    :cond_9
    sget-object p1, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object p2, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    :goto_0
    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_CLICK:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-virtual {p1, p2, v0}, Lf/a/i/i/q;->b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V

    :goto_1
    return-void

    :cond_a
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "net.easyconn.action.EXIT_APP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xf

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "net.easyconn.drivemode.opened"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x7

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "net.easyconn.start.record"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x1a

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "net.easyconn.mediacodec.release"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "net.easyconn.drivemode.closed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_5
    const-string v1, "net.easyconn.KEYCODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_2

    :sswitch_6
    const-string v1, "net.easyconn.app.open.state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x1c

    goto/16 :goto_2

    :sswitch_7
    const-string v1, "net.easyconn.parallel.world.menu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x18

    goto/16 :goto_2

    :sswitch_8
    const-string v1, "net.easyconn.parallel.world.home"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x16

    goto/16 :goto_2

    :sswitch_9
    const-string v1, "net.easyconn.parallel.world.back"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x17

    goto/16 :goto_2

    :sswitch_a
    const-string v1, "net.easyconn.stop.record"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x1b

    goto/16 :goto_2

    :sswitch_b
    const-string v1, "net.easyconn.BACKING_UP_START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x2

    goto/16 :goto_2

    :sswitch_c
    const-string v1, "net.easyconn.start.vr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_d
    const-string v1, "net.easyconn.navi.night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xc

    goto/16 :goto_2

    :sswitch_e
    const-string v1, "net.easyconn.action.SWITCH_BACKGROUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x10

    goto/16 :goto_2

    :sswitch_f
    const-string v1, "net.easyconn.navigation.STOP_EASYCONN_NAVI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_10
    const-string v1, "net.easyconn.music.previous"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x13

    goto/16 :goto_2

    :sswitch_11
    const-string v1, "net.easyconn.stop.vr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xa

    goto/16 :goto_2

    :sswitch_12
    const-string v1, "net.easyconn.mediacodec.acquire"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xd

    goto/16 :goto_2

    :sswitch_13
    const-string v1, "net.easyconn.BACKING_UP_STOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_14
    const-string v1, "net.easyconn.carcontrol.response"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x19

    goto :goto_2

    :sswitch_15
    const-string v1, "net.easyconn.music.play"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x11

    goto :goto_2

    :sswitch_16
    const-string v1, "net.easyconn.music.next"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x14

    goto :goto_2

    :sswitch_17
    const-string v1, "net.easyconn.bt.connected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_18
    const-string v1, "net.easyconn.navi.daytime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xb

    goto :goto_2

    :sswitch_19
    const-string v1, "net.easyconn.music.pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x12

    goto :goto_2

    :sswitch_1a
    const-string v1, "net.easyconn.bt.opened"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_1b
    const-string v1, "net.easyconn.bt.closed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_1c
    const-string v1, "net.easyconn.music.play.pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x15

    :cond_b
    :goto_2
    const-string v1, ", easyConnectService is "

    const-string v4, "ecSdkManager is null"

    const-string v5, "ecSdkManager.isMirrorConnectionOpen() = "

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_17

    check-cast v0, Lf/a/k/g0;

    const-string v1, "onCarQueryAppOpenState"

    .line 5
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lf/a/k/g0;->J:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "net.easyconn.app.open"

    invoke-static {v0, v1}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 6
    :pswitch_1
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_17

    check-cast v0, Lf/a/k/g0;

    const-string v2, "onMicStopByCar "

    .line 7
    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 8
    iget-boolean v5, v5, Lf/a/i/i/q;->V:Z

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v1, :cond_17

    .line 10
    iget-boolean v1, v1, Lf/a/i/i/q;->V:Z

    if-eqz v1, :cond_17

    .line 11
    iget-object v1, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v1, :cond_17

    .line 12
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    if-eqz v1, :cond_17

    const-string v1, "onMicStopByCar notifyMicStatus false, and stopRecord"

    .line 13
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 14
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 15
    invoke-virtual {v1}, Lf/a/i/c/a;->stopRecord()V

    iget-object v0, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 16
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 17
    invoke-virtual {v0, v3}, Lf/a/i/c/a;->notifyMicStatus(Z)V

    goto/16 :goto_9

    .line 18
    :pswitch_2
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_17

    check-cast v0, Lf/a/k/g0;

    const-string v3, "onMicStartByCar "

    .line 19
    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-nez v6, :cond_d

    goto :goto_4

    :cond_d
    invoke-static {v5}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    .line 20
    iget-boolean v5, v5, Lf/a/i/i/q;->V:Z

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lf/a/k/g0;->s:Lf/a/i/i/q;

    if-eqz v1, :cond_17

    .line 22
    iget-boolean v1, v1, Lf/a/i/i/q;->V:Z

    if-eqz v1, :cond_17

    .line 23
    iget-object v1, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v1, :cond_17

    .line 24
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    if-eqz v1, :cond_17

    const-string v1, "onMicStartByCar notifyMicStatus true, and startRecord"

    .line 25
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 26
    iget-object v1, v1, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 27
    invoke-virtual {v1, v2}, Lf/a/i/c/a;->notifyMicStatus(Z)V

    iget-object v0, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 28
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->e:Lf/a/i/c/a;

    .line 29
    invoke-virtual {v0}, Lf/a/i/c/a;->startRecord()V

    goto/16 :goto_9

    .line 30
    :pswitch_3
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    if-eqz v0, :cond_f

    const-string v1, "cmds"

    .line 31
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "words"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "supportGlobalNoWakeup"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "handleCarControlResponse cmds="

    invoke-static {v5, v1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v0, Lf/a/i/i/q;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v5

    .line 32
    iget-object v6, v5, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_ec_carcontrol_cmds"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    iget-boolean v6, v0, Lf/a/i/i/q;->V:Z

    if-eqz v6, :cond_e

    invoke-virtual {v0, v1, v4}, Lf/a/i/i/q;->L(Ljava/lang/String;Z)V

    :cond_e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "handleCarControlResponse words="

    invoke-static {v1, v2}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v1, v5, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "key_ec_carcontrol_words"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    iget-object v1, v5, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "key_ec_carcontrol_support_global_no_wakeup"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    iget-boolean v0, v0, Lf/a/i/i/q;->V:Z

    if-eqz v0, :cond_17

    .line 37
    invoke-static {}, Lnet/easyconn/ecsdk/ECSDK;->getInstance()Lnet/easyconn/ecsdk/ECSDK;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/easyconn/ecsdk/ECSDK;->registerSimilarSoundingWords(Ljava/lang/String;)I

    goto/16 :goto_9

    .line 38
    :cond_f
    throw v6

    .line 39
    :pswitch_4
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_KEY_PARALLEL_WORLD_MENU:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_5

    :pswitch_5
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_KEY_PARALLEL_WORLD_BACK:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_5

    :pswitch_6
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_KEY_PARALLEL_WORLD_HOME:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_5

    :pswitch_7
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_5

    :pswitch_8
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_NEXT:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PREVIOUS:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_5

    :pswitch_a
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PAUSE:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    goto :goto_5

    :pswitch_b
    sget-object v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->sdkManager:Lf/a/i/i/q;

    sget-object v1, Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;->EC_BTN_MUSIC_PLAY:Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;

    :goto_5
    sget-object v2, Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;->EC_BTN_TYPE_CLICK:Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;

    invoke-virtual {v0, v1, v2}, Lf/a/i/i/q;->b0(Lnet/easyconn/ecsdk/ECTypes$ECBtnCode;Lnet/easyconn/ecsdk/ECTypes$ECBtnEventType;)V

    goto/16 :goto_9

    :pswitch_c
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_17

    check-cast v0, Lf/a/k/g0;

    .line 40
    invoke-virtual {v0, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto/16 :goto_9

    .line 41
    :pswitch_d
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_17

    check-cast v0, Lf/a/k/g0;

    invoke-virtual {v0}, Lf/a/k/g0;->j0()V

    goto/16 :goto_9

    :pswitch_e
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnMediaCodecStateRequestListener:Lnet/easyconn/framework/broadcast/BroadcastManager$e;

    if-eqz v0, :cond_13

    check-cast v0, Lf/a/k/l0/p3;

    .line 42
    iget-object v1, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    instance-of v1, v1, Lf/a/i/n/a;

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_10
    sget-boolean v1, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v1, :cond_11

    const-string v0, "MirrorFragment releaseMediaCodec return because is background"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_11
    const-string v1, "MirrorFragment releaseMediaCodec"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1, v2}, Lf/a/k/k0/c;->w(Z)V

    iget-object v1, v0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lnet/easyconn/ui/widget/EcFloatButton;->c()V

    :cond_12
    invoke-virtual {v0, v2}, Lf/a/k/l0/p3;->g0(Z)V

    .line 43
    :cond_13
    :goto_6
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleMediaCodecAcquire(Z)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_17

    goto :goto_8

    :pswitch_f
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnMediaCodecStateRequestListener:Lnet/easyconn/framework/broadcast/BroadcastManager$e;

    if-eqz v0, :cond_16

    check-cast v0, Lf/a/k/l0/p3;

    .line 44
    iget-object v1, v0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    instance-of v1, v1, Lf/a/i/n/a;

    if-eqz v1, :cond_14

    goto :goto_7

    :cond_14
    sget-boolean v1, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v1, :cond_15

    const-string v0, "MirrorFragment acquireMediaCodec return because is background"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_7

    :cond_15
    const-string v1, "MirrorFragment acquireMediaCodec"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1, v3}, Lf/a/k/k0/c;->w(Z)V

    iget-object v1, v0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1}, Lf/a/c;->onStart()V

    invoke-virtual {v0}, Lf/a/k/l0/p3;->M()V

    invoke-virtual {v0, v3}, Lf/a/k/l0/p3;->g0(Z)V

    .line 45
    :cond_16
    :goto_7
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleMediaCodecAcquire(Z)V

    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    iget-object v0, v0, Lnet/easyconn/framework/broadcast/BroadcastManager;->mOnBroadcastListener:Lnet/easyconn/framework/broadcast/BroadcastManager$c;

    if-eqz v0, :cond_17

    :goto_8
    check-cast v0, Lf/a/k/g0;

    goto :goto_9

    :pswitch_10
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendNightModeStatus(Z)V

    goto :goto_9

    :pswitch_11
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendNightModeStatus(Z)V

    goto :goto_9

    :pswitch_12
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendVRCmdByCar(Z)V

    goto :goto_9

    :pswitch_13
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->sendVRCmdByCar(Z)V

    goto :goto_9

    :pswitch_14
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleDriveModeStatus(Z)V

    goto :goto_9

    :pswitch_15
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleDriveModeStatus(Z)V

    goto :goto_9

    :pswitch_16
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, p2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleBTStatus(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_17
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v3}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleBackingUp(Z)V

    goto :goto_9

    :pswitch_18
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, v2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleBackingUp(Z)V

    goto :goto_9

    :pswitch_19
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->stopEasyConnNavigation()V

    goto :goto_9

    :pswitch_1a
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {v0, p2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleKeyCode(Landroid/content/Intent;)V

    :cond_17
    :goto_9
    iget-object v0, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-static {v0}, Lnet/easyconn/framework/broadcast/BroadcastManager;->access$000(Lnet/easyconn/framework/broadcast/BroadcastManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lnet/easyconn/framework/broadcast/BroadcastManager$b;->a:Lnet/easyconn/framework/broadcast/BroadcastManager;

    invoke-virtual {p1, p2}, Lnet/easyconn/framework/broadcast/BroadcastManager;->handleSpeedPlayStatusAction(Landroid/content/Intent;)V

    :cond_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f021f2c -> :sswitch_1c
        -0x6f06b147 -> :sswitch_1b
        -0x5a58ca4a -> :sswitch_1a
        -0x53784322 -> :sswitch_19
        -0x4a34ffb0 -> :sswitch_18
        -0x41999964 -> :sswitch_17
        -0x343e88f5 -> :sswitch_16
        -0x343d88b4 -> :sswitch_15
        -0x23862389 -> :sswitch_14
        -0x1f3b002d -> :sswitch_13
        -0x1d9a3f77 -> :sswitch_12
        -0x16661767 -> :sswitch_11
        -0xfe224f1 -> :sswitch_10
        0x2f5c565 -> :sswitch_f
        0xb4ce510 -> :sswitch_e
        0xb6889bf -> :sswitch_d
        0x31fa4577 -> :sswitch_c
        0x37dac691 -> :sswitch_b
        0x3b760fae -> :sswitch_a
        0x3d596efb -> :sswitch_9
        0x3d5c5ef3 -> :sswitch_8
        0x3d5e7f73 -> :sswitch_7
        0x4e2f3049 -> :sswitch_6
        0x5422dd1d -> :sswitch_5
        0x66d6cefc -> :sswitch_4
        0x68cb87ba -> :sswitch_3
        0x7080cd8c -> :sswitch_2
        0x7b84b5f9 -> :sswitch_1
        0x7d6f7b89 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
