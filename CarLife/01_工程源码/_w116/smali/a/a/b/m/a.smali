.class public La/a/b/m/a;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/b/m/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/b/m/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.okl.android.MCU_KEY_IND_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "key_value"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PRESS_DOWN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, La/a/b/m/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "carlife: onReceive is triggered!"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v1, La/a/b/n/h;->a0:Z

    if-eqz v1, :cond_0

    invoke-static {}, La/a/b/n/h;->C0()La/a/b/n/h;

    move-result-object p2

    invoke-virtual {p2, p1}, La/a/b/n/h;->D0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    invoke-virtual {v1, p1}, La/a/a/a/l/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    invoke-virtual {p1, v1}, La/a/b/r/a;->c(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p2, p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->e1(I)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "PAUSE"

    const-string v2, "PREV"

    const-string v4, "PLAY"

    const-string v5, "NEXT"

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "PAUSE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_1
    const-string v7, "PREV"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_2
    const-string v7, "PLAY"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_3
    const-string v7, "NEXT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v1, p1, v3

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0x20

    goto :goto_1

    :pswitch_1
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v3

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0xf

    goto :goto_1

    :pswitch_2
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v4, p1, v3

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0x1f

    goto :goto_1

    :pswitch_3
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v5, p1, v3

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/16 p2, 0x10

    :goto_1
    invoke-interface {p1, p2}, La/a/a/a/m/c;->q0(I)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2482f3 -> :sswitch_3
        0x258334 -> :sswitch_2
        0x259a33 -> :sswitch_1
        0x4862dd6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
