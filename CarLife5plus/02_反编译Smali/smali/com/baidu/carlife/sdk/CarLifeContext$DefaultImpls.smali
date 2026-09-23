.class public final Lcom/baidu/carlife/sdk/CarLifeContext$DefaultImpls;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/CarLifeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getConfig(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/carlife/sdk/CarLifeContext;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->k(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->l(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->m(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->n(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->o(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->p(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->q(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->r(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->s(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->t(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->u(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->v(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->w(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->x(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static post(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->y(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static postDelayed(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->z(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static postMessage(Lcom/baidu/carlife/sdk/CarLifeContext;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->A(Lcom/baidu/carlife/sdk/CarLifeContext;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->B(Lcom/baidu/carlife/sdk/CarLifeContext;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
