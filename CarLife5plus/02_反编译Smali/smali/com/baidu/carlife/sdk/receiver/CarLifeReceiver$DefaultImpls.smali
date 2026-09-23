.class public final Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver$DefaultImpls;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;
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
.method public static getConfig(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;",
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
    invoke-static {p0, p1}, Lh5/a;->a(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static onConnectionAttached(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lh5/a;->b(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    return-void
.end method

.method public static onConnectionAttached(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lh5/a;->c(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lh5/a;->d(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    return-void
.end method

.method public static onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lh5/a;->e(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionDetached(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lh5/a;->f(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    return-void
.end method

.method public static onConnectionDetached(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lh5/a;->g(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionEstablished(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lh5/a;->h(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    return-void
.end method

.method public static onConnectionEstablished(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lh5/a;->i(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onConnectionReattached(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V
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
    invoke-static {p0, p1}, Lh5/a;->j(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lh5/a;->k(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    return-void
.end method

.method public static onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lh5/a;->l(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    return-void
.end method

.method public static onReceiveMessage(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
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
    invoke-static {p0, p1, p2}, Lh5/a;->m(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static onSendMessage(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
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
    invoke-static {p0, p1, p2}, Lh5/a;->n(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static post(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Ljava/lang/Runnable;)V
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
    invoke-static {p0, p1}, Lh5/a;->o(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static postDelayed(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Ljava/lang/Runnable;J)V
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
    invoke-static {p0, p1, p2, p3}, Lh5/a;->p(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;Ljava/lang/Runnable;J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static postMessage(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lh5/a;->q(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sendMessage(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lh5/a;->r(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
