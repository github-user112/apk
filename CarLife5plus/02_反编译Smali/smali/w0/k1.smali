.class public final Lw0/k1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:I

.field public final synthetic f:Lw0/r1;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lw0/r1;ZLw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw0/k1;->f:Lw0/r1;

    .line 2
    .line 3
    iput-boolean p2, p0, Lw0/k1;->g:Z

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lw0/k1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lw0/k1;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lw0/k1;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lw0/k1;

    .line 2
    .line 3
    iget-object v0, p0, Lw0/k1;->f:Lw0/r1;

    .line 4
    .line 5
    iget-boolean v1, p0, Lw0/k1;->g:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lw0/k1;-><init>(Lw0/r1;ZLw8/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lw0/k1;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 5
    .line 6
    iget-object v3, p0, Lw0/k1;->f:Lw0/r1;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lw0/r1;->m()Lg3/w;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-wide v4, p1, Lg3/w;->b:J

    .line 32
    .line 33
    invoke-static {v4, v5}, Lb3/n0;->c(J)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object p1, v3, Lw0/r1;->g:Lr2/d1;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3}, Lw0/r1;->m()Lg3/w;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lg5/a;->J(Lg3/w;)Lb3/g;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lc0/d;->a(Lb3/g;)Lr2/c1;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput v1, p0, Lw0/k1;->e:I

    .line 57
    .line 58
    check-cast p1, Lr2/g;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lr2/g;->a(Lr2/c1;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 64
    .line 65
    if-ne v2, p1, :cond_3

    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lw0/k1;->g:Z

    .line 69
    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    :goto_1
    return-object v2

    .line 73
    :cond_4
    invoke-virtual {v3}, Lw0/r1;->m()Lg3/w;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-wide v0, p1, Lg3/w;->b:J

    .line 78
    .line 79
    invoke-static {v0, v1}, Lb3/n0;->e(J)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {v3}, Lw0/r1;->m()Lg3/w;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v0, v0, Lg3/w;->a:Lb3/g;

    .line 88
    .line 89
    invoke-static {p1, p1}, Lb3/d0;->b(II)J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-static {v0, v4, v5}, Lw0/r1;->e(Lb3/g;J)Lg3/w;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, v3, Lw0/r1;->c:Lf9/k;

    .line 98
    .line 99
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget-wide v0, p1, Lg3/w;->b:J

    .line 103
    .line 104
    new-instance p1, Lb3/n0;

    .line 105
    .line 106
    invoke-direct {p1, v0, v1}, Lb3/n0;-><init>(J)V

    .line 107
    .line 108
    .line 109
    iput-object p1, v3, Lw0/r1;->v:Lb3/n0;

    .line 110
    .line 111
    sget-object p1, Ll0/i0;->a:Ll0/i0;

    .line 112
    .line 113
    invoke-virtual {v3, p1}, Lw0/r1;->p(Ll0/i0;)V

    .line 114
    .line 115
    .line 116
    return-object v2
.end method
