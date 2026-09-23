.class public final Lcom/baidu/carlife/sdk/CarLifeContext$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/CarLifeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/CarLifeContext$Companion;",
        "",
        "()V",
        "CONNECTION_ATTACHED",
        "",
        "CONNECTION_DETACHED",
        "CONNECTION_ESTABLISHED",
        "CONNECTION_REATTACH",
        "CONNECTION_TYPE_AOA",
        "CONNECTION_TYPE_HOTSPOT",
        "CONNECTION_TYPE_WIFIDIRECT",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/baidu/carlife/sdk/CarLifeContext$Companion;

.field public static final CONNECTION_ATTACHED:I = 0x1

.field public static final CONNECTION_DETACHED:I = 0x0

.field public static final CONNECTION_ESTABLISHED:I = 0x3

.field public static final CONNECTION_REATTACH:I = 0x2

.field public static final CONNECTION_TYPE_AOA:I = 0x2

.field public static final CONNECTION_TYPE_HOTSPOT:I = 0x5

.field public static final CONNECTION_TYPE_WIFIDIRECT:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/sdk/CarLifeContext$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/sdk/CarLifeContext$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/sdk/CarLifeContext$Companion;->$$INSTANCE:Lcom/baidu/carlife/sdk/CarLifeContext$Companion;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
