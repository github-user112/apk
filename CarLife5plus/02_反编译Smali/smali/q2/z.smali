.class public final Lq2/z;
.super Lq2/h1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final Q:Ld7/q;


# instance fields
.field public O:Lq2/x;

.field public P:Lq2/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-wide v1, Ly1/q;->h:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ld7/q;->k(J)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ld7/q;->q(F)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ld7/q;->r(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lq2/z;->Q:Ld7/q;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lq2/h0;Lq2/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq2/h1;-><init>(Lq2/h0;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lq2/z;->O:Lq2/x;

    .line 5
    .line 6
    iget-object p1, p1, Lq2/h0;->g:Lq2/h0;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lq2/y;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lq2/y;-><init>(Lq2/z;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-object p1, p0, Lq2/z;->P:Lq2/y;

    .line 18
    .line 19
    check-cast p2, Lr1/o;

    .line 20
    .line 21
    iget-object p1, p2, Lr1/o;->a:Lr1/o;

    .line 22
    .line 23
    iget p1, p1, Lr1/o;->c:I

    .line 24
    .line 25
    and-int/lit16 p1, p1, 0x200

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method


# virtual methods
.method public final B0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/z;->P:Lq2/y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lq2/y;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lq2/y;-><init>(Lq2/z;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lq2/z;->P:Lq2/y;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final E0()Lq2/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/z;->P:Lq2/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G0()Lr1/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/z;->O:Lq2/x;

    .line 2
    .line 3
    check-cast v0, Lr1/o;

    .line 4
    .line 5
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 6
    .line 7
    return-object v0
.end method

.method public final I(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/z;->O:Lq2/x;

    .line 2
    .line 3
    iget-object v1, p0, Lq2/h1;->p:Lq2/h1;

    .line 4
    .line 5
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Lq2/x;->d(Lq2/p0;Lo2/l0;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final U(JFLf9/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lq2/h1;->V0(JFLf9/k;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lq2/p0;->j:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lq2/h1;->S0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lq2/h1;->o0()Lo2/n0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lo2/n0;->c()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lq2/h1;->p:Lq2/h1;

    .line 20
    .line 21
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final U0(Ly1/o;Lb2/c;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lq2/h1;->p:Lq2/h1;

    .line 2
    .line 3
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lq2/h1;->z0(Ly1/o;Lb2/c;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lq2/h1;->o:Lq2/h0;

    .line 10
    .line 11
    invoke-static {p2}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lr2/u;

    .line 16
    .line 17
    invoke-virtual {p2}, Lr2/u;->getShowLayoutBounds()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lq2/h1;->p:Lq2/h1;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-wide v0, p0, Lo2/v0;->c:J

    .line 28
    .line 29
    iget-wide v2, p2, Lo2/v0;->c:J

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3}, Ln3/l;->a(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-wide v0, p2, Lq2/h1;->z:J

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3}, Ln3/j;->a(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    :cond_0
    iget-wide v0, p0, Lo2/v0;->c:J

    .line 48
    .line 49
    const/16 p2, 0x20

    .line 50
    .line 51
    shr-long v2, v0, p2

    .line 52
    .line 53
    long-to-int p2, v2

    .line 54
    int-to-float p2, p2

    .line 55
    const/high16 v2, 0x3f000000    # 0.5f

    .line 56
    .line 57
    sub-float v6, p2, v2

    .line 58
    .line 59
    const-wide v3, 0xffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v0, v3

    .line 65
    long-to-int p2, v0

    .line 66
    int-to-float p2, p2

    .line 67
    sub-float v7, p2, v2

    .line 68
    .line 69
    const/high16 v4, 0x3f000000    # 0.5f

    .line 70
    .line 71
    const/high16 v5, 0x3f000000    # 0.5f

    .line 72
    .line 73
    sget-object v8, Lq2/z;->Q:Ld7/q;

    .line 74
    .line 75
    move-object v3, p1

    .line 76
    invoke-interface/range {v3 .. v8}, Ly1/o;->a(FFFFLd7/q;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public final c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/z;->O:Lq2/x;

    .line 2
    .line 3
    iget-object v1, p0, Lq2/h1;->p:Lq2/h1;

    .line 4
    .line 5
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Lq2/x;->e(Lq2/p0;Lo2/l0;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final d0(Lo2/m;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/z;->P:Lq2/y;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lq2/q0;->t:Ls/c0;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ls/c0;->d(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Ls/c0;->c:[I

    .line 14
    .line 15
    aget p1, v0, p1

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    const/high16 p1, -0x80000000

    .line 19
    .line 20
    return p1

    .line 21
    :cond_1
    invoke-static {p0, p1}, Lq2/f;->c(Lq2/p0;Lo2/m;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public final g1(Lq2/x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/z;->O:Lq2/x;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    check-cast v0, Lr1/o;

    .line 11
    .line 12
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 13
    .line 14
    iget v0, v0, Lr1/o;->c:I

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0x200

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    iput-object p1, p0, Lq2/z;->O:Lq2/x;

    .line 28
    .line 29
    return-void
.end method

.method public final l(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/z;->O:Lq2/x;

    .line 2
    .line 3
    iget-object v1, p0, Lq2/h1;->p:Lq2/h1;

    .line 4
    .line 5
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Lq2/x;->c(Lq2/p0;Lo2/l0;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final r(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/z;->O:Lq2/x;

    .line 2
    .line 3
    iget-object v1, p0, Lq2/h1;->p:Lq2/h1;

    .line 4
    .line 5
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0, v1, p1}, Lq2/x;->f(Lq2/p0;Lo2/l0;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final u(J)Lo2/v0;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lo2/v0;->Y(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq2/z;->O:Lq2/x;

    .line 5
    .line 6
    iget-object v1, p0, Lq2/h1;->p:Lq2/h1;

    .line 7
    .line 8
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p0, v1, p1, p2}, Lq2/x;->b(Lo2/o0;Lo2/l0;J)Lo2/n0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lq2/h1;->Y0(Lo2/n0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lq2/h1;->R0()V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method
