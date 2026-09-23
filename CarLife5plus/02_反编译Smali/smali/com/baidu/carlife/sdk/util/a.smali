.class public final synthetic Lcom/baidu/carlife/sdk/util/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/carlife/sdk/util/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/carlife/sdk/util/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/util/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/baidu/carlife/sdk/util/Logger;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/baidu/carlife/sdk/util/Logger;->a(Lcom/baidu/carlife/sdk/util/Logger;Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/a;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;->a(Lcom/baidu/carlife/sdk/util/InvokeTimeoutMonitor;Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
