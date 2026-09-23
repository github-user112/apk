.class public final Li7/k;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Ljc/a;

.field public f:Z

.field public g:I

.field public h:I

.field public final synthetic i:Z

.field public final synthetic j:I


# direct methods
.method public constructor <init>(ILw8/c;Z)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Li7/k;->i:Z

    .line 2
    .line 3
    iput p1, p0, Li7/k;->j:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

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
    invoke-virtual {p0, p1, p2}, Li7/k;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Li7/k;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Li7/k;->k(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Li7/k;

    .line 2
    .line 3
    iget-boolean v0, p0, Li7/k;->i:Z

    .line 4
    .line 5
    iget v1, p0, Li7/k;->j:I

    .line 6
    .line 7
    invoke-direct {p1, v1, p2, v0}, Li7/k;-><init>(ILw8/c;Z)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Li7/k;->h:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Li7/k;->g:I

    .line 15
    .line 16
    iget-boolean v1, p0, Li7/k;->f:Z

    .line 17
    .line 18
    iget-object v2, p0, Li7/k;->e:Ljc/a;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget v0, p0, Li7/k;->g:I

    .line 35
    .line 36
    iget-boolean v2, p0, Li7/k;->f:Z

    .line 37
    .line 38
    iget-object v5, p0, Li7/k;->e:Ljc/a;

    .line 39
    .line 40
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object p1, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Li7/p;->f:Ljc/c;

    .line 49
    .line 50
    iput-object p1, p0, Li7/k;->e:Ljc/a;

    .line 51
    .line 52
    iget-boolean v0, p0, Li7/k;->i:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Li7/k;->f:Z

    .line 55
    .line 56
    iget v5, p0, Li7/k;->j:I

    .line 57
    .line 58
    iput v5, p0, Li7/k;->g:I

    .line 59
    .line 60
    iput v2, p0, Li7/k;->h:I

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-ne v2, v4, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move v2, v0

    .line 70
    move v0, v5

    .line 71
    :goto_0
    :try_start_1
    sget-object v5, Li7/p;->a:Lr8/o;

    .line 72
    .line 73
    iput-object p1, p0, Li7/k;->e:Ljc/a;

    .line 74
    .line 75
    iput-boolean v2, p0, Li7/k;->f:Z

    .line 76
    .line 77
    iput v0, p0, Li7/k;->g:I

    .line 78
    .line 79
    iput v1, p0, Li7/k;->h:I

    .line 80
    .line 81
    invoke-static {p0}, Li7/p;->f(Ly8/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    if-ne v1, v4, :cond_4

    .line 86
    .line 87
    :goto_1
    return-object v4

    .line 88
    :cond_4
    move v1, v2

    .line 89
    move-object v2, p1

    .line 90
    :goto_2
    :try_start_2
    sget-object p1, Li7/p;->e:Lfc/c;

    .line 91
    .line 92
    new-instance v4, Li7/n;

    .line 93
    .line 94
    invoke-direct {v4, v0, v3, v1}, Li7/n;-><init>(ILw8/c;Z)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x3

    .line 98
    invoke-static {p1, v3, v4, v0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    sput-object p1, Li7/p;->c:Lac/j1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    check-cast v2, Ljc/c;

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 110
    .line 111
    return-object p1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move-object v2, p1

    .line 114
    move-object p1, v0

    .line 115
    :goto_3
    check-cast v2, Ljc/c;

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method
