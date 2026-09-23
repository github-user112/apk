.class public final Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u0011R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "listener",
        "<init>",
        "(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V",
        "Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;",
        "operation",
        "Lr8/z;",
        "add",
        "(Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;)V",
        "execute",
        "()V",
        "onSuccess",
        "",
        "reason",
        "onFailure",
        "(I)V",
        "Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;",
        "",
        "sequence",
        "Ljava/util/List;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "executing",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "currentIndex",
        "I",
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
.field private currentIndex:I

.field private final executing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field private final sequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->sequence:Ljava/util/List;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->executing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final add(Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;)V
    .locals 1

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->sequence:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->executing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 12
    .line 13
    iget-object v1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->sequence:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;

    .line 20
    .line 21
    invoke-interface {v0, p0}, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;->execute(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->sequence:Ljava/util/List;

    .line 4
    .line 5
    iget v2, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 6
    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x6

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v6, "WifiP2pOperationSequence onFailure "

    .line 26
    .line 27
    aput-object v6, v4, v5

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    aput-object v1, v4, v6

    .line 31
    .line 32
    const-string v1, ", currentIndex: "

    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    aput-object v1, v4, v6

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    aput-object v2, v4, v1

    .line 39
    .line 40
    const-string v1, ", reason: "

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    aput-object v1, v4, v2

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    aput-object v3, v4, v1

    .line 47
    .line 48
    const-string v1, "CarLife_SDK"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->executing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 59
    .line 60
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 61
    .line 62
    .line 63
    iput v5, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 64
    .line 65
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->sequence:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->executing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    iput v1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->listener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->sequence:Ljava/util/List;

    .line 30
    .line 31
    iget v1, p0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperationSequence;->currentIndex:I

    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;

    .line 38
    .line 39
    invoke-interface {v0, p0}, Lcom/baidu/carlife/sdk/util/wifip2p/WifiP2pOperation;->execute(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
