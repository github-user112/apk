.class final Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport$scanner$1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;-><init>(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport$ConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg9/n;",
        "Lf9/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;",
        "it",
        "Lr8/z;",
        "invoke",
        "(Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V",
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
.field final synthetic this$0:Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport$scanner$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;

    invoke-virtual {p0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport$scanner$1;->invoke(Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V

    sget-object p1, Lr8/z;->a:Lr8/z;

    return-object p1
.end method

.method public final invoke(Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport$scanner$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;

    invoke-static {v0, p1}, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;->access$setCommunicator$p(Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;Lcom/baidu/carlife/sdk/internal/transport/communicator/Communicator;)V

    .line 3
    iget-object p1, p0, Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport$scanner$1;->this$0:Lcom/baidu/carlife/sdk/receiver/transport/aoa/AOAProtocolTransport;

    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/transport/ProtocolTransport;->onConnectionAttached()V

    return-void
.end method
