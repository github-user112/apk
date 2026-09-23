.class public final Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0017\u0010\u000f\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;",
        "",
        "<init>",
        "()V",
        "",
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
        "NULL",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "getNULL",
        "()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;",
        "HEADER_SIZE",
        "I",
        "INITIAL_BUFFER_SIZE",
        "LONG_COMMAND_SIZE",
        "SHORT_COMMAND_SIZE",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;",
        "pool",
        "Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;-><init>()V

    return-void
.end method

.method public static synthetic obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method


# virtual methods
.method public final getNULL()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->access$getNULL$cp()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->access$getPool$cp()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->obtain(ILjava/lang/Integer;I)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->acquire()V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final recycle(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->resetBuffer()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->access$getPool$cp()Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessagePool;->recycle(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
