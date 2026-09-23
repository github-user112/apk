.class public final Le8/f;
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
    const-string v0, "CarLife\u8bbe\u7f6e"

    .line 5
    .line 6
    iput-object v0, p0, Le8/f;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Le8/f;->b:I

    .line 10
    .line 11
    iput v0, p0, Le8/f;->c:I

    .line 12
    .line 13
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
    new-instance v1, Lf8/d;

    .line 6
    .line 7
    const-string v2, "context"

    .line 8
    .line 9
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/baidu/carlife/sdk/CarLifeContext;->registerTransportListener(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v2, "\u3010\u89c6\u9891\u6a21\u5757\u3011\u6ce8\u518c\u89c6\u9891\u6a21\u5757"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    const-string v2, "AudioEntry"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
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
    .locals 2

    .line 1
    const v0, -0x3854aca2

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
    sget-object v0, Le8/d;->a:Le8/d;

    .line 23
    .line 24
    const/4 v1, 0x6

    .line 25
    invoke-virtual {v0, v1, p2}, Le8/d;->a(ILf1/s;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    new-instance v0, Le8/e;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, p1, v1}, Le8/e;-><init>(Le8/f;II)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 41
    .line 42
    :cond_2
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
    iget v0, p0, Le8/f;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Le8/f;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le8/f;->a:Ljava/lang/String;

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
    const v0, 0xff91c81

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
    sget-object v0, Le8/d;->b:Le8/d;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/16 v2, 0x30

    .line 26
    .line 27
    invoke-virtual {v0, v1, p2, v2}, Le8/d;->c(Ljava/util/List;Lf1/s;I)V

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
    new-instance v0, Le8/e;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, p0, p1, v1}, Le8/e;-><init>(Le8/f;II)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 43
    .line 44
    :cond_2
    return-void
.end method
