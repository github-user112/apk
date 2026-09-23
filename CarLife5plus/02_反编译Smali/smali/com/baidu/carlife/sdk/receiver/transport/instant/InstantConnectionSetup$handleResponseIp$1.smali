.class final Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->handleResponseIp(Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg9/n;",
        "Lf9/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lr8/z;",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

.field final synthetic this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;->$communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;->invoke()V

    sget-object v0, Lr8/z;->a:Lr8/z;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;

    iget-object v1, p0, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup$handleResponseIp$1;->$communicator:Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;

    invoke-static {v0, v1}, Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;->access$requestIp(Lcom/baidu/carlife/sdk/receiver/transport/instant/InstantConnectionSetup;Lcom/baidu/carlife/sdk/internal/transport/communicator/BluetoothCommunicator;)V

    return-void
.end method
