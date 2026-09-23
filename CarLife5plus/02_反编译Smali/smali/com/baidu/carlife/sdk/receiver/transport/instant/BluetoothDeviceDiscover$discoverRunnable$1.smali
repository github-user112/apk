.class public final Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1",
        "Ljava/lang/Runnable;",
        "Lr8/z;",
        "run",
        "()V",
        "carlife-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;->run$lambda$0(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final run$lambda$0(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->access$discoverDevice(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->access$getContext$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->main()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->access$isReady$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;->access$getContext$p(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)Lcom/baidu/carlife/sdk/CarLifeContext;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->io()Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 34
    .line 35
    new-instance v2, Landroidx/lifecycle/z;

    .line 36
    .line 37
    const/4 v3, 0x5

    .line 38
    invoke-direct {v2, v3, v1}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
