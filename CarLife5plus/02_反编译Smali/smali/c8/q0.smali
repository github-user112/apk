.class public final Lc8/q0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Ll8/r;

.field public final synthetic g:Lf1/b1;

.field public final synthetic h:Lf1/b1;

.field public final synthetic i:Lf1/b1;


# direct methods
.method public constructor <init>(ZLl8/r;Lf1/b1;Lf1/b1;Lf1/b1;Lw8/c;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc8/q0;->e:Z

    .line 2
    .line 3
    iput-object p2, p0, Lc8/q0;->f:Ll8/r;

    .line 4
    .line 5
    iput-object p3, p0, Lc8/q0;->g:Lf1/b1;

    .line 6
    .line 7
    iput-object p4, p0, Lc8/q0;->h:Lf1/b1;

    .line 8
    .line 9
    iput-object p5, p0, Lc8/q0;->i:Lf1/b1;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Ly8/i;-><init>(ILw8/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lc8/q0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lc8/q0;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lc8/q0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 7

    .line 1
    new-instance v0, Lc8/q0;

    .line 2
    .line 3
    iget-object v4, p0, Lc8/q0;->h:Lf1/b1;

    .line 4
    .line 5
    iget-object v5, p0, Lc8/q0;->i:Lf1/b1;

    .line 6
    .line 7
    iget-boolean v1, p0, Lc8/q0;->e:Z

    .line 8
    .line 9
    iget-object v2, p0, Lc8/q0;->f:Ll8/r;

    .line 10
    .line 11
    iget-object v3, p0, Lc8/q0;->g:Lf1/b1;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lc8/q0;-><init>(ZLl8/r;Lf1/b1;Lf1/b1;Lf1/b1;Lw8/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lc8/q0;->e:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lc8/q0;->f:Ll8/r;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    :try_start_0
    iget-object v2, p0, Lc8/q0;->g:Lf1/b1;

    .line 13
    .line 14
    iget-object v3, p0, Lc8/q0;->h:Lf1/b1;

    .line 15
    .line 16
    iget-object v4, p0, Lc8/q0;->i:Lf1/b1;

    .line 17
    .line 18
    new-instance v5, Lc8/k;

    .line 19
    .line 20
    invoke-direct {v5, p1, v2, v3, v4}, Lc8/k;-><init>(ILf1/b1;Lf1/b1;Lf1/b1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0, v5}, Ll8/r;->a(Ljava/util/List;Lf9/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 29
    .line 30
    const-string v1, "\u4e0d\u652f\u6301\u65e5\u5fd7\u76d1\u542c"

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v2, v1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v3, p1, v2

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    aput-object v0, p1, v2

    .line 48
    .line 49
    const-string v0, "CarLife_Vehicle"

    .line 50
    .line 51
    invoke-virtual {v1, v0, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, v1, Ll8/r;->b:Lac/j1;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iput-object v0, v1, Ll8/r;->b:Lac/j1;

    .line 63
    .line 64
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 65
    .line 66
    return-object p1
.end method
