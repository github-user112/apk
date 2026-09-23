.class final Landroidx/compose/foundation/selection/TriStateToggleableElement;
.super Lq2/z0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq2/z0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/selection/TriStateToggleableElement;",
        "Lq2/z0;",
        "Lj0/c;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:La3/a;

.field public final b:Lb0/k;

.field public final c:Lx/r0;

.field public final d:Z

.field public final e:Ly2/g;

.field public final f:Lf9/a;


# direct methods
.method public constructor <init>(La3/a;Lb0/k;Lx/r0;ZLy2/g;Lf9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->a:La3/a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->b:Lb0/k;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->c:Lx/r0;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->e:Ly2/g;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->f:Lf9/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_1
    const-class v0, Landroidx/compose/foundation/selection/TriStateToggleableElement;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    check-cast p1, Landroidx/compose/foundation/selection/TriStateToggleableElement;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->a:La3/a;

    .line 19
    .line 20
    iget-object v1, p1, Landroidx/compose/foundation/selection/TriStateToggleableElement;->a:La3/a;

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->b:Lb0/k;

    .line 26
    .line 27
    iget-object v1, p1, Landroidx/compose/foundation/selection/TriStateToggleableElement;->b:Lb0/k;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->c:Lx/r0;

    .line 37
    .line 38
    iget-object v1, p1, Landroidx/compose/foundation/selection/TriStateToggleableElement;->c:Lx/r0;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->d:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Landroidx/compose/foundation/selection/TriStateToggleableElement;->d:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->e:Ly2/g;

    .line 55
    .line 56
    iget-object v1, p1, Landroidx/compose/foundation/selection/TriStateToggleableElement;->e:Ly2/g;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ly2/g;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->f:Lf9/a;

    .line 66
    .line 67
    iget-object p1, p1, Landroidx/compose/foundation/selection/TriStateToggleableElement;->f:Lf9/a;

    .line 68
    .line 69
    if-eq v0, p1, :cond_8

    .line 70
    .line 71
    :goto_0
    const/4 p1, 0x0

    .line 72
    return p1

    .line 73
    :cond_8
    :goto_1
    const/4 p1, 0x1

    .line 74
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->a:La3/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->b:Lb0/k;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->c:Lx/r0;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v2}, Lx/r0;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_1
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    const/16 v1, 0x4d5

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-boolean v2, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->d:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    const/16 v1, 0x4cf

    .line 44
    .line 45
    :cond_2
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->e:Ly2/g;

    .line 49
    .line 50
    iget v1, v1, Ly2/g;->a:I

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->f:Lf9/a;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v0

    .line 62
    return v1
.end method

.method public final i()Lr1/o;
    .locals 8

    .line 1
    new-instance v0, Lj0/c;

    .line 2
    .line 3
    iget-object v7, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->f:Lf9/a;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->b:Lb0/k;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->c:Lx/r0;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget-boolean v4, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->d:Z

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->e:Ly2/g;

    .line 14
    .line 15
    invoke-direct/range {v0 .. v7}, Lx/f;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Ly2/g;Lf9/a;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->a:La3/a;

    .line 19
    .line 20
    iput-object v1, v0, Lj0/c;->L:La3/a;

    .line 21
    .line 22
    return-object v0
.end method

.method public final j(Lr1/o;)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lj0/c;

    .line 3
    .line 4
    iget-object p1, v0, Lj0/c;->L:La3/a;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->a:La3/a;

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    iput-object v1, v0, Lj0/c;->L:La3/a;

    .line 11
    .line 12
    invoke-static {v0}, Lq2/f;->n(Lq2/y1;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v5, 0x0

    .line 16
    iget-object v1, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->b:Lb0/k;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->c:Lx/r0;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iget-boolean v4, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->d:Z

    .line 22
    .line 23
    iget-object v6, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->e:Ly2/g;

    .line 24
    .line 25
    iget-object v7, p0, Landroidx/compose/foundation/selection/TriStateToggleableElement;->f:Lf9/a;

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v7}, Lx/f;->M0(Lb0/k;Lx/r0;ZZLjava/lang/String;Ly2/g;Lf9/a;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
