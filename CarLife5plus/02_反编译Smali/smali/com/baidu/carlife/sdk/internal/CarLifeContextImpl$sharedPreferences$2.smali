.class final Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl$sharedPreferences$2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;-><init>(Landroid/content/Context;Ljava/util/Map;)V
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;


# direct methods
.method public constructor <init>(Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl$sharedPreferences$2;->this$0:Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl$sharedPreferences$2;->this$0:Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;

    invoke-virtual {v0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CarLifeSDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/carlife/sdk/internal/CarLifeContextImpl$sharedPreferences$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
