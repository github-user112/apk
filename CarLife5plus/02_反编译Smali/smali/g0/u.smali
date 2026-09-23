.class public final Lg0/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz/m1;


# static fields
.field public static final w:Lu0/j;


# instance fields
.field public final a:Lf0/a;

.field public b:Z

.field public c:Lg0/m;

.field public final d:Lf0/p;

.field public final e:Lf1/k1;

.field public final f:Lb0/k;

.field public g:F

.field public final h:Lz/j;

.field public final i:Z

.field public j:Lq2/h0;

.field public final k:Lf0/s;

.field public final l:Lh0/e;

.field public final m:Landroidx/compose/foundation/lazy/layout/b;

.field public final n:Lh0/k;

.field public final o:Lh0/h0;

.field public final p:La2/d;

.field public final q:Lh0/e0;

.field public final r:Lf1/b1;

.field public final s:Lf1/b1;

.field public final t:Lf1/k1;

.field public final u:Lf1/k1;

.field public final v:Lu0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf0/q;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lf0/q;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lc8/y0;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lc8/y0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lo1/k;->b(Lf9/n;Lf9/k;)Lu0/j;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lg0/u;->w:Lu0/j;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

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
    new-instance v2, Lh1/e;

    .line 10
    .line 11
    const/16 v3, 0x10

    .line 12
    .line 13
    new-array v3, v3, [Lh0/g0;

    .line 14
    .line 15
    invoke-direct {v2, v3}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lf0/a;->e:Ljava/lang/Object;

    .line 19
    .line 20
    iput v1, v0, Lf0/a;->c:I

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lg0/u;->a:Lf0/a;

    .line 26
    .line 27
    new-instance v0, Lf0/p;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p1, p2, v1}, Lf0/p;-><init>(III)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lg0/u;->d:Lf0/p;

    .line 34
    .line 35
    sget-object p2, Lg0/w;->a:Lg0/m;

    .line 36
    .line 37
    sget-object v0, Lf1/w0;->c:Lf1/w0;

    .line 38
    .line 39
    new-instance v1, Lf1/k1;

    .line 40
    .line 41
    invoke-direct {v1, p2, v0}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lg0/u;->e:Lf1/k1;

    .line 45
    .line 46
    new-instance p2, Lb0/k;

    .line 47
    .line 48
    invoke-direct {p2}, Lb0/k;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lg0/u;->f:Lb0/k;

    .line 52
    .line 53
    new-instance p2, La8/q;

    .line 54
    .line 55
    const/16 v0, 0xb

    .line 56
    .line 57
    invoke-direct {p2, v0, p0}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lz/j;

    .line 61
    .line 62
    invoke-direct {v0, p2}, Lz/j;-><init>(Lf9/k;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lg0/u;->h:Lz/j;

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lg0/u;->i:Z

    .line 69
    .line 70
    new-instance p2, Lf0/s;

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-direct {p2, p0, v0}, Lf0/s;-><init>(Lz/m1;I)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lg0/u;->k:Lf0/s;

    .line 77
    .line 78
    new-instance p2, Lh0/e;

    .line 79
    .line 80
    invoke-direct {p2}, Lh0/e;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lg0/u;->l:Lh0/e;

    .line 84
    .line 85
    new-instance p2, Landroidx/compose/foundation/lazy/layout/b;

    .line 86
    .line 87
    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/b;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lg0/u;->m:Landroidx/compose/foundation/lazy/layout/b;

    .line 91
    .line 92
    new-instance p2, Lh0/k;

    .line 93
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-direct {p2, v0}, Lh0/k;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Lg0/u;->n:Lh0/k;

    .line 99
    .line 100
    new-instance p2, Lh0/h0;

    .line 101
    .line 102
    new-instance v0, Lg0/s;

    .line 103
    .line 104
    invoke-direct {v0, p0, p1}, Lg0/s;-><init>(Lg0/u;I)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, v0}, Lh0/h0;-><init>(Lf9/k;)V

    .line 108
    .line 109
    .line 110
    iput-object p2, p0, Lg0/u;->o:Lh0/h0;

    .line 111
    .line 112
    new-instance p1, La2/d;

    .line 113
    .line 114
    const/16 p2, 0x14

    .line 115
    .line 116
    invoke-direct {p1, p2, p0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lg0/u;->p:La2/d;

    .line 120
    .line 121
    new-instance p1, Lh0/e0;

    .line 122
    .line 123
    invoke-direct {p1}, Lh0/e0;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lg0/u;->q:Lh0/e0;

    .line 127
    .line 128
    invoke-static {}, Lh0/z;->h()Lf1/b1;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Lg0/u;->r:Lf1/b1;

    .line 133
    .line 134
    invoke-static {}, Lh0/z;->h()Lf1/b1;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Lg0/u;->s:Lf1/b1;

    .line 139
    .line 140
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iput-object p2, p0, Lg0/u;->t:Lf1/k1;

    .line 147
    .line 148
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lg0/u;->u:Lf1/k1;

    .line 153
    .line 154
    new-instance p1, Lu0/j;

    .line 155
    .line 156
    const/16 p2, 0xb

    .line 157
    .line 158
    invoke-direct {p1, p2}, Lu0/j;-><init>(I)V

    .line 159
    .line 160
    .line 161
    iput-object p1, p0, Lg0/u;->v:Lu0/j;

    .line 162
    .line 163
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/u;->h:Lz/j;

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
    iget-object v0, p0, Lg0/u;->u:Lf1/k1;

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
    iget-object v0, p0, Lg0/u;->t:Lf1/k1;

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
    iget-object v0, p0, Lg0/u;->h:Lz/j;

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
    instance-of v0, p3, Lg0/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lg0/t;

    .line 7
    .line 8
    iget v1, v0, Lg0/t;->h:I

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
    iput v1, v0, Lg0/t;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lg0/t;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lg0/t;-><init>(Lg0/u;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lg0/t;->f:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lg0/t;->h:I

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
    iget-object p1, v0, Lg0/t;->e:Ly8/i;

    .line 52
    .line 53
    move-object p2, p1

    .line 54
    check-cast p2, Lf9/n;

    .line 55
    .line 56
    iget-object p1, v0, Lg0/t;->d:Lx/v0;

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
    iput-object p1, v0, Lg0/t;->d:Lx/v0;

    .line 66
    .line 67
    move-object p3, p2

    .line 68
    check-cast p3, Ly8/i;

    .line 69
    .line 70
    iput-object p3, v0, Lg0/t;->e:Ly8/i;

    .line 71
    .line 72
    iput v3, v0, Lg0/t;->h:I

    .line 73
    .line 74
    iget-object p3, p0, Lg0/u;->l:Lh0/e;

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
    iput-object p3, v0, Lg0/t;->d:Lx/v0;

    .line 85
    .line 86
    iput-object p3, v0, Lg0/t;->e:Ly8/i;

    .line 87
    .line 88
    iput v2, v0, Lg0/t;->h:I

    .line 89
    .line 90
    iget-object p3, p0, Lg0/u;->h:Lz/j;

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

.method public final f(Lg0/m;ZZ)V
    .locals 11

    .line 1
    iget-object v0, p1, Lg0/m;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p1, Lg0/m;->p:I

    .line 4
    .line 5
    iget v2, p1, Lg0/m;->b:I

    .line 6
    .line 7
    iget-object v3, p1, Lg0/m;->a:Lg0/o;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-object v5, p0, Lg0/u;->o:Lh0/h0;

    .line 14
    .line 15
    iput v4, v5, Lh0/h0;->e:I

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-boolean v4, p0, Lg0/u;->b:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Lg0/u;->c:Lg0/m;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v4, 0x1

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iput-boolean v4, p0, Lg0/u;->b:Z

    .line 30
    .line 31
    :cond_1
    iget v5, p0, Lg0/u;->g:F

    .line 32
    .line 33
    iget v6, p1, Lg0/m;->d:F

    .line 34
    .line 35
    sub-float/2addr v5, v6

    .line 36
    iput v5, p0, Lg0/u;->g:F

    .line 37
    .line 38
    iget-object v5, p0, Lg0/u;->e:Lf1/k1;

    .line 39
    .line 40
    invoke-virtual {v5, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iget v6, v3, Lg0/o;->a:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v6, 0x0

    .line 50
    :goto_0
    if-nez v6, :cond_4

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v6, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_1
    const/4 v6, 0x1

    .line 58
    :goto_2
    iget-object v7, p0, Lg0/u;->u:Lf1/k1;

    .line 59
    .line 60
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v7, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v6, p1, Lg0/m;->c:Z

    .line 68
    .line 69
    iget-object v7, p0, Lg0/u;->t:Lf1/k1;

    .line 70
    .line 71
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v7, v6}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v6, p0, Lg0/u;->d:Lf0/p;

    .line 79
    .line 80
    const/4 v7, 0x0

    .line 81
    if-eqz p3, :cond_7

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    int-to-float p3, v2

    .line 87
    cmpl-float p3, p3, v7

    .line 88
    .line 89
    if-ltz p3, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    const/4 v4, 0x0

    .line 93
    :goto_3
    if-nez v4, :cond_6

    .line 94
    .line 95
    const-string p3, "scrollOffset should be non-negative"

    .line 96
    .line 97
    invoke-static {p3}, Lc0/b;->c(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    iget-object p3, v6, Lf0/p;->c:Lf1/h1;

    .line 101
    .line 102
    invoke-virtual {p3, v2}, Lf1/h1;->g(I)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_b

    .line 106
    .line 107
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    iget-object p3, v3, Lg0/o;->b:[Lg0/n;

    .line 113
    .line 114
    invoke-static {p3}, Ls8/l;->X([Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    check-cast p3, Lg0/n;

    .line 119
    .line 120
    if-eqz p3, :cond_8

    .line 121
    .line 122
    iget-object p3, p3, Lg0/n;->b:Ljava/lang/Object;

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    const/4 p3, 0x0

    .line 126
    :goto_4
    iput-object p3, v6, Lf0/p;->e:Ljava/lang/Object;

    .line 127
    .line 128
    iget-boolean p3, v6, Lf0/p;->d:Z

    .line 129
    .line 130
    if-nez p3, :cond_9

    .line 131
    .line 132
    if-lez v1, :cond_d

    .line 133
    .line 134
    :cond_9
    iput-boolean v4, v6, Lf0/p;->d:Z

    .line 135
    .line 136
    int-to-float p3, v2

    .line 137
    cmpl-float p3, p3, v7

    .line 138
    .line 139
    if-ltz p3, :cond_a

    .line 140
    .line 141
    const/4 p3, 0x1

    .line 142
    goto :goto_5

    .line 143
    :cond_a
    const/4 p3, 0x0

    .line 144
    :goto_5
    if-nez p3, :cond_b

    .line 145
    .line 146
    new-instance p3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v8, "scrollOffset should be non-negative ("

    .line 149
    .line 150
    invoke-direct {p3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const/16 v8, 0x29

    .line 157
    .line 158
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-static {p3}, Lc0/b;->c(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_b
    if-eqz v3, :cond_c

    .line 169
    .line 170
    iget-object p3, v3, Lg0/o;->b:[Lg0/n;

    .line 171
    .line 172
    invoke-static {p3}, Ls8/l;->X([Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    check-cast p3, Lg0/n;

    .line 177
    .line 178
    if-eqz p3, :cond_c

    .line 179
    .line 180
    iget p3, p3, Lg0/n;->a:I

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_c
    const/4 p3, 0x0

    .line 184
    :goto_6
    invoke-virtual {v6, p3, v2}, Lf0/p;->a(II)V

    .line 185
    .line 186
    .line 187
    :cond_d
    iget-boolean p3, p0, Lg0/u;->i:Z

    .line 188
    .line 189
    if-eqz p3, :cond_14

    .line 190
    .line 191
    iget-object p3, p0, Lg0/u;->a:Lf0/a;

    .line 192
    .line 193
    iget-object v2, p3, Lf0/a;->e:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Lh1/e;

    .line 196
    .line 197
    iget v3, p3, Lf0/a;->a:I

    .line 198
    .line 199
    iget-boolean v6, p3, Lf0/a;->b:Z

    .line 200
    .line 201
    const/4 v8, -0x1

    .line 202
    if-eq v3, v8, :cond_f

    .line 203
    .line 204
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-nez v9, :cond_f

    .line 209
    .line 210
    invoke-static {p1, v6}, Lf0/a;->c(Lg0/m;Z)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eq v3, v6, :cond_f

    .line 215
    .line 216
    iput v8, p3, Lf0/a;->a:I

    .line 217
    .line 218
    iget-object v3, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 219
    .line 220
    iget v6, v2, Lh1/e;->c:I

    .line 221
    .line 222
    const/4 v9, 0x0

    .line 223
    :goto_7
    if-ge v9, v6, :cond_e

    .line 224
    .line 225
    aget-object v10, v3, v9

    .line 226
    .line 227
    check-cast v10, Lh0/g0;

    .line 228
    .line 229
    invoke-interface {v10}, Lh0/g0;->cancel()V

    .line 230
    .line 231
    .line 232
    add-int/lit8 v9, v9, 0x1

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_e
    invoke-virtual {v2}, Lh1/e;->h()V

    .line 236
    .line 237
    .line 238
    :cond_f
    iget v3, p3, Lf0/a;->c:I

    .line 239
    .line 240
    if-eq v3, v8, :cond_13

    .line 241
    .line 242
    iget v6, p3, Lf0/a;->d:F

    .line 243
    .line 244
    cmpg-float v6, v6, v7

    .line 245
    .line 246
    if-nez v6, :cond_10

    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_10
    if-eq v3, v1, :cond_13

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_13

    .line 256
    .line 257
    iget v0, p3, Lf0/a;->d:F

    .line 258
    .line 259
    cmpg-float v0, v0, v7

    .line 260
    .line 261
    if-gez v0, :cond_11

    .line 262
    .line 263
    const/4 v0, 0x1

    .line 264
    goto :goto_8

    .line 265
    :cond_11
    const/4 v0, 0x0

    .line 266
    :goto_8
    invoke-static {p1, v0}, Lf0/a;->c(Lg0/m;Z)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    iget v3, p3, Lf0/a;->d:F

    .line 271
    .line 272
    cmpg-float v3, v3, v7

    .line 273
    .line 274
    if-gez v3, :cond_12

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_12
    const/4 v4, 0x0

    .line 278
    :goto_9
    invoke-static {p1, v4}, Lf0/a;->a(Lg0/m;Z)I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-ltz v3, :cond_13

    .line 283
    .line 284
    if-ge v3, v1, :cond_13

    .line 285
    .line 286
    iget v3, p3, Lf0/a;->a:I

    .line 287
    .line 288
    if-eq v0, v3, :cond_13

    .line 289
    .line 290
    if-ltz v0, :cond_13

    .line 291
    .line 292
    iput v0, p3, Lf0/a;->a:I

    .line 293
    .line 294
    invoke-virtual {v2}, Lh1/e;->h()V

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lg0/u;->p:La2/d;

    .line 298
    .line 299
    invoke-virtual {v3, v0}, La2/d;->w(I)Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget v3, v2, Lh1/e;->c:I

    .line 304
    .line 305
    invoke-virtual {v2, v3, v0}, Lh1/e;->d(ILjava/util/List;)V

    .line 306
    .line 307
    .line 308
    :cond_13
    :goto_a
    iput v1, p3, Lf0/a;->c:I

    .line 309
    .line 310
    :cond_14
    :goto_b
    if-eqz p2, :cond_15

    .line 311
    .line 312
    iget p2, p1, Lg0/m;->f:F

    .line 313
    .line 314
    iget-object p3, p1, Lg0/m;->i:Ln3/c;

    .line 315
    .line 316
    iget-object p1, p1, Lg0/m;->h:Lac/w;

    .line 317
    .line 318
    iget-object v0, p0, Lg0/u;->v:Lu0/j;

    .line 319
    .line 320
    invoke-virtual {v0, p2, p3, p1}, Lu0/j;->L(FLn3/c;Lac/w;)V

    .line 321
    .line 322
    .line 323
    :cond_15
    return-void
.end method

.method public final g()Lg0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/u;->e:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lg0/m;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h(FLg0/m;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lg0/u;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lg0/u;->a:Lf0/a;

    .line 6
    .line 7
    iget-object v1, v0, Lf0/a;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lh1/e;

    .line 10
    .line 11
    iget-object v2, p2, Lg0/m;->m:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_5

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    cmpg-float v2, p1, v2

    .line 22
    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-static {p2, v2}, Lf0/a;->c(Lg0/m;Z)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {p2, v2}, Lf0/a;->a(Lg0/m;Z)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ltz v5, :cond_5

    .line 37
    .line 38
    iget-object v6, p2, Lg0/m;->q:Lz/w0;

    .line 39
    .line 40
    iget-object v7, p2, Lg0/m;->m:Ljava/lang/Object;

    .line 41
    .line 42
    iget v8, p2, Lg0/m;->p:I

    .line 43
    .line 44
    if-ge v5, v8, :cond_5

    .line 45
    .line 46
    iget v5, v0, Lf0/a;->a:I

    .line 47
    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    .line 50
    if-ltz v4, :cond_2

    .line 51
    .line 52
    iget-boolean v5, v0, Lf0/a;->b:Z

    .line 53
    .line 54
    if-eq v5, v2, :cond_1

    .line 55
    .line 56
    iget-object v5, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 57
    .line 58
    iget v8, v1, Lh1/e;->c:I

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    :goto_1
    if-ge v9, v8, :cond_1

    .line 62
    .line 63
    aget-object v10, v5, v9

    .line 64
    .line 65
    check-cast v10, Lh0/g0;

    .line 66
    .line 67
    invoke-interface {v10}, Lh0/g0;->cancel()V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v9, v9, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iput-boolean v2, v0, Lf0/a;->b:Z

    .line 74
    .line 75
    iput v4, v0, Lf0/a;->a:I

    .line 76
    .line 77
    invoke-virtual {v1}, Lh1/e;->h()V

    .line 78
    .line 79
    .line 80
    iget-object v5, p0, Lg0/u;->p:La2/d;

    .line 81
    .line 82
    invoke-virtual {v5, v4}, La2/d;->w(I)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget v5, v1, Lh1/e;->c:I

    .line 87
    .line 88
    invoke-virtual {v1, v5, v4}, Lh1/e;->d(ILjava/util/List;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    if-eqz v2, :cond_4

    .line 92
    .line 93
    invoke-static {v7}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lg0/n;

    .line 98
    .line 99
    sget-object v4, Lz/w0;->a:Lz/w0;

    .line 100
    .line 101
    if-ne v6, v4, :cond_3

    .line 102
    .line 103
    iget-wide v4, v2, Lg0/n;->n:J

    .line 104
    .line 105
    const-wide v7, 0xffffffffL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    and-long/2addr v4, v7

    .line 111
    :goto_2
    long-to-int v5, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    iget-wide v4, v2, Lg0/n;->n:J

    .line 114
    .line 115
    const/16 v7, 0x20

    .line 116
    .line 117
    shr-long/2addr v4, v7

    .line 118
    goto :goto_2

    .line 119
    :goto_3
    iget v4, p2, Lg0/m;->s:I

    .line 120
    .line 121
    invoke-static {v2, v6}, La/a;->K(Lg0/n;Lz/w0;)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    add-int/2addr v2, v5

    .line 126
    add-int/2addr v2, v4

    .line 127
    iget p2, p2, Lg0/m;->o:I

    .line 128
    .line 129
    sub-int/2addr v2, p2

    .line 130
    int-to-float p2, v2

    .line 131
    neg-float v2, p1

    .line 132
    cmpg-float p2, p2, v2

    .line 133
    .line 134
    if-gez p2, :cond_5

    .line 135
    .line 136
    iget-object p2, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 137
    .line 138
    iget v1, v1, Lh1/e;->c:I

    .line 139
    .line 140
    :goto_4
    if-ge v3, v1, :cond_5

    .line 141
    .line 142
    aget-object v2, p2, v3

    .line 143
    .line 144
    check-cast v2, Lh0/g0;

    .line 145
    .line 146
    invoke-interface {v2}, Lh0/g0;->a()V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    invoke-static {v7}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lg0/n;

    .line 157
    .line 158
    iget p2, p2, Lg0/m;->n:I

    .line 159
    .line 160
    invoke-static {v2, v6}, La/a;->K(Lg0/n;Lz/w0;)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    sub-int/2addr p2, v2

    .line 165
    int-to-float p2, p2

    .line 166
    cmpg-float p2, p2, p1

    .line 167
    .line 168
    if-gez p2, :cond_5

    .line 169
    .line 170
    iget-object p2, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 171
    .line 172
    iget v1, v1, Lh1/e;->c:I

    .line 173
    .line 174
    :goto_5
    if-ge v3, v1, :cond_5

    .line 175
    .line 176
    aget-object v2, p2, v3

    .line 177
    .line 178
    check-cast v2, Lh0/g0;

    .line 179
    .line 180
    invoke-interface {v2}, Lh0/g0;->a()V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_5
    iput p1, v0, Lf0/a;->d:F

    .line 187
    .line 188
    :cond_6
    return-void
.end method
