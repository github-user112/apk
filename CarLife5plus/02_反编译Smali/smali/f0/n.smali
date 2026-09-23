.class public final Lf0/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lh0/y;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Lr1/f;

.field public final d:Ln3/m;

.field public final e:I

.field public final f:J

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Landroidx/compose/foundation/lazy/layout/b;

.field public j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public n:Z

.field public o:I

.field public final p:[I


# direct methods
.method public constructor <init>(ILjava/util/List;Lr1/f;Ln3/m;IIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf0/n;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lf0/n;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lf0/n;->c:Lr1/f;

    .line 9
    .line 10
    iput-object p4, p0, Lf0/n;->d:Ln3/m;

    .line 11
    .line 12
    iput p7, p0, Lf0/n;->e:I

    .line 13
    .line 14
    iput-wide p8, p0, Lf0/n;->f:J

    .line 15
    .line 16
    iput-object p10, p0, Lf0/n;->g:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p11, p0, Lf0/n;->h:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p12, p0, Lf0/n;->i:Landroidx/compose/foundation/lazy/layout/b;

    .line 21
    .line 22
    const/high16 p1, -0x80000000

    .line 23
    .line 24
    iput p1, p0, Lf0/n;->o:I

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p3, 0x0

    .line 31
    const/4 p4, 0x0

    .line 32
    const/4 p5, 0x0

    .line 33
    const/4 p6, 0x0

    .line 34
    :goto_0
    if-ge p4, p1, :cond_0

    .line 35
    .line 36
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p7

    .line 40
    check-cast p7, Lo2/v0;

    .line 41
    .line 42
    iget p8, p7, Lo2/v0;->b:I

    .line 43
    .line 44
    add-int/2addr p5, p8

    .line 45
    iget p7, p7, Lo2/v0;->a:I

    .line 46
    .line 47
    invoke-static {p6, p7}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p6

    .line 51
    add-int/lit8 p4, p4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput p5, p0, Lf0/n;->k:I

    .line 55
    .line 56
    iget p1, p0, Lf0/n;->e:I

    .line 57
    .line 58
    add-int/2addr p5, p1

    .line 59
    if-gez p5, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move p3, p5

    .line 63
    :goto_1
    iput p3, p0, Lf0/n;->l:I

    .line 64
    .line 65
    iput p6, p0, Lf0/n;->m:I

    .line 66
    .line 67
    iget-object p1, p0, Lf0/n;->b:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    mul-int/lit8 p1, p1, 0x2

    .line 74
    .line 75
    new-array p1, p1, [I

    .line 76
    .line 77
    iput-object p1, p0, Lf0/n;->p:[I

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lo2/u0;)V
    .locals 8

    .line 1
    iget v0, p0, Lf0/n;->o:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "position() should be called first"

    .line 9
    .line 10
    invoke-static {v0}, Lc0/b;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lf0/n;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_1
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lo2/v0;

    .line 27
    .line 28
    iget v4, v3, Lo2/v0;->b:I

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lf0/n;->i(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    iget-object v6, p0, Lf0/n;->i:Landroidx/compose/foundation/lazy/layout/b;

    .line 35
    .line 36
    iget-object v7, p0, Lf0/n;->g:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v6, v2, v7}, Landroidx/compose/foundation/lazy/layout/b;->a(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-wide v6, p0, Lf0/n;->f:J

    .line 42
    .line 43
    invoke-static {v4, v5, v6, v7}, Ln3/j;->c(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-static {p1, v3, v4, v5}, Lo2/u0;->l(Lo2/u0;Lo2/v0;J)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/n;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lf0/n;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/n;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lo2/v0;

    .line 8
    .line 9
    invoke-virtual {p1}, Lo2/v0;->x()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf0/n;->n:Z

    .line 3
    .line 4
    return-void
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lf0/n;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/n;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lf0/n;->k(III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final i(I)J
    .locals 6

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/16 v2, 0x20

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lf0/n;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lf0/n;->j:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    int-to-long v3, v3

    .line 22
    :goto_0
    shl-long v2, v3, v2

    .line 23
    .line 24
    int-to-long v4, p1

    .line 25
    and-long/2addr v0, v4

    .line 26
    or-long/2addr v0, v2

    .line 27
    return-wide v0

    .line 28
    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 29
    .line 30
    iget-object v3, p0, Lf0/n;->p:[I

    .line 31
    .line 32
    aget v4, v3, p1

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    aget p1, v3, p1

    .line 37
    .line 38
    int-to-long v3, v4

    .line 39
    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final k(III)V
    .locals 7

    .line 1
    iput p1, p0, Lf0/n;->j:I

    .line 2
    .line 3
    iput p3, p0, Lf0/n;->o:I

    .line 4
    .line 5
    iget-object p3, p0, Lf0/n;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lo2/v0;

    .line 19
    .line 20
    mul-int/lit8 v3, v1, 0x2

    .line 21
    .line 22
    iget-object v4, p0, Lf0/n;->c:Lr1/f;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget v5, v2, Lo2/v0;->a:I

    .line 27
    .line 28
    iget-object v6, p0, Lf0/n;->d:Ln3/m;

    .line 29
    .line 30
    invoke-virtual {v4, v5, p2, v6}, Lr1/f;->a(IILn3/m;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, p0, Lf0/n;->p:[I

    .line 35
    .line 36
    aput v4, v5, v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    aput p1, v5, v3

    .line 41
    .line 42
    iget v2, v2, Lo2/v0;->b:I

    .line 43
    .line 44
    add-int/2addr p1, v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p1, "null horizontalAlignment when isVertical == true"

    .line 49
    .line 50
    invoke-static {p1}, Lc0/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 51
    .line 52
    .line 53
    new-instance p1, Lac/p;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    return-void
.end method
