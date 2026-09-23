.class public interface abstract Lcom/baidu/carlife/sdk/ConfigurationChangeListener;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/sdk/ConfigurationChangeListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/baidu/carlife/sdk/ConfigurationChangeListener;",
        "",
        "",
        "configuration",
        "Lr8/z;",
        "onConfigurationChanged",
        "(I)V",
        "Companion",
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
.field public static final Companion:Lcom/baidu/carlife/sdk/ConfigurationChangeListener$Companion;

.field public static final ORIENTATION:I = 0x1

.field public static final SCREEN_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/ConfigurationChangeListener$Companion;->$$INSTANCE:Lcom/baidu/carlife/sdk/ConfigurationChangeListener$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/baidu/carlife/sdk/ConfigurationChangeListener;->Companion:Lcom/baidu/carlife/sdk/ConfigurationChangeListener$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract onConfigurationChanged(I)V
.end method
