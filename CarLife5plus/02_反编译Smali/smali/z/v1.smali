.class public final Lz/v1;
.super Ly8/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public c:J

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lk2/w;


# direct methods
.method public constructor <init>(Lk2/w;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/v1;->f:Lk2/w;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Ly8/h;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lk2/m0;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz/v1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz/v1;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lz/v1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 2

    .line 1
    new-instance v0, Lz/v1;

    .line 2
    .line 3
    iget-object v1, p0, Lz/v1;->f:Lk2/w;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lz/v1;-><init>(Lk2/w;Lw8/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lz/v1;->e:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lz/v1;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-wide v2, p0, Lz/v1;->c:J

    .line 9
    .line 10
    iget-object v0, p0, Lz/v1;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lk2/m0;

    .line 13
    .line 14
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lz/v1;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lk2/m0;

    .line 32
    .line 33
    iget-object v0, p0, Lz/v1;->f:Lk2/w;

    .line 34
    .line 35
    iget-wide v2, v0, Lk2/w;->b:J

    .line 36
    .line 37
    invoke-virtual {p1}, Lk2/m0;->d()Lr2/q2;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-wide/16 v4, 0x28

    .line 45
    .line 46
    add-long/2addr v4, v2

    .line 47
    move-object v0, p1

    .line 48
    move-wide v2, v4

    .line 49
    :cond_2
    iput-object v0, p0, Lz/v1;->e:Ljava/lang/Object;

    .line 50
    .line 51
    iput-wide v2, p0, Lz/v1;->c:J

    .line 52
    .line 53
    iput v1, p0, Lz/v1;->d:I

    .line 54
    .line 55
    const/4 p1, 0x3

    .line 56
    invoke-static {v0, p0, p1}, Lz/d2;->c(Lk2/m0;Ly8/h;I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 61
    .line 62
    if-ne p1, v4, :cond_3

    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_3
    :goto_0
    check-cast p1, Lk2/w;

    .line 66
    .line 67
    iget-wide v4, p1, Lk2/w;->b:J

    .line 68
    .line 69
    cmp-long v6, v4, v2

    .line 70
    .line 71
    if-ltz v6, :cond_2

    .line 72
    .line 73
    return-object p1
.end method
