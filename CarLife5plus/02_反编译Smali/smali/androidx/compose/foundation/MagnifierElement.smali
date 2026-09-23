.class public final Landroidx/compose/foundation/MagnifierElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/MagnifierElement;",
        "Lq2/z0;",
        "Lx/t0;",
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
.field public final a:Lf9/k;

.field public final b:Lf9/k;

.field public final c:Lx/f1;


# direct methods
.method public constructor <init>(Lf9/k;Lf9/k;Lx/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierElement;->a:Lf9/k;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/MagnifierElement;->b:Lf9/k;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/MagnifierElement;->c:Lx/f1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    return p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierElement;->a:Lf9/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit16 v0, v0, 0x3c1

    .line 8
    .line 9
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/2addr v2, v0

    .line 16
    const/16 v0, 0x1f

    .line 17
    .line 18
    mul-int/lit8 v2, v2, 0x1f

    .line 19
    .line 20
    add-int/lit16 v2, v2, 0x4cf

    .line 21
    .line 22
    mul-int/lit8 v2, v2, 0x1f

    .line 23
    .line 24
    const-wide/high16 v3, 0x7fc0000000000000L    # 2.247116418577895E307

    .line 25
    .line 26
    long-to-int v4, v3

    .line 27
    add-int/2addr v4, v2

    .line 28
    mul-int/lit8 v4, v4, 0x1f

    .line 29
    .line 30
    invoke-static {v1, v4, v0}, Lp9/v;->i(FII)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v1, v2

    .line 39
    mul-int/lit8 v1, v1, 0x1f

    .line 40
    .line 41
    add-int/lit16 v1, v1, 0x4cf

    .line 42
    .line 43
    mul-int/lit8 v1, v1, 0x1f

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->b:Lf9/k;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/2addr v2, v1

    .line 52
    mul-int/lit8 v2, v2, 0x1f

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierElement;->c:Lx/f1;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v0, v2

    .line 61
    return v0
.end method

.method public final i()Lr1/o;
    .locals 4

    .line 1
    new-instance v0, Lx/t0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->a:Lf9/k;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->b:Lf9/k;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->c:Lx/f1;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lx/t0;-><init>(Lf9/k;Lf9/k;Lx/f1;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final j(Lr1/o;)V
    .locals 8

    .line 1
    check-cast p1, Lx/t0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lx/t0;->q:Lx/f1;

    .line 7
    .line 8
    iget-object v1, p1, Lx/t0;->r:Landroid/view/View;

    .line 9
    .line 10
    iget-object v2, p1, Lx/t0;->s:Ln3/c;

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->a:Lf9/k;

    .line 13
    .line 14
    iput-object v3, p1, Lx/t0;->o:Lf9/k;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->b:Lf9/k;

    .line 17
    .line 18
    iput-object v3, p1, Lx/t0;->p:Lf9/k;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->c:Lx/f1;

    .line 21
    .line 22
    iput-object v3, p1, Lx/t0;->q:Lx/f1;

    .line 23
    .line 24
    invoke-static {p1}, Lq2/f;->x(Lq2/l;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {p1}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v5, v5, Lq2/h0;->x:Ln3/c;

    .line 33
    .line 34
    iget-object v6, p1, Lx/t0;->t:Lx/e1;

    .line 35
    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    sget-object v6, Lx/u0;->a:Ly2/u;

    .line 39
    .line 40
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 41
    .line 42
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v3}, Lx/f1;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    :goto_0
    invoke-static {v6, v6}, Ln3/f;->a(FF)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_1

    .line 66
    .line 67
    invoke-static {v6, v6}, Ln3/f;->a(FF)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-static {v5, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    :cond_1
    invoke-virtual {p1}, Lx/t0;->B0()V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {p1}, Lx/t0;->C0()V

    .line 95
    .line 96
    .line 97
    return-void
.end method
