.class public final Lv0/n;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;
.implements Lq2/o;
.implements Lq2/y1;


# instance fields
.field public A:Lv0/l;

.field public B:Lv0/m;

.field public o:Lb3/g;

.field public p:Lb3/o0;

.field public q:Lf3/d;

.field public r:Lf9/k;

.field public s:I

.field public t:Z

.field public u:I

.field public v:I

.field public w:Lv0/h;

.field public x:Ly1/r;

.field public y:Ljava/util/Map;

.field public z:Lv0/d;


# direct methods
.method public constructor <init>(Lb3/g;Lb3/o0;Lf3/d;Lf9/k;IZIILv0/h;Ly1/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv0/n;->o:Lb3/g;

    .line 5
    .line 6
    iput-object p2, p0, Lv0/n;->p:Lb3/o0;

    .line 7
    .line 8
    iput-object p3, p0, Lv0/n;->q:Lf3/d;

    .line 9
    .line 10
    iput-object p4, p0, Lv0/n;->r:Lf9/k;

    .line 11
    .line 12
    iput p5, p0, Lv0/n;->s:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lv0/n;->t:Z

    .line 15
    .line 16
    iput p7, p0, Lv0/n;->u:I

    .line 17
    .line 18
    iput p8, p0, Lv0/n;->v:I

    .line 19
    .line 20
    iput-object p9, p0, Lv0/n;->w:Lv0/h;

    .line 21
    .line 22
    iput-object p10, p0, Lv0/n;->x:Ly1/r;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final A0(ZZZZ)V
    .locals 12

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    if-eqz p4, :cond_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lv0/n;->B0()Lv0/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lv0/n;->o:Lb3/g;

    .line 12
    .line 13
    iget-object v2, p0, Lv0/n;->p:Lb3/o0;

    .line 14
    .line 15
    iget-object v3, p0, Lv0/n;->q:Lf3/d;

    .line 16
    .line 17
    iget v4, p0, Lv0/n;->s:I

    .line 18
    .line 19
    iget-boolean v5, p0, Lv0/n;->t:Z

    .line 20
    .line 21
    iget v6, p0, Lv0/n;->u:I

    .line 22
    .line 23
    iget v7, p0, Lv0/n;->v:I

    .line 24
    .line 25
    iput-object v1, v0, Lv0/d;->a:Lb3/g;

    .line 26
    .line 27
    iget-object v1, v0, Lv0/d;->k:Lb3/o0;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lb3/o0;->c(Lb3/o0;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput-object v2, v0, Lv0/d;->k:Lb3/o0;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v8, -0x1

    .line 37
    const/4 v9, 0x2

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-wide v10, v0, Lv0/d;->q:J

    .line 41
    .line 42
    shl-long/2addr v10, v9

    .line 43
    iput-wide v10, v0, Lv0/d;->q:J

    .line 44
    .line 45
    iput-object v2, v0, Lv0/d;->l:Lb3/q;

    .line 46
    .line 47
    iput-object v2, v0, Lv0/d;->n:Lb3/l0;

    .line 48
    .line 49
    iput v8, v0, Lv0/d;->p:I

    .line 50
    .line 51
    iput v8, v0, Lv0/d;->o:I

    .line 52
    .line 53
    :cond_1
    iput-object v3, v0, Lv0/d;->b:Lf3/d;

    .line 54
    .line 55
    iput v4, v0, Lv0/d;->c:I

    .line 56
    .line 57
    iput-boolean v5, v0, Lv0/d;->d:Z

    .line 58
    .line 59
    iput v6, v0, Lv0/d;->e:I

    .line 60
    .line 61
    iput v7, v0, Lv0/d;->f:I

    .line 62
    .line 63
    iput-object v2, v0, Lv0/d;->g:Ljava/util/List;

    .line 64
    .line 65
    iget-wide v3, v0, Lv0/d;->q:J

    .line 66
    .line 67
    shl-long/2addr v3, v9

    .line 68
    const-wide/16 v5, 0x2

    .line 69
    .line 70
    or-long/2addr v3, v5

    .line 71
    iput-wide v3, v0, Lv0/d;->q:J

    .line 72
    .line 73
    iput-object v2, v0, Lv0/d;->l:Lb3/q;

    .line 74
    .line 75
    iput-object v2, v0, Lv0/d;->n:Lb3/l0;

    .line 76
    .line 77
    iput v8, v0, Lv0/d;->p:I

    .line 78
    .line 79
    iput v8, v0, Lv0/d;->o:I

    .line 80
    .line 81
    :cond_2
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    if-nez p2, :cond_4

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lv0/n;->A:Lv0/l;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    :cond_4
    invoke-static {p0}, Lq2/f;->n(Lq2/y1;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    if-nez p2, :cond_6

    .line 98
    .line 99
    if-nez p3, :cond_6

    .line 100
    .line 101
    if-eqz p4, :cond_7

    .line 102
    .line 103
    :cond_6
    invoke-static {p0}, Lq2/f;->m(Lq2/x;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p0}, Lq2/f;->l(Lq2/o;)V

    .line 107
    .line 108
    .line 109
    :cond_7
    if-eqz p1, :cond_8

    .line 110
    .line 111
    invoke-static {p0}, Lq2/f;->l(Lq2/o;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_0
    return-void
.end method

.method public final B0()Lv0/d;
    .locals 10

    .line 1
    iget-object v0, p0, Lv0/n;->z:Lv0/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lv0/d;

    .line 6
    .line 7
    iget-object v2, p0, Lv0/n;->o:Lb3/g;

    .line 8
    .line 9
    iget-object v3, p0, Lv0/n;->p:Lb3/o0;

    .line 10
    .line 11
    iget-object v4, p0, Lv0/n;->q:Lf3/d;

    .line 12
    .line 13
    iget v5, p0, Lv0/n;->s:I

    .line 14
    .line 15
    iget-boolean v6, p0, Lv0/n;->t:Z

    .line 16
    .line 17
    iget v7, p0, Lv0/n;->u:I

    .line 18
    .line 19
    iget v8, p0, Lv0/n;->v:I

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    invoke-direct/range {v1 .. v9}, Lv0/d;-><init>(Lb3/g;Lb3/o0;Lf3/d;IZIILs8/w;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lv0/n;->z:Lv0/d;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lv0/n;->z:Lv0/d;

    .line 28
    .line 29
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final C0(Ln3/c;)Lv0/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/n;->B:Lv0/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lv0/m;->c:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lv0/m;->d:Lv0/d;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lv0/d;->d(Ln3/c;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lv0/n;->B0()Lv0/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lv0/d;->d(Ln3/c;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final D0(Lf9/k;Lv0/h;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/n;->r:Lf9/k;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lv0/n;->r:Lf9/k;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v0, p0, Lv0/n;->w:Lv0/h;

    .line 12
    .line 13
    invoke-static {v0, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-object p2, p0, Lv0/n;->w:Lv0/h;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, p1

    .line 23
    :goto_1
    return v1
.end method

.method public final E0(Lb3/o0;IIZLf3/d;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/n;->p:Lb3/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb3/o0;->c(Lb3/o0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    iput-object p1, p0, Lv0/n;->p:Lb3/o0;

    .line 10
    .line 11
    iget p1, p0, Lv0/n;->v:I

    .line 12
    .line 13
    if-eq p1, p2, :cond_0

    .line 14
    .line 15
    iput p2, p0, Lv0/n;->v:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_0
    iget p1, p0, Lv0/n;->u:I

    .line 19
    .line 20
    if-eq p1, p3, :cond_1

    .line 21
    .line 22
    iput p3, p0, Lv0/n;->u:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_1
    iget-boolean p1, p0, Lv0/n;->t:Z

    .line 26
    .line 27
    if-eq p1, p4, :cond_2

    .line 28
    .line 29
    iput-boolean p4, p0, Lv0/n;->t:Z

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :cond_2
    iget-object p1, p0, Lv0/n;->q:Lf3/d;

    .line 33
    .line 34
    invoke-static {p1, p5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    iput-object p5, p0, Lv0/n;->q:Lf3/d;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    :cond_3
    iget p1, p0, Lv0/n;->s:I

    .line 44
    .line 45
    if-ne p1, p6, :cond_4

    .line 46
    .line 47
    move v1, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    iput p6, p0, Lv0/n;->s:I

    .line 50
    .line 51
    :goto_0
    return v1
.end method

.method public final synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final F0(Lb3/g;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/n;->o:Lb3/g;

    .line 2
    .line 3
    iget-object v0, v0, Lb3/g;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lv0/n;->o:Lb3/g;

    .line 12
    .line 13
    iget-object v1, v1, Lb3/g;->a:Ljava/util/List;

    .line 14
    .line 15
    iget-object v2, p1, Lb3/g;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 29
    :goto_1
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iput-object p1, p0, Lv0/n;->o:Lb3/g;

    .line 32
    .line 33
    :cond_2
    if-nez v0, :cond_3

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lv0/n;->B:Lv0/m;

    .line 37
    .line 38
    :cond_3
    return v1
.end method

.method public final Z(Ly2/j;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lv0/n;->A:Lv0/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv0/l;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lv0/l;-><init>(Lv0/n;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lv0/n;->A:Lv0/l;

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lv0/n;->o:Lb3/g;

    .line 14
    .line 15
    sget-object v2, Ly2/t;->a:[Lm9/u;

    .line 16
    .line 17
    sget-object v2, Ly2/r;->A:Ly2/u;

    .line 18
    .line 19
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v2, v1}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lv0/n;->B:Lv0/m;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v2, v1, Lv0/m;->b:Lb3/g;

    .line 31
    .line 32
    sget-object v3, Ly2/r;->B:Ly2/u;

    .line 33
    .line 34
    sget-object v4, Ly2/t;->a:[Lm9/u;

    .line 35
    .line 36
    const/16 v5, 0xf

    .line 37
    .line 38
    aget-object v5, v4, v5

    .line 39
    .line 40
    invoke-virtual {v3, p1, v2}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, v1, Lv0/m;->c:Z

    .line 44
    .line 45
    sget-object v2, Ly2/r;->C:Ly2/u;

    .line 46
    .line 47
    const/16 v3, 0x10

    .line 48
    .line 49
    aget-object v3, v4, v3

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v2, p1, v1}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    new-instance v1, Lv0/l;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-direct {v1, p0, v2}, Lv0/l;-><init>(Lv0/n;I)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Ly2/i;->k:Ly2/u;

    .line 65
    .line 66
    new-instance v3, Ly2/a;

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-direct {v3, v4, v1}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lv0/l;

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    invoke-direct {v1, p0, v2}, Lv0/l;-><init>(Lv0/n;I)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Ly2/i;->l:Ly2/u;

    .line 82
    .line 83
    new-instance v3, Ly2/a;

    .line 84
    .line 85
    invoke-direct {v3, v4, v1}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, La5/e;

    .line 92
    .line 93
    const/16 v2, 0x1d

    .line 94
    .line 95
    invoke-direct {v1, v2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object v2, Ly2/i;->m:Ly2/u;

    .line 99
    .line 100
    new-instance v3, Ly2/a;

    .line 101
    .line 102
    invoke-direct {v3, v4, v1}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Ly2/t;->a(Ly2/j;Lf9/k;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 4

    .line 1
    const-string v0, "TextAnnotatedStringNode:measure"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lv0/n;->C0(Ln3/c;)Lv0/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, p3, p4, v1}, Lv0/d;->c(JLn3/m;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iget-object p4, v0, Lv0/d;->n:Lb3/l0;

    .line 19
    .line 20
    if-eqz p4, :cond_4

    .line 21
    .line 22
    iget-wide v0, p4, Lb3/l0;->c:J

    .line 23
    .line 24
    iget-object v2, p4, Lb3/l0;->b:Lb3/o;

    .line 25
    .line 26
    iget-object v2, v2, Lb3/o;->a:Lb3/q;

    .line 27
    .line 28
    invoke-virtual {v2}, Lb3/q;->a()Z

    .line 29
    .line 30
    .line 31
    if-eqz p3, :cond_3

    .line 32
    .line 33
    const/4 p3, 0x2

    .line 34
    invoke-static {p0, p3}, Lq2/f;->t(Lq2/l;I)Lq2/h1;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lq2/h1;->N0()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lv0/n;->r:Lf9/k;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v2, p4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    iget-object v2, p0, Lv0/n;->w:Lv0/h;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v2, p4}, Lv0/h;->a(Lb3/l0;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v2, p0, Lv0/n;->y:Ljava/util/Map;

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {v2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    sget-object p3, Lo2/c;->a:Lo2/m;

    .line 68
    .line 69
    iget v3, p4, Lb3/l0;->d:F

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object p3, Lo2/c;->b:Lo2/m;

    .line 83
    .line 84
    iget p4, p4, Lb3/l0;->e:F

    .line 85
    .line 86
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iput-object v2, p0, Lv0/n;->y:Ljava/util/Map;

    .line 98
    .line 99
    :cond_3
    const/16 p3, 0x20

    .line 100
    .line 101
    shr-long p3, v0, p3

    .line 102
    .line 103
    long-to-int p4, p3

    .line 104
    const-wide v2, 0xffffffffL

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    and-long/2addr v0, v2

    .line 110
    long-to-int p3, v0

    .line 111
    invoke-static {p4, p4, p3, p3}, Lc7/a;->q(IIII)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    invoke-interface {p2, v0, v1}, Lo2/l0;->u(J)Lo2/v0;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    iget-object v0, p0, Lv0/n;->y:Ljava/util/Map;

    .line 120
    .line 121
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Ld0/i;

    .line 125
    .line 126
    const/4 v2, 0x7

    .line 127
    invoke-direct {v1, p2, v2}, Ld0/i;-><init>(Lo2/v0;I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, p4, p3, v0, v1}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string p3, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: "

    .line 143
    .line 144
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 159
    .line 160
    .line 161
    throw p1
.end method

.method public final c(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv0/n;->C0(Ln3/c;)Lv0/d;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Lv0/d;->e(Ln3/m;)Lb3/q;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lb3/q;->g()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ll0/p0;->k(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final d(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv0/n;->C0(Ln3/c;)Lv0/d;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p3, p1}, Lv0/d;->a(ILn3/m;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final e(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv0/n;->C0(Ln3/c;)Lv0/d;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p3, p1}, Lv0/d;->a(ILn3/m;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final f(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lv0/n;->C0(Ln3/c;)Lv0/d;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Lv0/d;->e(Ln3/m;)Lb3/q;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lb3/q;->h()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ll0/p0;->k(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final synthetic h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final synthetic j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final v(Lq2/j0;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v2, Lq2/j0;->a:La2/c;

    .line 6
    .line 7
    iget-boolean v3, v1, Lr1/o;->n:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v3, v1, Lv0/n;->w:Lv0/h;

    .line 13
    .line 14
    const/4 v8, 0x3

    .line 15
    const-wide v9, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/16 v11, 0x20

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    if-eqz v3, :cond_d

    .line 24
    .line 25
    iget-object v4, v3, Lv0/h;->b:Lw0/c1;

    .line 26
    .line 27
    invoke-virtual {v4}, Lw0/c1;->a()Ls/a0;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-wide v5, v3, Lv0/h;->a:J

    .line 32
    .line 33
    invoke-virtual {v4, v5, v6}, Ls/a0;->e(J)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lw0/z;

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_1
    iget-object v5, v4, Lw0/z;->b:Lw0/y;

    .line 43
    .line 44
    iget-object v6, v4, Lw0/z;->a:Lw0/y;

    .line 45
    .line 46
    iget-boolean v4, v4, Lw0/z;->c:Z

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    iget v7, v6, Lw0/y;->b:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget v7, v5, Lw0/y;->b:I

    .line 54
    .line 55
    :goto_0
    if-nez v4, :cond_3

    .line 56
    .line 57
    iget v4, v5, Lw0/y;->b:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget v4, v6, Lw0/y;->b:I

    .line 61
    .line 62
    :goto_1
    if-ne v7, v4, :cond_4

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_4
    iget-object v5, v3, Lv0/h;->e:Lw0/p;

    .line 66
    .line 67
    if-eqz v5, :cond_6

    .line 68
    .line 69
    iget-object v6, v5, Lw0/p;->c:Lv0/g;

    .line 70
    .line 71
    invoke-virtual {v6}, Lv0/g;->invoke()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lb3/l0;

    .line 76
    .line 77
    if-nez v6, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v5, v6}, Lw0/p;->b(Lb3/l0;)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    goto :goto_3

    .line 85
    :cond_6
    :goto_2
    const/4 v5, 0x0

    .line 86
    :goto_3
    if-le v7, v5, :cond_7

    .line 87
    .line 88
    move v7, v5

    .line 89
    :cond_7
    if-le v4, v5, :cond_8

    .line 90
    .line 91
    move v4, v5

    .line 92
    :cond_8
    iget-object v5, v3, Lv0/h;->d:Lv0/k;

    .line 93
    .line 94
    iget-object v5, v5, Lv0/k;->b:Lb3/l0;

    .line 95
    .line 96
    if-eqz v5, :cond_9

    .line 97
    .line 98
    invoke-virtual {v5, v7, v4}, Lb3/l0;->i(II)Ly1/h;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    goto :goto_4

    .line 103
    :cond_9
    const/4 v4, 0x0

    .line 104
    :goto_4
    if-nez v4, :cond_a

    .line 105
    .line 106
    :goto_5
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_a
    iget-object v5, v3, Lv0/h;->d:Lv0/k;

    .line 109
    .line 110
    iget-object v5, v5, Lv0/k;->b:Lb3/l0;

    .line 111
    .line 112
    if-eqz v5, :cond_c

    .line 113
    .line 114
    iget-object v6, v5, Lb3/l0;->a:Lb3/k0;

    .line 115
    .line 116
    iget v6, v6, Lb3/k0;->f:I

    .line 117
    .line 118
    if-ne v6, v8, :cond_b

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_b
    invoke-virtual {v5}, Lb3/l0;->d()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_c

    .line 126
    .line 127
    invoke-virtual {v2}, Lq2/j0;->g()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    shr-long/2addr v5, v11

    .line 132
    long-to-int v6, v5

    .line 133
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    invoke-virtual {v2}, Lq2/j0;->g()J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    and-long/2addr v5, v9

    .line 142
    long-to-int v6, v5

    .line 143
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 144
    .line 145
    .line 146
    move-result v17

    .line 147
    iget-object v5, v0, La2/c;->b:La2/b;

    .line 148
    .line 149
    invoke-virtual {v5}, La2/b;->J()J

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    invoke-virtual {v5}, La2/b;->z()Ly1/o;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    invoke-interface {v13}, Ly1/o;->f()V

    .line 158
    .line 159
    .line 160
    :try_start_0
    iget-object v13, v5, La2/b;->b:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v13, La2/d;

    .line 163
    .line 164
    iget-object v13, v13, La2/d;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v13, La2/b;

    .line 167
    .line 168
    invoke-virtual {v13}, La2/b;->z()Ly1/o;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    const/4 v14, 0x0

    .line 173
    const/4 v15, 0x0

    .line 174
    const/16 v18, 0x1

    .line 175
    .line 176
    invoke-interface/range {v13 .. v18}, Ly1/o;->k(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 177
    .line 178
    .line 179
    move-object v13, v4

    .line 180
    move-object v14, v5

    .line 181
    :try_start_1
    iget-wide v4, v3, Lv0/h;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    .line 183
    move-wide v15, v6

    .line 184
    const/4 v6, 0x0

    .line 185
    const/16 v7, 0x3c

    .line 186
    .line 187
    move-wide/from16 v24, v15

    .line 188
    .line 189
    move-wide v15, v9

    .line 190
    move-wide/from16 v9, v24

    .line 191
    .line 192
    move-object v3, v13

    .line 193
    :try_start_2
    invoke-static/range {v2 .. v7}, La2/f;->v(La2/g;Ly1/e0;JLa2/k;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    .line 195
    .line 196
    invoke-static {v14, v9, v10}, Lp9/v;->w(La2/b;J)V

    .line 197
    .line 198
    .line 199
    goto :goto_a

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    goto :goto_7

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    :goto_6
    move-wide v9, v6

    .line 204
    goto :goto_7

    .line 205
    :catchall_2
    move-exception v0

    .line 206
    move-object v14, v5

    .line 207
    goto :goto_6

    .line 208
    :goto_7
    invoke-static {v14, v9, v10}, Lp9/v;->w(La2/b;J)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_c
    :goto_8
    move-object v13, v4

    .line 213
    move-wide v15, v9

    .line 214
    iget-wide v4, v3, Lv0/h;->c:J

    .line 215
    .line 216
    const/4 v6, 0x0

    .line 217
    const/16 v7, 0x3c

    .line 218
    .line 219
    move-object/from16 v2, p1

    .line 220
    .line 221
    move-object v3, v13

    .line 222
    invoke-static/range {v2 .. v7}, La2/f;->v(La2/g;Ly1/e0;JLa2/k;I)V

    .line 223
    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_d
    :goto_9
    move-wide v15, v9

    .line 227
    :goto_a
    iget-object v0, v0, La2/c;->b:La2/b;

    .line 228
    .line 229
    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual/range {p0 .. p1}, Lv0/n;->C0(Ln3/c;)Lv0/d;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v3, v0, Lv0/d;->n:Lb3/l0;

    .line 238
    .line 239
    if-eqz v3, :cond_1d

    .line 240
    .line 241
    iget-object v0, v3, Lb3/l0;->b:Lb3/o;

    .line 242
    .line 243
    invoke-virtual {v3}, Lb3/l0;->d()Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    const/4 v5, 0x1

    .line 248
    if-eqz v4, :cond_f

    .line 249
    .line 250
    iget v4, v1, Lv0/n;->s:I

    .line 251
    .line 252
    if-ne v4, v8, :cond_e

    .line 253
    .line 254
    goto :goto_b

    .line 255
    :cond_e
    const/4 v4, 0x1

    .line 256
    goto :goto_c

    .line 257
    :cond_f
    :goto_b
    const/4 v4, 0x0

    .line 258
    :goto_c
    if-eqz v4, :cond_10

    .line 259
    .line 260
    iget-wide v6, v3, Lb3/l0;->c:J

    .line 261
    .line 262
    shr-long v8, v6, v11

    .line 263
    .line 264
    long-to-int v3, v8

    .line 265
    int-to-float v3, v3

    .line 266
    and-long/2addr v6, v15

    .line 267
    long-to-int v7, v6

    .line 268
    int-to-float v6, v7

    .line 269
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    int-to-long v7, v3

    .line 274
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    int-to-long v9, v3

    .line 279
    shl-long v6, v7, v11

    .line 280
    .line 281
    and-long/2addr v9, v15

    .line 282
    or-long/2addr v6, v9

    .line 283
    const-wide/16 v8, 0x0

    .line 284
    .line 285
    invoke-static {v8, v9, v6, v7}, Lp9/p1;->d(JJ)Lx1/c;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-interface {v2}, Ly1/o;->f()V

    .line 290
    .line 291
    .line 292
    invoke-interface {v2, v3}, Ly1/o;->d(Lx1/c;)V

    .line 293
    .line 294
    .line 295
    :cond_10
    :try_start_3
    iget-object v3, v1, Lv0/n;->p:Lb3/o0;

    .line 296
    .line 297
    iget-object v3, v3, Lb3/o0;->a:Lb3/e0;

    .line 298
    .line 299
    iget-object v6, v3, Lb3/e0;->m:Lm3/l;

    .line 300
    .line 301
    if-nez v6, :cond_11

    .line 302
    .line 303
    sget-object v6, Lm3/l;->b:Lm3/l;

    .line 304
    .line 305
    :cond_11
    move-object/from16 v22, v6

    .line 306
    .line 307
    goto :goto_d

    .line 308
    :catchall_3
    move-exception v0

    .line 309
    move-object/from16 v18, v2

    .line 310
    .line 311
    goto/16 :goto_14

    .line 312
    .line 313
    :goto_d
    iget-object v6, v3, Lb3/e0;->n:Ly1/k0;

    .line 314
    .line 315
    if-nez v6, :cond_12

    .line 316
    .line 317
    sget-object v6, Ly1/k0;->d:Ly1/k0;

    .line 318
    .line 319
    :cond_12
    move-object/from16 v21, v6

    .line 320
    .line 321
    iget-object v6, v3, Lb3/e0;->p:La2/h;

    .line 322
    .line 323
    if-nez v6, :cond_13

    .line 324
    .line 325
    sget-object v6, La2/j;->a:La2/j;

    .line 326
    .line 327
    :cond_13
    move-object/from16 v23, v6

    .line 328
    .line 329
    iget-object v3, v3, Lb3/e0;->a:Lm3/o;

    .line 330
    .line 331
    invoke-interface {v3}, Lm3/o;->e()Ly1/m;

    .line 332
    .line 333
    .line 334
    move-result-object v19

    .line 335
    if-eqz v19, :cond_14

    .line 336
    .line 337
    iget-object v3, v1, Lv0/n;->p:Lb3/o0;

    .line 338
    .line 339
    iget-object v3, v3, Lb3/o0;->a:Lb3/e0;

    .line 340
    .line 341
    iget-object v3, v3, Lb3/e0;->a:Lm3/o;

    .line 342
    .line 343
    invoke-interface {v3}, Lm3/o;->a()F

    .line 344
    .line 345
    .line 346
    move-result v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 347
    move-object/from16 v17, v0

    .line 348
    .line 349
    move-object/from16 v18, v2

    .line 350
    .line 351
    :try_start_4
    invoke-static/range {v17 .. v23}, Lb3/o;->j(Lb3/o;Ly1/o;Ly1/m;FLy1/k0;Lm3/l;La2/h;)V

    .line 352
    .line 353
    .line 354
    goto :goto_11

    .line 355
    :catchall_4
    move-exception v0

    .line 356
    goto/16 :goto_14

    .line 357
    .line 358
    :cond_14
    move-object/from16 v17, v0

    .line 359
    .line 360
    move-object/from16 v18, v2

    .line 361
    .line 362
    iget-object v0, v1, Lv0/n;->x:Ly1/r;

    .line 363
    .line 364
    if-eqz v0, :cond_15

    .line 365
    .line 366
    invoke-interface {v0}, Ly1/r;->a()J

    .line 367
    .line 368
    .line 369
    move-result-wide v2

    .line 370
    goto :goto_e

    .line 371
    :cond_15
    sget-wide v2, Ly1/q;->m:J

    .line 372
    .line 373
    :goto_e
    const-wide/16 v6, 0x10

    .line 374
    .line 375
    cmp-long v0, v2, v6

    .line 376
    .line 377
    if-eqz v0, :cond_16

    .line 378
    .line 379
    :goto_f
    move-wide/from16 v19, v2

    .line 380
    .line 381
    goto :goto_10

    .line 382
    :cond_16
    iget-object v0, v1, Lv0/n;->p:Lb3/o0;

    .line 383
    .line 384
    invoke-virtual {v0}, Lb3/o0;->b()J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    cmp-long v0, v2, v6

    .line 389
    .line 390
    if-eqz v0, :cond_17

    .line 391
    .line 392
    iget-object v0, v1, Lv0/n;->p:Lb3/o0;

    .line 393
    .line 394
    invoke-virtual {v0}, Lb3/o0;->b()J

    .line 395
    .line 396
    .line 397
    move-result-wide v2

    .line 398
    goto :goto_f

    .line 399
    :cond_17
    sget-wide v2, Ly1/q;->b:J

    .line 400
    .line 401
    goto :goto_f

    .line 402
    :goto_10
    invoke-static/range {v17 .. v23}, Lb3/o;->i(Lb3/o;Ly1/o;JLy1/k0;Lm3/l;La2/h;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 403
    .line 404
    .line 405
    :goto_11
    if-eqz v4, :cond_18

    .line 406
    .line 407
    invoke-interface/range {v18 .. v18}, Ly1/o;->n()V

    .line 408
    .line 409
    .line 410
    :cond_18
    iget-object v0, v1, Lv0/n;->B:Lv0/m;

    .line 411
    .line 412
    if-eqz v0, :cond_19

    .line 413
    .line 414
    iget-boolean v0, v0, Lv0/m;->c:Z

    .line 415
    .line 416
    if-ne v0, v5, :cond_19

    .line 417
    .line 418
    goto :goto_13

    .line 419
    :cond_19
    iget-object v0, v1, Lv0/n;->o:Lb3/g;

    .line 420
    .line 421
    iget-object v2, v0, Lb3/g;->b:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    iget-object v0, v0, Lb3/g;->a:Ljava/util/List;

    .line 428
    .line 429
    if-eqz v0, :cond_1b

    .line 430
    .line 431
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    const/4 v4, 0x0

    .line 436
    :goto_12
    if-ge v4, v3, :cond_1b

    .line 437
    .line 438
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    check-cast v5, Lb3/e;

    .line 443
    .line 444
    iget-object v6, v5, Lb3/e;->a:Ljava/lang/Object;

    .line 445
    .line 446
    instance-of v6, v6, Lb3/m;

    .line 447
    .line 448
    if-eqz v6, :cond_1a

    .line 449
    .line 450
    iget v6, v5, Lb3/e;->b:I

    .line 451
    .line 452
    iget v5, v5, Lb3/e;->c:I

    .line 453
    .line 454
    invoke-static {v12, v2, v6, v5}, Lb3/h;->b(IIII)Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    if-eqz v5, :cond_1a

    .line 459
    .line 460
    invoke-virtual/range {p1 .. p1}, Lq2/j0;->b()V

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    .line 465
    .line 466
    goto :goto_12

    .line 467
    :cond_1b
    :goto_13
    return-void

    .line 468
    :goto_14
    if-eqz v4, :cond_1c

    .line 469
    .line 470
    invoke-interface/range {v18 .. v18}, Ly1/o;->n()V

    .line 471
    .line 472
    .line 473
    :cond_1c
    throw v0

    .line 474
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 475
    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string v4, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: "

    .line 479
    .line 480
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    throw v2
.end method

.method public final synthetic z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
