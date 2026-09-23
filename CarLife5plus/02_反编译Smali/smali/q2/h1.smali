.class public abstract Lq2/h1;
.super Lq2/p0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/l0;
.implements Lo2/w;
.implements Lq2/r1;


# static fields
.field public static final J:Ly1/i0;

.field public static final K:Lq2/v;

.field public static final L:[F

.field public static final M:Lq2/d;

.field public static final N:Lq2/d;


# instance fields
.field public A:F

.field public B:Lx1/a;

.field public C:Lq2/v;

.field public D:Lb2/c;

.field public E:Ly1/o;

.field public F:Lc1/h;

.field public final G:Lq2/e1;

.field public H:Z

.field public I:Lq2/p1;

.field public final o:Lq2/h0;

.field public p:Lq2/h1;

.field public q:Lq2/h1;

.field public r:Z

.field public s:Z

.field public t:Lf9/k;

.field public u:Ln3/c;

.field public v:Ln3/m;

.field public w:F

.field public x:Lo2/n0;

.field public y:Ls/c0;

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ly1/i0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iput v1, v0, Ly1/i0;->b:F

    .line 9
    .line 10
    iput v1, v0, Ly1/i0;->c:F

    .line 11
    .line 12
    iput v1, v0, Ly1/i0;->d:F

    .line 13
    .line 14
    sget-wide v1, Ly1/w;->a:J

    .line 15
    .line 16
    iput-wide v1, v0, Ly1/i0;->f:J

    .line 17
    .line 18
    iput-wide v1, v0, Ly1/i0;->g:J

    .line 19
    .line 20
    const/high16 v1, 0x41000000    # 8.0f

    .line 21
    .line 22
    iput v1, v0, Ly1/i0;->i:F

    .line 23
    .line 24
    sget-wide v1, Ly1/p0;->a:J

    .line 25
    .line 26
    iput-wide v1, v0, Ly1/i0;->j:J

    .line 27
    .line 28
    sget-object v1, Ly1/h0;->a:Ly1/g0;

    .line 29
    .line 30
    iput-object v1, v0, Ly1/i0;->k:Ly1/l0;

    .line 31
    .line 32
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    iput-wide v1, v0, Ly1/i0;->m:J

    .line 38
    .line 39
    invoke-static {}, Lg5/a;->h()Ln3/d;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Ly1/i0;->n:Ln3/c;

    .line 44
    .line 45
    sget-object v1, Ln3/m;->a:Ln3/m;

    .line 46
    .line 47
    iput-object v1, v0, Ly1/i0;->o:Ln3/m;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    iput v1, v0, Ly1/i0;->p:I

    .line 51
    .line 52
    sput-object v0, Lq2/h1;->J:Ly1/i0;

    .line 53
    .line 54
    new-instance v0, Lq2/v;

    .line 55
    .line 56
    invoke-direct {v0}, Lq2/v;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lq2/h1;->K:Lq2/v;

    .line 60
    .line 61
    invoke-static {}, Ly1/a0;->a()[F

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lq2/h1;->L:[F

    .line 66
    .line 67
    new-instance v0, Lq2/d;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-direct {v0, v1}, Lq2/d;-><init>(I)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lq2/h1;->M:Lq2/d;

    .line 74
    .line 75
    new-instance v0, Lq2/d;

    .line 76
    .line 77
    const/4 v1, 0x2

    .line 78
    invoke-direct {v0, v1}, Lq2/d;-><init>(I)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lq2/h1;->N:Lq2/d;

    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>(Lq2/h0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lq2/p0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/h1;->o:Lq2/h0;

    .line 5
    .line 6
    iget-object v0, p1, Lq2/h0;->x:Ln3/c;

    .line 7
    .line 8
    iput-object v0, p0, Lq2/h1;->u:Ln3/c;

    .line 9
    .line 10
    iget-object p1, p1, Lq2/h0;->y:Ln3/m;

    .line 11
    .line 12
    iput-object p1, p0, Lq2/h1;->v:Ln3/m;

    .line 13
    .line 14
    const p1, 0x3f4ccccd    # 0.8f

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lq2/h1;->w:F

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lq2/h1;->z:J

    .line 22
    .line 23
    new-instance p1, Lq2/e1;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p1, p0, v0}, Lq2/e1;-><init>(Lq2/h1;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lq2/h1;->G:Lq2/e1;

    .line 30
    .line 31
    return-void
.end method

.method public static Z0(Lo2/w;)Lq2/h1;
    .locals 1

    .line 1
    instance-of v0, p0, Lo2/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lo2/k0;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, v0, Lo2/k0;->a:Lq2/q0;

    .line 13
    .line 14
    iget-object v0, v0, Lq2/q0;->o:Lq2/h1;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    return-object v0

    .line 20
    :cond_2
    :goto_1
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p0, Lq2/h1;

    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public final A0(Ly1/o;Lb2/c;)V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lq2/h1;->H0(I)Lr1/o;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lq2/h1;->U0(Ly1/o;Lb2/c;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lq2/h1;->o:Lq2/h0;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lr2/u;

    .line 22
    .line 23
    invoke-virtual {v2}, Lr2/u;->getSharedDrawScope()Lq2/j0;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-wide v4, p0, Lo2/v0;->c:J

    .line 28
    .line 29
    invoke-static {v4, v5}, La/a;->S(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    move-object v10, v2

    .line 38
    :goto_0
    if-eqz v1, :cond_8

    .line 39
    .line 40
    instance-of v4, v1, Lq2/o;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    move-object v8, v1

    .line 45
    check-cast v8, Lq2/o;

    .line 46
    .line 47
    move-object v7, p0

    .line 48
    move-object v4, p1

    .line 49
    move-object v9, p2

    .line 50
    invoke-virtual/range {v3 .. v9}, Lq2/j0;->c(Ly1/o;JLq2/h1;Lq2/o;Lb2/c;)V

    .line 51
    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_1
    move-object v4, p1

    .line 55
    move-object v9, p2

    .line 56
    iget p1, v1, Lr1/o;->c:I

    .line 57
    .line 58
    and-int/2addr p1, v0

    .line 59
    if-eqz p1, :cond_7

    .line 60
    .line 61
    instance-of p1, v1, Lq2/m;

    .line 62
    .line 63
    if-eqz p1, :cond_7

    .line 64
    .line 65
    move-object p1, v1

    .line 66
    check-cast p1, Lq2/m;

    .line 67
    .line 68
    iget-object p1, p1, Lq2/m;->p:Lr1/o;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    :goto_1
    const/4 v7, 0x1

    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    iget v8, p1, Lr1/o;->c:I

    .line 75
    .line 76
    and-int/2addr v8, v0

    .line 77
    if-eqz v8, :cond_5

    .line 78
    .line 79
    add-int/lit8 p2, p2, 0x1

    .line 80
    .line 81
    if-ne p2, v7, :cond_2

    .line 82
    .line 83
    move-object v1, p1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    if-nez v10, :cond_3

    .line 86
    .line 87
    new-instance v10, Lh1/e;

    .line 88
    .line 89
    const/16 v7, 0x10

    .line 90
    .line 91
    new-array v7, v7, [Lr1/o;

    .line 92
    .line 93
    invoke-direct {v10, v7}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-virtual {v10, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    move-object v1, v2

    .line 102
    :cond_4
    invoke-virtual {v10, p1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    :goto_2
    iget-object p1, p1, Lr1/o;->f:Lr1/o;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    if-ne p2, v7, :cond_7

    .line 109
    .line 110
    :goto_3
    move-object p1, v4

    .line 111
    move-object p2, v9

    .line 112
    goto :goto_0

    .line 113
    :cond_7
    :goto_4
    invoke-static {v10}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    goto :goto_3

    .line 118
    :cond_8
    return-void
.end method

.method public abstract B0()V
.end method

.method public final C(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 15
    .line 16
    invoke-static {v0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lr2/u;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lr2/u;->L(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-static {p0}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Lq2/h1;->P0(Lo2/w;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    return-wide p1
.end method

.method public final C0(Lq2/h1;)Lq2/h1;
    .locals 5

    .line 1
    iget-object v0, p1, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    iget-object v1, p0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lq2/h1;->G0()Lr1/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Lr1/o;->a:Lr1/o;

    .line 16
    .line 17
    iget-boolean v2, v2, Lr1/o;->n:Z

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v2, "visitLocalAncestors called on an unattached node"

    .line 22
    .line 23
    invoke-static {v2}, Ln2/a;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, v1, Lr1/o;->a:Lr1/o;

    .line 27
    .line 28
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 29
    .line 30
    :goto_0
    if-eqz v1, :cond_7

    .line 31
    .line 32
    iget v2, v1, Lr1/o;->c:I

    .line 33
    .line 34
    and-int/lit8 v2, v2, 0x2

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    if-ne v1, v0, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    iget v2, v0, Lq2/h0;->o:I

    .line 45
    .line 46
    iget v3, v1, Lq2/h0;->o:I

    .line 47
    .line 48
    if-le v2, v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object v2, v1

    .line 59
    :goto_2
    iget v3, v2, Lq2/h0;->o:I

    .line 60
    .line 61
    iget v4, v0, Lq2/h0;->o:I

    .line 62
    .line 63
    if-le v3, v4, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :goto_3
    if-eq v0, v2, :cond_6

    .line 74
    .line 75
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    const-string v0, "layouts are not part of the same hierarchy"

    .line 91
    .line 92
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_6
    if-ne v2, v1, :cond_8

    .line 97
    .line 98
    :cond_7
    return-object p0

    .line 99
    :cond_8
    iget-object v1, p1, Lq2/h1;->o:Lq2/h0;

    .line 100
    .line 101
    if-ne v0, v1, :cond_9

    .line 102
    .line 103
    :goto_4
    return-object p1

    .line 104
    :cond_9
    iget-object p1, v0, Lq2/h0;->E:Lq2/d1;

    .line 105
    .line 106
    iget-object p1, p1, Lq2/d1;->c:Lq2/t;

    .line 107
    .line 108
    return-object p1
.end method

.method public final D0(J)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lq2/h1;->z:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    shr-long v3, p1, v2

    .line 6
    .line 7
    long-to-int v4, v3

    .line 8
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    shr-long v4, v0, v2

    .line 13
    .line 14
    long-to-int v5, v4

    .line 15
    int-to-float v4, v5

    .line 16
    sub-float/2addr v3, v4

    .line 17
    const-wide v4, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr p1, v4

    .line 23
    long-to-int p2, p1

    .line 24
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    and-long/2addr v0, v4

    .line 29
    long-to-int p2, v0

    .line 30
    int-to-float p2, p2

    .line 31
    sub-float/2addr p1, p2

    .line 32
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    int-to-long v0, p2

    .line 37
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long p1, p1

    .line 42
    shl-long/2addr v0, v2

    .line 43
    and-long/2addr p1, v4

    .line 44
    or-long/2addr p1, v0

    .line 45
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-interface {v0, p1, p2, v1}, Lq2/p1;->g(JZ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    :cond_0
    return-wide p1
.end method

.method public abstract E0()Lq2/q0;
.end method

.method public final F(J)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lq2/h1;->Q0()V

    .line 15
    .line 16
    .line 17
    move-object v0, p0

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lq2/h1;->I:Lq2/p1;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v1, p1, p2, v2}, Lq2/p1;->g(JZ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    :cond_1
    iget-wide v1, v0, Lq2/h1;->z:J

    .line 30
    .line 31
    invoke-static {p1, p2, v1, v2}, Li9/a;->K(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    iget-object v0, v0, Lq2/h1;->q:Lq2/h1;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-wide p1
.end method

.method public final F0()J
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/h1;->u:Ln3/c;

    .line 2
    .line 3
    iget-object v1, p0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    iget-object v1, v1, Lq2/h0;->z:Lr2/q2;

    .line 6
    .line 7
    invoke-interface {v1}, Lr2/q2;->d()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-interface {v0, v1, v2}, Ln3/c;->e0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public abstract G0()Lr1/o;
.end method

.method public final H0(I)Lr1/o;
    .locals 3

    .line 1
    invoke-static {p1}, Lq2/i1;->g(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lq2/h1;->I0(Z)Lr1/o;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_1
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget v2, v0, Lr1/o;->d:I

    .line 24
    .line 25
    and-int/2addr v2, p1

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    iget v2, v0, Lr1/o;->c:I

    .line 29
    .line 30
    and-int/2addr v2, p1

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    iget-object v0, v0, Lr1/o;->f:Lr1/o;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public final I0(Z)Lr1/o;
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 4
    .line 5
    iget-object v1, v0, Lq2/d1;->d:Lq2/h1;

    .line 6
    .line 7
    if-ne v1, p0, :cond_0

    .line 8
    .line 9
    iget-object p1, v0, Lq2/d1;->f:Lr1/o;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lq2/h1;->q:Lq2/h1;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lq2/h1;->G0()Lr1/o;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Lr1/o;->f:Lr1/o;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1
    return-object v0

    .line 29
    :cond_2
    iget-object p1, p0, Lq2/h1;->q:Lq2/h1;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Lq2/h1;->G0()Lr1/o;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_3
    return-object v0
.end method

.method public final J0(Lr1/o;Lq2/d;JLq2/r;IZ)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object v4, p5

    .line 7
    move v5, p6

    .line 8
    move v6, p7

    .line 9
    invoke-virtual/range {v0 .. v6}, Lq2/h1;->M0(Lq2/d;JLq2/r;IZ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    move-object v1, p2

    .line 14
    move-wide v2, p3

    .line 15
    move-object v4, p5

    .line 16
    move v5, p6

    .line 17
    move v6, p7

    .line 18
    iget p2, v4, Lq2/r;->c:I

    .line 19
    .line 20
    iget-object p3, v4, Lq2/r;->a:Ls/d0;

    .line 21
    .line 22
    add-int/lit8 p4, p2, 0x1

    .line 23
    .line 24
    iget p5, p3, Ls/d0;->b:I

    .line 25
    .line 26
    invoke-virtual {v4, p4, p5}, Lq2/r;->d(II)V

    .line 27
    .line 28
    .line 29
    iget p4, v4, Lq2/r;->c:I

    .line 30
    .line 31
    add-int/lit8 p4, p4, 0x1

    .line 32
    .line 33
    iput p4, v4, Lq2/r;->c:I

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p3, v4, Lq2/r;->b:Ls/z;

    .line 39
    .line 40
    const/high16 p4, -0x40800000    # -1.0f

    .line 41
    .line 42
    const/4 p5, 0x0

    .line 43
    invoke-static {p4, v6, p5}, Lq2/f;->a(FZZ)J

    .line 44
    .line 45
    .line 46
    move-result-wide p4

    .line 47
    invoke-virtual {p3, p4, p5}, Ls/z;->a(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lq2/d;->b()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    invoke-static {p1, p3}, Lq2/f;->e(Lq2/l;I)Lr1/o;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    move-object v0, p0

    .line 59
    move v7, v6

    .line 60
    move v6, v5

    .line 61
    move-object v5, v4

    .line 62
    move-wide v3, v2

    .line 63
    move-object v2, v1

    .line 64
    move-object v1, p1

    .line 65
    invoke-virtual/range {v0 .. v7}, Lq2/h1;->J0(Lr1/o;Lq2/d;JLq2/r;IZ)V

    .line 66
    .line 67
    .line 68
    move-object v4, v5

    .line 69
    iput p2, v4, Lq2/r;->c:I

    .line 70
    .line 71
    return-void
.end method

.method public final K0(Lr1/o;Lq2/d;JLq2/r;IZF)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-wide v2, p3

    .line 6
    move-object/from16 v4, p5

    .line 7
    .line 8
    move/from16 v5, p6

    .line 9
    .line 10
    move/from16 v6, p7

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Lq2/h1;->M0(Lq2/d;JLq2/r;IZ)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    move-object/from16 v4, p5

    .line 17
    .line 18
    iget v10, v4, Lq2/r;->c:I

    .line 19
    .line 20
    iget-object v0, v4, Lq2/r;->a:Ls/d0;

    .line 21
    .line 22
    add-int/lit8 v1, v10, 0x1

    .line 23
    .line 24
    iget v2, v0, Ls/d0;->b:I

    .line 25
    .line 26
    invoke-virtual {v4, v1, v2}, Lq2/r;->d(II)V

    .line 27
    .line 28
    .line 29
    iget v1, v4, Lq2/r;->c:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    iput v1, v4, Lq2/r;->c:I

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v4, Lq2/r;->b:Ls/z;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    move/from16 v7, p7

    .line 42
    .line 43
    move/from16 v8, p8

    .line 44
    .line 45
    invoke-static {v8, v7, v1}, Lq2/f;->a(FZZ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2}, Ls/z;->a(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lq2/d;->b()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {p1, v0}, Lq2/f;->e(Lq2/l;I)Lr1/o;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v9, 0x1

    .line 61
    move-object v0, p0

    .line 62
    move-object v2, p2

    .line 63
    move/from16 v6, p6

    .line 64
    .line 65
    move-object v5, v4

    .line 66
    move-wide v3, p3

    .line 67
    invoke-virtual/range {v0 .. v9}, Lq2/h1;->T0(Lr1/o;Lq2/d;JLq2/r;IZFZ)V

    .line 68
    .line 69
    .line 70
    move-object v4, v5

    .line 71
    iput v10, v4, Lq2/r;->c:I

    .line 72
    .line 73
    return-void
.end method

.method public final L0(Lq2/d;JLq2/r;IZ)V
    .locals 14

    .line 1
    move-wide/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    move/from16 v6, p5

    .line 6
    .line 7
    invoke-virtual {p1}, Lq2/d;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lq2/h1;->H0(I)Lr1/o;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v3, v4}, Lq2/h1;->f1(J)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 21
    .line 22
    const v10, 0x7fffffff

    .line 23
    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    if-ne v6, v11, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lq2/h1;->F0()J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    invoke-virtual {p0, v3, v4, v11, v12}, Lq2/h1;->y0(JJ)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    and-int/2addr v2, v10

    .line 43
    if-ge v2, v9, :cond_1

    .line 44
    .line 45
    iget v2, v5, Lq2/r;->c:I

    .line 46
    .line 47
    invoke-static {v5}, Lp9/x1;->u(Ljava/util/List;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-ne v2, v7, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0, v8, v8}, Lq2/f;->a(FZZ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    invoke-virtual {v5}, Lq2/r;->b()J

    .line 59
    .line 60
    .line 61
    move-result-wide v9

    .line 62
    invoke-static {v9, v10, v7, v8}, Lq2/f;->h(JJ)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-lez v2, :cond_1

    .line 67
    .line 68
    :goto_0
    const/4 v7, 0x0

    .line 69
    move-object v2, p1

    .line 70
    move v8, v0

    .line 71
    move-object v0, p0

    .line 72
    invoke-virtual/range {v0 .. v8}, Lq2/h1;->K0(Lr1/o;Lq2/d;JLq2/r;IZF)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void

    .line 76
    :cond_2
    if-nez v1, :cond_3

    .line 77
    .line 78
    invoke-virtual/range {p0 .. p6}, Lq2/h1;->M0(Lq2/d;JLq2/r;IZ)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    const/16 v0, 0x20

    .line 83
    .line 84
    shr-long v2, p2, v0

    .line 85
    .line 86
    long-to-int v0, v2

    .line 87
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const-wide v2, 0xffffffffL

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    and-long v2, p2, v2

    .line 97
    .line 98
    long-to-int v3, v2

    .line 99
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const/4 v3, 0x0

    .line 104
    cmpl-float v4, v0, v3

    .line 105
    .line 106
    if-ltz v4, :cond_4

    .line 107
    .line 108
    cmpl-float v3, v2, v3

    .line 109
    .line 110
    if-ltz v3, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0}, Lo2/v0;->N()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    int-to-float v3, v3

    .line 117
    cmpg-float v0, v0, v3

    .line 118
    .line 119
    if-gez v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0}, Lo2/v0;->L()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    int-to-float v0, v0

    .line 126
    cmpg-float v0, v2, v0

    .line 127
    .line 128
    if-gez v0, :cond_4

    .line 129
    .line 130
    move-object v0, p0

    .line 131
    move-object v2, p1

    .line 132
    move-wide/from16 v3, p2

    .line 133
    .line 134
    move-object/from16 v5, p4

    .line 135
    .line 136
    move/from16 v6, p5

    .line 137
    .line 138
    move/from16 v7, p6

    .line 139
    .line 140
    invoke-virtual/range {v0 .. v7}, Lq2/h1;->J0(Lr1/o;Lq2/d;JLq2/r;IZ)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    move-wide/from16 v3, p2

    .line 145
    .line 146
    move-object/from16 v5, p4

    .line 147
    .line 148
    move/from16 v6, p5

    .line 149
    .line 150
    if-ne v6, v11, :cond_5

    .line 151
    .line 152
    invoke-virtual {p0}, Lq2/h1;->F0()J

    .line 153
    .line 154
    .line 155
    move-result-wide v12

    .line 156
    invoke-virtual {p0, v3, v4, v12, v13}, Lq2/h1;->y0(JJ)F

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    goto :goto_1

    .line 161
    :cond_5
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 162
    .line 163
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    and-int/2addr v7, v10

    .line 168
    if-ge v7, v9, :cond_7

    .line 169
    .line 170
    iget v7, v5, Lq2/r;->c:I

    .line 171
    .line 172
    invoke-static {v5}, Lp9/x1;->u(Ljava/util/List;)I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-ne v7, v9, :cond_6

    .line 177
    .line 178
    move/from16 v7, p6

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    move/from16 v7, p6

    .line 182
    .line 183
    invoke-static {v2, v7, v8}, Lq2/f;->a(FZZ)J

    .line 184
    .line 185
    .line 186
    move-result-wide v9

    .line 187
    invoke-virtual {v5}, Lq2/r;->b()J

    .line 188
    .line 189
    .line 190
    move-result-wide v12

    .line 191
    invoke-static {v12, v13, v9, v10}, Lq2/f;->h(JJ)I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-lez v9, :cond_8

    .line 196
    .line 197
    :goto_2
    const/4 v9, 0x1

    .line 198
    :goto_3
    move-object v0, p0

    .line 199
    move v8, v2

    .line 200
    move-object v2, p1

    .line 201
    goto :goto_4

    .line 202
    :cond_7
    move/from16 v7, p6

    .line 203
    .line 204
    :cond_8
    const/4 v9, 0x0

    .line 205
    goto :goto_3

    .line 206
    :goto_4
    invoke-virtual/range {v0 .. v9}, Lq2/h1;->T0(Lr1/o;Lq2/d;JLq2/r;IZFZ)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final M()F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 4
    .line 5
    invoke-interface {v0}, Ln3/c;->M()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public M0(Lq2/d;JLq2/r;IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq2/h1;->p:Lq2/h1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p2, p3}, Lq2/h1;->D0(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p4

    .line 11
    move v5, p5

    .line 12
    move v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lq2/h1;->L0(Lq2/d;JLq2/r;IZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final N0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lq2/p1;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lq2/h1;->q:Lq2/h1;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lq2/h1;->N0()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final O0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lq2/h1;->w:F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lq2/h1;->q:Lq2/h1;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lq2/h1;->O0()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final P0(Lo2/w;J)J
    .locals 3

    .line 1
    instance-of v0, p1, Lo2/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lo2/k0;

    .line 6
    .line 7
    iget-object v0, p1, Lo2/k0;->a:Lq2/q0;

    .line 8
    .line 9
    iget-object v0, v0, Lq2/q0;->o:Lq2/h1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lq2/h1;->Q0()V

    .line 12
    .line 13
    .line 14
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    xor-long/2addr p2, v0

    .line 20
    invoke-virtual {p1, p0, p2, p3}, Lo2/k0;->b(Lo2/w;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    xor-long/2addr p1, v0

    .line 25
    return-wide p1

    .line 26
    :cond_0
    invoke-static {p1}, Lq2/h1;->Z0(Lo2/w;)Lq2/h1;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lq2/h1;->Q0()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lq2/h1;->C0(Lq2/h1;)Lq2/h1;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    if-eq p1, v0, :cond_2

    .line 38
    .line 39
    iget-object v1, p1, Lq2/h1;->I:Lq2/p1;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {v1, p2, p3, v2}, Lq2/p1;->g(JZ)J

    .line 45
    .line 46
    .line 47
    move-result-wide p2

    .line 48
    :cond_1
    iget-wide v1, p1, Lq2/h1;->z:J

    .line 49
    .line 50
    invoke-static {p2, p3, v1, v2}, Li9/a;->K(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p2

    .line 54
    iget-object p1, p1, Lq2/h1;->q:Lq2/h1;

    .line 55
    .line 56
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lq2/h1;->w0(Lq2/h1;J)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    return-wide p1
.end method

.method public final Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h0;->F:Lq2/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/l0;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final R0()V
    .locals 13

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0}, Lq2/i1;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Lq2/h1;->I0(Z)Lr1/o;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_c

    .line 12
    .line 13
    iget-object v2, v2, Lr1/o;->a:Lr1/o;

    .line 14
    .line 15
    iget v2, v2, Lr1/o;->d:I

    .line 16
    .line 17
    and-int/2addr v2, v0

    .line 18
    if-eqz v2, :cond_c

    .line 19
    .line 20
    invoke-static {}, Ln6/a;->h()Lp1/f;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lp1/f;->e()Lf9/k;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v4, v3

    .line 33
    :goto_0
    invoke-static {v2}, Ln6/a;->l(Lp1/f;)Lp1/f;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v6, v6, Lr1/o;->e:Lr1/o;

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lq2/h1;->I0(Z)Lr1/o;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_2
    if-eqz v1, :cond_b

    .line 62
    .line 63
    iget v7, v1, Lr1/o;->d:I

    .line 64
    .line 65
    and-int/2addr v7, v0

    .line 66
    if-eqz v7, :cond_b

    .line 67
    .line 68
    iget v7, v1, Lr1/o;->c:I

    .line 69
    .line 70
    and-int/2addr v7, v0

    .line 71
    if-eqz v7, :cond_a

    .line 72
    .line 73
    move-object v7, v1

    .line 74
    move-object v8, v3

    .line 75
    :goto_3
    if-eqz v7, :cond_a

    .line 76
    .line 77
    instance-of v9, v7, Lq2/w;

    .line 78
    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    check-cast v7, Lq2/w;

    .line 82
    .line 83
    iget-wide v9, p0, Lo2/v0;->c:J

    .line 84
    .line 85
    invoke-interface {v7, v9, v10}, Lq2/w;->l(J)V

    .line 86
    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_3
    iget v9, v7, Lr1/o;->c:I

    .line 90
    .line 91
    and-int/2addr v9, v0

    .line 92
    if-eqz v9, :cond_9

    .line 93
    .line 94
    instance-of v9, v7, Lq2/m;

    .line 95
    .line 96
    if-eqz v9, :cond_9

    .line 97
    .line 98
    move-object v9, v7

    .line 99
    check-cast v9, Lq2/m;

    .line 100
    .line 101
    iget-object v9, v9, Lq2/m;->p:Lr1/o;

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    :goto_4
    const/4 v11, 0x1

    .line 105
    if-eqz v9, :cond_8

    .line 106
    .line 107
    iget v12, v9, Lr1/o;->c:I

    .line 108
    .line 109
    and-int/2addr v12, v0

    .line 110
    if-eqz v12, :cond_7

    .line 111
    .line 112
    add-int/lit8 v10, v10, 0x1

    .line 113
    .line 114
    if-ne v10, v11, :cond_4

    .line 115
    .line 116
    move-object v7, v9

    .line 117
    goto :goto_5

    .line 118
    :cond_4
    if-nez v8, :cond_5

    .line 119
    .line 120
    new-instance v8, Lh1/e;

    .line 121
    .line 122
    const/16 v11, 0x10

    .line 123
    .line 124
    new-array v11, v11, [Lr1/o;

    .line 125
    .line 126
    invoke-direct {v8, v11}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    if-eqz v7, :cond_6

    .line 130
    .line 131
    invoke-virtual {v8, v7}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    move-object v7, v3

    .line 135
    :cond_6
    invoke-virtual {v8, v9}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_5
    iget-object v9, v9, Lr1/o;->f:Lr1/o;

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_8
    if-ne v10, v11, :cond_9

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    :goto_6
    invoke-static {v8}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    goto :goto_3

    .line 149
    :cond_a
    if-eq v1, v6, :cond_b

    .line 150
    .line 151
    iget-object v1, v1, Lr1/o;->f:Lr1/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_b
    :goto_7
    invoke-static {v2, v5, v4}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_8
    invoke-static {v2, v5, v4}, Ln6/a;->t(Lp1/f;Lp1/f;Lf9/k;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_c
    return-void
.end method

.method public final S0()V
    .locals 10

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {v0}, Lq2/i1;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v2, Lr1/o;->e:Lr1/o;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lq2/h1;->I0(Z)Lr1/o;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_1
    if-eqz v1, :cond_a

    .line 25
    .line 26
    iget v3, v1, Lr1/o;->d:I

    .line 27
    .line 28
    and-int/2addr v3, v0

    .line 29
    if-eqz v3, :cond_a

    .line 30
    .line 31
    iget v3, v1, Lr1/o;->c:I

    .line 32
    .line 33
    and-int/2addr v3, v0

    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move-object v4, v1

    .line 38
    move-object v5, v3

    .line 39
    :goto_2
    if-eqz v4, :cond_9

    .line 40
    .line 41
    instance-of v6, v4, Lq2/w;

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    check-cast v4, Lq2/w;

    .line 46
    .line 47
    invoke-interface {v4, p0}, Lq2/w;->U(Lo2/w;)V

    .line 48
    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_2
    iget v6, v4, Lr1/o;->c:I

    .line 52
    .line 53
    and-int/2addr v6, v0

    .line 54
    if-eqz v6, :cond_8

    .line 55
    .line 56
    instance-of v6, v4, Lq2/m;

    .line 57
    .line 58
    if-eqz v6, :cond_8

    .line 59
    .line 60
    move-object v6, v4

    .line 61
    check-cast v6, Lq2/m;

    .line 62
    .line 63
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    :goto_3
    const/4 v8, 0x1

    .line 67
    if-eqz v6, :cond_7

    .line 68
    .line 69
    iget v9, v6, Lr1/o;->c:I

    .line 70
    .line 71
    and-int/2addr v9, v0

    .line 72
    if-eqz v9, :cond_6

    .line 73
    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    if-ne v7, v8, :cond_3

    .line 77
    .line 78
    move-object v4, v6

    .line 79
    goto :goto_4

    .line 80
    :cond_3
    if-nez v5, :cond_4

    .line 81
    .line 82
    new-instance v5, Lh1/e;

    .line 83
    .line 84
    const/16 v8, 0x10

    .line 85
    .line 86
    new-array v8, v8, [Lr1/o;

    .line 87
    .line 88
    invoke-direct {v5, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    if-eqz v4, :cond_5

    .line 92
    .line 93
    invoke-virtual {v5, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v4, v3

    .line 97
    :cond_5
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_4
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    if-ne v7, v8, :cond_8

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_8
    :goto_5
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    goto :goto_2

    .line 111
    :cond_9
    if-eq v1, v2, :cond_a

    .line 112
    .line 113
    iget-object v1, v1, Lr1/o;->f:Lr1/o;

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_a
    :goto_6
    return-void
.end method

.method public final T0(Lr1/o;Lq2/d;JLq2/r;IZFZ)V
    .locals 19

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-wide/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    move/from16 v6, p7

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Lq2/h1;->M0(Lq2/d;JLq2/r;IZ)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    move/from16 v6, p6

    .line 20
    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v11, 0x1

    .line 25
    const/4 v3, 0x3

    .line 26
    if-ne v6, v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v4, 0x4

    .line 30
    if-ne v6, v4, :cond_11

    .line 31
    .line 32
    :goto_0
    move-object/from16 v4, p1

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_1
    if-eqz v4, :cond_11

    .line 36
    .line 37
    instance-of v7, v4, Lq2/v1;

    .line 38
    .line 39
    if-eqz v7, :cond_a

    .line 40
    .line 41
    check-cast v4, Lq2/v1;

    .line 42
    .line 43
    invoke-interface {v4}, Lq2/v1;->k()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    const/16 v7, 0x20

    .line 48
    .line 49
    shr-long v7, p3, v7

    .line 50
    .line 51
    long-to-int v8, v7

    .line 52
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    move-object/from16 v9, p0

    .line 57
    .line 58
    iget-object v10, v9, Lq2/h1;->o:Lq2/h0;

    .line 59
    .line 60
    iget-object v12, v10, Lq2/h0;->y:Ln3/m;

    .line 61
    .line 62
    sget v13, Lq2/b2;->b:I

    .line 63
    .line 64
    const-wide/high16 v13, -0x8000000000000000L

    .line 65
    .line 66
    and-long/2addr v13, v4

    .line 67
    sget-object v2, Ln3/m;->a:Ln3/m;

    .line 68
    .line 69
    const-wide/16 v17, 0x0

    .line 70
    .line 71
    const/4 v15, 0x2

    .line 72
    cmp-long v16, v13, v17

    .line 73
    .line 74
    if-eqz v16, :cond_3

    .line 75
    .line 76
    if-ne v12, v2, :cond_2

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-static {v15, v4, v5}, Lq2/d;->a(IJ)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_2
    invoke-static {v1, v4, v5}, Lq2/d;->a(IJ)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    :goto_3
    neg-int v12, v12

    .line 89
    int-to-float v12, v12

    .line 90
    cmpl-float v7, v7, v12

    .line 91
    .line 92
    if-ltz v7, :cond_11

    .line 93
    .line 94
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {v9}, Lo2/v0;->N()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    iget-object v10, v10, Lq2/h0;->y:Ln3/m;

    .line 103
    .line 104
    if-eqz v16, :cond_5

    .line 105
    .line 106
    if-ne v10, v2, :cond_4

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    invoke-static {v1, v4, v5}, Lq2/d;->a(IJ)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_5

    .line 114
    :cond_5
    :goto_4
    invoke-static {v15, v4, v5}, Lq2/d;->a(IJ)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    :goto_5
    add-int/2addr v8, v2

    .line 119
    int-to-float v2, v8

    .line 120
    cmpg-float v2, v7, v2

    .line 121
    .line 122
    if-gez v2, :cond_11

    .line 123
    .line 124
    const-wide v7, 0xffffffffL

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    and-long v7, p3, v7

    .line 130
    .line 131
    long-to-int v2, v7

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    invoke-static {v11, v4, v5}, Lq2/d;->a(IJ)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    neg-int v8, v8

    .line 141
    int-to-float v8, v8

    .line 142
    cmpl-float v7, v7, v8

    .line 143
    .line 144
    if-ltz v7, :cond_11

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-virtual {v9}, Lo2/v0;->L()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-static {v3, v4, v5}, Lq2/d;->a(IJ)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    add-int/2addr v3, v7

    .line 159
    int-to-float v3, v3

    .line 160
    cmpg-float v2, v2, v3

    .line 161
    .line 162
    if-gez v2, :cond_11

    .line 163
    .line 164
    new-instance v0, Lq2/f1;

    .line 165
    .line 166
    move-object/from16 v2, p1

    .line 167
    .line 168
    move-object/from16 v3, p2

    .line 169
    .line 170
    move-wide/from16 v4, p3

    .line 171
    .line 172
    move/from16 v8, p7

    .line 173
    .line 174
    move/from16 v10, p9

    .line 175
    .line 176
    move v7, v6

    .line 177
    move-object v1, v9

    .line 178
    move-object/from16 v6, p5

    .line 179
    .line 180
    move/from16 v9, p8

    .line 181
    .line 182
    invoke-direct/range {v0 .. v10}, Lq2/f1;-><init>(Lq2/h1;Lr1/o;Lq2/d;JLq2/r;IZFZ)V

    .line 183
    .line 184
    .line 185
    move v7, v8

    .line 186
    iget-object v1, v6, Lq2/r;->b:Ls/z;

    .line 187
    .line 188
    iget-object v3, v6, Lq2/r;->a:Ls/d0;

    .line 189
    .line 190
    iget v4, v6, Lq2/r;->c:I

    .line 191
    .line 192
    invoke-static {v6}, Lp9/x1;->u(Ljava/util/List;)I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    const/4 v8, 0x0

    .line 197
    if-ne v4, v5, :cond_6

    .line 198
    .line 199
    iget v4, v6, Lq2/r;->c:I

    .line 200
    .line 201
    add-int/lit8 v5, v4, 0x1

    .line 202
    .line 203
    iget v9, v3, Ls/d0;->b:I

    .line 204
    .line 205
    invoke-virtual {v6, v5, v9}, Lq2/r;->d(II)V

    .line 206
    .line 207
    .line 208
    iget v5, v6, Lq2/r;->c:I

    .line 209
    .line 210
    add-int/2addr v5, v11

    .line 211
    iput v5, v6, Lq2/r;->c:I

    .line 212
    .line 213
    invoke-virtual {v3, v2}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v8, v7, v11}, Lq2/f;->a(FZZ)J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    invoke-virtual {v1, v2, v3}, Ls/z;->a(J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Lq2/f1;->invoke()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    iput v4, v6, Lq2/r;->c:I

    .line 227
    .line 228
    return-void

    .line 229
    :cond_6
    invoke-virtual {v6}, Lq2/r;->b()J

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    iget v9, v6, Lq2/r;->c:I

    .line 234
    .line 235
    invoke-static {v4, v5}, Lq2/f;->o(J)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eqz v10, :cond_8

    .line 240
    .line 241
    invoke-static {v6}, Lp9/x1;->u(Ljava/util/List;)I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    iput v4, v6, Lq2/r;->c:I

    .line 246
    .line 247
    add-int/lit8 v5, v4, 0x1

    .line 248
    .line 249
    iget v10, v3, Ls/d0;->b:I

    .line 250
    .line 251
    invoke-virtual {v6, v5, v10}, Lq2/r;->d(II)V

    .line 252
    .line 253
    .line 254
    iget v5, v6, Lq2/r;->c:I

    .line 255
    .line 256
    add-int/2addr v5, v11

    .line 257
    iput v5, v6, Lq2/r;->c:I

    .line 258
    .line 259
    invoke-virtual {v3, v2}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v8, v7, v11}, Lq2/f;->a(FZZ)J

    .line 263
    .line 264
    .line 265
    move-result-wide v2

    .line 266
    invoke-virtual {v1, v2, v3}, Ls/z;->a(J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lq2/f1;->invoke()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    iput v4, v6, Lq2/r;->c:I

    .line 273
    .line 274
    invoke-virtual {v6}, Lq2/r;->b()J

    .line 275
    .line 276
    .line 277
    move-result-wide v0

    .line 278
    invoke-static {v0, v1}, Lq2/f;->k(J)F

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    cmpg-float v0, v0, v8

    .line 283
    .line 284
    if-gez v0, :cond_7

    .line 285
    .line 286
    add-int/lit8 v0, v9, 0x1

    .line 287
    .line 288
    iget v1, v6, Lq2/r;->c:I

    .line 289
    .line 290
    add-int/2addr v1, v11

    .line 291
    invoke-virtual {v6, v0, v1}, Lq2/r;->d(II)V

    .line 292
    .line 293
    .line 294
    :cond_7
    iput v9, v6, Lq2/r;->c:I

    .line 295
    .line 296
    return-void

    .line 297
    :cond_8
    invoke-static {v4, v5}, Lq2/f;->k(J)F

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    cmpl-float v4, v4, v8

    .line 302
    .line 303
    if-lez v4, :cond_9

    .line 304
    .line 305
    iget v4, v6, Lq2/r;->c:I

    .line 306
    .line 307
    add-int/lit8 v5, v4, 0x1

    .line 308
    .line 309
    iget v9, v3, Ls/d0;->b:I

    .line 310
    .line 311
    invoke-virtual {v6, v5, v9}, Lq2/r;->d(II)V

    .line 312
    .line 313
    .line 314
    iget v5, v6, Lq2/r;->c:I

    .line 315
    .line 316
    add-int/2addr v5, v11

    .line 317
    iput v5, v6, Lq2/r;->c:I

    .line 318
    .line 319
    invoke-virtual {v3, v2}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v8, v7, v11}, Lq2/f;->a(FZZ)J

    .line 323
    .line 324
    .line 325
    move-result-wide v2

    .line 326
    invoke-virtual {v1, v2, v3}, Ls/z;->a(J)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lq2/f1;->invoke()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    iput v4, v6, Lq2/r;->c:I

    .line 333
    .line 334
    :cond_9
    return-void

    .line 335
    :cond_a
    move-object/from16 v2, p1

    .line 336
    .line 337
    move-object/from16 v6, p5

    .line 338
    .line 339
    move/from16 v7, p7

    .line 340
    .line 341
    iget v8, v4, Lr1/o;->c:I

    .line 342
    .line 343
    and-int/2addr v8, v0

    .line 344
    if-eqz v8, :cond_10

    .line 345
    .line 346
    instance-of v8, v4, Lq2/m;

    .line 347
    .line 348
    if-eqz v8, :cond_10

    .line 349
    .line 350
    move-object v8, v4

    .line 351
    check-cast v8, Lq2/m;

    .line 352
    .line 353
    iget-object v8, v8, Lq2/m;->p:Lr1/o;

    .line 354
    .line 355
    const/4 v9, 0x0

    .line 356
    :goto_6
    if-eqz v8, :cond_f

    .line 357
    .line 358
    iget v10, v8, Lr1/o;->c:I

    .line 359
    .line 360
    and-int/2addr v10, v0

    .line 361
    if-eqz v10, :cond_e

    .line 362
    .line 363
    add-int/lit8 v9, v9, 0x1

    .line 364
    .line 365
    if-ne v9, v11, :cond_b

    .line 366
    .line 367
    move-object v4, v8

    .line 368
    goto :goto_7

    .line 369
    :cond_b
    if-nez v5, :cond_c

    .line 370
    .line 371
    new-instance v5, Lh1/e;

    .line 372
    .line 373
    new-array v10, v0, [Lr1/o;

    .line 374
    .line 375
    invoke-direct {v5, v10}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_c
    if-eqz v4, :cond_d

    .line 379
    .line 380
    invoke-virtual {v5, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    const/4 v4, 0x0

    .line 384
    :cond_d
    invoke-virtual {v5, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_e
    :goto_7
    iget-object v8, v8, Lr1/o;->f:Lr1/o;

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_f
    if-ne v9, v11, :cond_10

    .line 391
    .line 392
    :goto_8
    move/from16 v6, p6

    .line 393
    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :cond_10
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    goto :goto_8

    .line 401
    :cond_11
    move-object/from16 v2, p1

    .line 402
    .line 403
    move-object/from16 v6, p5

    .line 404
    .line 405
    move/from16 v7, p7

    .line 406
    .line 407
    if-eqz p9, :cond_12

    .line 408
    .line 409
    invoke-virtual/range {p0 .. p8}, Lq2/h1;->K0(Lr1/o;Lq2/d;JLq2/r;IZF)V

    .line 410
    .line 411
    .line 412
    return-void

    .line 413
    :cond_12
    move-object/from16 v3, p2

    .line 414
    .line 415
    iget v4, v3, Lq2/d;->a:I

    .line 416
    .line 417
    packed-switch v4, :pswitch_data_0

    .line 418
    .line 419
    .line 420
    goto :goto_d

    .line 421
    :pswitch_0
    move-object v4, v2

    .line 422
    const/4 v5, 0x0

    .line 423
    :goto_9
    if-eqz v4, :cond_1a

    .line 424
    .line 425
    instance-of v8, v4, Lq2/v1;

    .line 426
    .line 427
    if-eqz v8, :cond_13

    .line 428
    .line 429
    check-cast v4, Lq2/v1;

    .line 430
    .line 431
    invoke-interface {v4}, Lq2/v1;->G()V

    .line 432
    .line 433
    .line 434
    goto :goto_c

    .line 435
    :cond_13
    iget v8, v4, Lr1/o;->c:I

    .line 436
    .line 437
    and-int/2addr v8, v0

    .line 438
    if-eqz v8, :cond_19

    .line 439
    .line 440
    instance-of v8, v4, Lq2/m;

    .line 441
    .line 442
    if-eqz v8, :cond_19

    .line 443
    .line 444
    move-object v8, v4

    .line 445
    check-cast v8, Lq2/m;

    .line 446
    .line 447
    iget-object v8, v8, Lq2/m;->p:Lr1/o;

    .line 448
    .line 449
    const/4 v9, 0x0

    .line 450
    :goto_a
    if-eqz v8, :cond_18

    .line 451
    .line 452
    iget v10, v8, Lr1/o;->c:I

    .line 453
    .line 454
    and-int/2addr v10, v0

    .line 455
    if-eqz v10, :cond_17

    .line 456
    .line 457
    add-int/lit8 v9, v9, 0x1

    .line 458
    .line 459
    if-ne v9, v11, :cond_14

    .line 460
    .line 461
    move-object v4, v8

    .line 462
    goto :goto_b

    .line 463
    :cond_14
    if-nez v5, :cond_15

    .line 464
    .line 465
    new-instance v5, Lh1/e;

    .line 466
    .line 467
    new-array v10, v0, [Lr1/o;

    .line 468
    .line 469
    invoke-direct {v5, v10}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :cond_15
    if-eqz v4, :cond_16

    .line 473
    .line 474
    invoke-virtual {v5, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    const/4 v4, 0x0

    .line 478
    :cond_16
    invoke-virtual {v5, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_17
    :goto_b
    iget-object v8, v8, Lr1/o;->f:Lr1/o;

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_18
    if-ne v9, v11, :cond_19

    .line 485
    .line 486
    goto :goto_9

    .line 487
    :cond_19
    :goto_c
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    goto :goto_9

    .line 492
    :cond_1a
    :goto_d
    invoke-virtual {v3}, Lq2/d;->b()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    invoke-static {v2, v0}, Lq2/f;->e(Lq2/l;I)Lr1/o;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const/4 v9, 0x0

    .line 501
    move-object/from16 v0, p0

    .line 502
    .line 503
    move/from16 v8, p8

    .line 504
    .line 505
    move-object v2, v3

    .line 506
    move-object v5, v6

    .line 507
    move-wide/from16 v3, p3

    .line 508
    .line 509
    move/from16 v6, p6

    .line 510
    .line 511
    invoke-virtual/range {v0 .. v9}, Lq2/h1;->T0(Lr1/o;Lq2/d;JLq2/r;IZFZ)V

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract U0(Ly1/o;Lb2/c;)V
.end method

.method public final V0(JFLf9/k;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p4, v0}, Lq2/h1;->d1(Lf9/k;Z)V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Lq2/h1;->z:J

    .line 6
    .line 7
    invoke-static {v1, v2, p1, p2}, Ln3/j;->a(JJ)Z

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    iget-object v1, p0, Lq2/h1;->o:Lq2/h0;

    .line 12
    .line 13
    if-nez p4, :cond_3

    .line 14
    .line 15
    invoke-static {v1}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    const/high16 v2, -0x3f800000    # -4.0f

    .line 20
    .line 21
    check-cast p4, Lr2/u;

    .line 22
    .line 23
    invoke-virtual {p4, v2}, Lr2/u;->Q(F)V

    .line 24
    .line 25
    .line 26
    iput-wide p1, p0, Lq2/h1;->z:J

    .line 27
    .line 28
    iget-object p4, v1, Lq2/h0;->F:Lq2/l0;

    .line 29
    .line 30
    iget-object p4, p4, Lq2/l0;->p:Lq2/y0;

    .line 31
    .line 32
    invoke-virtual {p4}, Lq2/y0;->g0()V

    .line 33
    .line 34
    .line 35
    iget-object p4, p0, Lq2/h1;->I:Lq2/p1;

    .line 36
    .line 37
    if-eqz p4, :cond_0

    .line 38
    .line 39
    invoke-interface {p4, p1, p2}, Lq2/p1;->j(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lq2/h1;->q:Lq2/h1;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lq2/h1;->N0()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lq2/h0;->z()Lh1/e;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p1, Lh1/e;->a:[Ljava/lang/Object;

    .line 55
    .line 56
    iget p1, p1, Lh1/e;->c:I

    .line 57
    .line 58
    :goto_1
    if-ge v0, p1, :cond_2

    .line 59
    .line 60
    aget-object p4, p2, v0

    .line 61
    .line 62
    check-cast p4, Lq2/h0;

    .line 63
    .line 64
    invoke-virtual {p4}, Lq2/h0;->F()V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-static {p0}, Lq2/p0;->s0(Lq2/h1;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v1, Lq2/h0;->m:Lq2/q1;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    check-cast p1, Lr2/u;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lr2/u;->C(Lq2/h0;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iput p3, p0, Lq2/h1;->A:F

    .line 83
    .line 84
    iget-boolean p1, p0, Lq2/p0;->k:Z

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Lq2/h1;->o0()Lo2/n0;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lq2/p0;->g0(Lo2/n0;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object p1, v1, Lq2/h0;->E:Lq2/d1;

    .line 96
    .line 97
    iget-object p1, p1, Lq2/d1;->d:Lq2/h1;

    .line 98
    .line 99
    if-ne p0, p1, :cond_5

    .line 100
    .line 101
    invoke-static {v1}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lr2/u;

    .line 106
    .line 107
    invoke-virtual {p1}, Lr2/u;->getRectManager()Lz2/a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p2, v1, Lq2/h0;->F:Lq2/l0;

    .line 112
    .line 113
    iget-object p2, p2, Lq2/l0;->p:Lq2/y0;

    .line 114
    .line 115
    iget-boolean p2, p2, Lq2/y0;->k:Z

    .line 116
    .line 117
    xor-int/lit8 p2, p2, 0x1

    .line 118
    .line 119
    invoke-virtual {p1, v1, p2}, Lz2/a;->f(Lq2/h0;Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void
.end method

.method public final W0(Lx1/a;ZZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 2
    .line 3
    const-wide v1, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/16 v3, 0x20

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-boolean v4, p0, Lq2/h1;->s:Z

    .line 13
    .line 14
    if-eqz v4, :cond_2

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lq2/h1;->F0()J

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    shr-long v4, p2, v3

    .line 23
    .line 24
    long-to-int v5, v4

    .line 25
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/high16 v5, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v4, v5

    .line 32
    and-long/2addr p2, v1

    .line 33
    long-to-int p3, p2

    .line 34
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    div-float/2addr p2, v5

    .line 39
    neg-float p3, v4

    .line 40
    neg-float v5, p2

    .line 41
    iget-wide v6, p0, Lo2/v0;->c:J

    .line 42
    .line 43
    shr-long v8, v6, v3

    .line 44
    .line 45
    long-to-int v9, v8

    .line 46
    int-to-float v8, v9

    .line 47
    add-float/2addr v8, v4

    .line 48
    and-long/2addr v6, v1

    .line 49
    long-to-int v4, v6

    .line 50
    int-to-float v4, v4

    .line 51
    add-float/2addr v4, p2

    .line 52
    invoke-virtual {p1, p3, v5, v8, v4}, Lx1/a;->a(FFFF)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    .line 57
    .line 58
    iget-wide p2, p0, Lo2/v0;->c:J

    .line 59
    .line 60
    shr-long v4, p2, v3

    .line 61
    .line 62
    long-to-int v5, v4

    .line 63
    int-to-float v4, v5

    .line 64
    and-long/2addr p2, v1

    .line 65
    long-to-int p3, p2

    .line 66
    int-to-float p2, p3

    .line 67
    const/4 p3, 0x0

    .line 68
    invoke-virtual {p1, p3, p3, v4, p2}, Lx1/a;->a(FFFF)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lx1/a;->b()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const/4 p2, 0x0

    .line 79
    invoke-interface {v0, p1, p2}, Lq2/p1;->b(Lx1/a;Z)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-wide p2, p0, Lq2/h1;->z:J

    .line 83
    .line 84
    shr-long v3, p2, v3

    .line 85
    .line 86
    long-to-int v0, v3

    .line 87
    iget v3, p1, Lx1/a;->a:F

    .line 88
    .line 89
    int-to-float v0, v0

    .line 90
    add-float/2addr v3, v0

    .line 91
    iput v3, p1, Lx1/a;->a:F

    .line 92
    .line 93
    iget v3, p1, Lx1/a;->c:F

    .line 94
    .line 95
    add-float/2addr v3, v0

    .line 96
    iput v3, p1, Lx1/a;->c:F

    .line 97
    .line 98
    and-long/2addr p2, v1

    .line 99
    long-to-int p3, p2

    .line 100
    iget p2, p1, Lx1/a;->b:F

    .line 101
    .line 102
    int-to-float p3, p3

    .line 103
    add-float/2addr p2, p3

    .line 104
    iput p2, p1, Lx1/a;->b:F

    .line 105
    .line 106
    iget p2, p1, Lx1/a;->d:F

    .line 107
    .line 108
    add-float/2addr p2, p3

    .line 109
    iput p2, p1, Lx1/a;->d:F

    .line 110
    .line 111
    return-void
.end method

.method public final X0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lq2/h1;->d1(Lf9/k;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lq2/h0;->U(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final Y0(Lo2/n0;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lq2/h1;->x:Lo2/n0;

    .line 6
    .line 7
    if-eq v1, v2, :cond_18

    .line 8
    .line 9
    iput-object v1, v0, Lq2/h1;->x:Lo2/n0;

    .line 10
    .line 11
    iget-object v3, v0, Lq2/h1;->o:Lq2/h0;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Lo2/n0;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-interface {v2}, Lo2/n0;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-ne v5, v6, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Lo2/n0;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-interface {v2}, Lo2/n0;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v5, v2, :cond_f

    .line 35
    .line 36
    :cond_0
    invoke-interface {v1}, Lo2/n0;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v1}, Lo2/n0;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v6, v0, Lq2/h1;->I:Lq2/p1;

    .line 45
    .line 46
    const-wide v7, 0xffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/16 v9, 0x20

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    int-to-long v10, v2

    .line 56
    shl-long/2addr v10, v9

    .line 57
    int-to-long v12, v5

    .line 58
    and-long/2addr v12, v7

    .line 59
    or-long/2addr v10, v12

    .line 60
    invoke-interface {v6, v10, v11}, Lq2/p1;->h(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v3}, Lq2/h0;->J()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    iget-object v6, v0, Lq2/h1;->q:Lq2/h1;

    .line 71
    .line 72
    if-eqz v6, :cond_2

    .line 73
    .line 74
    invoke-virtual {v6}, Lq2/h1;->N0()V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    int-to-long v10, v2

    .line 78
    shl-long v9, v10, v9

    .line 79
    .line 80
    int-to-long v5, v5

    .line 81
    and-long/2addr v5, v7

    .line 82
    or-long/2addr v5, v9

    .line 83
    invoke-virtual {v0, v5, v6}, Lo2/v0;->V(J)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lq2/h1;->t:Lf9/k;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Lq2/h1;->e1(Z)Z

    .line 91
    .line 92
    .line 93
    :cond_3
    const/4 v2, 0x4

    .line 94
    invoke-static {v2}, Lq2/i1;->g(I)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-virtual {v0}, Lq2/h1;->G0()Lr1/o;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object v6, v6, Lr1/o;->e:Lr1/o;

    .line 106
    .line 107
    if-nez v6, :cond_5

    .line 108
    .line 109
    goto/16 :goto_7

    .line 110
    .line 111
    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Lq2/h1;->I0(Z)Lr1/o;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    :goto_2
    if-eqz v5, :cond_e

    .line 116
    .line 117
    iget v7, v5, Lr1/o;->d:I

    .line 118
    .line 119
    and-int/2addr v7, v2

    .line 120
    if-eqz v7, :cond_e

    .line 121
    .line 122
    iget v7, v5, Lr1/o;->c:I

    .line 123
    .line 124
    and-int/2addr v7, v2

    .line 125
    if-eqz v7, :cond_d

    .line 126
    .line 127
    const/4 v7, 0x0

    .line 128
    move-object v8, v5

    .line 129
    move-object v9, v7

    .line 130
    :goto_3
    if-eqz v8, :cond_d

    .line 131
    .line 132
    instance-of v10, v8, Lq2/o;

    .line 133
    .line 134
    if-eqz v10, :cond_6

    .line 135
    .line 136
    check-cast v8, Lq2/o;

    .line 137
    .line 138
    invoke-interface {v8}, Lq2/o;->F()V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_6
    iget v10, v8, Lr1/o;->c:I

    .line 143
    .line 144
    and-int/2addr v10, v2

    .line 145
    if-eqz v10, :cond_c

    .line 146
    .line 147
    instance-of v10, v8, Lq2/m;

    .line 148
    .line 149
    if-eqz v10, :cond_c

    .line 150
    .line 151
    move-object v10, v8

    .line 152
    check-cast v10, Lq2/m;

    .line 153
    .line 154
    iget-object v10, v10, Lq2/m;->p:Lr1/o;

    .line 155
    .line 156
    const/4 v11, 0x0

    .line 157
    :goto_4
    const/4 v12, 0x1

    .line 158
    if-eqz v10, :cond_b

    .line 159
    .line 160
    iget v13, v10, Lr1/o;->c:I

    .line 161
    .line 162
    and-int/2addr v13, v2

    .line 163
    if-eqz v13, :cond_a

    .line 164
    .line 165
    add-int/lit8 v11, v11, 0x1

    .line 166
    .line 167
    if-ne v11, v12, :cond_7

    .line 168
    .line 169
    move-object v8, v10

    .line 170
    goto :goto_5

    .line 171
    :cond_7
    if-nez v9, :cond_8

    .line 172
    .line 173
    new-instance v9, Lh1/e;

    .line 174
    .line 175
    const/16 v12, 0x10

    .line 176
    .line 177
    new-array v12, v12, [Lr1/o;

    .line 178
    .line 179
    invoke-direct {v9, v12}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    if-eqz v8, :cond_9

    .line 183
    .line 184
    invoke-virtual {v9, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    move-object v8, v7

    .line 188
    :cond_9
    invoke-virtual {v9, v10}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    :goto_5
    iget-object v10, v10, Lr1/o;->f:Lr1/o;

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_b
    if-ne v11, v12, :cond_c

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_c
    :goto_6
    invoke-static {v9}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    goto :goto_3

    .line 202
    :cond_d
    if-eq v5, v6, :cond_e

    .line 203
    .line 204
    iget-object v5, v5, Lr1/o;->f:Lr1/o;

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_e
    :goto_7
    iget-object v2, v3, Lq2/h0;->m:Lq2/q1;

    .line 208
    .line 209
    if-eqz v2, :cond_f

    .line 210
    .line 211
    check-cast v2, Lr2/u;

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Lr2/u;->C(Lq2/h0;)V

    .line 214
    .line 215
    .line 216
    :cond_f
    iget-object v2, v0, Lq2/h1;->y:Ls/c0;

    .line 217
    .line 218
    if-eqz v2, :cond_10

    .line 219
    .line 220
    iget v2, v2, Ls/c0;->e:I

    .line 221
    .line 222
    if-eqz v2, :cond_10

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_10
    invoke-interface {v1}, Lo2/n0;->b()Ljava/util/Map;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_18

    .line 234
    .line 235
    :goto_8
    iget-object v2, v0, Lq2/h1;->y:Ls/c0;

    .line 236
    .line 237
    invoke-interface {v1}, Lo2/n0;->b()Ljava/util/Map;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    if-nez v2, :cond_11

    .line 242
    .line 243
    goto :goto_b

    .line 244
    :cond_11
    iget v6, v2, Ls/c0;->e:I

    .line 245
    .line 246
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-eq v6, v7, :cond_12

    .line 251
    .line 252
    goto :goto_b

    .line 253
    :cond_12
    iget-object v6, v2, Ls/c0;->b:[Ljava/lang/Object;

    .line 254
    .line 255
    iget-object v7, v2, Ls/c0;->c:[I

    .line 256
    .line 257
    iget-object v2, v2, Ls/c0;->a:[J

    .line 258
    .line 259
    array-length v8, v2

    .line 260
    add-int/lit8 v8, v8, -0x2

    .line 261
    .line 262
    if-ltz v8, :cond_18

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    :goto_9
    aget-wide v10, v2, v9

    .line 266
    .line 267
    not-long v12, v10

    .line 268
    const/4 v14, 0x7

    .line 269
    shl-long/2addr v12, v14

    .line 270
    and-long/2addr v12, v10

    .line 271
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    and-long/2addr v12, v14

    .line 277
    cmp-long v16, v12, v14

    .line 278
    .line 279
    if-eqz v16, :cond_17

    .line 280
    .line 281
    sub-int v12, v9, v8

    .line 282
    .line 283
    not-int v12, v12

    .line 284
    ushr-int/lit8 v12, v12, 0x1f

    .line 285
    .line 286
    const/16 v13, 0x8

    .line 287
    .line 288
    rsub-int/lit8 v12, v12, 0x8

    .line 289
    .line 290
    const/4 v14, 0x0

    .line 291
    :goto_a
    if-ge v14, v12, :cond_16

    .line 292
    .line 293
    const-wide/16 v15, 0xff

    .line 294
    .line 295
    and-long/2addr v15, v10

    .line 296
    const-wide/16 v17, 0x80

    .line 297
    .line 298
    cmp-long v19, v15, v17

    .line 299
    .line 300
    if-gez v19, :cond_15

    .line 301
    .line 302
    shl-int/lit8 v15, v9, 0x3

    .line 303
    .line 304
    add-int/2addr v15, v14

    .line 305
    aget-object v16, v6, v15

    .line 306
    .line 307
    aget v15, v7, v15

    .line 308
    .line 309
    move-object/from16 v4, v16

    .line 310
    .line 311
    check-cast v4, Lo2/m;

    .line 312
    .line 313
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    check-cast v4, Ljava/lang/Integer;

    .line 318
    .line 319
    if-nez v4, :cond_13

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eq v4, v15, :cond_15

    .line 327
    .line 328
    :goto_b
    iget-object v2, v3, Lq2/h0;->F:Lq2/l0;

    .line 329
    .line 330
    iget-object v2, v2, Lq2/l0;->p:Lq2/y0;

    .line 331
    .line 332
    iget-object v2, v2, Lq2/y0;->w:Lq2/i0;

    .line 333
    .line 334
    invoke-virtual {v2}, Lq2/i0;->f()V

    .line 335
    .line 336
    .line 337
    iget-object v2, v0, Lq2/h1;->y:Ls/c0;

    .line 338
    .line 339
    if-nez v2, :cond_14

    .line 340
    .line 341
    sget-object v2, Ls/l0;->a:Ls/c0;

    .line 342
    .line 343
    new-instance v2, Ls/c0;

    .line 344
    .line 345
    invoke-direct {v2}, Ls/c0;-><init>()V

    .line 346
    .line 347
    .line 348
    iput-object v2, v0, Lq2/h1;->y:Ls/c0;

    .line 349
    .line 350
    :cond_14
    invoke-virtual {v2}, Ls/c0;->a()V

    .line 351
    .line 352
    .line 353
    invoke-interface {v1}, Lo2/n0;->b()Ljava/util/Map;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_18

    .line 370
    .line 371
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    check-cast v3, Ljava/util/Map$Entry;

    .line 376
    .line 377
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Ljava/lang/Number;

    .line 386
    .line 387
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    invoke-virtual {v2, v3, v4}, Ls/c0;->h(ILjava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    goto :goto_c

    .line 395
    :cond_15
    shr-long/2addr v10, v13

    .line 396
    add-int/lit8 v14, v14, 0x1

    .line 397
    .line 398
    const/4 v4, 0x0

    .line 399
    goto :goto_a

    .line 400
    :cond_16
    if-ne v12, v13, :cond_18

    .line 401
    .line 402
    :cond_17
    if-eq v9, v8, :cond_18

    .line 403
    .line 404
    add-int/lit8 v9, v9, 0x1

    .line 405
    .line 406
    const/4 v4, 0x0

    .line 407
    goto/16 :goto_9

    .line 408
    .line 409
    :cond_18
    return-void
.end method

.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h0;->x:Ln3/c;

    .line 4
    .line 5
    invoke-interface {v0}, Ln3/c;->a()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final a1()Lx1/c;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p0}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lq2/h1;->B:Lx1/a;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lx1/a;

    .line 19
    .line 20
    invoke-direct {v1}, Lx1/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lq2/h1;->B:Lx1/a;

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lq2/h1;->F0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {p0, v2, v3}, Lq2/h1;->x0(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 v4, 0x20

    .line 34
    .line 35
    shr-long v4, v2, v4

    .line 36
    .line 37
    long-to-int v5, v4

    .line 38
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    neg-float v4, v4

    .line 43
    iput v4, v1, Lx1/a;->a:F

    .line 44
    .line 45
    const-wide v6, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v2, v6

    .line 51
    long-to-int v3, v2

    .line 52
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    neg-float v2, v2

    .line 57
    iput v2, v1, Lx1/a;->b:F

    .line 58
    .line 59
    invoke-virtual {p0}, Lo2/v0;->N()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-float v2, v2

    .line 64
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    add-float/2addr v4, v2

    .line 69
    iput v4, v1, Lx1/a;->c:F

    .line 70
    .line 71
    invoke-virtual {p0}, Lo2/v0;->L()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    int-to-float v2, v2

    .line 76
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    add-float/2addr v3, v2

    .line 81
    iput v3, v1, Lx1/a;->d:F

    .line 82
    .line 83
    move-object v2, p0

    .line 84
    :goto_0
    if-eq v2, v0, :cond_3

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x1

    .line 88
    invoke-virtual {v2, v1, v3, v4}, Lq2/h1;->W0(Lx1/a;ZZ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lx1/a;->b()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    :goto_1
    sget-object v0, Lx1/c;->e:Lx1/c;

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_2
    iget-object v2, v2, Lq2/h1;->q:Lq2/h1;

    .line 101
    .line 102
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    new-instance v0, Lx1/c;

    .line 107
    .line 108
    iget v2, v1, Lx1/a;->a:F

    .line 109
    .line 110
    iget v3, v1, Lx1/a;->b:F

    .line 111
    .line 112
    iget v4, v1, Lx1/a;->c:F

    .line 113
    .line 114
    iget v1, v1, Lx1/a;->d:F

    .line 115
    .line 116
    invoke-direct {v0, v2, v3, v4, v1}, Lx1/c;-><init>(FFFF)V

    .line 117
    .line 118
    .line 119
    return-object v0
.end method

.method public final b1(Lq2/h1;[F)V
    .locals 5

    .line 1
    invoke-static {p1, p0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lq2/h1;->q:Lq2/h1;

    .line 8
    .line 9
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lq2/h1;->b1(Lq2/h1;[F)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lq2/h1;->z:J

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Ln3/j;->a(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    sget-object p1, Lq2/h1;->L:[F

    .line 26
    .line 27
    invoke-static {p1}, Ly1/a0;->d([F)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lq2/h1;->z:J

    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    shr-long v2, v0, v2

    .line 35
    .line 36
    long-to-int v3, v2

    .line 37
    int-to-float v2, v3

    .line 38
    neg-float v2, v2

    .line 39
    const-wide v3, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v0, v3

    .line 45
    long-to-int v1, v0

    .line 46
    int-to-float v0, v1

    .line 47
    neg-float v0, v0

    .line 48
    invoke-static {p1, v2, v0}, Ly1/a0;->f([FFF)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p1}, Ly1/a0;->e([F[F)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lq2/h1;->I:Lq2/p1;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-interface {p1, p2}, Lq2/p1;->i([F)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final c1(Lq2/h1;[F)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v1, v0, Lq2/h1;->I:Lq2/p1;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1, p2}, Lq2/p1;->a([F)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-wide v1, v0, Lq2/h1;->z:J

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    invoke-static {v1, v2, v3, v4}, Ln3/j;->a(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    sget-object v3, Lq2/h1;->L:[F

    .line 26
    .line 27
    invoke-static {v3}, Ly1/a0;->d([F)V

    .line 28
    .line 29
    .line 30
    const/16 v4, 0x20

    .line 31
    .line 32
    shr-long v4, v1, v4

    .line 33
    .line 34
    long-to-int v5, v4

    .line 35
    int-to-float v4, v5

    .line 36
    const-wide v5, 0xffffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v1, v5

    .line 42
    long-to-int v2, v1

    .line 43
    int-to-float v1, v2

    .line 44
    invoke-static {v3, v4, v1}, Ly1/a0;->f([FFF)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v3}, Ly1/a0;->e([F[F)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, v0, Lq2/h1;->q:Lq2/h1;

    .line 51
    .line 52
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method public final d(J)J
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lq2/h1;->F(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 6
    .line 7
    invoke-static {v0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lr2/u;

    .line 12
    .line 13
    invoke-virtual {v0}, Lr2/u;->G()V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lr2/u;->T:[F

    .line 17
    .line 18
    invoke-static {p1, p2, v0}, Ly1/a0;->b(J[F)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    return-wide p1
.end method

.method public final d1(Lf9/k;Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lq2/h1;->o:Lq2/h0;

    .line 4
    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lq2/h1;->t:Lf9/k;

    .line 8
    .line 9
    if-ne p2, p1, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lq2/h1;->u:Ln3/c;

    .line 12
    .line 13
    iget-object v3, v2, Lq2/h0;->x:Ln3/c;

    .line 14
    .line 15
    invoke-static {p2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lq2/h1;->v:Ln3/m;

    .line 22
    .line 23
    iget-object v3, v2, Lq2/h0;->y:Ln3/m;

    .line 24
    .line 25
    if-eq p2, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 31
    :goto_1
    iget-object v3, v2, Lq2/h0;->x:Ln3/c;

    .line 32
    .line 33
    iput-object v3, p0, Lq2/h1;->u:Ln3/c;

    .line 34
    .line 35
    iget-object v3, v2, Lq2/h0;->y:Ln3/m;

    .line 36
    .line 37
    iput-object v3, p0, Lq2/h1;->v:Ln3/m;

    .line 38
    .line 39
    invoke-virtual {v2}, Lq2/h0;->I()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v9, p0, Lq2/h1;->G:Lq2/e1;

    .line 44
    .line 45
    if-eqz v3, :cond_f

    .line 46
    .line 47
    if-eqz p1, :cond_f

    .line 48
    .line 49
    iput-object p1, p0, Lq2/h1;->t:Lf9/k;

    .line 50
    .line 51
    iget-object p1, p0, Lq2/h1;->I:Lq2/p1;

    .line 52
    .line 53
    if-nez p1, :cond_d

    .line 54
    .line 55
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object p2, p0, Lq2/h1;->F:Lc1/h;

    .line 60
    .line 61
    if-nez p2, :cond_2

    .line 62
    .line 63
    new-instance p2, Lq2/e1;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p2, p0, v0}, Lq2/e1;-><init>(Lq2/h1;I)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lc1/h;

    .line 70
    .line 71
    const/4 v3, 0x4

    .line 72
    invoke-direct {v0, v3, p0, p2}, Lc1/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lq2/h1;->F:Lc1/h;

    .line 76
    .line 77
    move-object v8, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object v8, p2

    .line 80
    :goto_2
    move-object v7, p1

    .line 81
    check-cast v7, Lr2/u;

    .line 82
    .line 83
    iget-object p1, v7, Lr2/u;->B0:Landroid/support/v4/media/session/t;

    .line 84
    .line 85
    :cond_3
    iget-object p2, p1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p2, Ljava/lang/ref/ReferenceQueue;

    .line 88
    .line 89
    iget-object v0, p1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lh1/e;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0, p2}, Lh1/e;->k(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    if-nez p2, :cond_3

    .line 103
    .line 104
    :cond_5
    iget p1, v0, Lh1/e;->c:I

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    add-int/lit8 p1, p1, -0x1

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/lang/ref/Reference;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    const/4 p1, 0x0

    .line 124
    :goto_3
    check-cast p1, Lq2/p1;

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-interface {p1, v8, v9}, Lq2/p1;->d(Lf9/n;Lf9/a;)V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 133
    .line 134
    const/16 p2, 0x17

    .line 135
    .line 136
    if-lt p1, p2, :cond_8

    .line 137
    .line 138
    new-instance v4, Lr2/s1;

    .line 139
    .line 140
    invoke-virtual {v7}, Lr2/u;->getGraphicsContext()Ly1/v;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p1}, Ly1/v;->b()Lb2/c;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-virtual {v7}, Lr2/u;->getGraphicsContext()Ly1/v;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-direct/range {v4 .. v9}, Lr2/s1;-><init>(Lb2/c;Ly1/v;Lr2/u;Lf9/n;Lf9/a;)V

    .line 153
    .line 154
    .line 155
    move-object p1, v4

    .line 156
    goto :goto_5

    .line 157
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    if-lt p1, p2, :cond_9

    .line 164
    .line 165
    iget-boolean p1, v7, Lr2/u;->g0:Z

    .line 166
    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    :try_start_0
    new-instance p1, Lr2/g2;

    .line 170
    .line 171
    invoke-direct {p1, v7, v8, v9}, Lr2/g2;-><init>(Lr2/u;Lf9/n;Lf9/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :catchall_0
    const/4 p1, 0x0

    .line 176
    iput-boolean p1, v7, Lr2/u;->g0:Z

    .line 177
    .line 178
    :cond_9
    iget-object p1, v7, Lr2/u;->M:Lr2/n1;

    .line 179
    .line 180
    if-nez p1, :cond_c

    .line 181
    .line 182
    sget-boolean p1, Lr2/r2;->u:Z

    .line 183
    .line 184
    if-nez p1, :cond_a

    .line 185
    .line 186
    new-instance p1, Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Lr2/j0;->x(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    sget-boolean p1, Lr2/r2;->v:Z

    .line 199
    .line 200
    if-eqz p1, :cond_b

    .line 201
    .line 202
    new-instance p1, Lr2/n1;

    .line 203
    .line 204
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-direct {p1, p2}, Lr2/n1;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_b
    new-instance p1, Lr2/s2;

    .line 213
    .line 214
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {p1, p2}, Lr2/n1;-><init>(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    :goto_4
    iput-object p1, v7, Lr2/u;->M:Lr2/n1;

    .line 222
    .line 223
    const/4 p2, -0x1

    .line 224
    invoke-virtual {v7, p1, p2}, Lr2/u;->addView(Landroid/view/View;I)V

    .line 225
    .line 226
    .line 227
    :cond_c
    new-instance p1, Lr2/r2;

    .line 228
    .line 229
    iget-object p2, v7, Lr2/u;->M:Lr2/n1;

    .line 230
    .line 231
    invoke-static {p2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-direct {p1, v7, p2, v8, v9}, Lr2/r2;-><init>(Lr2/u;Lr2/n1;Lf9/n;Lf9/a;)V

    .line 235
    .line 236
    .line 237
    :goto_5
    iget-wide v3, p0, Lo2/v0;->c:J

    .line 238
    .line 239
    invoke-interface {p1, v3, v4}, Lq2/p1;->h(J)V

    .line 240
    .line 241
    .line 242
    iget-wide v3, p0, Lq2/h1;->z:J

    .line 243
    .line 244
    invoke-interface {p1, v3, v4}, Lq2/p1;->j(J)V

    .line 245
    .line 246
    .line 247
    iput-object p1, p0, Lq2/h1;->I:Lq2/p1;

    .line 248
    .line 249
    invoke-virtual {p0, v1}, Lq2/h1;->e1(Z)Z

    .line 250
    .line 251
    .line 252
    iput-boolean v1, v2, Lq2/h0;->I:Z

    .line 253
    .line 254
    invoke-virtual {v9}, Lq2/e1;->invoke()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_d
    if-eqz p2, :cond_e

    .line 259
    .line 260
    invoke-virtual {p0, v1}, Lq2/h1;->e1(Z)Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_e

    .line 265
    .line 266
    invoke-static {v2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Lr2/u;

    .line 271
    .line 272
    invoke-virtual {p1}, Lr2/u;->getRectManager()Lz2/a;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1, v2}, Lz2/a;->e(Lq2/h0;)V

    .line 277
    .line 278
    .line 279
    :cond_e
    return-void

    .line 280
    :cond_f
    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lq2/h1;->t:Lf9/k;

    .line 282
    .line 283
    iget-object p2, p0, Lq2/h1;->I:Lq2/p1;

    .line 284
    .line 285
    if-eqz p2, :cond_10

    .line 286
    .line 287
    invoke-interface {p2}, Lq2/p1;->destroy()V

    .line 288
    .line 289
    .line 290
    iput-boolean v1, v2, Lq2/h0;->I:Z

    .line 291
    .line 292
    invoke-virtual {v9}, Lq2/e1;->invoke()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    iget-boolean p2, p2, Lr1/o;->n:Z

    .line 300
    .line 301
    if-eqz p2, :cond_10

    .line 302
    .line 303
    invoke-virtual {v2}, Lq2/h0;->J()Z

    .line 304
    .line 305
    .line 306
    move-result p2

    .line 307
    if-eqz p2, :cond_10

    .line 308
    .line 309
    iget-object p2, v2, Lq2/h0;->m:Lq2/q1;

    .line 310
    .line 311
    if-eqz p2, :cond_10

    .line 312
    .line 313
    check-cast p2, Lr2/u;

    .line 314
    .line 315
    invoke-virtual {p2, v2}, Lr2/u;->C(Lq2/h0;)V

    .line 316
    .line 317
    .line 318
    :cond_10
    iput-object p1, p0, Lq2/h1;->I:Lq2/p1;

    .line 319
    .line 320
    iput-boolean v0, p0, Lq2/h1;->H:Z

    .line 321
    .line 322
    return-void
.end method

.method public final e(Lo2/w;[F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lq2/h1;->Z0(Lo2/w;)Lq2/h1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lq2/h1;->Q0()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lq2/h1;->C0(Lq2/h1;)Lq2/h1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p2}, Ly1/a0;->d([F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Lq2/h1;->c1(Lq2/h1;[F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, p2}, Lq2/h1;->b1(Lq2/h1;[F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e1(Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    iget-object v2, p0, Lq2/h1;->t:Lf9/k;

    .line 7
    .line 8
    if-eqz v2, :cond_b

    .line 9
    .line 10
    sget-object v3, Lq2/h1;->J:Ly1/i0;

    .line 11
    .line 12
    iget v4, v3, Ly1/i0;->b:F

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/high16 v6, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpg-float v4, v4, v6

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v4, v3, Ly1/i0;->a:I

    .line 23
    .line 24
    or-int/2addr v4, v5

    .line 25
    iput v4, v3, Ly1/i0;->a:I

    .line 26
    .line 27
    iput v6, v3, Ly1/i0;->b:F

    .line 28
    .line 29
    :goto_0
    iget v4, v3, Ly1/i0;->c:F

    .line 30
    .line 31
    cmpg-float v4, v4, v6

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget v4, v3, Ly1/i0;->a:I

    .line 37
    .line 38
    or-int/lit8 v4, v4, 0x2

    .line 39
    .line 40
    iput v4, v3, Ly1/i0;->a:I

    .line 41
    .line 42
    iput v6, v3, Ly1/i0;->c:F

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v3, v6}, Ly1/i0;->b(F)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v3, v4}, Ly1/i0;->d(F)V

    .line 49
    .line 50
    .line 51
    sget-wide v6, Ly1/w;->a:J

    .line 52
    .line 53
    invoke-virtual {v3, v6, v7}, Ly1/i0;->c(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v6, v7}, Ly1/i0;->f(J)V

    .line 57
    .line 58
    .line 59
    iget v6, v3, Ly1/i0;->h:F

    .line 60
    .line 61
    cmpg-float v6, v6, v4

    .line 62
    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iget v6, v3, Ly1/i0;->a:I

    .line 67
    .line 68
    or-int/lit16 v6, v6, 0x400

    .line 69
    .line 70
    iput v6, v3, Ly1/i0;->a:I

    .line 71
    .line 72
    iput v4, v3, Ly1/i0;->h:F

    .line 73
    .line 74
    :goto_2
    iget v4, v3, Ly1/i0;->i:F

    .line 75
    .line 76
    const/high16 v6, 0x41000000    # 8.0f

    .line 77
    .line 78
    cmpg-float v4, v4, v6

    .line 79
    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    iget v4, v3, Ly1/i0;->a:I

    .line 84
    .line 85
    or-int/lit16 v4, v4, 0x800

    .line 86
    .line 87
    iput v4, v3, Ly1/i0;->a:I

    .line 88
    .line 89
    iput v6, v3, Ly1/i0;->i:F

    .line 90
    .line 91
    :goto_3
    sget-wide v6, Ly1/p0;->a:J

    .line 92
    .line 93
    iget-wide v8, v3, Ly1/i0;->j:J

    .line 94
    .line 95
    cmp-long v4, v8, v6

    .line 96
    .line 97
    if-nez v4, :cond_4

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    iget v4, v3, Ly1/i0;->a:I

    .line 101
    .line 102
    or-int/lit16 v4, v4, 0x1000

    .line 103
    .line 104
    iput v4, v3, Ly1/i0;->a:I

    .line 105
    .line 106
    iput-wide v6, v3, Ly1/i0;->j:J

    .line 107
    .line 108
    :goto_4
    sget-object v4, Ly1/h0;->a:Ly1/g0;

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ly1/i0;->e(Ly1/l0;)V

    .line 111
    .line 112
    .line 113
    iget-boolean v4, v3, Ly1/i0;->l:Z

    .line 114
    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    iget v4, v3, Ly1/i0;->a:I

    .line 118
    .line 119
    or-int/lit16 v4, v4, 0x4000

    .line 120
    .line 121
    iput v4, v3, Ly1/i0;->a:I

    .line 122
    .line 123
    iput-boolean v1, v3, Ly1/i0;->l:Z

    .line 124
    .line 125
    :cond_5
    iget v4, v3, Ly1/i0;->p:I

    .line 126
    .line 127
    const/4 v6, 0x3

    .line 128
    if-ne v4, v6, :cond_6

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_6
    iget v4, v3, Ly1/i0;->a:I

    .line 132
    .line 133
    const/high16 v7, 0x80000

    .line 134
    .line 135
    or-int/2addr v4, v7

    .line 136
    iput v4, v3, Ly1/i0;->a:I

    .line 137
    .line 138
    iput v6, v3, Ly1/i0;->p:I

    .line 139
    .line 140
    :goto_5
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    iput-wide v6, v3, Ly1/i0;->m:J

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    iput-object v4, v3, Ly1/i0;->q:Ly1/h0;

    .line 149
    .line 150
    iput v1, v3, Ly1/i0;->a:I

    .line 151
    .line 152
    iget-object v4, p0, Lq2/h1;->o:Lq2/h0;

    .line 153
    .line 154
    iget-object v6, v4, Lq2/h0;->x:Ln3/c;

    .line 155
    .line 156
    iput-object v6, v3, Ly1/i0;->n:Ln3/c;

    .line 157
    .line 158
    iget-object v6, v4, Lq2/h0;->y:Ln3/m;

    .line 159
    .line 160
    iput-object v6, v3, Ly1/i0;->o:Ln3/m;

    .line 161
    .line 162
    iget-wide v6, p0, Lo2/v0;->c:J

    .line 163
    .line 164
    invoke-static {v6, v7}, La/a;->S(J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    iput-wide v6, v3, Ly1/i0;->m:J

    .line 169
    .line 170
    invoke-static {v4}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Lr2/u;

    .line 175
    .line 176
    invoke-virtual {v6}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    sget-object v7, Lq2/e;->e:Lq2/e;

    .line 181
    .line 182
    new-instance v8, Lb1/a;

    .line 183
    .line 184
    const/16 v9, 0xd

    .line 185
    .line 186
    invoke-direct {v8, v9, v2}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6, p0, v7, v8}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lq2/h1;->C:Lq2/v;

    .line 193
    .line 194
    if-nez v2, :cond_7

    .line 195
    .line 196
    new-instance v2, Lq2/v;

    .line 197
    .line 198
    invoke-direct {v2}, Lq2/v;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object v2, p0, Lq2/h1;->C:Lq2/v;

    .line 202
    .line 203
    :cond_7
    sget-object v6, Lq2/h1;->K:Lq2/v;

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    iget v7, v2, Lq2/v;->a:F

    .line 209
    .line 210
    iput v7, v6, Lq2/v;->a:F

    .line 211
    .line 212
    iget v7, v2, Lq2/v;->b:F

    .line 213
    .line 214
    iput v7, v6, Lq2/v;->b:F

    .line 215
    .line 216
    iget v7, v2, Lq2/v;->c:F

    .line 217
    .line 218
    iput v7, v6, Lq2/v;->c:F

    .line 219
    .line 220
    iget v7, v2, Lq2/v;->d:F

    .line 221
    .line 222
    iput v7, v6, Lq2/v;->d:F

    .line 223
    .line 224
    iget-wide v7, v2, Lq2/v;->e:J

    .line 225
    .line 226
    iput-wide v7, v6, Lq2/v;->e:J

    .line 227
    .line 228
    iget v7, v3, Ly1/i0;->b:F

    .line 229
    .line 230
    iput v7, v2, Lq2/v;->a:F

    .line 231
    .line 232
    iget v7, v3, Ly1/i0;->c:F

    .line 233
    .line 234
    iput v7, v2, Lq2/v;->b:F

    .line 235
    .line 236
    iget v7, v3, Ly1/i0;->h:F

    .line 237
    .line 238
    iput v7, v2, Lq2/v;->c:F

    .line 239
    .line 240
    iget v7, v3, Ly1/i0;->i:F

    .line 241
    .line 242
    iput v7, v2, Lq2/v;->d:F

    .line 243
    .line 244
    iget-wide v7, v3, Ly1/i0;->j:J

    .line 245
    .line 246
    iput-wide v7, v2, Lq2/v;->e:J

    .line 247
    .line 248
    invoke-interface {v0, v3}, Lq2/p1;->c(Ly1/i0;)V

    .line 249
    .line 250
    .line 251
    iget-boolean v0, p0, Lq2/h1;->s:Z

    .line 252
    .line 253
    iget-boolean v7, v3, Ly1/i0;->l:Z

    .line 254
    .line 255
    iput-boolean v7, p0, Lq2/h1;->s:Z

    .line 256
    .line 257
    iget v3, v3, Ly1/i0;->d:F

    .line 258
    .line 259
    iput v3, p0, Lq2/h1;->w:F

    .line 260
    .line 261
    iget v3, v6, Lq2/v;->a:F

    .line 262
    .line 263
    iget v8, v2, Lq2/v;->a:F

    .line 264
    .line 265
    cmpg-float v3, v3, v8

    .line 266
    .line 267
    if-nez v3, :cond_8

    .line 268
    .line 269
    iget v3, v6, Lq2/v;->b:F

    .line 270
    .line 271
    iget v8, v2, Lq2/v;->b:F

    .line 272
    .line 273
    cmpg-float v3, v3, v8

    .line 274
    .line 275
    if-nez v3, :cond_8

    .line 276
    .line 277
    iget v3, v6, Lq2/v;->c:F

    .line 278
    .line 279
    iget v8, v2, Lq2/v;->c:F

    .line 280
    .line 281
    cmpg-float v3, v3, v8

    .line 282
    .line 283
    if-nez v3, :cond_8

    .line 284
    .line 285
    iget v3, v6, Lq2/v;->d:F

    .line 286
    .line 287
    iget v8, v2, Lq2/v;->d:F

    .line 288
    .line 289
    cmpg-float v3, v3, v8

    .line 290
    .line 291
    if-nez v3, :cond_8

    .line 292
    .line 293
    iget-wide v8, v6, Lq2/v;->e:J

    .line 294
    .line 295
    iget-wide v2, v2, Lq2/v;->e:J

    .line 296
    .line 297
    cmp-long v6, v8, v2

    .line 298
    .line 299
    if-nez v6, :cond_8

    .line 300
    .line 301
    const/4 v1, 0x1

    .line 302
    :cond_8
    xor-int/lit8 v2, v1, 0x1

    .line 303
    .line 304
    if-eqz p1, :cond_a

    .line 305
    .line 306
    if-eqz v1, :cond_9

    .line 307
    .line 308
    if-eq v0, v7, :cond_a

    .line 309
    .line 310
    :cond_9
    iget-object p1, v4, Lq2/h0;->m:Lq2/q1;

    .line 311
    .line 312
    if-eqz p1, :cond_a

    .line 313
    .line 314
    check-cast p1, Lr2/u;

    .line 315
    .line 316
    invoke-virtual {p1, v4}, Lr2/u;->C(Lq2/h0;)V

    .line 317
    .line 318
    .line 319
    :cond_a
    return v2

    .line 320
    :cond_b
    const-string p1, "updateLayerParameters requires a non-null layerBlock"

    .line 321
    .line 322
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    throw p1

    .line 327
    :cond_c
    iget-object p1, p0, Lq2/h1;->t:Lf9/k;

    .line 328
    .line 329
    if-nez p1, :cond_d

    .line 330
    .line 331
    return v1

    .line 332
    :cond_d
    const-string p1, "null layer with a non-null layerBlock"

    .line 333
    .line 334
    invoke-static {p1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    return v1
.end method

.method public final f1(J)Z
    .locals 5

    .line 1
    const-wide v0, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long v2, p1, v0

    .line 7
    .line 8
    xor-long/2addr v0, v2

    .line 9
    const-wide v2, 0x100000001L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v0, v2

    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-boolean v1, p0, Lq2/h1;->s:Z

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Lq2/p1;->f(J)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :cond_0
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    return p1
.end method

.method public final getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/h0;->y:Ln3/m;

    .line 4
    .line 5
    return-object v0
.end method

.method public final h(Lo2/w;Z)Lx1/c;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p1}, Lo2/w;->isAttached()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "LayoutCoordinates "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " is not attached!"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {p1}, Lq2/h1;->Z0(Lo2/w;)Lq2/h1;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lq2/h1;->Q0()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lq2/h1;->C0(Lq2/h1;)Lq2/h1;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lq2/h1;->B:Lx1/a;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    new-instance v2, Lx1/a;

    .line 58
    .line 59
    invoke-direct {v2}, Lx1/a;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lq2/h1;->B:Lx1/a;

    .line 63
    .line 64
    :cond_2
    const/4 v3, 0x0

    .line 65
    iput v3, v2, Lx1/a;->a:F

    .line 66
    .line 67
    iput v3, v2, Lx1/a;->b:F

    .line 68
    .line 69
    invoke-interface {p1}, Lo2/w;->k()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    const/16 v5, 0x20

    .line 74
    .line 75
    shr-long/2addr v3, v5

    .line 76
    long-to-int v4, v3

    .line 77
    int-to-float v3, v4

    .line 78
    iput v3, v2, Lx1/a;->c:F

    .line 79
    .line 80
    invoke-interface {p1}, Lo2/w;->k()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    const-wide v5, 0xffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    and-long/2addr v3, v5

    .line 90
    long-to-int p1, v3

    .line 91
    int-to-float p1, p1

    .line 92
    iput p1, v2, Lx1/a;->d:F

    .line 93
    .line 94
    :goto_0
    if-eq v0, v1, :cond_4

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-virtual {v0, v2, p2, p1}, Lq2/h1;->W0(Lx1/a;ZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Lx1/a;->b()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    sget-object p1, Lx1/c;->e:Lx1/c;

    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_3
    iget-object v0, v0, Lq2/h1;->q:Lq2/h1;

    .line 110
    .line 111
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p0, v1, v2, p2}, Lq2/h1;->v0(Lq2/h1;Lx1/a;Z)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Lx1/c;

    .line 119
    .line 120
    iget p2, v2, Lx1/a;->a:F

    .line 121
    .line 122
    iget v0, v2, Lx1/a;->b:F

    .line 123
    .line 124
    iget v1, v2, Lx1/a;->c:F

    .line 125
    .line 126
    iget v2, v2, Lx1/a;->d:F

    .line 127
    .line 128
    invoke-direct {p1, p2, v0, v1, v2}, Lx1/c;-><init>(FFFF)V

    .line 129
    .line 130
    .line 131
    return-object p1
.end method

.method public final isAttached()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    return v0
.end method

.method public final j([F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    invoke-static {v0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lq2/h1;->Z0(Lo2/w;)Lq2/h1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1, p1}, Lq2/h1;->c1(Lq2/h1;[F)V

    .line 16
    .line 17
    .line 18
    instance-of v2, v0, Lk2/j;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v0, Lk2/j;

    .line 23
    .line 24
    check-cast v0, Lr2/u;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lr2/u;->w([F)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lq2/h1;->s(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const-wide v2, 0x7fffffff7fffffffL

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    and-long/2addr v2, v0

    .line 42
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v6, v2, v4

    .line 48
    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    const/16 v2, 0x20

    .line 52
    .line 53
    shr-long v2, v0, v2

    .line 54
    .line 55
    long-to-int v3, v2

    .line 56
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const-wide v3, 0xffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    and-long/2addr v0, v3

    .line 66
    long-to-int v1, v0

    .line 67
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {p1, v2, v0}, Ly1/a0;->f([FFF)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lo2/v0;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final k0()Lq2/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->p:Lq2/h1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l0()Lo2/w;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final m0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->x:Lo2/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lq2/h1;->r:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lq2/h0;->I()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final n0()Lq2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o0()Lo2/n0;
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/h1;->x:Lo2/n0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Asking for measurement result of unmeasured layout modifier"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final p(Lo2/w;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lq2/h1;->P0(Lo2/w;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final p0()Lq2/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h1;->q:Lq2/h1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq2/h1;->z:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final s(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lq2/h1;->F(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 19
    .line 20
    invoke-static {v0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lr2/u;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lr2/u;->x(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    return-wide p1
.end method

.method public final u0()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lq2/h1;->z:J

    .line 2
    .line 3
    iget v2, p0, Lq2/h1;->A:F

    .line 4
    .line 5
    iget-object v3, p0, Lq2/h1;->t:Lf9/k;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Lo2/v0;->U(JFLf9/k;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final v(J)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p0}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lq2/h1;->o:Lq2/h0;

    .line 19
    .line 20
    invoke-static {v1}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lr2/u;

    .line 25
    .line 26
    invoke-virtual {v1}, Lr2/u;->G()V

    .line 27
    .line 28
    .line 29
    iget-object v1, v1, Lr2/u;->U:[F

    .line 30
    .line 31
    invoke-static {p1, p2, v1}, Ly1/a0;->b(J[F)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    const-wide/16 v1, 0x0

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Lo2/w;->F(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {p1, p2, v1, v2}, Lx1/b;->g(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    invoke-virtual {p0, v0, p1, p2}, Lq2/h1;->P0(Lo2/w;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    return-wide p1
.end method

.method public final v0(Lq2/h1;Lx1/a;Z)V
    .locals 6

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lq2/h1;->q:Lq2/h1;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lq2/h1;->v0(Lq2/h1;Lx1/a;Z)V

    .line 9
    .line 10
    .line 11
    :cond_1
    iget-wide v0, p0, Lq2/h1;->z:J

    .line 12
    .line 13
    const/16 p1, 0x20

    .line 14
    .line 15
    shr-long v2, v0, p1

    .line 16
    .line 17
    long-to-int v3, v2

    .line 18
    iget v2, p2, Lx1/a;->a:F

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    sub-float/2addr v2, v3

    .line 22
    iput v2, p2, Lx1/a;->a:F

    .line 23
    .line 24
    iget v2, p2, Lx1/a;->c:F

    .line 25
    .line 26
    sub-float/2addr v2, v3

    .line 27
    iput v2, p2, Lx1/a;->c:F

    .line 28
    .line 29
    const-wide v2, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v0, v2

    .line 35
    long-to-int v1, v0

    .line 36
    iget v0, p2, Lx1/a;->b:F

    .line 37
    .line 38
    int-to-float v1, v1

    .line 39
    sub-float/2addr v0, v1

    .line 40
    iput v0, p2, Lx1/a;->b:F

    .line 41
    .line 42
    iget v0, p2, Lx1/a;->d:F

    .line 43
    .line 44
    sub-float/2addr v0, v1

    .line 45
    iput v0, p2, Lx1/a;->d:F

    .line 46
    .line 47
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-interface {v0, p2, v1}, Lq2/p1;->b(Lx1/a;Z)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lq2/h1;->s:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    iget-wide v0, p0, Lo2/v0;->c:J

    .line 62
    .line 63
    shr-long v4, v0, p1

    .line 64
    .line 65
    long-to-int p1, v4

    .line 66
    int-to-float p1, p1

    .line 67
    and-long/2addr v0, v2

    .line 68
    long-to-int p3, v0

    .line 69
    int-to-float p3, p3

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0, v0, p1, p3}, Lx1/a;->a(FFFF)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public final w0(Lq2/h1;J)J
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-wide p2

    .line 4
    :cond_0
    iget-object v0, p0, Lq2/h1;->q:Lq2/h1;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lq2/h1;->w0(Lq2/h1;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lq2/h1;->D0(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lq2/h1;->D0(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method public final x()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/h0;->E:Lq2/d1;

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lq2/d1;->d(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_9

    .line 13
    .line 14
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 18
    .line 19
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 20
    .line 21
    move-object v1, v3

    .line 22
    :goto_0
    if-eqz v0, :cond_8

    .line 23
    .line 24
    iget v4, v0, Lr1/o;->c:I

    .line 25
    .line 26
    and-int/2addr v4, v2

    .line 27
    if-eqz v4, :cond_7

    .line 28
    .line 29
    move-object v4, v0

    .line 30
    move-object v5, v3

    .line 31
    :goto_1
    if-eqz v4, :cond_7

    .line 32
    .line 33
    instance-of v6, v4, Lq2/t1;

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    check-cast v4, Lq2/t1;

    .line 38
    .line 39
    invoke-interface {v4, v1}, Lq2/t1;->k0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_4

    .line 44
    :cond_0
    iget v6, v4, Lr1/o;->c:I

    .line 45
    .line 46
    and-int/2addr v6, v2

    .line 47
    if-eqz v6, :cond_6

    .line 48
    .line 49
    instance-of v6, v4, Lq2/m;

    .line 50
    .line 51
    if-eqz v6, :cond_6

    .line 52
    .line 53
    move-object v6, v4

    .line 54
    check-cast v6, Lq2/m;

    .line 55
    .line 56
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    :goto_2
    const/4 v8, 0x1

    .line 60
    if-eqz v6, :cond_5

    .line 61
    .line 62
    iget v9, v6, Lr1/o;->c:I

    .line 63
    .line 64
    and-int/2addr v9, v2

    .line 65
    if-eqz v9, :cond_4

    .line 66
    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 68
    .line 69
    if-ne v7, v8, :cond_1

    .line 70
    .line 71
    move-object v4, v6

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    if-nez v5, :cond_2

    .line 74
    .line 75
    new-instance v5, Lh1/e;

    .line 76
    .line 77
    const/16 v8, 0x10

    .line 78
    .line 79
    new-array v8, v8, [Lr1/o;

    .line 80
    .line 81
    invoke-direct {v5, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-virtual {v5, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v4, v3

    .line 90
    :cond_3
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_3
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    if-ne v7, v8, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    :goto_4
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    goto :goto_1

    .line 104
    :cond_7
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_8
    return-object v1

    .line 108
    :cond_9
    return-object v3
.end method

.method public final x0(J)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p1, v0

    .line 4
    .line 5
    long-to-int v2, v1

    .line 6
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Lo2/v0;->N()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    sub-float/2addr v1, v2

    .line 16
    const-wide v2, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p1, v2

    .line 22
    long-to-int p2, p1

    .line 23
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0}, Lo2/v0;->L()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    sub-float/2addr p1, p2

    .line 33
    const/high16 p2, 0x40000000    # 2.0f

    .line 34
    .line 35
    div-float/2addr v1, p2

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    div-float/2addr p1, p2

    .line 42
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    int-to-long v4, p2

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long p1, p1

    .line 56
    shl-long v0, v4, v0

    .line 57
    .line 58
    and-long/2addr p1, v2

    .line 59
    or-long/2addr p1, v0

    .line 60
    return-wide p1
.end method

.method public final y()Lo2/w;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/h1;->G0()Lr1/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    .line 10
    .line 11
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lq2/h1;->Q0()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lq2/h1;->o:Lq2/h0;

    .line 18
    .line 19
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 20
    .line 21
    iget-object v0, v0, Lq2/d1;->d:Lq2/h1;

    .line 22
    .line 23
    iget-object v0, v0, Lq2/h1;->q:Lq2/h1;

    .line 24
    .line 25
    return-object v0
.end method

.method public final y0(JJ)F
    .locals 8

    .line 1
    invoke-virtual {p0}, Lo2/v0;->N()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    shr-long v2, p3, v1

    .line 9
    .line 10
    long-to-int v3, v2

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 16
    .line 17
    const-wide v4, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmpl-float v0, v0, v2

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lo2/v0;->L()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    and-long v6, p3, v4

    .line 32
    .line 33
    long-to-int v2, v6

    .line 34
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    cmpl-float v0, v0, v2

    .line 39
    .line 40
    if-ltz v0, :cond_0

    .line 41
    .line 42
    return v3

    .line 43
    :cond_0
    invoke-virtual {p0, p3, p4}, Lq2/h1;->x0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p3

    .line 47
    shr-long v6, p3, v1

    .line 48
    .line 49
    long-to-int v0, v6

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    and-long/2addr p3, v4

    .line 55
    long-to-int p4, p3

    .line 56
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    shr-long v6, p1, v1

    .line 61
    .line 62
    long-to-int p4, v6

    .line 63
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    const/4 v2, 0x0

    .line 68
    cmpg-float v6, p4, v2

    .line 69
    .line 70
    if-gez v6, :cond_1

    .line 71
    .line 72
    neg-float p4, p4

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lo2/v0;->N()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    int-to-float v6, v6

    .line 79
    sub-float/2addr p4, v6

    .line 80
    :goto_0
    invoke-static {v2, p4}, Ljava/lang/Math;->max(FF)F

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    and-long/2addr p1, v4

    .line 85
    long-to-int p2, p1

    .line 86
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    cmpg-float p2, p1, v2

    .line 91
    .line 92
    if-gez p2, :cond_2

    .line 93
    .line 94
    neg-float p1, p1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0}, Lo2/v0;->L()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    int-to-float p2, p2

    .line 101
    sub-float/2addr p1, p2

    .line 102
    :goto_1
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    int-to-long v6, p2

    .line 111
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    int-to-long p1, p1

    .line 116
    shl-long/2addr v6, v1

    .line 117
    and-long/2addr p1, v4

    .line 118
    or-long/2addr p1, v6

    .line 119
    cmpl-float p4, v0, v2

    .line 120
    .line 121
    if-gtz p4, :cond_3

    .line 122
    .line 123
    cmpl-float p4, p3, v2

    .line 124
    .line 125
    if-lez p4, :cond_4

    .line 126
    .line 127
    :cond_3
    shr-long v1, p1, v1

    .line 128
    .line 129
    long-to-int p4, v1

    .line 130
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    cmpg-float v0, v1, v0

    .line 135
    .line 136
    if-gtz v0, :cond_4

    .line 137
    .line 138
    and-long/2addr p1, v4

    .line 139
    long-to-int p2, p1

    .line 140
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    cmpg-float p1, p1, p3

    .line 145
    .line 146
    if-gtz p1, :cond_4

    .line 147
    .line 148
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    mul-float p1, p1, p1

    .line 157
    .line 158
    mul-float p2, p2, p2

    .line 159
    .line 160
    add-float/2addr p2, p1

    .line 161
    return p2

    .line 162
    :cond_4
    return v3
.end method

.method public final z0(Ly1/o;Lb2/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq2/h1;->I:Lq2/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lq2/p1;->e(Ly1/o;Lb2/c;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-wide v0, p0, Lq2/h1;->z:J

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shr-long v2, v0, v2

    .line 14
    .line 15
    long-to-int v3, v2

    .line 16
    int-to-float v2, v3

    .line 17
    const-wide v3, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v0, v3

    .line 23
    long-to-int v1, v0

    .line 24
    int-to-float v0, v1

    .line 25
    invoke-interface {p1, v2, v0}, Ly1/o;->l(FF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lq2/h1;->A0(Ly1/o;Lb2/c;)V

    .line 29
    .line 30
    .line 31
    neg-float p2, v2

    .line 32
    neg-float v0, v0

    .line 33
    invoke-interface {p1, p2, v0}, Ly1/o;->l(FF)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
