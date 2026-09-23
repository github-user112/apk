.class public abstract synthetic Lcom/baidu/carlife/sdk/CarLifeContext$-CC;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/CarLifeContext;->Companion:Lcom/baidu/carlife/sdk/CarLifeContext$Companion;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic A(Lcom/baidu/carlife/sdk/CarLifeContext;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->i(Lcom/baidu/carlife/sdk/CarLifeContext;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/baidu/carlife/sdk/CarLifeContext;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->j(Lcom/baidu/carlife/sdk/CarLifeContext;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-interface {p0, p1, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static b(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-interface {p0, p0}, Lcom/baidu/carlife/sdk/ConnectionChangeListener;->onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-interface {p0, p0}, Lcom/baidu/carlife/sdk/ConnectionChangeListener;->onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-interface {p0, p0}, Lcom/baidu/carlife/sdk/ConnectionChangeListener;->onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-interface {p0, p0}, Lcom/baidu/carlife/sdk/ConnectionChangeListener;->onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-interface {p0, p0}, Lcom/baidu/carlife/sdk/ConnectionChangeListener;->onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/baidu/carlife/sdk/CarLifeContext$post$1;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$post$1;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->post(Lf9/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static h(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/baidu/carlife/sdk/CarLifeContext$postDelayed$1;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$postDelayed$1;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p2, p3, v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->postDelayed(JLf9/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static i(Lcom/baidu/carlife/sdk/CarLifeContext;II)V
    .locals 6

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v1, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->postMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static j(Lcom/baidu/carlife/sdk/CarLifeContext;II)V
    .locals 6

    .line 1
    sget-object v0, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->Companion:Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v1, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;->obtain$default(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage$Companion;ILjava/lang/Integer;IILjava/lang/Object;)Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext;->sendMessage(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic k(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->a(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->b(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->a(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->c(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->b(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->d(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->c(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->e(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->d(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->e(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->f(Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->f(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->a(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic x(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->b(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic y(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->g(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/carlife/sdk/CarLifeContext$-CC;->h(Lcom/baidu/carlife/sdk/CarLifeContext;Ljava/lang/Runnable;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
