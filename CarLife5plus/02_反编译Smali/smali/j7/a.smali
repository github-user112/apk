.class public final Lj7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:Lj7/b;


# direct methods
.method public constructor <init>(Lj7/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj7/a;->a:Lj7/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lj7/a;->a:Lj7/b;

    .line 8
    .line 9
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->isConnected()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    const-string v2, "CarLife_SDK"

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p2, Lj7/b;->a:Lj7/e;

    .line 26
    .line 27
    invoke-virtual {p1}, Lj7/e;->a()V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 31
    .line 32
    new-array p2, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v0, "\u3010\u5f55\u97f3\u6a21\u5757\u3011\u5e94\u7528\u524d\u53f0\u5f00\u59cb\u5f55\u97f3"

    .line 35
    .line 36
    aput-object v0, p2, v1

    .line 37
    .line 38
    invoke-virtual {p1, v2, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p2, Lj7/b;->a:Lj7/e;

    .line 43
    .line 44
    iput-boolean v1, p1, Lj7/e;->e:Z

    .line 45
    .line 46
    iget-object p2, p1, Lj7/e;->d:Lac/j1;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p2, v3}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iput-object v3, p1, Lj7/e;->d:Lac/j1;

    .line 55
    .line 56
    sget-object p1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 57
    .line 58
    new-array p2, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v0, "\u3010\u5f55\u97f3\u6a21\u5757\u3011\u5e94\u7528\u540e\u53f0\u505c\u6b62\u5f55\u97f3"

    .line 61
    .line 62
    aput-object v0, p2, v1

    .line 63
    .line 64
    invoke-virtual {p1, v2, p2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 68
    .line 69
    return-object p1
.end method
