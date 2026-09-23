.class public final La/a/a/a/m/m/e/a;
.super La/a/a/a/a/j/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/m/m/e/a$a;
    }
.end annotation


# instance fields
.field public final c:La/a/a/a/c;

.field public d:[B

.field public e:Ljava/net/DatagramSocket;

.field public f:Ljava/net/DatagramPacket;

.field public g:La/a/a/a/m/m/e/a$a;

.field public final h:La/a/a/a/m/m/e/b;


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V
    .locals 1

    const-string v0, "mCarLifeContext"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, La/a/a/a/a/j/c;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V

    iput-object p1, p0, La/a/a/a/m/m/e/a;->c:La/a/a/a/c;

    new-instance p1, La/a/a/a/m/m/e/b;

    invoke-direct {p1}, La/a/a/a/m/m/e/b;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    return-void
.end method

.method public static final h(La/a/a/a/m/m/e/a;)Z
    .locals 0

    .line 1
    iget-object p0, p0, La/a/a/a/m/m/e/a;->c:La/a/a/a/c;

    invoke-interface {p0}, La/a/a/a/c;->w0()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 9

    const-string v0, "args"

    const-string v1, "tag"

    const-string v2, "CarLife_SDK"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    # --- 1.18 diag ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "==== [阶段4] 热点模式启动: 建 UDP 7999 监听 ===="

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "WirlessProtocolTransport connect listener"

    aput-object v7, v6, v5

    .line 1
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v7, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v7, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v8, v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v3, v2, v6}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v6, p0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    if-nez v6, :cond_1

    new-instance v6, Ljava/net/DatagramSocket;

    const/16 v7, 0x1f3f

    invoke-direct {v6, v7}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v6, p0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    const/16 v6, 0x400

    new-array v6, v6, [B

    iput-object v6, p0, La/a/a/a/m/m/e/a;->d:[B

    :cond_1
    iget-object v6, p0, La/a/a/a/m/m/e/a;->g:La/a/a/a/m/m/e/a$a;

    if-nez v6, :cond_3

    new-instance v6, La/a/a/a/m/m/e/a$a;

    invoke-direct {v6, p0}, La/a/a/a/m/m/e/a$a;-><init>(La/a/a/a/m/m/e/a;)V

    iput-object v6, p0, La/a/a/a/m/m/e/a;->g:La/a/a/a/m/m/e/a$a;

    invoke-static {v6}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    # --- 1.18 diag ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "✔ 热点模式: UDP 7999 监听线程已启动"

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "connect error:"

    aput-object v8, v7, v5

    aput-object v6, v7, v4

    .line 5
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    array-length v1, v7

    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v2, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    # --- patchM: 无线传输期间持有组播锁 ---
    iget-object v8, p0, La/a/a/a/m/m/e/a;->c:La/a/a/a/c;

    invoke-interface {v8}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, La/a/a/a/m/m/e/e;->a(Landroid/content/Context;)V

    # --- 1.18 diag: 等待手机 ---
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "⏳ 热点模式: 已监听 UDP 7999, 等手机广播/拿IP(需车机WLAN先连上手机热点)"

    aput-object v7, v6, v5

    invoke-static {v2, v6}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d()La/a/a/a/a/a/b;
    .locals 1

    iget-object v0, p0, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, La/a/a/a/m/m/e/b;->c()La/a/a/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, La/a/a/a/m/m/e/a;->g:La/a/a/a/m/m/e/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 1
    iput-boolean v1, v0, La/a/a/a/m/m/e/a$a;->b:Z

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, La/a/a/a/m/m/e/a;->g:La/a/a/a/m/m/e/a$a;

    iget-object v2, p0, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, La/a/a/a/m/m/e/b;->a()V

    :goto_0
    iget-object v2, p0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    iput-object v0, p0, La/a/a/a/m/m/e/a;->e:Ljava/net/DatagramSocket;

    iput-object v0, p0, La/a/a/a/m/m/e/a;->f:Ljava/net/DatagramPacket;

    invoke-virtual {p0}, La/a/a/a/a/j/c;->c()V

    # --- patchM: 释放组播锁 ---
    invoke-static {}, La/a/a/a/m/m/e/e;->b()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "WirlessProtocolTransport terminate"

    aput-object v2, v0, v1

    const-string v1, "CarLife_SDK"

    invoke-static {v1, v0}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(La/a/a/a/a/a/b;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, La/a/a/a/m/m/e/b;->b(La/a/a/a/a/a/b;)V

    return-void
.end method
