.class public final Lb1/c;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lb1/j;
.implements Lq2/k;
.implements Lq2/o;
.implements Lq2/w;


# instance fields
.field public final o:Lb0/k;

.field public final p:Z

.field public final q:F

.field public final r:Lc1/b0;

.field public final s:Lc1/c0;

.field public t:Lb1/q;

.field public u:F

.field public v:J

.field public w:Z

.field public final x:Ls/d0;

.field public y:Lb1/i;

.field public z:Lb1/k;


# direct methods
.method public constructor <init>(Lb0/k;ZFLc1/b0;Lc1/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/c;->o:Lb0/k;

    .line 5
    .line 6
    iput-boolean p2, p0, Lb1/c;->p:Z

    .line 7
    .line 8
    iput p3, p0, Lb1/c;->q:F

    .line 9
    .line 10
    iput-object p4, p0, Lb1/c;->r:Lc1/b0;

    .line 11
    .line 12
    iput-object p5, p0, Lb1/c;->s:Lc1/c0;

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    iput-wide p1, p0, Lb1/c;->v:J

    .line 17
    .line 18
    new-instance p1, Ls/d0;

    .line 19
    .line 20
    invoke-direct {p1}, Ls/d0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lb1/c;->x:Ls/d0;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final A0(Lb0/o;)V
    .locals 11

    .line 1
    instance-of v0, p1, Lb0/m;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Lb0/m;

    .line 7
    .line 8
    iget-wide v4, p0, Lb1/c;->v:J

    .line 9
    .line 10
    iget p1, p0, Lb1/c;->u:F

    .line 11
    .line 12
    iget-object v0, p0, Lb1/c;->y:Lb1/i;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lr2/n0;->f:Lf1/w2;

    .line 18
    .line 19
    invoke-static {p0, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/View;

    .line 24
    .line 25
    invoke-static {v0}, Lg5/a;->x(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lg5/a;->w(Landroid/view/ViewGroup;)Lb1/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lb1/c;->y:Lb1/i;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, p0}, Lb1/i;->a(Lb1/j;)Lb1/k;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p1}, Li9/a;->N(F)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    iget-object p1, p0, Lb1/c;->r:Lc1/b0;

    .line 44
    .line 45
    invoke-virtual {p1}, Lc1/b0;->a()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    iget-object p1, p0, Lb1/c;->s:Lc1/c0;

    .line 50
    .line 51
    invoke-virtual {p1}, Lc1/c0;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    new-instance v10, Lb1/a;

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    invoke-direct {v10, p1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v3, p0, Lb1/c;->p:Z

    .line 61
    .line 62
    const v9, 0x3dcccccd    # 0.1f

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {v1 .. v10}, Lb1/k;->b(Lb0/m;ZJIJFLf9/a;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lb1/c;->z:Lb1/k;

    .line 69
    .line 70
    invoke-static {p0}, Lq2/f;->l(Lq2/o;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    instance-of v0, p1, Lb0/n;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lb1/c;->z:Lb1/k;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lb1/k;->d()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    instance-of p1, p1, Lb0/l;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lb1/c;->z:Lb1/k;

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1}, Lb1/k;->d()V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public final B()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb1/c;->z:Lb1/k;

    .line 3
    .line 4
    invoke-static {p0}, Lq2/f;->l(Lq2/o;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic U(Lo2/w;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(J)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb1/c;->w:Z

    .line 3
    .line 4
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 9
    .line 10
    invoke-static {p1, p2}, La/a;->S(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lb1/c;->v:J

    .line 15
    .line 16
    iget p1, p0, Lb1/c;->q:F

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-boolean p1, p0, Lb1/c;->p:Z

    .line 25
    .line 26
    iget-wide v1, p0, Lb1/c;->v:J

    .line 27
    .line 28
    invoke-static {v0, p1, v1, v2}, Lb1/h;->a(Ln3/c;ZJ)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_0
    iput p1, p0, Lb1/c;->u:F

    .line 38
    .line 39
    iget-object p1, p0, Lb1/c;->x:Ls/d0;

    .line 40
    .line 41
    iget-object p2, p1, Ls/d0;->a:[Ljava/lang/Object;

    .line 42
    .line 43
    iget v0, p1, Ls/d0;->b:I

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_1
    if-ge v1, v0, :cond_1

    .line 47
    .line 48
    aget-object v2, p2, v1

    .line 49
    .line 50
    check-cast v2, Lb0/o;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lb1/c;->A0(Lb0/o;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Ls/d0;->c()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lb0/g;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lb0/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-static {v0, v3, v1, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final s0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb1/c;->y:Lb1/i;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lb1/c;->B()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lb1/i;->d:Lu0/j;

    .line 9
    .line 10
    iget-object v2, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lb1/k;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lb1/k;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lb1/k;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    iget-object v1, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lb1/j;

    .line 46
    .line 47
    :cond_0
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Lb1/i;->c:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final v(Lq2/j0;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lq2/j0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lb1/c;->t:Lb1/q;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lb1/c;->u:F

    .line 9
    .line 10
    iget-object v2, p0, Lb1/c;->r:Lc1/b0;

    .line 11
    .line 12
    invoke-virtual {v2}, Lc1/b0;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, p1, v1, v2, v3}, Lb1/q;->c(Lq2/j0;FJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p1, Lq2/j0;->a:La2/c;

    .line 20
    .line 21
    iget-object p1, p1, La2/c;->b:La2/b;

    .line 22
    .line 23
    invoke-virtual {p1}, La2/b;->z()Ly1/o;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lb1/c;->z:Lb1/k;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-wide v1, p0, Lb1/c;->v:J

    .line 32
    .line 33
    iget v3, p0, Lb1/c;->u:F

    .line 34
    .line 35
    invoke-static {v3}, Li9/a;->N(F)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Lb1/c;->r:Lc1/b0;

    .line 40
    .line 41
    invoke-virtual {v4}, Lc1/b0;->a()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iget-object v6, p0, Lb1/c;->s:Lc1/c0;

    .line 46
    .line 47
    invoke-virtual {v6}, Lc1/c0;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const v6, 0x3dcccccd    # 0.1f

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {v0 .. v6}, Lb1/k;->e(JIJF)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lb1/k;->draw(Landroid/graphics/Canvas;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method
