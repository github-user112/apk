.class public final Lz/p1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Lz/s1;

.field public f:Lg9/w;

.field public g:J

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lz/s1;

.field public final synthetic k:Lg9/w;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Lz/s1;Lg9/w;JLw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/p1;->j:Lz/s1;

    .line 2
    .line 3
    iput-object p2, p0, Lz/p1;->k:Lg9/w;

    .line 4
    .line 5
    iput-wide p3, p0, Lz/p1;->l:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lz/q1;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz/p1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz/p1;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lz/p1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 6

    .line 1
    new-instance v0, Lz/p1;

    .line 2
    .line 3
    iget-object v2, p0, Lz/p1;->k:Lg9/w;

    .line 4
    .line 5
    iget-wide v3, p0, Lz/p1;->l:J

    .line 6
    .line 7
    iget-object v1, p0, Lz/p1;->j:Lz/s1;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Lz/p1;-><init>(Lz/s1;Lg9/w;JLw8/c;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lz/p1;->i:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lz/p1;->h:I

    .line 2
    .line 3
    sget-object v1, Lz/w0;->b:Lz/w0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    iget-wide v3, p0, Lz/p1;->g:J

    .line 11
    .line 12
    iget-object v0, p0, Lz/p1;->f:Lg9/w;

    .line 13
    .line 14
    iget-object v5, p0, Lz/p1;->e:Lz/s1;

    .line 15
    .line 16
    iget-object v6, p0, Lz/p1;->i:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v6, Lz/s1;

    .line 19
    .line 20
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lz/p1;->i:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lz/q1;

    .line 38
    .line 39
    new-instance v0, Lz/o1;

    .line 40
    .line 41
    iget-object v5, p0, Lz/p1;->j:Lz/s1;

    .line 42
    .line 43
    invoke-direct {v0, v5, p1}, Lz/o1;-><init>(Lz/s1;Lz/q1;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v5, Lz/s1;->c:Lz/h;

    .line 47
    .line 48
    iget-object v3, p0, Lz/p1;->k:Lg9/w;

    .line 49
    .line 50
    iget-wide v6, v3, Lg9/w;->a:J

    .line 51
    .line 52
    iget-object v4, v5, Lz/s1;->d:Lz/w0;

    .line 53
    .line 54
    iget-wide v8, p0, Lz/p1;->l:J

    .line 55
    .line 56
    if-ne v4, v1, :cond_2

    .line 57
    .line 58
    invoke-static {v8, v9}, Ln3/q;->b(J)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {v8, v9}, Ln3/q;->c(J)F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    :goto_0
    invoke-virtual {v5, v4}, Lz/s1;->d(F)F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iput-object v5, p0, Lz/p1;->i:Ljava/lang/Object;

    .line 72
    .line 73
    iput-object v5, p0, Lz/p1;->e:Lz/s1;

    .line 74
    .line 75
    iput-object v3, p0, Lz/p1;->f:Lg9/w;

    .line 76
    .line 77
    iput-wide v6, p0, Lz/p1;->g:J

    .line 78
    .line 79
    iput v2, p0, Lz/p1;->h:I

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v8, Lz/g;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    invoke-direct {v8, v4, p1, v0, v9}, Lz/g;-><init>(FLz/h;Lz/o1;Lw8/c;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Landroidx/compose/foundation/gestures/a;->c:Lz/e1;

    .line 91
    .line 92
    invoke-static {p1, v8, p0}, Lac/z;->y(Lw8/h;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 97
    .line 98
    if-ne p1, v0, :cond_3

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_3
    move-object v0, v3

    .line 102
    move-wide v3, v6

    .line 103
    move-object v6, v5

    .line 104
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v6, p1}, Lz/s1;->d(F)F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget-object v5, v5, Lz/s1;->d:Lz/w0;

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    if-ne v5, v1, :cond_4

    .line 118
    .line 119
    const/4 v1, 0x2

    .line 120
    invoke-static {v3, v4, p1, v6, v1}, Ln3/q;->a(JFFI)J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-static {v3, v4, v6, p1, v2}, Ln3/q;->a(JFFI)J

    .line 126
    .line 127
    .line 128
    move-result-wide v1

    .line 129
    :goto_2
    iput-wide v1, v0, Lg9/w;->a:J

    .line 130
    .line 131
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 132
    .line 133
    return-object p1
.end method
