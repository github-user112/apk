.class public final Lv7/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lt7/e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "\u663e\u793a\u8bbe\u7f6e"

    .line 5
    .line 6
    iput-object v0, p0, Lv7/c;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lv7/c;->b:I

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    iput v0, p0, Lv7/c;->c:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lv7/m;->n:Ldc/l0;

    .line 6
    .line 7
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lv7/m;

    .line 12
    .line 13
    iget v2, v1, Lv7/m;->g:I

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v3, Lv7/g;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Lv7/g;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v3}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v1, v1, Lv7/m;->a:I

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v2, Lv7/p;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Lv7/p;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    new-instance v1, Lv7/n;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lv7/n;-><init>(Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final b(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->f(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c(ILf1/s;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lp4/o;->e(Lf1/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d()Lt7/h;
    .locals 1

    .line 1
    sget-object v0, Lt7/h;->c:Lt7/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lv7/c;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lv7/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lv7/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lt7/f;
    .locals 1

    .line 1
    sget-object v0, Lt7/f;->e:Lt7/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(ILf1/s;)V
    .locals 3

    .line 1
    const v0, -0x48ad1add

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    const/16 v1, 0x30

    .line 24
    .line 25
    sget-object v2, Lv7/l;->a:Lv7/l;

    .line 26
    .line 27
    invoke-virtual {v2, v0, p2, v1}, Lv7/l;->c(Ljava/util/List;Lf1/s;I)V

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    new-instance v0, La8/d;

    .line 37
    .line 38
    const/16 v1, 0x1a

    .line 39
    .line 40
    invoke-direct {v0, p1, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 44
    .line 45
    :cond_2
    return-void
.end method
