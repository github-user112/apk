.class public final Ld0/a0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/y;
.implements Lr1/n;


# instance fields
.field public final a:Ld0/t0;

.field public final b:Lf1/k1;

.field public final c:Lf1/k1;


# direct methods
.method public constructor <init>(Ld0/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/a0;->a:Ld0/t0;

    .line 5
    .line 6
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ld0/a0;->b:Lf1/k1;

    .line 11
    .line 12
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Ld0/a0;->c:Lf1/k1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic a(Lr1/p;)Lr1/p;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/v;->f(Lr1/p;Lr1/p;)Lr1/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 6

    .line 1
    iget-object v0, p0, Ld0/a0;->b:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ld0/t0;

    .line 8
    .line 9
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, p1, v2}, Ld0/t0;->c(Lo2/o0;Ln3/m;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ld0/t0;

    .line 22
    .line 23
    invoke-interface {v2, p1}, Ld0/t0;->d(Lo2/o0;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ld0/t0;

    .line 32
    .line 33
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v3, p1, v4}, Ld0/t0;->a(Lo2/o0;Ln3/m;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ld0/t0;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Ld0/t0;->b(Lo2/o0;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v3, v1

    .line 52
    add-int/2addr v0, v2

    .line 53
    neg-int v4, v3

    .line 54
    neg-int v5, v0

    .line 55
    invoke-static {v4, v5, p3, p4}, Ln3/b;->i(IIJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    invoke-interface {p2, v4, v5}, Lo2/l0;->u(J)Lo2/v0;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget v4, p2, Lo2/v0;->a:I

    .line 64
    .line 65
    add-int/2addr v4, v3

    .line 66
    invoke-static {v4, p3, p4}, Ln3/b;->g(IJ)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget v4, p2, Lo2/v0;->b:I

    .line 71
    .line 72
    add-int/2addr v4, v0

    .line 73
    invoke-static {v4, p3, p4}, Ln3/b;->f(IJ)I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    new-instance p4, Ld0/z;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-direct {p4, p2, v1, v2, v0}, Ld0/z;-><init>(Ljava/lang/Object;III)V

    .line 81
    .line 82
    .line 83
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 84
    .line 85
    invoke-interface {p1, v3, p3, p2, p4}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1
.end method

.method public final synthetic c(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->i(Lo2/y;Lq2/p0;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic d(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->g(Lo2/y;Lq2/p0;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic e(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->b(Lo2/y;Lq2/p0;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Ld0/a0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Ld0/a0;

    .line 12
    .line 13
    iget-object p1, p1, Ld0/a0;->a:Ld0/t0;

    .line 14
    .line 15
    iget-object v0, p0, Ld0/a0;->a:Ld0/t0;

    .line 16
    .line 17
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final synthetic f(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->d(Lo2/y;Lq2/p0;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final g(Lf9/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final h(Lf9/k;)Z
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/a0;->a:Ld0/t0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
