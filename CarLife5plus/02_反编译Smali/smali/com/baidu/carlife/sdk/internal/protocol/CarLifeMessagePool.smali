.class public final Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J-\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0010R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;",
        "",
        "",
        "capacity",
        "<init>",
        "(I)V",
        "channel",
        "serviceType",
        "length",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "obtain",
        "(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "message",
        "Lr8/z;",
        "recycle",
        "(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V",
        "I",
        "Ljava/util/LinkedList;",
        "recyclePoll",
        "Ljava/util/LinkedList;",
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
.field private final capacity:I

.field private final recyclePoll:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;-><init>(IILg9/g;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->capacity:I

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->recyclePoll:Ljava/util/LinkedList;

    return-void
.end method

.method public synthetic constructor <init>(IILg9/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x64

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;-><init>(I)V

    return-void
.end method

.method public static synthetic obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 12
    .line 13
    if-eqz p4, :cond_2

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 6

    .line 1
    const-string v0, "CarLifeMessagePool recyclePoll obtain size "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 5
    .line 6
    const-string v2, "CarLife_SDK"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->recyclePoll:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v3, 0x1

    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v0, v3, v4

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->recyclePoll:Ljava/util/LinkedList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    new-instance v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;-><init>(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    const/4 v4, 0x4

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    move v1, p1

    .line 58
    move v2, p3

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->reset$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;II[BILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->setServiceType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_1
    monitor-exit p0

    .line 72
    return-object v0

    .line 73
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1
.end method

.method public final declared-synchronized recycle(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 4

    .line 1
    const-string v0, "CarLifeMessagePool recyclePoll recycle size "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "message"

    .line 5
    .line 6
    invoke-static {p1, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->recyclePoll:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->capacity:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->recyclePoll:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 28
    .line 29
    const-string v1, "CarLife_SDK"

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->recyclePoll:Ljava/util/LinkedList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v2, 0x1

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    aput-object v0, v2, v3

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p1
.end method
