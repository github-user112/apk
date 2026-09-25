.class public final La/a/a/a/m/m/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/c$a;
.implements La/a/a/a/a/j/e;


# instance fields
.field public final b:La/a/a/a/c;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/a/a/a/a/j/c;",
            ">;"
        }
    .end annotation
.end field

.field public d:La/a/a/a/a/j/b;


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    invoke-virtual {p0}, La/a/a/a/m/m/b;->j()V

    return-void
.end method


# virtual methods
.method public synthetic F0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->c(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public final K0(La/a/a/a/a/a/b;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, La/a/a/a/a/j/b;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    const-string p1, "sendHandler"

    invoke-static {p1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic Q(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->e(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public final V()V
    .locals 2

    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/a/a/a/m/m/b;->j()V

    :cond_0
    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/j/c;

    invoke-virtual {v1}, La/a/a/a/a/j/c;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(La/a/a/a/a/j/c;)V
    .locals 5

    const-string v0, "transport"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/j/c;

    if-ne p1, v1, :cond_3

    new-instance v1, La/a/a/a/a/j/b;

    iget-object v2, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v1, v2, p1, v3, v4}, La/a/a/a/a/j/b;-><init>(La/a/a/a/c;La/a/a/a/a/j/c;ZI)V

    iput-object v1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    instance-of v1, p1, La/a/a/a/m/m/c/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    instance-of v1, p1, La/a/a/a/m/m/e/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    instance-of v1, p1, La/a/a/a/m/m/e/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const/16 v2, 0x9

    :goto_1
    invoke-interface {v1, v2}, La/a/a/a/c;->q(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, La/a/a/a/a/j/c;->f()V

    goto :goto_0

    :cond_4
    # --- 1.44: 任一传输建链成功 → 自动关闭二维码页 ---
    invoke-static {}, Lcom/baidu/carlifevehicle/logxfer/QrFallback;->onLinkUp()V

    # --- 1.42: 修正 1.41 Q2-B（两处写错）---
    #  1) 裸 check-cast e/a 对 USB(c/a)/直连(e/d) 传输必抛 CCE —— 三种传输都会走到
    #     这里(j/c.b() 虚分派)，必须先 instance-of 判别；非热点传输维持 1.40 原逻辑。
    #  2) 原条件 if-gez(恒真) 把 h+d 全跳过 —— 方向写反了。
    #     正确语义: 通道表为空 → 不发 h+d(不误报已就绪)；通道齐全/其他传输 → 1.40 原样。
    #     (e/a$a 先 e/b.d(ip) 建 7 通道、后 j/c.b() 报连接, 所以此处 size 已就绪)
    iget-object p1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    if-eqz p1, :cond_5

    iget-object p1, p1, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    instance-of v0, p1, La/a/a/a/m/m/e/a;

    if-eqz v0, :cond_5

    check-cast p1, La/a/a/a/m/m/e/a;

    iget-object p1, p1, La/a/a/a/m/m/e/a;->h:La/a/a/a/m/m/e/b;

    iget-object p1, p1, La/a/a/a/m/m/e/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_6

    :cond_5
    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, La/a/a/a/c;->h(Z)V

    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->d()V

    :cond_6
    iget-object p1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, La/a/a/a/a/j/b;->start()V

    :goto_2
    return-void
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic c0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->d(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public e(La/a/a/a/a/j/c;)V
    .locals 3

    const-string v0, "transport"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, La/a/a/a/a/j/b;->c:La/a/a/a/a/j/c;

    .line 2
    :goto_0
    invoke-static {p1, v0}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, La/a/a/a/a/j/b;->a()V

    :goto_1
    iput-object v1, p0, La/a/a/a/m/m/b;->d:La/a/a/a/a/j/b;

    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    new-instance v0, La/a/a/a/m/m/a;

    invoke-direct {v0, p0}, La/a/a/a/m/m/a;-><init>(La/a/a/a/m/m/b;)V

    const-wide/16 v1, 0x3e8

    invoke-interface {p1, v0, v1, v2}, La/a/a/a/c;->K(Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 3
    :cond_2
    iget-object p1, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/j/c;

    invoke-virtual {v0}, La/a/a/a/a/j/c;->e()V

    goto :goto_2

    .line 4
    :cond_3
    :goto_3
    iget-object p1, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-interface {p1}, La/a/a/a/c;->t0()V

    :cond_4
    return-void
.end method

.method public synthetic g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->a(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    const-string v1, "$this$removeFirst"

    .line 2
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, La/a/a/a/a/j/c;

    invoke-virtual {v0}, La/a/a/a/a/j/c;->f()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    const-string v1, "CONNECT_TYPE"

    invoke-static {}, Lcom/baidu/carlifevehicle/ConnModeHelper;->getDefaultType()I

    move-result v2

    invoke-interface {v0, v1, v2}, La/a/a/a/c;->B0(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    new-instance v1, La/a/a/a/m/m/c/a;

    iget-object v3, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-direct {v1, v3, p0}, La/a/a/a/m/m/c/a;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-interface {v0, v2}, La/a/a/a/c;->q(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    new-instance v2, La/a/a/a/m/m/e/d;

    iget-object v3, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-direct {v2, v3, p0}, La/a/a/a/m/m/e/d;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    new-instance v2, La/a/a/a/m/m/e/a;

    iget-object v3, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-direct {v2, v3, p0}, La/a/a/a/m/m/e/a;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, La/a/a/a/m/m/b;->b:La/a/a/a/c;

    invoke-interface {v0, v1}, La/a/a/a/c;->q(I)V

    :goto_2
    return-void
.end method

.method public synthetic n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->b(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->a(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method
