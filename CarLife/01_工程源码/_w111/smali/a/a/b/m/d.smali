.class public La/a/b/m/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/b/m/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/b/m/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.spd.system.key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "value"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    sget-object p2, La/a/b/m/d;->a:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "carlife: onReceive is triggered!"

    aput-object v3, v2, v0

    invoke-static {p2, v2}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v2, La/a/b/n/h;->a0:Z

    if-eqz v2, :cond_0

    invoke-static {}, La/a/b/n/h;->C0()La/a/b/n/h;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, La/a/b/n/h;->D0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, La/a/a/a/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    invoke-virtual {p1, v2}, La/a/b/r/a;->c(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p2, p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x32

    const/16 v3, 0xf

    const-string v4, "PREV"

    if-eq p1, v2, :cond_3

    const/16 v2, 0x33

    const/16 v5, 0x10

    const-string v6, "NEXT"

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v6, p1, v0

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v4, p1, v0

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "PLAY_PAUSE"

    aput-object v1, p1, v0

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    goto :goto_2

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v6, p1, v0

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, v5}, La/a/a/a/m/c;->q0(I)V

    goto :goto_2

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v4, p1, v0

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, v3}, La/a/a/a/m/c;->q0(I)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
