.class public final Lf0/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz/m1;


# static fields
.field public static final x:Lu0/j;


# instance fields
.field public final a:Lf0/a;

.field public b:Z

.field public c:Lf0/m;

.field public d:Z

.field public final e:Lf0/p;

.field public final f:Lf1/k1;

.field public final g:Lb0/k;

.field public h:F

.field public final i:Lz/j;

.field public final j:Z

.field public k:Lq2/h0;

.field public final l:Lf0/s;

.field public final m:Lh0/e;

.field public final n:Landroidx/compose/foundation/lazy/layout/b;

.field public final o:Lh0/k;

.field public final p:Lh0/h0;

.field public final q:La2/d;

.field public final r:Lh0/e0;

.field public final s:Lf1/b1;

.field public final t:Lf1/k1;

.field public final u:Lf1/k1;

.field public final v:Lf1/b1;

.field public final w:Lu0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf0/q;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lf0/q;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lc8/y0;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-direct {v1, v2}, Lc8/y0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lo1/k;->b(Lf9/n;Lf9/k;)Lu0/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lf0/u;->x:Lu0/j;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    new-instance v0, Lf0/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lf0/a;->a:I

    .line 8
    .line 9
    iput v1, v0, Lf0/a;->c:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lf0/u;->a:Lf0/a;

    .line 15
    .line 16
    new-instance v0, Lf0/p;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p1, p2, v1}, Lf0/p;-><init>(III)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lf0/u;->e:Lf0/p;

    .line 23
    .line 24
    sget-object p2, Lf0/w;->a:Lf0/m;

    .line 25
    .line 26
    sget-object v0, Lf1/w0;->c:Lf1/w0;

    .line 27
    .line 28
    new-instance v1, Lf1/k1;

    .line 29
    .line 30
    invoke-direct {v1, p2, v0}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lf0/u;->f:Lf1/k1;

    .line 34
    .line 35
    new-instance p2, Lb0/k;

    .line 36
    .line 37
    invoke-direct {p2}, Lb0/k;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lf0/u;->g:Lb0/k;

    .line 41
    .line 42
    new-instance p2, La8/q;

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    invoke-direct {p2, v0, p0}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lz/j;

    .line 49
    .line 50
    invoke-direct {v0, p2}, Lz/j;-><init>(Lf9/k;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lf0/u;->i:Lz/j;

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lf0/u;->j:Z

    .line 57
    .line 58
    new-instance p2, Lf0/s;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-direct {p2, p0, v0}, Lf0/s;-><init>(Lz/m1;I)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lf0/u;->l:Lf0/s;

    .line 65
    .line 66
    new-instance p2, Lh0/e;

    .line 67
    .line 68
    invoke-direct {p2}, Lh0/e;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lf0/u;->m:Lh0/e;

    .line 72
    .line 73
    new-instance p2, Landroidx/compose/foundation/lazy/layout/b;

    .line 74
    .line 75
    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/b;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Lf0/u;->n:Landroidx/compose/foundation/lazy/layout/b;

    .line 79
    .line 80
    new-instance p2, Lh0/k;

    .line 81
    .line 82
    invoke-direct {p2, v0}, Lh0/k;-><init>(I)V

    .line 83
    .line 84
    .line 85
    iput-object p2, p0, Lf0/u;->o:Lh0/k;

    .line 86
    .line 87
    new-instance p2, Lh0/h0;

    .line 88
    .line 89
    new-instance v0, Lf0/r;

    .line 90
    .line 91
    invoke-direct {v0, p0, p1}, Lf0/r;-><init>(Lf0/u;I)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p2, v0}, Lh0/h0;-><init>(Lf9/k;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lf0/u;->p:Lh0/h0;

    .line 98
    .line 99
    new-instance p1, La2/d;

    .line 100
    .line 101
    const/16 p2, 0xf

    .line 102
    .line 103
    invoke-direct {p1, p2, p0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lf0/u;->q:La2/d;

    .line 107
    .line 108
    new-instance p1, Lh0/e0;

    .line 109
    .line 110
    invoke-direct {p1}, Lh0/e0;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lf0/u;->r:Lh0/e0;

    .line 114
    .line 115
    invoke-static {}, Lh0/z;->h()Lf1/b1;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lf0/u;->s:Lf1/b1;

    .line 120
    .line 121
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    iput-object p2, p0, Lf0/u;->t:Lf1/k1;

    .line 128
    .line 129
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p0, Lf0/u;->u:Lf1/k1;

    .line 134
    .line 135
    invoke-static {}, Lh0/z;->h()Lf1/b1;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lf0/u;->v:Lf1/b1;

    .line 140
    .line 141
    new-instance p1, Lu0/j;

    .line 142
    .line 143
    const/16 p2, 0xb

    .line 144
    .line 145
    invoke-direct {p1, p2}, Lu0/j;-><init>(I)V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Lf0/u;->w:Lu0/j;

    .line 149
    .line 150
    return-void
.end method

.method public static i(Lf0/u;ILy8/i;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb8/g;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, v1, v2}, Lb8/g;-><init>(Lz/m1;ILw8/c;I)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lx/v0;->a:Lx/v0;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, p2}, Lf0/u;->e(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/u;->i:Lz/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/j;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/u;->u:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/u;->t:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final d(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/u;->i:Lz/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz/j;->d(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lf0/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lf0/t;

    .line 7
    .line 8
    iget v1, v0, Lf0/t;->h:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lf0/t;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lf0/t;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lf0/t;-><init>(Lf0/u;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lf0/t;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lf0/t;->h:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-eq v1, v3, :cond_2

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    iget-object p1, v0, Lf0/t;->e:Ly8/i;

    .line 52
    .line 53
    move-object p2, p1

    .line 54
    check-cast p2, Lf9/n;

    .line 55
    .line 56
    iget-object p1, v0, Lf0/t;->d:Lx/v0;

    .line 57
    .line 58
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p3}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, v0, Lf0/t;->d:Lx/v0;

    .line 66
    .line 67
    move-object p3, p2

    .line 68
    check-cast p3, Ly8/i;

    .line 69
    .line 70
    iput-object p3, v0, Lf0/t;->e:Ly8/i;

    .line 71
    .line 72
    iput v3, v0, Lf0/t;->h:I

    .line 73
    .line 74
    iget-object p3, p0, Lf0/u;->m:Lh0/e;

    .line 75
    .line 76
    invoke-virtual {p3, v0}, Lh0/e;->i(Ly8/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    if-ne p3, v4, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_1
    const/4 p3, 0x0

    .line 84
    iput-object p3, v0, Lf0/t;->d:Lx/v0;

    .line 85
    .line 86
    iput-object p3, v0, Lf0/t;->e:Ly8/i;

    .line 87
    .line 88
    iput v2, v0, Lf0/t;->h:I

    .line 89
    .line 90
    iget-object p3, p0, Lf0/u;->i:Lz/j;

    .line 91
    .line 92
    invoke-virtual {p3, p1, p2, v0}, Lz/j;->e(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v4, :cond_5

    .line 97
    .line 98
    :goto_2
    return-object v4

    .line 99
    :cond_5
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 100
    .line 101
    return-object p1
.end method

.method public final f(Lf0/m;ZZ)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v0, Lf0/m;->k:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, v0, Lf0/m;->n:I

    .line 8
    .line 9
    iget v4, v0, Lf0/m;->b:I

    .line 10
    .line 11
    iget-object v5, v0, Lf0/m;->a:Lf0/n;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-object v7, v1, Lf0/u;->p:Lh0/h0;

    .line 18
    .line 19
    iput v6, v7, Lh0/h0;->e:I

    .line 20
    .line 21
    iget-object v6, v1, Lf0/u;->w:Lu0/j;

    .line 22
    .line 23
    iget-object v7, v1, Lf0/u;->e:Lf0/p;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    if-nez p2, :cond_4

    .line 28
    .line 29
    iget-boolean v10, v1, Lf0/u;->b:Z

    .line 30
    .line 31
    if-eqz v10, :cond_4

    .line 32
    .line 33
    iput-object v0, v1, Lf0/u;->c:Lf0/m;

    .line 34
    .line 35
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lp1/f;->e()Lf9/k;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v3, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v3, v8

    .line 48
    :goto_0
    invoke-static {v2}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    :try_start_0
    iget-object v0, v6, Lu0/j;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lv/k;

    .line 55
    .line 56
    iget-object v0, v0, Lv/k;->b:Lf1/k1;

    .line 57
    .line 58
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    cmpg-float v0, v0, v9

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-eqz v5, :cond_3

    .line 74
    .line 75
    iget v0, v5, Lf0/n;->a:I

    .line 76
    .line 77
    iget-object v5, v7, Lf0/p;->b:Lf1/h1;

    .line 78
    .line 79
    invoke-virtual {v5}, Lf1/h1;->f()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-ne v0, v5, :cond_3

    .line 84
    .line 85
    iget-object v0, v7, Lf0/p;->c:Lf1/h1;

    .line 86
    .line 87
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ne v4, v0, :cond_3

    .line 92
    .line 93
    iget-object v0, v6, Lu0/j;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lac/j1;

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0, v8}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    new-instance v0, Lv/k;

    .line 103
    .line 104
    sget-object v4, Lv/d;->j:Lv/w0;

    .line 105
    .line 106
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    const/16 v7, 0x3c

    .line 111
    .line 112
    invoke-direct {v0, v4, v5, v8, v7}, Lv/k;-><init>(Lv/w0;Ljava/lang/Object;Lv/p;I)V

    .line 113
    .line 114
    .line 115
    iput-object v0, v6, Lu0/j;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    :goto_1
    invoke-static {v2, v10, v3}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :goto_2
    invoke-static {v2, v10, v3}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_4
    const/4 v10, 0x1

    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    iput-boolean v10, v1, Lf0/u;->b:Z

    .line 132
    .line 133
    :cond_5
    if-eqz v5, :cond_6

    .line 134
    .line 135
    iget v12, v5, Lf0/n;->a:I

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    const/4 v12, 0x0

    .line 139
    :goto_3
    if-nez v12, :cond_8

    .line 140
    .line 141
    if-eqz v4, :cond_7

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_7
    const/4 v12, 0x0

    .line 145
    goto :goto_5

    .line 146
    :cond_8
    :goto_4
    const/4 v12, 0x1

    .line 147
    :goto_5
    iget-object v13, v1, Lf0/u;->u:Lf1/k1;

    .line 148
    .line 149
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-virtual {v13, v12}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-boolean v12, v0, Lf0/m;->c:Z

    .line 157
    .line 158
    iget-object v13, v1, Lf0/u;->t:Lf1/k1;

    .line 159
    .line 160
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-virtual {v13, v12}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget v12, v1, Lf0/u;->h:F

    .line 168
    .line 169
    iget v13, v0, Lf0/m;->d:F

    .line 170
    .line 171
    sub-float/2addr v12, v13

    .line 172
    iput v12, v1, Lf0/u;->h:F

    .line 173
    .line 174
    iget-object v12, v1, Lf0/u;->f:Lf1/k1;

    .line 175
    .line 176
    invoke-virtual {v12, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    const-string v12, "scrollOffset should be non-negative"

    .line 180
    .line 181
    if-eqz p3, :cond_b

    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    int-to-float v2, v4

    .line 187
    cmpl-float v2, v2, v9

    .line 188
    .line 189
    if-ltz v2, :cond_9

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_9
    const/4 v10, 0x0

    .line 193
    :goto_6
    if-nez v10, :cond_a

    .line 194
    .line 195
    invoke-static {v12}, Lc0/b;->c(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    iget-object v2, v7, Lf0/p;->c:Lf1/h1;

    .line 199
    .line 200
    invoke-virtual {v2, v4}, Lf1/h1;->g(I)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_e

    .line 204
    .line 205
    :cond_b
    invoke-static {v2}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    check-cast v13, Lf0/n;

    .line 210
    .line 211
    invoke-static {v2}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    check-cast v14, Lf0/n;

    .line 216
    .line 217
    const-wide/16 v15, -0x1

    .line 218
    .line 219
    if-eqz v13, :cond_c

    .line 220
    .line 221
    iget v13, v13, Lf0/n;->a:I

    .line 222
    .line 223
    move-object/from16 v17, v12

    .line 224
    .line 225
    int-to-long v11, v13

    .line 226
    goto :goto_7

    .line 227
    :cond_c
    move-object/from16 v17, v12

    .line 228
    .line 229
    move-wide v11, v15

    .line 230
    :goto_7
    const-string v13, "firstVisibleItem:index"

    .line 231
    .line 232
    invoke-static {v13, v11, v12}, Li9/a;->Y(Ljava/lang/String;J)V

    .line 233
    .line 234
    .line 235
    if-eqz v14, :cond_d

    .line 236
    .line 237
    iget v11, v14, Lf0/n;->a:I

    .line 238
    .line 239
    int-to-long v11, v11

    .line 240
    goto :goto_8

    .line 241
    :cond_d
    move-wide v11, v15

    .line 242
    :goto_8
    const-string v13, "lastVisibleItem:index"

    .line 243
    .line 244
    invoke-static {v13, v11, v12}, Li9/a;->Y(Ljava/lang/String;J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    if-eqz v5, :cond_e

    .line 251
    .line 252
    iget-object v11, v5, Lf0/n;->g:Ljava/lang/Object;

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_e
    move-object v11, v8

    .line 256
    :goto_9
    iput-object v11, v7, Lf0/p;->e:Ljava/lang/Object;

    .line 257
    .line 258
    iget-boolean v11, v7, Lf0/p;->d:Z

    .line 259
    .line 260
    if-nez v11, :cond_f

    .line 261
    .line 262
    if-lez v3, :cond_13

    .line 263
    .line 264
    :cond_f
    iput-boolean v10, v7, Lf0/p;->d:Z

    .line 265
    .line 266
    int-to-float v11, v4

    .line 267
    cmpl-float v11, v11, v9

    .line 268
    .line 269
    if-ltz v11, :cond_10

    .line 270
    .line 271
    const/4 v11, 0x1

    .line 272
    goto :goto_a

    .line 273
    :cond_10
    const/4 v11, 0x0

    .line 274
    :goto_a
    if-nez v11, :cond_11

    .line 275
    .line 276
    invoke-static/range {v17 .. v17}, Lc0/b;->c(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :cond_11
    if-eqz v5, :cond_12

    .line 280
    .line 281
    iget v5, v5, Lf0/n;->a:I

    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_12
    const/4 v5, 0x0

    .line 285
    :goto_b
    invoke-virtual {v7, v5, v4}, Lf0/p;->a(II)V

    .line 286
    .line 287
    .line 288
    :cond_13
    iget-boolean v4, v1, Lf0/u;->j:Z

    .line 289
    .line 290
    if-eqz v4, :cond_19

    .line 291
    .line 292
    iget-object v4, v1, Lf0/u;->a:Lf0/a;

    .line 293
    .line 294
    iget v5, v4, Lf0/a;->a:I

    .line 295
    .line 296
    iget-boolean v7, v4, Lf0/a;->b:Z

    .line 297
    .line 298
    const/4 v11, -0x1

    .line 299
    if-eq v5, v11, :cond_15

    .line 300
    .line 301
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v12

    .line 305
    if-nez v12, :cond_15

    .line 306
    .line 307
    invoke-static {v0, v7}, Lf0/a;->b(Lf0/m;Z)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    if-eq v5, v7, :cond_15

    .line 312
    .line 313
    iput v11, v4, Lf0/a;->a:I

    .line 314
    .line 315
    iget-object v5, v4, Lf0/a;->e:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v5, Lh0/g0;

    .line 318
    .line 319
    if-eqz v5, :cond_14

    .line 320
    .line 321
    invoke-interface {v5}, Lh0/g0;->cancel()V

    .line 322
    .line 323
    .line 324
    :cond_14
    iput-object v8, v4, Lf0/a;->e:Ljava/lang/Object;

    .line 325
    .line 326
    :cond_15
    iget v5, v4, Lf0/a;->c:I

    .line 327
    .line 328
    if-eq v5, v11, :cond_18

    .line 329
    .line 330
    iget v7, v4, Lf0/a;->d:F

    .line 331
    .line 332
    cmpg-float v7, v7, v9

    .line 333
    .line 334
    if-nez v7, :cond_16

    .line 335
    .line 336
    goto :goto_d

    .line 337
    :cond_16
    if-eq v5, v3, :cond_18

    .line 338
    .line 339
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-nez v2, :cond_18

    .line 344
    .line 345
    iget v2, v4, Lf0/a;->d:F

    .line 346
    .line 347
    cmpg-float v2, v2, v9

    .line 348
    .line 349
    if-gez v2, :cond_17

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_17
    const/4 v10, 0x0

    .line 353
    :goto_c
    invoke-static {v0, v10}, Lf0/a;->b(Lf0/m;Z)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-ltz v2, :cond_18

    .line 358
    .line 359
    if-ge v2, v3, :cond_18

    .line 360
    .line 361
    iput v2, v4, Lf0/a;->a:I

    .line 362
    .line 363
    iget-object v5, v1, Lf0/u;->q:La2/d;

    .line 364
    .line 365
    invoke-static {v5, v2}, La2/f;->P(La2/d;I)Lh0/g0;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iput-object v2, v4, Lf0/a;->e:Ljava/lang/Object;

    .line 370
    .line 371
    :cond_18
    :goto_d
    iput v3, v4, Lf0/a;->c:I

    .line 372
    .line 373
    :cond_19
    :goto_e
    if-eqz p2, :cond_1a

    .line 374
    .line 375
    iget v2, v0, Lf0/m;->f:F

    .line 376
    .line 377
    iget-object v3, v0, Lf0/m;->i:Ln3/c;

    .line 378
    .line 379
    iget-object v0, v0, Lf0/m;->h:Lac/w;

    .line 380
    .line 381
    invoke-virtual {v6, v2, v3, v0}, Lu0/j;->L(FLn3/c;Lac/w;)V

    .line 382
    .line 383
    .line 384
    :cond_1a
    return-void
.end method

.method public final g()Lf0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/u;->f:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf0/m;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h(FLf0/m;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf0/u;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p2, Lf0/m;->k:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v1, p2, Lf0/m;->k:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Lf0/u;->a:Lf0/a;

    .line 14
    .line 15
    if-nez v0, :cond_5

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    cmpg-float v0, p1, v0

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {p2, v0}, Lf0/a;->b(Lf0/m;Z)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ltz v3, :cond_5

    .line 30
    .line 31
    iget v4, p2, Lf0/m;->n:I

    .line 32
    .line 33
    if-ge v3, v4, :cond_5

    .line 34
    .line 35
    iget v4, v2, Lf0/a;->a:I

    .line 36
    .line 37
    if-eq v3, v4, :cond_3

    .line 38
    .line 39
    iget-boolean v4, v2, Lf0/a;->b:Z

    .line 40
    .line 41
    if-eq v4, v0, :cond_2

    .line 42
    .line 43
    const/4 v4, -0x1

    .line 44
    iput v4, v2, Lf0/a;->a:I

    .line 45
    .line 46
    iget-object v4, v2, Lf0/a;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Lh0/g0;

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-interface {v4}, Lh0/g0;->cancel()V

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 v4, 0x0

    .line 56
    iput-object v4, v2, Lf0/a;->e:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_2
    iput-boolean v0, v2, Lf0/a;->b:Z

    .line 59
    .line 60
    iput v3, v2, Lf0/a;->a:I

    .line 61
    .line 62
    iget-object v4, p0, Lf0/u;->q:La2/d;

    .line 63
    .line 64
    invoke-static {v4, v3}, La2/f;->P(La2/d;I)Lh0/g0;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput-object v3, v2, Lf0/a;->e:Ljava/lang/Object;

    .line 69
    .line 70
    :cond_3
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-static {v1}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lf0/n;

    .line 77
    .line 78
    iget v1, p2, Lf0/m;->q:I

    .line 79
    .line 80
    iget v3, v0, Lf0/n;->j:I

    .line 81
    .line 82
    iget v0, v0, Lf0/n;->k:I

    .line 83
    .line 84
    add-int/2addr v3, v0

    .line 85
    add-int/2addr v3, v1

    .line 86
    iget p2, p2, Lf0/m;->m:I

    .line 87
    .line 88
    sub-int/2addr v3, p2

    .line 89
    int-to-float p2, v3

    .line 90
    neg-float v0, p1

    .line 91
    cmpg-float p2, p2, v0

    .line 92
    .line 93
    if-gez p2, :cond_5

    .line 94
    .line 95
    iget-object p2, v2, Lf0/a;->e:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p2, Lh0/g0;

    .line 98
    .line 99
    if-eqz p2, :cond_5

    .line 100
    .line 101
    invoke-interface {p2}, Lh0/g0;->a()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-static {v1}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lf0/n;

    .line 110
    .line 111
    iget p2, p2, Lf0/m;->l:I

    .line 112
    .line 113
    iget v0, v0, Lf0/n;->j:I

    .line 114
    .line 115
    sub-int/2addr p2, v0

    .line 116
    int-to-float p2, p2

    .line 117
    cmpg-float p2, p2, p1

    .line 118
    .line 119
    if-gez p2, :cond_5

    .line 120
    .line 121
    iget-object p2, v2, Lf0/a;->e:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p2, Lh0/g0;

    .line 124
    .line 125
    if-eqz p2, :cond_5

    .line 126
    .line 127
    invoke-interface {p2}, Lh0/g0;->a()V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_1
    iput p1, v2, Lf0/a;->d:F

    .line 131
    .line 132
    :cond_6
    return-void
.end method
