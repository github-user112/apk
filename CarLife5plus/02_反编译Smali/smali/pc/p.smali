.class public final Lpc/p;
.super Ly8/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public c:I

.field public synthetic d:Lr8/b;

.field public final synthetic e:Lj/g;


# direct methods
.method public constructor <init>(Lj/g;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/p;->e:Lj/g;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Ly8/h;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lr8/b;

    .line 2
    .line 3
    check-cast p2, Lr8/z;

    .line 4
    .line 5
    check-cast p3, Lw8/c;

    .line 6
    .line 7
    new-instance p2, Lpc/p;

    .line 8
    .line 9
    iget-object v0, p0, Lpc/p;->e:Lj/g;

    .line 10
    .line 11
    invoke-direct {p2, v0, p3}, Lpc/p;-><init>(Lj/g;Lw8/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p2, Lpc/p;->d:Lr8/b;

    .line 15
    .line 16
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lpc/p;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lpc/p;->e:Lj/g;

    .line 2
    .line 3
    iget-object v1, v0, Lj/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lha/e;

    .line 6
    .line 7
    iget-object v2, p0, Lpc/p;->d:Lr8/b;

    .line 8
    .line 9
    iget v3, p0, Lpc/p;->c:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-ne v3, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lha/e;->q()B

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Lj/g;->h(Z)Loc/y;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_2
    const/4 v3, 0x0

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lj/g;->h(Z)Loc/y;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_3
    const/4 v5, 0x6

    .line 51
    const/4 v6, 0x0

    .line 52
    if-ne p1, v5, :cond_5

    .line 53
    .line 54
    iput-object v6, p0, Lpc/p;->d:Lr8/b;

    .line 55
    .line 56
    iput v4, p0, Lpc/p;->c:I

    .line 57
    .line 58
    invoke-static {v0, v2, p0}, Lj/g;->a(Lj/g;Lr8/b;Ly8/a;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 63
    .line 64
    if-ne p1, v0, :cond_4

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_4
    :goto_0
    check-cast p1, Loc/j;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_5
    const/16 v2, 0x8

    .line 71
    .line 72
    if-ne p1, v2, :cond_6

    .line 73
    .line 74
    invoke-virtual {v0}, Lj/g;->g()Loc/d;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_6
    const-string p1, "Can\'t begin reading element, unexpected token"

    .line 80
    .line 81
    invoke-static {v1, p1, v3, v6, v5}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    throw v6
.end method
