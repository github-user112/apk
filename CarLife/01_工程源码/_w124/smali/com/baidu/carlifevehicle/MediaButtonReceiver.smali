.class public Lcom/baidu/carlifevehicle/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/carlifevehicle/MediaButtonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/carlifevehicle/MediaButtonReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    sget-object v0, Lcom/baidu/carlifevehicle/MediaButtonReceiver;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "carlife: onReceive is triggered!"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, La/a/a/a/l/b;->t:I

    if-lez v2, :cond_5

    const/4 v3, 0x2

    if-gt v2, v3, :cond_5

    sub-int/2addr v2, v1

    if-ne p2, v2, :cond_5

    sget-boolean p2, La/a/b/n/h;->b0:Z

    if-eqz p2, :cond_1

    invoke-static {}, La/a/b/n/h;->C0()La/a/b/n/h;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, La/a/b/n/h;->D0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, La/a/a/a/l/b;->o:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 2
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    invoke-virtual {p1, p2}, La/a/b/r/a;->c(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p2, p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    goto :goto_2

    :cond_2
    const/16 p2, 0x7e

    if-eq p1, p2, :cond_4

    const/16 p2, 0x7f

    const/16 v2, 0x20

    if-eq p1, p2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "KEYCODE_MEDIA_PREVIOUS"

    aput-object p2, p1, v4

    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0xf

    goto :goto_1

    :pswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "KEYCODE_MEDIA_NEXT"

    aput-object p2, p1, v4

    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0x10

    goto :goto_1

    :pswitch_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "KEYCODE_MEDIA_STOP"

    aput-object p2, p1, v4

    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "KEYCODE_MEDIA_PLAY_PAUSE"

    aput-object p2, p1, v4

    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    goto :goto_2

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "KEYCODE_MEDIA_PAUSE"

    aput-object p2, p1, v4

    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, v2}, La/a/a/a/m/c;->q0(I)V

    goto :goto_2

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "KEYCODE_MEDIA_PLAY"

    aput-object p2, p1, v4

    invoke-static {v0, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0x1f

    :goto_1
    invoke-interface {p1, p2}, La/a/a/a/m/c;->q0(I)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
