.class public final Lq2/h0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/j;
.implements Lq2/r1;
.implements Lq2/j;


# static fields
.field public static final Q:Lq2/c0;

.field public static final R:Lq2/b0;

.field public static final S:Lb4/c;


# instance fields
.field public A:Lf1/a0;

.field public B:Lq2/f0;

.field public C:Lq2/f0;

.field public D:Z

.field public final E:Lq2/d1;

.field public final F:Lq2/l0;

.field public G:Lo2/i0;

.field public H:Lq2/h1;

.field public I:Z

.field public J:Lr1/p;

.field public K:Lr1/p;

.field public L:Lq3/c;

.field public M:Lk2/e0;

.field public N:Z

.field public O:I

.field public P:Z

.field public final a:Z

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public g:Lq2/h0;

.field public h:I

.field public final i:Landroid/support/v4/media/session/t;

.field public j:Lh1/e;

.field public k:Z

.field public l:Lq2/h0;

.field public m:Lq2/q1;

.field public n:Lq3/q;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ly2/j;

.field public s:Z

.field public final t:Lh1/e;

.field public u:Z

.field public v:Lo2/m0;

.field public w:Lu0/j;

.field public x:Ln3/c;

.field public y:Ln3/m;

.field public z:Lr2/q2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq2/c0;

    .line 2
    .line 3
    const-string v1, "Undefined intrinsics block and it is required"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lq2/e0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq2/h0;->Q:Lq2/c0;

    .line 9
    .line 10
    new-instance v0, Lq2/b0;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lq2/h0;->R:Lq2/b0;

    .line 16
    .line 17
    new-instance v0, Lb4/c;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-direct {v0, v1}, Lb4/c;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lq2/h0;->S:Lb4/c;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    :goto_0
    sget-object v1, Ly2/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 2
    invoke-direct {p0, v0, p1}, Lq2/h0;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p2, p0, Lq2/h0;->a:Z

    .line 5
    iput p1, p0, Lq2/h0;->b:I

    const-wide p1, 0x7fffffff7fffffffL

    .line 6
    iput-wide p1, p0, Lq2/h0;->c:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lq2/h0;->d:J

    .line 8
    iput-wide p1, p0, Lq2/h0;->e:J

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lq2/h0;->f:Z

    .line 10
    new-instance p2, Landroid/support/v4/media/session/t;

    .line 11
    new-instance v0, Lh1/e;

    const/16 v1, 0x10

    new-array v2, v1, [Lq2/h0;

    invoke-direct {v0, v2}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 12
    new-instance v2, Lb1/a;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    const/16 v3, 0x16

    invoke-direct {p2, v3, v0, v2}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 13
    new-instance p2, Lh1/e;

    new-array v0, v1, [Lq2/h0;

    invoke-direct {p2, v0}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lq2/h0;->t:Lh1/e;

    .line 15
    iput-boolean p1, p0, Lq2/h0;->u:Z

    .line 16
    sget-object p2, Lq2/h0;->Q:Lq2/c0;

    iput-object p2, p0, Lq2/h0;->v:Lo2/m0;

    .line 17
    sget-object p2, Lq2/k0;->a:Ln3/d;

    .line 18
    iput-object p2, p0, Lq2/h0;->x:Ln3/c;

    .line 19
    sget-object p2, Ln3/m;->a:Ln3/m;

    iput-object p2, p0, Lq2/h0;->y:Ln3/m;

    .line 20
    sget-object p2, Lq2/h0;->R:Lq2/b0;

    iput-object p2, p0, Lq2/h0;->z:Lr2/q2;

    .line 21
    sget-object p2, Lf1/a0;->c0:Lf1/z;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object p2, Lf1/z;->b:Ln1/g;

    .line 23
    iput-object p2, p0, Lq2/h0;->A:Lf1/a0;

    .line 24
    sget-object p2, Lq2/f0;->c:Lq2/f0;

    iput-object p2, p0, Lq2/h0;->B:Lq2/f0;

    .line 25
    iput-object p2, p0, Lq2/h0;->C:Lq2/f0;

    .line 26
    new-instance p2, Lq2/d1;

    invoke-direct {p2, p0}, Lq2/d1;-><init>(Lq2/h0;)V

    iput-object p2, p0, Lq2/h0;->E:Lq2/d1;

    .line 27
    new-instance p2, Lq2/l0;

    invoke-direct {p2, p0}, Lq2/l0;-><init>(Lq2/h0;)V

    iput-object p2, p0, Lq2/h0;->F:Lq2/l0;

    .line 28
    iput-boolean p1, p0, Lq2/h0;->I:Z

    .line 29
    sget-object p1, Lr1/m;->a:Lr1/m;

    iput-object p1, p0, Lq2/h0;->J:Lr1/p;

    return-void
.end method

.method public static T(Lq2/h0;ZI)V
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_2
    iget-object p2, p0, Lq2/h0;->g:Lq2/h0;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    const-string p2, "Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope"

    .line 26
    .line 27
    invoke-static {p2}, Ln2/a;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_1
    iput-boolean v2, p0, Lq2/h0;->f:Z

    .line 31
    .line 32
    iget-object p2, p0, Lq2/h0;->m:Lq2/q1;

    .line 33
    .line 34
    if-nez p2, :cond_4

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_4
    iget-boolean v3, p0, Lq2/h0;->p:Z

    .line 38
    .line 39
    if-nez v3, :cond_b

    .line 40
    .line 41
    iget-boolean v3, p0, Lq2/h0;->a:Z

    .line 42
    .line 43
    if-nez v3, :cond_b

    .line 44
    .line 45
    check-cast p2, Lr2/u;

    .line 46
    .line 47
    invoke-virtual {p2, p0, v2, p1, v0}, Lr2/u;->D(Lq2/h0;ZZZ)V

    .line 48
    .line 49
    .line 50
    if-eqz v1, :cond_b

    .line 51
    .line 52
    iget-object p0, p0, Lq2/h0;->F:Lq2/l0;

    .line 53
    .line 54
    iget-object p0, p0, Lq2/l0;->q:Lq2/u0;

    .line 55
    .line 56
    invoke-static {p0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lq2/u0;->f:Lq2/l0;

    .line 60
    .line 61
    iget-object p2, p0, Lq2/l0;->a:Lq2/h0;

    .line 62
    .line 63
    invoke-virtual {p2}, Lq2/h0;->v()Lq2/h0;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget-object p0, p0, Lq2/l0;->a:Lq2/h0;

    .line 68
    .line 69
    iget-object p0, p0, Lq2/h0;->B:Lq2/f0;

    .line 70
    .line 71
    if-eqz p2, :cond_b

    .line 72
    .line 73
    sget-object v0, Lq2/f0;->c:Lq2/f0;

    .line 74
    .line 75
    if-eq p0, v0, :cond_b

    .line 76
    .line 77
    :goto_2
    iget-object v0, p2, Lq2/h0;->B:Lq2/f0;

    .line 78
    .line 79
    if-ne v0, p0, :cond_6

    .line 80
    .line 81
    invoke-virtual {p2}, Lq2/h0;->v()Lq2/h0;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    move-object p2, v0

    .line 89
    goto :goto_2

    .line 90
    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_9

    .line 95
    .line 96
    if-ne p0, v2, :cond_8

    .line 97
    .line 98
    iget-object p0, p2, Lq2/h0;->g:Lq2/h0;

    .line 99
    .line 100
    if-eqz p0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lq2/h0;->S(Z)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_7
    invoke-virtual {p2, p1}, Lq2/h0;->U(Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string p1, "Intrinsics isn\'t used by the parent"

    .line 113
    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_9
    iget-object p0, p2, Lq2/h0;->g:Lq2/h0;

    .line 119
    .line 120
    const/4 v0, 0x6

    .line 121
    if-eqz p0, :cond_a

    .line 122
    .line 123
    invoke-static {p2, p1, v0}, Lq2/h0;->T(Lq2/h0;ZI)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_a
    invoke-static {p2, p1, v0}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 128
    .line 129
    .line 130
    :cond_b
    :goto_4
    return-void
.end method

.method public static V(Lq2/h0;ZI)V
    .locals 4

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    and-int/lit8 p2, p2, 0x4

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/4 p2, 0x0

    .line 22
    :goto_1
    iput-boolean v2, p0, Lq2/h0;->f:Z

    .line 23
    .line 24
    iget-boolean v3, p0, Lq2/h0;->p:Z

    .line 25
    .line 26
    if-nez v3, :cond_8

    .line 27
    .line 28
    iget-boolean v3, p0, Lq2/h0;->a:Z

    .line 29
    .line 30
    if-nez v3, :cond_8

    .line 31
    .line 32
    iget-object v3, p0, Lq2/h0;->m:Lq2/q1;

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_3
    check-cast v3, Lr2/u;

    .line 38
    .line 39
    invoke-virtual {v3, p0, v1, p1, v0}, Lr2/u;->D(Lq2/h0;ZZZ)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_8

    .line 43
    .line 44
    iget-object p0, p0, Lq2/h0;->F:Lq2/l0;

    .line 45
    .line 46
    iget-object p0, p0, Lq2/l0;->p:Lq2/y0;

    .line 47
    .line 48
    iget-object p0, p0, Lq2/y0;->f:Lq2/l0;

    .line 49
    .line 50
    iget-object p2, p0, Lq2/l0;->a:Lq2/h0;

    .line 51
    .line 52
    invoke-virtual {p2}, Lq2/h0;->v()Lq2/h0;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object p0, p0, Lq2/l0;->a:Lq2/h0;

    .line 57
    .line 58
    iget-object p0, p0, Lq2/h0;->B:Lq2/f0;

    .line 59
    .line 60
    if-eqz p2, :cond_8

    .line 61
    .line 62
    sget-object v0, Lq2/f0;->c:Lq2/f0;

    .line 63
    .line 64
    if-eq p0, v0, :cond_8

    .line 65
    .line 66
    :goto_2
    iget-object v0, p2, Lq2/h0;->B:Lq2/f0;

    .line 67
    .line 68
    if-ne v0, p0, :cond_5

    .line 69
    .line 70
    invoke-virtual {p2}, Lq2/h0;->v()Lq2/h0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move-object p2, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_7

    .line 84
    .line 85
    if-ne p0, v2, :cond_6

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Lq2/h0;->U(Z)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string p1, "Intrinsics isn\'t used by the parent"

    .line 94
    .line 95
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_7
    const/4 p0, 0x6

    .line 100
    invoke-static {p2, p1, p0}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 101
    .line 102
    .line 103
    :cond_8
    :goto_4
    return-void
.end method

.method public static W(Lq2/h0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/l0;->d:Lq2/d0;

    .line 4
    .line 5
    sget-object v2, Lq2/g0;->a:[I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v1, v2, v1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_4

    .line 15
    .line 16
    iget-boolean v1, v0, Lq2/l0;->e:Z

    .line 17
    .line 18
    const/4 v3, 0x6

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-static {p0, v2, v3}, Lq2/h0;->T(Lq2/h0;ZI)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-boolean v0, v0, Lq2/l0;->f:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lq2/h0;->S(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lq2/h0;->r()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {p0, v2, v3}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Lq2/h0;->q()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lq2/h0;->U(Z)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void

    .line 52
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, "Unexpected state "

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lq2/l0;->d:Lq2/d0;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method private final j(Lq2/h0;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Cannot insert "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " because it already has a parent or an owner. This tree: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lq2/h0;->g(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " Other tree: "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lq2/h0;->l:Lq2/h0;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lq2/h0;->g(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method


# virtual methods
.method public final A(JLq2/r;IZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/d1;->d:Lq2/h1;

    .line 4
    .line 5
    sget-object v2, Lq2/h1;->J:Ly1/i0;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p2}, Lq2/h1;->D0(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v5

    .line 11
    iget-object v3, v0, Lq2/d1;->d:Lq2/h1;

    .line 12
    .line 13
    sget-object v4, Lq2/h1;->M:Lq2/d;

    .line 14
    .line 15
    move-object v7, p3

    .line 16
    move v8, p4

    .line 17
    move v9, p5

    .line 18
    invoke-virtual/range {v3 .. v9}, Lq2/h1;->L0(Lq2/d;JLq2/r;IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final B(ILq2/h0;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lq2/h0;->l:Lq2/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p2, Lq2/h0;->m:Lq2/q1;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lq2/h0;->j(Lq2/h0;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iput-object p0, p2, Lq2/h0;->l:Lq2/h0;

    .line 18
    .line 19
    iget-object v0, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 20
    .line 21
    iget-object v1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lh1/e;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Lh1/e;->a(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lb1/a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lq2/h0;->O()V

    .line 36
    .line 37
    .line 38
    iget-boolean p1, p2, Lq2/h0;->a:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget p1, p0, Lq2/h0;->h:I

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    .line 46
    iput p1, p0, Lq2/h0;->h:I

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Lq2/h0;->H()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lq2/h0;->m:Lq2/q1;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lq2/h0;->d(Lq2/q1;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p2, Lq2/h0;->F:Lq2/l0;

    .line 59
    .line 60
    iget p1, p1, Lq2/l0;->l:I

    .line 61
    .line 62
    if-lez p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lq2/h0;->F:Lq2/l0;

    .line 65
    .line 66
    iget v0, p1, Lq2/l0;->l:I

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lq2/l0;->d(I)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget p1, p2, Lq2/h0;->O:I

    .line 74
    .line 75
    if-lez p1, :cond_5

    .line 76
    .line 77
    iget p1, p0, Lq2/h0;->O:I

    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lq2/h0;->a0(I)V

    .line 82
    .line 83
    .line 84
    :cond_5
    return-void
.end method

.method public final C()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lq2/h0;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 6
    .line 7
    iget-object v1, v0, Lq2/d1;->c:Lq2/t;

    .line 8
    .line 9
    iget-object v0, v0, Lq2/d1;->d:Lq2/h1;

    .line 10
    .line 11
    iget-object v0, v0, Lq2/h1;->q:Lq2/h1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lq2/h0;->H:Lq2/h1;

    .line 15
    .line 16
    :goto_0
    invoke-static {v1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_3

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v3, v1, Lq2/h1;->I:Lq2/p1;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move-object v3, v2

    .line 28
    :goto_1
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iput-object v1, p0, Lq2/h0;->H:Lq2/h1;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, v1, Lq2/h1;->q:Lq2/h1;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_2
    iget-object v0, p0, Lq2/h0;->H:Lq2/h1;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iget-object v1, v0, Lq2/h1;->I:Lq2/p1;

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    const-string v0, "layer was not set"

    .line 50
    .line 51
    invoke-static {v0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    throw v0

    .line 56
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 57
    .line 58
    invoke-virtual {v0}, Lq2/h1;->N0()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_6
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0}, Lq2/h0;->C()V

    .line 69
    .line 70
    .line 71
    :cond_7
    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/d1;->d:Lq2/h1;

    .line 4
    .line 5
    iget-object v2, v0, Lq2/d1;->c:Lq2/t;

    .line 6
    .line 7
    :goto_0
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const-string v3, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    .line 10
    .line 11
    invoke-static {v1, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v1, Lq2/z;

    .line 15
    .line 16
    iget-object v3, v1, Lq2/h1;->I:Lq2/p1;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v3}, Lq2/p1;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, v1, Lq2/h1;->p:Lq2/h1;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 27
    .line 28
    iget-object v0, v0, Lq2/h1;->I:Lq2/p1;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Lq2/p1;->invalidate()V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lq2/h0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lq2/h0;->E()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lq2/h0;->g:Lq2/h0;

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {p0, v2, v1}, Lq2/h0;->T(Lq2/h0;ZI)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-static {p0, v2, v1}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final F()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lq2/h0;->c:J

    .line 2
    .line 3
    const-wide v2, 0x7fffffff7fffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Ln3/j;->a(JJ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iput-wide v2, p0, Lq2/h0;->c:J

    .line 16
    .line 17
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 22
    .line 23
    iget v0, v0, Lh1/e;->c:I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    .line 28
    aget-object v3, v1, v2

    .line 29
    .line 30
    check-cast v3, Lq2/h0;

    .line 31
    .line 32
    invoke-virtual {v3}, Lq2/h0;->F()V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    return-void
.end method

.method public final G()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lq2/h0;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 7
    .line 8
    iget-object v0, v0, Lq2/d1;->b:Lq2/c1;

    .line 9
    .line 10
    iget-object v0, v0, Lr1/o;->f:Lr1/o;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lq2/h0;->K:Lr1/p;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :goto_0
    iput-boolean v1, p0, Lq2/h0;->q:Z

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lq2/h0;->r:Ly2/j;

    .line 24
    .line 25
    iput-boolean v1, p0, Lq2/h0;->s:Z

    .line 26
    .line 27
    new-instance v1, Lg9/x;

    .line 28
    .line 29
    invoke-direct {v1}, Lg9/x;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ly2/j;

    .line 33
    .line 34
    invoke-direct {v2}, Ly2/j;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lr2/u;

    .line 44
    .line 45
    invoke-virtual {v2}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lk2/d;

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-direct {v3, v4, p0, v1}, Lk2/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, v2, Lq2/s1;->d:Lq2/e;

    .line 56
    .line 57
    invoke-virtual {v2, p0, v4, v3}, Lq2/s1;->a(Lq2/r1;Lf9/k;Lf9/a;)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    iput-boolean v2, p0, Lq2/h0;->s:Z

    .line 62
    .line 63
    iget-object v1, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ly2/j;

    .line 66
    .line 67
    iput-object v1, p0, Lq2/h0;->r:Ly2/j;

    .line 68
    .line 69
    iput-boolean v2, p0, Lq2/h0;->q:Z

    .line 70
    .line 71
    invoke-static {p0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lr2/u;

    .line 76
    .line 77
    invoke-virtual {v1}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2, p0, v0}, Ly2/o;->b(Lq2/h0;Ly2/j;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lr2/u;->F()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final H()V
    .locals 1

    .line 1
    iget v0, p0, Lq2/h0;->h:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lq2/h0;->k:Z

    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lq2/h0;->a:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lq2/h0;->l:Lq2/h0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lq2/h0;->H()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

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

.method public final J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 4
    .line 5
    iget-boolean v0, v0, Lq2/y0;->r:Z

    .line 6
    .line 7
    return v0
.end method

.method public final K()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lq2/u0;->B()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final L()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq2/h0;->B:Lq2/f0;

    .line 2
    .line 3
    sget-object v1, Lq2/f0;->c:Lq2/f0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lq2/h0;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 11
    .line 12
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 13
    .line 14
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    :try_start_0
    iput-boolean v2, v0, Lq2/u0;->g:Z

    .line 20
    .line 21
    iget-boolean v2, v0, Lq2/u0;->k:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "replace() called on item that was not placed"

    .line 26
    .line 27
    invoke-static {v2}, Ln2/a;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iput-boolean v1, v0, Lq2/u0;->w:Z

    .line 34
    .line 35
    invoke-virtual {v0}, Lq2/u0;->B()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-wide v3, v0, Lq2/u0;->n:J

    .line 40
    .line 41
    iget-object v5, v0, Lq2/u0;->o:Lf9/k;

    .line 42
    .line 43
    invoke-virtual {v0, v3, v4, v5}, Lq2/u0;->k0(JLf9/k;)V

    .line 44
    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-boolean v2, v0, Lq2/u0;->w:Z

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    iget-object v2, v0, Lq2/u0;->f:Lq2/l0;

    .line 53
    .line 54
    iget-object v2, v2, Lq2/l0;->a:Lq2/h0;

    .line 55
    .line 56
    invoke-virtual {v2}, Lq2/h0;->v()Lq2/h0;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lq2/h0;->S(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_2
    iput-boolean v1, v0, Lq2/u0;->g:Z

    .line 66
    .line 67
    return-void

    .line 68
    :goto_1
    iput-boolean v1, v0, Lq2/u0;->g:Z

    .line 69
    .line 70
    throw v2
.end method

.method public final M(III)V
    .locals 6

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    if-ge v0, p3, :cond_3

    .line 6
    .line 7
    if-le p1, p2, :cond_1

    .line 8
    .line 9
    add-int v1, p1, v0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move v1, p1

    .line 13
    :goto_1
    if-le p1, p2, :cond_2

    .line 14
    .line 15
    add-int v2, p2, v0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_2
    add-int v2, p2, p3

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x2

    .line 21
    .line 22
    :goto_2
    iget-object v3, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 23
    .line 24
    iget-object v4, v3, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Lh1/e;

    .line 27
    .line 28
    iget-object v5, v3, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Lb1/a;

    .line 31
    .line 32
    invoke-virtual {v4, v1}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v5}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    check-cast v1, Lq2/h0;

    .line 40
    .line 41
    iget-object v3, v3, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lh1/e;

    .line 44
    .line 45
    invoke-virtual {v3, v2, v1}, Lh1/e;->a(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lq2/h0;->O()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lq2/h0;->H()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lq2/h0;->E()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final N(Lq2/h0;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget v0, v0, Lq2/l0;->l:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 8
    .line 9
    iget v1, v0, Lq2/l0;->l:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lq2/l0;->d(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lq2/h0;->h()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lq2/h0;->l:Lq2/h0;

    .line 25
    .line 26
    iget v1, p1, Lq2/h0;->O:I

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    iget v1, p0, Lq2/h0;->O:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lq2/h0;->a0(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v1, p1, Lq2/h0;->E:Lq2/d1;

    .line 38
    .line 39
    iget-object v1, v1, Lq2/d1;->d:Lq2/h1;

    .line 40
    .line 41
    iput-object v0, v1, Lq2/h1;->q:Lq2/h1;

    .line 42
    .line 43
    iget-boolean v1, p1, Lq2/h0;->a:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget v1, p0, Lq2/h0;->h:I

    .line 48
    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    iput v1, p0, Lq2/h0;->h:I

    .line 52
    .line 53
    iget-object p1, p1, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 54
    .line 55
    iget-object p1, p1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lh1/e;

    .line 58
    .line 59
    iget-object v1, p1, Lh1/e;->a:[Ljava/lang/Object;

    .line 60
    .line 61
    iget p1, p1, Lh1/e;->c:I

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    :goto_0
    if-ge v2, p1, :cond_3

    .line 65
    .line 66
    aget-object v3, v1, v2

    .line 67
    .line 68
    check-cast v3, Lq2/h0;

    .line 69
    .line 70
    iget-object v3, v3, Lq2/h0;->E:Lq2/d1;

    .line 71
    .line 72
    iget-object v3, v3, Lq2/d1;->d:Lq2/h1;

    .line 73
    .line 74
    iput-object v0, v3, Lq2/h1;->q:Lq2/h1;

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lq2/h0;->H()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lq2/h0;->O()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq2/h0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lq2/h0;->O()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lq2/h0;->u:Z

    .line 17
    .line 18
    return-void
.end method

.method public final P()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lh1/e;

    .line 6
    .line 7
    iget-object v2, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lh1/e;

    .line 10
    .line 11
    iget v1, v1, Lh1/e;->c:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    :goto_0
    const/4 v3, -0x1

    .line 16
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    iget-object v3, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v3, v3, v1

    .line 21
    .line 22
    check-cast v3, Lq2/h0;

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Lq2/h0;->N(Lq2/h0;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v2}, Lh1/e;->h()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lb1/a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final Q(II)V
    .locals 2

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "count ("

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ") must be greater than 0"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ln2/a;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    add-int/2addr p2, p1

    .line 27
    add-int/lit8 p2, p2, -0x1

    .line 28
    .line 29
    if-gt p1, p2, :cond_1

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 32
    .line 33
    iget-object v1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lh1/e;

    .line 36
    .line 37
    iget-object v1, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v1, v1, p2

    .line 40
    .line 41
    check-cast v1, Lq2/h0;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lq2/h0;->N(Lq2/h0;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lh1/e;

    .line 49
    .line 50
    invoke-virtual {v1, p2}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lb1/a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    check-cast v1, Lq2/h0;

    .line 62
    .line 63
    if-eq p2, p1, :cond_1

    .line 64
    .line 65
    add-int/lit8 p2, p2, -0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method public final R()V
    .locals 8

    .line 1
    iget-object v0, p0, Lq2/h0;->B:Lq2/f0;

    .line 2
    .line 3
    sget-object v1, Lq2/f0;->c:Lq2/f0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lq2/h0;->f()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 11
    .line 12
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 13
    .line 14
    iget-object v1, v0, Lq2/y0;->f:Lq2/l0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    :try_start_0
    iput-boolean v3, v0, Lq2/y0;->g:Z

    .line 19
    .line 20
    iget-boolean v3, v0, Lq2/y0;->k:Z

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, "replace called on unplaced item"

    .line 25
    .line 26
    invoke-static {v3}, Ln2/a;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lq2/y0;->r:Z

    .line 33
    .line 34
    iget-wide v4, v0, Lq2/y0;->m:J

    .line 35
    .line 36
    iget v6, v0, Lq2/y0;->o:F

    .line 37
    .line 38
    iget-object v7, v0, Lq2/y0;->n:Lf9/k;

    .line 39
    .line 40
    invoke-virtual {v0, v4, v5, v6, v7}, Lq2/y0;->m0(JFLf9/k;)V

    .line 41
    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iget-boolean v3, v0, Lq2/y0;->E:Z

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    iget-object v3, v1, Lq2/l0;->a:Lq2/h0;

    .line 50
    .line 51
    invoke-virtual {v3}, Lq2/h0;->v()Lq2/h0;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Lq2/h0;->U(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_2
    iput-boolean v2, v0, Lq2/y0;->g:Z

    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    iget-object v1, v1, Lq2/l0;->a:Lq2/h0;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Lq2/h0;->Y(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :catchall_1
    move-exception v1

    .line 71
    iput-boolean v2, v0, Lq2/y0;->g:Z

    .line 72
    .line 73
    throw v1
.end method

.method public final S(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq2/h0;->f:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lq2/h0;->a:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lq2/h0;->m:Lq2/q1;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v1, Lr2/u;

    .line 13
    .line 14
    invoke-virtual {v1, p0, v0, p1}, Lr2/u;->E(Lq2/h0;ZZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final U(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq2/h0;->f:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lq2/h0;->a:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    check-cast v0, Lr2/u;

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1, p1}, Lr2/u;->E(Lq2/h0;ZZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final X()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v0, v0, Lh1/e;->c:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Lq2/h0;

    .line 15
    .line 16
    iget-object v4, v3, Lq2/h0;->C:Lq2/f0;

    .line 17
    .line 18
    iput-object v4, v3, Lq2/h0;->B:Lq2/f0;

    .line 19
    .line 20
    sget-object v5, Lq2/f0;->c:Lq2/f0;

    .line 21
    .line 22
    if-eq v4, v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Lq2/h0;->X()V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final Y(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/h0;->A:Lf1/a0;

    .line 2
    .line 3
    sget-object v1, Lq1/c;->a:Lf1/w2;

    .line 4
    .line 5
    check-cast v0, Ln1/g;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lf1/b;->t(Lf1/q1;Lf1/t1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lq1/b;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v1, La8/n0;

    .line 19
    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    invoke-direct {v1, v2, v0, p0}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Lp4/e;->F(Ljava/lang/Throwable;Lf9/a;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    throw p1
.end method

.method public final Z(Ln3/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->x:Ln3/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lq2/h0;->x:Ln3/c;

    .line 10
    .line 11
    invoke-virtual {p0}, Lq2/h0;->E()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lq2/h0;->C()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lq2/h0;->D()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lq2/h0;->E:Lq2/d1;

    .line 27
    .line 28
    iget-object p1, p1, Lq2/d1;->f:Lr1/o;

    .line 29
    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lr1/o;->r0()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lr1/o;->f:Lr1/o;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final a(Lr1/p;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lq2/h0;->E:Lq2/d1;

    .line 6
    .line 7
    const/16 v7, 0x10

    .line 8
    .line 9
    invoke-virtual {v2, v7}, Lq2/d1;->d(I)Z

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    iget-object v9, v2, Lq2/d1;->e:Lq2/a2;

    .line 14
    .line 15
    const/16 v10, 0x400

    .line 16
    .line 17
    invoke-virtual {v2, v10}, Lq2/d1;->d(I)Z

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    iput-object v1, v0, Lq2/h0;->J:Lr1/p;

    .line 22
    .line 23
    iget-object v3, v2, Lq2/d1;->c:Lq2/t;

    .line 24
    .line 25
    iget-object v4, v2, Lq2/d1;->a:Lq2/h0;

    .line 26
    .line 27
    iget-object v5, v2, Lq2/d1;->f:Lr1/o;

    .line 28
    .line 29
    iget-object v12, v2, Lq2/d1;->b:Lq2/c1;

    .line 30
    .line 31
    if-eq v5, v12, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v5, "padChain called on already padded chain"

    .line 35
    .line 36
    invoke-static {v5}, Ln2/a;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v5, v2, Lq2/d1;->f:Lr1/o;

    .line 40
    .line 41
    iput-object v12, v5, Lr1/o;->e:Lr1/o;

    .line 42
    .line 43
    iput-object v5, v12, Lr1/o;->f:Lr1/o;

    .line 44
    .line 45
    move-object v5, v3

    .line 46
    iget-object v3, v2, Lq2/d1;->g:Lh1/e;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    iget v6, v3, Lh1/e;->c:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v6, 0x0

    .line 54
    :goto_1
    iget-object v14, v2, Lq2/d1;->h:Lh1/e;

    .line 55
    .line 56
    if-nez v14, :cond_2

    .line 57
    .line 58
    new-instance v14, Lh1/e;

    .line 59
    .line 60
    new-array v15, v7, [Lr1/n;

    .line 61
    .line 62
    invoke-direct {v14, v15}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v15, v2, Lq2/d1;->i:Lh1/e;

    .line 66
    .line 67
    invoke-virtual {v15, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    :goto_2
    iget v1, v15, Lh1/e;->c:I

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    add-int/lit8 v1, v1, -0x1

    .line 77
    .line 78
    invoke-virtual {v15, v1}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lr1/p;

    .line 83
    .line 84
    instance-of v13, v1, Lr1/j;

    .line 85
    .line 86
    if-eqz v13, :cond_3

    .line 87
    .line 88
    check-cast v1, Lr1/j;

    .line 89
    .line 90
    iget-object v13, v1, Lr1/j;->b:Lr1/p;

    .line 91
    .line 92
    invoke-virtual {v15, v13}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v1, Lr1/j;->a:Lr1/p;

    .line 96
    .line 97
    invoke-virtual {v15, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_3
    instance-of v13, v1, Lr1/n;

    .line 102
    .line 103
    if-eqz v13, :cond_4

    .line 104
    .line 105
    invoke-virtual {v14, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_4
    if-nez v16, :cond_5

    .line 110
    .line 111
    new-instance v13, Lb2/a;

    .line 112
    .line 113
    const/4 v10, 0x4

    .line 114
    invoke-direct {v13, v10, v14}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v16, v13

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move-object/from16 v13, v16

    .line 121
    .line 122
    :goto_3
    invoke-interface {v1, v13}, Lr1/p;->h(Lf9/k;)Z

    .line 123
    .line 124
    .line 125
    :goto_4
    const/16 v10, 0x400

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    iget v1, v14, Lh1/e;->c:I

    .line 129
    .line 130
    const-string v13, "expected prior modifier list to be non-empty"

    .line 131
    .line 132
    if-ne v1, v6, :cond_11

    .line 133
    .line 134
    iget-object v1, v12, Lr1/o;->f:Lr1/o;

    .line 135
    .line 136
    move-object v5, v2

    .line 137
    const/4 v2, 0x0

    .line 138
    :goto_5
    if-eqz v1, :cond_c

    .line 139
    .line 140
    if-ge v2, v6, :cond_c

    .line 141
    .line 142
    if-eqz v3, :cond_b

    .line 143
    .line 144
    const/16 v16, 0x2

    .line 145
    .line 146
    iget-object v10, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 147
    .line 148
    aget-object v10, v10, v2

    .line 149
    .line 150
    check-cast v10, Lr1/n;

    .line 151
    .line 152
    iget-object v7, v14, Lh1/e;->a:[Ljava/lang/Object;

    .line 153
    .line 154
    aget-object v7, v7, v2

    .line 155
    .line 156
    check-cast v7, Lr1/n;

    .line 157
    .line 158
    invoke-static {v10, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v17

    .line 162
    if-eqz v17, :cond_7

    .line 163
    .line 164
    move-object/from16 v18, v3

    .line 165
    .line 166
    const/4 v3, 0x2

    .line 167
    goto :goto_6

    .line 168
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    move-object/from16 v18, v3

    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-ne v15, v3, :cond_8

    .line 179
    .line 180
    const/4 v3, 0x1

    .line 181
    goto :goto_6

    .line 182
    :cond_8
    const/4 v3, 0x0

    .line 183
    :goto_6
    if-eqz v3, :cond_a

    .line 184
    .line 185
    const/4 v15, 0x1

    .line 186
    if-eq v3, v15, :cond_9

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_9
    invoke-static {v10, v7, v1}, Lq2/d1;->h(Lr1/n;Lr1/n;Lr1/o;)V

    .line 190
    .line 191
    .line 192
    :goto_7
    iget-object v1, v1, Lr1/o;->f:Lr1/o;

    .line 193
    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 195
    .line 196
    move-object/from16 v3, v18

    .line 197
    .line 198
    const/16 v7, 0x10

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_a
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_b
    invoke-static {v13}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    throw v1

    .line 209
    :cond_c
    move-object/from16 v18, v3

    .line 210
    .line 211
    const/16 v16, 0x2

    .line 212
    .line 213
    :goto_8
    if-ge v2, v6, :cond_10

    .line 214
    .line 215
    if-eqz v18, :cond_f

    .line 216
    .line 217
    if-eqz v1, :cond_e

    .line 218
    .line 219
    iget-object v3, v4, Lq2/h0;->K:Lr1/p;

    .line 220
    .line 221
    if-eqz v3, :cond_d

    .line 222
    .line 223
    const/16 v17, 0x1

    .line 224
    .line 225
    :goto_9
    const/4 v15, 0x1

    .line 226
    goto :goto_a

    .line 227
    :cond_d
    const/16 v17, 0x0

    .line 228
    .line 229
    goto :goto_9

    .line 230
    :goto_a
    xor-int/lit8 v6, v17, 0x1

    .line 231
    .line 232
    move-object v3, v5

    .line 233
    move-object v5, v1

    .line 234
    move-object v1, v3

    .line 235
    move-object v4, v14

    .line 236
    move-object/from16 v3, v18

    .line 237
    .line 238
    const/4 v7, 0x0

    .line 239
    invoke-virtual/range {v1 .. v6}, Lq2/d1;->f(ILh1/e;Lh1/e;Lr1/o;Z)V

    .line 240
    .line 241
    .line 242
    move-object v5, v12

    .line 243
    :goto_b
    const/4 v15, 0x1

    .line 244
    goto/16 :goto_13

    .line 245
    .line 246
    :cond_e
    const-string v1, "structuralUpdate requires a non-null tail"

    .line 247
    .line 248
    invoke-static {v1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    throw v1

    .line 253
    :cond_f
    invoke-static {v13}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    throw v1

    .line 258
    :cond_10
    move-object v2, v5

    .line 259
    move-object/from16 v3, v18

    .line 260
    .line 261
    const/4 v7, 0x0

    .line 262
    goto :goto_10

    .line 263
    :cond_11
    const/4 v7, 0x0

    .line 264
    const/16 v16, 0x2

    .line 265
    .line 266
    iget-object v10, v4, Lq2/h0;->K:Lr1/p;

    .line 267
    .line 268
    if-eqz v10, :cond_14

    .line 269
    .line 270
    if-nez v6, :cond_14

    .line 271
    .line 272
    move-object v4, v12

    .line 273
    const/4 v1, 0x0

    .line 274
    :goto_c
    iget v5, v14, Lh1/e;->c:I

    .line 275
    .line 276
    if-ge v1, v5, :cond_12

    .line 277
    .line 278
    iget-object v5, v14, Lh1/e;->a:[Ljava/lang/Object;

    .line 279
    .line 280
    aget-object v5, v5, v1

    .line 281
    .line 282
    check-cast v5, Lr1/n;

    .line 283
    .line 284
    invoke-static {v5, v4}, Lq2/d1;->b(Lr1/n;Lr1/o;)Lr1/o;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 289
    .line 290
    goto :goto_c

    .line 291
    :cond_12
    iget-object v1, v9, Lr1/o;->e:Lr1/o;

    .line 292
    .line 293
    const/4 v4, 0x0

    .line 294
    :goto_d
    if-eqz v1, :cond_13

    .line 295
    .line 296
    if-eq v1, v12, :cond_13

    .line 297
    .line 298
    iget v5, v1, Lr1/o;->c:I

    .line 299
    .line 300
    or-int/2addr v4, v5

    .line 301
    iput v4, v1, Lr1/o;->d:I

    .line 302
    .line 303
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 304
    .line 305
    goto :goto_d

    .line 306
    :cond_13
    move-object v1, v2

    .line 307
    move-object v5, v12

    .line 308
    move-object v4, v14

    .line 309
    goto :goto_b

    .line 310
    :cond_14
    if-nez v1, :cond_18

    .line 311
    .line 312
    if-eqz v3, :cond_17

    .line 313
    .line 314
    iget-object v1, v12, Lr1/o;->f:Lr1/o;

    .line 315
    .line 316
    const/4 v6, 0x0

    .line 317
    :goto_e
    if-eqz v1, :cond_15

    .line 318
    .line 319
    iget v10, v3, Lh1/e;->c:I

    .line 320
    .line 321
    if-ge v6, v10, :cond_15

    .line 322
    .line 323
    invoke-static {v1}, Lq2/d1;->c(Lr1/o;)Lr1/o;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    iget-object v1, v1, Lr1/o;->f:Lr1/o;

    .line 328
    .line 329
    add-int/lit8 v6, v6, 0x1

    .line 330
    .line 331
    goto :goto_e

    .line 332
    :cond_15
    invoke-virtual {v4}, Lq2/h0;->v()Lq2/h0;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-eqz v1, :cond_16

    .line 337
    .line 338
    iget-object v1, v1, Lq2/h0;->E:Lq2/d1;

    .line 339
    .line 340
    iget-object v1, v1, Lq2/d1;->c:Lq2/t;

    .line 341
    .line 342
    goto :goto_f

    .line 343
    :cond_16
    move-object v1, v7

    .line 344
    :goto_f
    iput-object v1, v5, Lq2/h1;->q:Lq2/h1;

    .line 345
    .line 346
    iput-object v5, v2, Lq2/d1;->d:Lq2/h1;

    .line 347
    .line 348
    :goto_10
    move-object v1, v2

    .line 349
    move-object v5, v12

    .line 350
    move-object v4, v14

    .line 351
    const/4 v15, 0x0

    .line 352
    goto :goto_13

    .line 353
    :cond_17
    invoke-static {v13}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    throw v1

    .line 358
    :cond_18
    if-nez v3, :cond_19

    .line 359
    .line 360
    new-instance v3, Lh1/e;

    .line 361
    .line 362
    const/16 v1, 0x10

    .line 363
    .line 364
    new-array v4, v1, [Lr1/n;

    .line 365
    .line 366
    invoke-direct {v3, v4}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    :cond_19
    if-eqz v10, :cond_1a

    .line 370
    .line 371
    const/4 v15, 0x1

    .line 372
    :goto_11
    const/16 v17, 0x1

    .line 373
    .line 374
    goto :goto_12

    .line 375
    :cond_1a
    const/4 v15, 0x0

    .line 376
    goto :goto_11

    .line 377
    :goto_12
    xor-int/lit8 v6, v15, 0x1

    .line 378
    .line 379
    move-object v1, v2

    .line 380
    const/4 v2, 0x0

    .line 381
    move-object v5, v12

    .line 382
    move-object v4, v14

    .line 383
    invoke-virtual/range {v1 .. v6}, Lq2/d1;->f(ILh1/e;Lh1/e;Lr1/o;Z)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_b

    .line 387
    .line 388
    :goto_13
    iput-object v4, v1, Lq2/d1;->g:Lh1/e;

    .line 389
    .line 390
    if-eqz v3, :cond_1b

    .line 391
    .line 392
    invoke-virtual {v3}, Lh1/e;->h()V

    .line 393
    .line 394
    .line 395
    goto :goto_14

    .line 396
    :cond_1b
    move-object v3, v7

    .line 397
    :goto_14
    iput-object v3, v1, Lq2/d1;->h:Lh1/e;

    .line 398
    .line 399
    iget-object v2, v5, Lr1/o;->f:Lr1/o;

    .line 400
    .line 401
    if-nez v2, :cond_1c

    .line 402
    .line 403
    goto :goto_15

    .line 404
    :cond_1c
    move-object v9, v2

    .line 405
    :goto_15
    iput-object v7, v9, Lr1/o;->e:Lr1/o;

    .line 406
    .line 407
    iput-object v7, v5, Lr1/o;->f:Lr1/o;

    .line 408
    .line 409
    const/4 v2, -0x1

    .line 410
    iput v2, v5, Lr1/o;->d:I

    .line 411
    .line 412
    iput-object v7, v5, Lr1/o;->h:Lq2/h1;

    .line 413
    .line 414
    if-eq v9, v5, :cond_1d

    .line 415
    .line 416
    goto :goto_16

    .line 417
    :cond_1d
    const-string v2, "trimChain did not update the head"

    .line 418
    .line 419
    invoke-static {v2}, Ln2/a;->b(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    :goto_16
    iput-object v9, v1, Lq2/d1;->f:Lr1/o;

    .line 423
    .line 424
    if-eqz v15, :cond_1e

    .line 425
    .line 426
    invoke-virtual {v1}, Lq2/d1;->g()V

    .line 427
    .line 428
    .line 429
    :cond_1e
    const/16 v2, 0x10

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Lq2/d1;->d(I)Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    const/16 v3, 0x400

    .line 436
    .line 437
    invoke-virtual {v1, v3}, Lq2/d1;->d(I)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    iget-object v4, v0, Lq2/h0;->F:Lq2/l0;

    .line 442
    .line 443
    invoke-virtual {v4}, Lq2/l0;->j()V

    .line 444
    .line 445
    .line 446
    iget-object v4, v0, Lq2/h0;->g:Lq2/h0;

    .line 447
    .line 448
    if-nez v4, :cond_1f

    .line 449
    .line 450
    const/16 v4, 0x200

    .line 451
    .line 452
    invoke-virtual {v1, v4}, Lq2/d1;->d(I)Z

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    if-eqz v1, :cond_1f

    .line 457
    .line 458
    invoke-virtual {v0, v0}, Lq2/h0;->b0(Lq2/h0;)V

    .line 459
    .line 460
    .line 461
    :cond_1f
    if-ne v8, v2, :cond_20

    .line 462
    .line 463
    if-eq v11, v3, :cond_22

    .line 464
    .line 465
    :cond_20
    invoke-static {v0}, Lq2/k0;->a(Lq2/h0;)Lq2/q1;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    check-cast v1, Lr2/u;

    .line 470
    .line 471
    invoke-virtual {v1}, Lr2/u;->getRectManager()Lz2/a;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Lq2/h0;->I()Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-eqz v4, :cond_22

    .line 483
    .line 484
    iget-object v1, v1, Lz2/a;->a:Le7/l;

    .line 485
    .line 486
    iget v4, v0, Lq2/h0;->b:I

    .line 487
    .line 488
    const v5, 0x3ffffff

    .line 489
    .line 490
    .line 491
    and-int/2addr v4, v5

    .line 492
    iget-object v6, v1, Le7/l;->c:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v6, [J

    .line 495
    .line 496
    iget v1, v1, Le7/l;->b:I

    .line 497
    .line 498
    const/4 v13, 0x0

    .line 499
    :goto_17
    array-length v7, v6

    .line 500
    add-int/lit8 v7, v7, -0x2

    .line 501
    .line 502
    if-ge v13, v7, :cond_22

    .line 503
    .line 504
    if-ge v13, v1, :cond_22

    .line 505
    .line 506
    add-int/lit8 v7, v13, 0x2

    .line 507
    .line 508
    aget-wide v8, v6, v7

    .line 509
    .line 510
    long-to-int v10, v8

    .line 511
    and-int/2addr v10, v5

    .line 512
    if-ne v10, v4, :cond_21

    .line 513
    .line 514
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    and-long/2addr v4, v8

    .line 520
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 521
    .line 522
    int-to-long v10, v3

    .line 523
    mul-long v10, v10, v8

    .line 524
    .line 525
    or-long/2addr v4, v10

    .line 526
    const-wide/high16 v8, -0x8000000000000000L

    .line 527
    .line 528
    int-to-long v1, v2

    .line 529
    mul-long v1, v1, v8

    .line 530
    .line 531
    or-long/2addr v1, v4

    .line 532
    aput-wide v1, v6, v7

    .line 533
    .line 534
    return-void

    .line 535
    :cond_21
    add-int/lit8 v13, v13, 0x3

    .line 536
    .line 537
    goto :goto_17

    .line 538
    :cond_22
    return-void
.end method

.method public final a0(I)V
    .locals 2

    .line 1
    iget v0, p0, Lq2/h0;->O:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, v0, Lq2/h0;->O:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lq2/h0;->a0(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lq2/h0;->O:I

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v1, v0, Lq2/h0;->O:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lq2/h0;->a0(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iput p1, p0, Lq2/h0;->O:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/h0;->n:Lq3/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lq3/i;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lq2/h0;->G:Lo2/i0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lo2/i0;->b()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 16
    .line 17
    iget-object v1, v0, Lq2/d1;->d:Lq2/h1;

    .line 18
    .line 19
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 20
    .line 21
    iget-object v0, v0, Lq2/h1;->p:Lq2/h1;

    .line 22
    .line 23
    :goto_0
    invoke-static {v1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v1, Lq2/h1;->r:Z

    .line 33
    .line 34
    iget-object v2, v1, Lq2/h1;->G:Lq2/e1;

    .line 35
    .line 36
    invoke-virtual {v2}, Lq2/e1;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lq2/h1;->X0()V

    .line 40
    .line 41
    .line 42
    iget-object v1, v1, Lq2/h1;->p:Lq2/h1;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public final b0(Lq2/h0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/h0;->g:Lq2/h0;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iput-object p1, p0, Lq2/h0;->g:Lq2/h0;

    .line 10
    .line 11
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, v0, Lq2/l0;->q:Lq2/u0;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lq2/u0;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lq2/u0;-><init>(Lq2/l0;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Lq2/l0;->q:Lq2/u0;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lq2/h0;->E:Lq2/d1;

    .line 27
    .line 28
    iget-object v0, p1, Lq2/d1;->d:Lq2/h1;

    .line 29
    .line 30
    iget-object p1, p1, Lq2/d1;->c:Lq2/t;

    .line 31
    .line 32
    iget-object p1, p1, Lq2/h1;->p:Lq2/h1;

    .line 33
    .line 34
    :goto_0
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lq2/h1;->B0()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lq2/h1;->p:Lq2/h1;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    iput-object p1, v0, Lq2/l0;->q:Lq2/u0;

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, v0, Lq2/l0;->f:Z

    .line 53
    .line 54
    iput-boolean p1, v0, Lq2/l0;->e:Z

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lq2/h0;->E()V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/h0;->n:Lq3/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lq3/i;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lq2/h0;->G:Lo2/i0;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lo2/i0;->f(Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iput-boolean v1, p0, Lq2/h0;->P:Z

    .line 17
    .line 18
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 19
    .line 20
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    :goto_0
    if-eqz v1, :cond_3

    .line 24
    .line 25
    iget-boolean v2, v1, Lr1/o;->n:Z

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lr1/o;->v0()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    move-object v1, v0

    .line 36
    :goto_1
    if-eqz v1, :cond_5

    .line 37
    .line 38
    iget-boolean v2, v1, Lr1/o;->n:Z

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {v1}, Lr1/o;->x0()V

    .line 43
    .line 44
    .line 45
    :cond_4
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    .line 49
    .line 50
    iget-boolean v1, v0, Lr1/o;->n:Z

    .line 51
    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Lr1/o;->p0()V

    .line 55
    .line 56
    .line 57
    :cond_6
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_7
    invoke-virtual {p0}, Lq2/h0;->I()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    if-eqz v0, :cond_8

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lq2/h0;->r:Ly2/j;

    .line 69
    .line 70
    iput-boolean v1, p0, Lq2/h0;->q:Z

    .line 71
    .line 72
    :cond_8
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

    .line 73
    .line 74
    if-eqz v0, :cond_9

    .line 75
    .line 76
    check-cast v0, Lr2/u;

    .line 77
    .line 78
    invoke-virtual {v0}, Lr2/u;->getRectManager()Lz2/a;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, p0}, Lz2/a;->i(Lq2/h0;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lr2/u;->l()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_9

    .line 90
    .line 91
    iget-object v0, v0, Lr2/u;->F:Ls1/c;

    .line 92
    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    iget-object v2, v0, Ls1/c;->h:Ls/x;

    .line 96
    .line 97
    iget v3, p0, Lq2/h0;->b:I

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ls/x;->e(I)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_9

    .line 104
    .line 105
    iget-object v2, v0, Ls1/c;->a:Lkb/a;

    .line 106
    .line 107
    iget-object v0, v0, Ls1/c;->c:Lr2/u;

    .line 108
    .line 109
    iget v3, p0, Lq2/h0;->b:I

    .line 110
    .line 111
    invoke-virtual {v2, v0, v3, v1}, Lkb/a;->U(Landroid/view/View;IZ)V

    .line 112
    .line 113
    .line 114
    :cond_9
    return-void
.end method

.method public final c0(Lo2/m0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->v:Lo2/m0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Lq2/h0;->v:Lo2/m0;

    .line 10
    .line 11
    iget-object v0, p0, Lq2/h0;->w:Lu0/j;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v0, Lu0/j;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lf1/k1;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lq2/h0;->E()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final d(Lq2/q1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Cannot attach "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " as it already is attached.  Tree: "

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lq2/h0;->g(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lq2/h0;->l:Lq2/h0;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, v0, Lq2/h0;->m:Lq2/q1;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Attaching to a different owner("

    .line 53
    .line 54
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ") than the parent\'s owner("

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget-object v3, v3, Lq2/h0;->m:Lq2/q1;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v3, v2

    .line 75
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, "). This tree: "

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lq2/h0;->g(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, " Parent tree: "

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lq2/h0;->l:Lq2/h0;

    .line 96
    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Lq2/h0;->g(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move-object v3, v2

    .line 105
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v3, p0, Lq2/h0;->F:Lq2/l0;

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget-object v5, v3, Lq2/l0;->p:Lq2/y0;

    .line 125
    .line 126
    iput-boolean v4, v5, Lq2/y0;->r:Z

    .line 127
    .line 128
    iget-object v5, v3, Lq2/l0;->q:Lq2/u0;

    .line 129
    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    sget-object v6, Lq2/r0;->a:Lq2/r0;

    .line 133
    .line 134
    iput-object v6, v5, Lq2/u0;->p:Lq2/r0;

    .line 135
    .line 136
    :cond_5
    iget-object v5, p0, Lq2/h0;->E:Lq2/d1;

    .line 137
    .line 138
    iget-object v6, v5, Lq2/d1;->d:Lq2/h1;

    .line 139
    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    iget-object v7, v0, Lq2/h0;->E:Lq2/d1;

    .line 143
    .line 144
    iget-object v7, v7, Lq2/d1;->c:Lq2/t;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    move-object v7, v2

    .line 148
    :goto_4
    iput-object v7, v6, Lq2/h1;->q:Lq2/h1;

    .line 149
    .line 150
    iput-object p1, p0, Lq2/h0;->m:Lq2/q1;

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    iget v6, v0, Lq2/h0;->o:I

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    const/4 v6, -0x1

    .line 158
    :goto_5
    add-int/2addr v6, v4

    .line 159
    iput v6, p0, Lq2/h0;->o:I

    .line 160
    .line 161
    iget-object v6, p0, Lq2/h0;->K:Lr1/p;

    .line 162
    .line 163
    if-eqz v6, :cond_8

    .line 164
    .line 165
    invoke-virtual {p0, v6}, Lq2/h0;->a(Lr1/p;)V

    .line 166
    .line 167
    .line 168
    :cond_8
    iput-object v2, p0, Lq2/h0;->K:Lr1/p;

    .line 169
    .line 170
    move-object v2, p1

    .line 171
    check-cast v2, Lr2/u;

    .line 172
    .line 173
    invoke-virtual {v2}, Lr2/u;->getLayoutNodes()Ls/w;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    iget v7, p0, Lq2/h0;->b:I

    .line 178
    .line 179
    invoke-virtual {v6, v7, p0}, Ls/w;->h(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object v6, p0, Lq2/h0;->l:Lq2/h0;

    .line 183
    .line 184
    if-eqz v6, :cond_9

    .line 185
    .line 186
    iget-object v6, v6, Lq2/h0;->g:Lq2/h0;

    .line 187
    .line 188
    if-nez v6, :cond_a

    .line 189
    .line 190
    :cond_9
    iget-object v6, p0, Lq2/h0;->g:Lq2/h0;

    .line 191
    .line 192
    :cond_a
    invoke-virtual {p0, v6}, Lq2/h0;->b0(Lq2/h0;)V

    .line 193
    .line 194
    .line 195
    iget-object v6, p0, Lq2/h0;->g:Lq2/h0;

    .line 196
    .line 197
    if-nez v6, :cond_b

    .line 198
    .line 199
    const/16 v6, 0x200

    .line 200
    .line 201
    invoke-virtual {v5, v6}, Lq2/d1;->d(I)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_b

    .line 206
    .line 207
    invoke-virtual {p0, p0}, Lq2/h0;->b0(Lq2/h0;)V

    .line 208
    .line 209
    .line 210
    :cond_b
    iget-boolean v6, p0, Lq2/h0;->P:Z

    .line 211
    .line 212
    if-nez v6, :cond_c

    .line 213
    .line 214
    iget-object v6, v5, Lq2/d1;->f:Lr1/o;

    .line 215
    .line 216
    :goto_6
    if-eqz v6, :cond_c

    .line 217
    .line 218
    invoke-virtual {v6}, Lr1/o;->o0()V

    .line 219
    .line 220
    .line 221
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_c
    iget-object v6, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 225
    .line 226
    iget-object v6, v6, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v6, Lh1/e;

    .line 229
    .line 230
    iget-object v7, v6, Lh1/e;->a:[Ljava/lang/Object;

    .line 231
    .line 232
    iget v6, v6, Lh1/e;->c:I

    .line 233
    .line 234
    :goto_7
    if-ge v1, v6, :cond_d

    .line 235
    .line 236
    aget-object v8, v7, v1

    .line 237
    .line 238
    check-cast v8, Lq2/h0;

    .line 239
    .line 240
    invoke-virtual {v8, p1}, Lq2/h0;->d(Lq2/q1;)V

    .line 241
    .line 242
    .line 243
    add-int/lit8 v1, v1, 0x1

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_d
    iget-boolean v1, p0, Lq2/h0;->P:Z

    .line 247
    .line 248
    if-nez v1, :cond_e

    .line 249
    .line 250
    invoke-virtual {v5}, Lq2/d1;->e()V

    .line 251
    .line 252
    .line 253
    :cond_e
    invoke-virtual {p0}, Lq2/h0;->E()V

    .line 254
    .line 255
    .line 256
    if-eqz v0, :cond_f

    .line 257
    .line 258
    invoke-virtual {v0}, Lq2/h0;->E()V

    .line 259
    .line 260
    .line 261
    :cond_f
    iget-object v0, p0, Lq2/h0;->L:Lq3/c;

    .line 262
    .line 263
    if-eqz v0, :cond_10

    .line 264
    .line 265
    invoke-virtual {v0, p1}, Lq3/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    :cond_10
    invoke-virtual {v3}, Lq2/l0;->j()V

    .line 269
    .line 270
    .line 271
    iget-boolean p1, p0, Lq2/h0;->P:Z

    .line 272
    .line 273
    if-nez p1, :cond_11

    .line 274
    .line 275
    const/16 p1, 0x8

    .line 276
    .line 277
    invoke-virtual {v5, p1}, Lq2/d1;->d(I)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_11

    .line 282
    .line 283
    invoke-virtual {p0}, Lq2/h0;->G()V

    .line 284
    .line 285
    .line 286
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-static {}, Lr2/u;->l()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_12

    .line 294
    .line 295
    iget-object p1, v2, Lr2/u;->F:Ls1/c;

    .line 296
    .line 297
    if-eqz p1, :cond_12

    .line 298
    .line 299
    invoke-virtual {p0}, Lq2/h0;->x()Ly2/j;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-eqz v0, :cond_12

    .line 304
    .line 305
    iget-object v0, v0, Ly2/j;->a:Ls/h0;

    .line 306
    .line 307
    sget-object v1, Ly2/r;->q:Ly2/u;

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ls/h0;->b(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-ne v0, v4, :cond_12

    .line 314
    .line 315
    iget-object v0, p1, Ls1/c;->h:Ls/x;

    .line 316
    .line 317
    iget v1, p0, Lq2/h0;->b:I

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ls/x;->a(I)Z

    .line 320
    .line 321
    .line 322
    iget-object v0, p1, Ls1/c;->a:Lkb/a;

    .line 323
    .line 324
    iget-object p1, p1, Ls1/c;->c:Lr2/u;

    .line 325
    .line 326
    iget v1, p0, Lq2/h0;->b:I

    .line 327
    .line 328
    invoke-virtual {v0, p1, v1, v4}, Lkb/a;->U(Landroid/view/View;IZ)V

    .line 329
    .line 330
    .line 331
    :cond_12
    return-void
.end method

.method public final d0(Lr1/p;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq2/h0;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lq2/h0;->J:Lr1/p;

    .line 6
    .line 7
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Modifiers are not supported on virtual LayoutNodes"

    .line 13
    .line 14
    invoke-static {v0}, Ln2/a;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lq2/h0;->P:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string v0, "modifier is updated when deactivated"

    .line 22
    .line 23
    invoke-static {v0}, Ln2/a;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p0}, Lq2/h0;->I()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lq2/h0;->a(Lr1/p;)V

    .line 33
    .line 34
    .line 35
    iget-boolean p1, p0, Lq2/h0;->q:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lq2/h0;->G()V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void

    .line 43
    :cond_4
    iput-object p1, p0, Lq2/h0;->K:Lr1/p;

    .line 44
    .line 45
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq2/h0;->B:Lq2/f0;

    .line 2
    .line 3
    iput-object v0, p0, Lq2/h0;->C:Lq2/f0;

    .line 4
    .line 5
    sget-object v0, Lq2/f0;->c:Lq2/f0;

    .line 6
    .line 7
    iput-object v0, p0, Lq2/h0;->B:Lq2/f0;

    .line 8
    .line 9
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    iget v0, v0, Lh1/e;->c:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_1

    .line 19
    .line 20
    aget-object v3, v1, v2

    .line 21
    .line 22
    check-cast v3, Lq2/h0;

    .line 23
    .line 24
    iget-object v4, v3, Lq2/h0;->B:Lq2/f0;

    .line 25
    .line 26
    sget-object v5, Lq2/f0;->c:Lq2/f0;

    .line 27
    .line 28
    if-eq v4, v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Lq2/h0;->e()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final e0(Lr2/q2;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lq2/h0;->z:Lr2/q2;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iput-object p1, p0, Lq2/h0;->z:Lr2/q2;

    .line 10
    .line 11
    iget-object p1, p0, Lq2/h0;->E:Lq2/d1;

    .line 12
    .line 13
    iget-object p1, p1, Lq2/d1;->f:Lr1/o;

    .line 14
    .line 15
    iget v0, p1, Lr1/o;->d:I

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    if-eqz v0, :cond_8

    .line 21
    .line 22
    :goto_0
    if-eqz p1, :cond_8

    .line 23
    .line 24
    iget v0, p1, Lr1/o;->c:I

    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    move-object v2, p1

    .line 31
    move-object v3, v0

    .line 32
    :goto_1
    if-eqz v2, :cond_7

    .line 33
    .line 34
    instance-of v4, v2, Lq2/v1;

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    check-cast v2, Lq2/v1;

    .line 39
    .line 40
    invoke-interface {v2}, Lq2/v1;->g0()V

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_0
    iget v4, v2, Lr1/o;->c:I

    .line 45
    .line 46
    and-int/2addr v4, v1

    .line 47
    if-eqz v4, :cond_6

    .line 48
    .line 49
    instance-of v4, v2, Lq2/m;

    .line 50
    .line 51
    if-eqz v4, :cond_6

    .line 52
    .line 53
    move-object v4, v2

    .line 54
    check-cast v4, Lq2/m;

    .line 55
    .line 56
    iget-object v4, v4, Lq2/m;->p:Lr1/o;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    :goto_2
    const/4 v6, 0x1

    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    iget v7, v4, Lr1/o;->c:I

    .line 63
    .line 64
    and-int/2addr v7, v1

    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    if-ne v5, v6, :cond_1

    .line 70
    .line 71
    move-object v2, v4

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    if-nez v3, :cond_2

    .line 74
    .line 75
    new-instance v3, Lh1/e;

    .line 76
    .line 77
    new-array v6, v1, [Lr1/o;

    .line 78
    .line 79
    invoke-direct {v3, v6}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v2, v0

    .line 88
    :cond_3
    invoke-virtual {v3, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_3
    iget-object v4, v4, Lr1/o;->f:Lr1/o;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    if-ne v5, v6, :cond_6

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    :goto_4
    invoke-static {v3}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    goto :goto_1

    .line 102
    :cond_7
    iget v0, p1, Lr1/o;->d:I

    .line 103
    .line 104
    and-int/2addr v0, v1

    .line 105
    if-eqz v0, :cond_8

    .line 106
    .line 107
    iget-object p1, p1, Lr1/o;->f:Lr1/o;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_8
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq2/h0;->B:Lq2/f0;

    .line 2
    .line 3
    iput-object v0, p0, Lq2/h0;->C:Lq2/f0;

    .line 4
    .line 5
    sget-object v0, Lq2/f0;->c:Lq2/f0;

    .line 6
    .line 7
    iput-object v0, p0, Lq2/h0;->B:Lq2/f0;

    .line 8
    .line 9
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 14
    .line 15
    iget v0, v0, Lh1/e;->c:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_1

    .line 19
    .line 20
    aget-object v3, v1, v2

    .line 21
    .line 22
    check-cast v3, Lq2/h0;

    .line 23
    .line 24
    iget-object v4, v3, Lq2/h0;->B:Lq2/f0;

    .line 25
    .line 26
    sget-object v5, Lq2/f0;->b:Lq2/f0;

    .line 27
    .line 28
    if-ne v4, v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Lq2/h0;->f()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final f0()V
    .locals 6

    .line 1
    iget v0, p0, Lq2/h0;->h:I

    .line 2
    .line 3
    if-lez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lq2/h0;->k:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lq2/h0;->k:Z

    .line 11
    .line 12
    iget-object v1, p0, Lq2/h0;->j:Lh1/e;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lh1/e;

    .line 17
    .line 18
    const/16 v2, 0x10

    .line 19
    .line 20
    new-array v2, v2, [Lq2/h0;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lq2/h0;->j:Lh1/e;

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1}, Lh1/e;->h()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 31
    .line 32
    iget-object v2, v2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lh1/e;

    .line 35
    .line 36
    iget-object v3, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 37
    .line 38
    iget v2, v2, Lh1/e;->c:I

    .line 39
    .line 40
    :goto_0
    if-ge v0, v2, :cond_2

    .line 41
    .line 42
    aget-object v4, v3, v0

    .line 43
    .line 44
    check-cast v4, Lq2/h0;

    .line 45
    .line 46
    iget-boolean v5, v4, Lq2/h0;->a:Z

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Lq2/h0;->z()Lh1/e;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget v5, v1, Lh1/e;->c:I

    .line 55
    .line 56
    invoke-virtual {v1, v5, v4}, Lh1/e;->c(ILh1/e;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v1, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 67
    .line 68
    iget-object v1, v0, Lq2/l0;->p:Lq2/y0;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    iput-boolean v2, v1, Lq2/y0;->y:Z

    .line 72
    .line 73
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iput-boolean v2, v0, Lq2/u0;->s:Z

    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final g(I)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p1, :cond_0

    .line 9
    .line 10
    const-string v3, "  "

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "|-"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lq2/h0;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, v2, Lh1/e;->a:[Ljava/lang/Object;

    .line 40
    .line 41
    iget v2, v2, Lh1/e;->c:I

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_1
    if-ge v4, v2, :cond_1

    .line 45
    .line 46
    aget-object v5, v3, v4

    .line 47
    .line 48
    check-cast v5, Lq2/h0;

    .line 49
    .line 50
    add-int/lit8 v6, p1, 0x1

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Lq2/h0;->g(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    add-int/lit8 p1, p1, -0x1

    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v0, "substring(...)"

    .line 79
    .line 80
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_2
    return-object v0
.end method

.method public final h()V
    .locals 11

    .line 1
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Cannot detach node that is already detached!  Tree: "

    .line 10
    .line 11
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Lq2/h0;->g(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ln2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lac/p;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lq2/h0;->v()Lq2/h0;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Lq2/h0;->F:Lq2/l0;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Lq2/h0;->C()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lq2/h0;->E()V

    .line 52
    .line 53
    .line 54
    iget-object v3, v4, Lq2/l0;->p:Lq2/y0;

    .line 55
    .line 56
    sget-object v5, Lq2/f0;->c:Lq2/f0;

    .line 57
    .line 58
    iput-object v5, v3, Lq2/y0;->l:Lq2/f0;

    .line 59
    .line 60
    iget-object v3, v4, Lq2/l0;->q:Lq2/u0;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    iput-object v5, v3, Lq2/u0;->j:Lq2/f0;

    .line 65
    .line 66
    :cond_2
    iget-object v3, v4, Lq2/l0;->p:Lq2/y0;

    .line 67
    .line 68
    iget-object v3, v3, Lq2/y0;->w:Lq2/i0;

    .line 69
    .line 70
    const/4 v5, 0x1

    .line 71
    iput-boolean v5, v3, Lq2/i0;->b:Z

    .line 72
    .line 73
    iput-boolean v2, v3, Lq2/i0;->c:Z

    .line 74
    .line 75
    iput-boolean v2, v3, Lq2/i0;->d:Z

    .line 76
    .line 77
    iput-boolean v2, v3, Lq2/i0;->e:Z

    .line 78
    .line 79
    iput-object v1, v3, Lq2/i0;->f:Lq2/a;

    .line 80
    .line 81
    iget-object v3, v4, Lq2/l0;->q:Lq2/u0;

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    iget-object v3, v3, Lq2/u0;->q:Lq2/i0;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    iput-boolean v5, v3, Lq2/i0;->b:Z

    .line 90
    .line 91
    iput-boolean v2, v3, Lq2/i0;->c:Z

    .line 92
    .line 93
    iput-boolean v2, v3, Lq2/i0;->d:Z

    .line 94
    .line 95
    iput-boolean v2, v3, Lq2/i0;->e:Z

    .line 96
    .line 97
    iput-object v1, v3, Lq2/i0;->f:Lq2/a;

    .line 98
    .line 99
    :cond_3
    iget-object v3, p0, Lq2/h0;->E:Lq2/d1;

    .line 100
    .line 101
    iget-object v6, v3, Lq2/d1;->d:Lq2/h1;

    .line 102
    .line 103
    iget-object v7, v3, Lq2/d1;->e:Lq2/a2;

    .line 104
    .line 105
    iget-object v8, v3, Lq2/d1;->c:Lq2/t;

    .line 106
    .line 107
    iget-object v8, v8, Lq2/h1;->p:Lq2/h1;

    .line 108
    .line 109
    :goto_0
    invoke-static {v6, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-nez v9, :cond_4

    .line 114
    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    invoke-virtual {v6}, Lq2/h1;->X0()V

    .line 118
    .line 119
    .line 120
    iget-object v6, v6, Lq2/h1;->p:Lq2/h1;

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object v6, p0, Lq2/h0;->M:Lk2/e0;

    .line 124
    .line 125
    if-eqz v6, :cond_5

    .line 126
    .line 127
    invoke-virtual {v6, v0}, Lk2/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_5
    move-object v6, v7

    .line 131
    :goto_1
    if-eqz v6, :cond_7

    .line 132
    .line 133
    iget-boolean v8, v6, Lr1/o;->n:Z

    .line 134
    .line 135
    if-eqz v8, :cond_6

    .line 136
    .line 137
    invoke-virtual {v6}, Lr1/o;->x0()V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object v6, v6, Lr1/o;->e:Lr1/o;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    iput-boolean v5, p0, Lq2/h0;->p:Z

    .line 144
    .line 145
    iget-object v6, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 146
    .line 147
    iget-object v6, v6, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v6, Lh1/e;

    .line 150
    .line 151
    iget-object v8, v6, Lh1/e;->a:[Ljava/lang/Object;

    .line 152
    .line 153
    iget v6, v6, Lh1/e;->c:I

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    :goto_2
    if-ge v9, v6, :cond_8

    .line 157
    .line 158
    aget-object v10, v8, v9

    .line 159
    .line 160
    check-cast v10, Lq2/h0;

    .line 161
    .line 162
    invoke-virtual {v10}, Lq2/h0;->h()V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v9, v9, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    iput-boolean v2, p0, Lq2/h0;->p:Z

    .line 169
    .line 170
    :goto_3
    if-eqz v7, :cond_a

    .line 171
    .line 172
    iget-boolean v6, v7, Lr1/o;->n:Z

    .line 173
    .line 174
    if-eqz v6, :cond_9

    .line 175
    .line 176
    invoke-virtual {v7}, Lr1/o;->p0()V

    .line 177
    .line 178
    .line 179
    :cond_9
    iget-object v7, v7, Lr1/o;->e:Lr1/o;

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_a
    check-cast v0, Lr2/u;

    .line 183
    .line 184
    invoke-virtual {v0}, Lr2/u;->getLayoutNodes()Ls/w;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    iget v7, p0, Lq2/h0;->b:I

    .line 189
    .line 190
    invoke-virtual {v6, v7}, Ls/w;->g(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    iget-object v6, v0, Lr2/u;->P:Lq2/w0;

    .line 194
    .line 195
    iget-object v7, v6, Lq2/w0;->b:La2/b;

    .line 196
    .line 197
    iget-object v8, v7, La2/b;->b:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v8, Lkb/a;

    .line 200
    .line 201
    invoke-virtual {v8, p0}, Lkb/a;->V(Lq2/h0;)Z

    .line 202
    .line 203
    .line 204
    iget-object v8, v7, La2/b;->c:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v8, Lkb/a;

    .line 207
    .line 208
    invoke-virtual {v8, p0}, Lkb/a;->V(Lq2/h0;)Z

    .line 209
    .line 210
    .line 211
    iget-object v7, v7, La2/b;->d:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v7, Lkb/a;

    .line 214
    .line 215
    invoke-virtual {v7, p0}, Lkb/a;->V(Lq2/h0;)Z

    .line 216
    .line 217
    .line 218
    iget-object v6, v6, Lq2/w0;->e:Lu0/j;

    .line 219
    .line 220
    iget-object v6, v6, Lu0/j;->b:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v6, Lh1/e;

    .line 223
    .line 224
    invoke-virtual {v6, p0}, Lh1/e;->k(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    iput-boolean v5, v0, Lr2/u;->G:Z

    .line 228
    .line 229
    invoke-virtual {v0}, Lr2/u;->getRectManager()Lz2/a;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v5, p0}, Lz2/a;->i(Lq2/h0;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lr2/u;->l()Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_b

    .line 241
    .line 242
    iget-object v5, v0, Lr2/u;->F:Ls1/c;

    .line 243
    .line 244
    if-eqz v5, :cond_b

    .line 245
    .line 246
    iget-object v6, v5, Ls1/c;->h:Ls/x;

    .line 247
    .line 248
    iget v7, p0, Lq2/h0;->b:I

    .line 249
    .line 250
    invoke-virtual {v6, v7}, Ls/x;->e(I)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_b

    .line 255
    .line 256
    iget-object v6, v5, Ls1/c;->a:Lkb/a;

    .line 257
    .line 258
    iget-object v5, v5, Ls1/c;->c:Lr2/u;

    .line 259
    .line 260
    iget v7, p0, Lq2/h0;->b:I

    .line 261
    .line 262
    invoke-virtual {v6, v5, v7, v2}, Lkb/a;->U(Landroid/view/View;IZ)V

    .line 263
    .line 264
    .line 265
    :cond_b
    iput-object v1, p0, Lq2/h0;->m:Lq2/q1;

    .line 266
    .line 267
    const-wide v5, 0x7fffffff7fffffffL

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    iput-wide v5, p0, Lq2/h0;->c:J

    .line 273
    .line 274
    invoke-virtual {p0, v1}, Lq2/h0;->b0(Lq2/h0;)V

    .line 275
    .line 276
    .line 277
    iput v2, p0, Lq2/h0;->o:I

    .line 278
    .line 279
    iget-object v5, v4, Lq2/l0;->p:Lq2/y0;

    .line 280
    .line 281
    const v6, 0x7fffffff

    .line 282
    .line 283
    .line 284
    iput v6, v5, Lq2/y0;->i:I

    .line 285
    .line 286
    iput v6, v5, Lq2/y0;->h:I

    .line 287
    .line 288
    iput-boolean v2, v5, Lq2/y0;->r:Z

    .line 289
    .line 290
    iget-object v4, v4, Lq2/l0;->q:Lq2/u0;

    .line 291
    .line 292
    if-eqz v4, :cond_c

    .line 293
    .line 294
    iput v6, v4, Lq2/u0;->i:I

    .line 295
    .line 296
    iput v6, v4, Lq2/u0;->h:I

    .line 297
    .line 298
    sget-object v5, Lq2/r0;->c:Lq2/r0;

    .line 299
    .line 300
    iput-object v5, v4, Lq2/u0;->p:Lq2/r0;

    .line 301
    .line 302
    :cond_c
    const/16 v4, 0x8

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Lq2/d1;->d(I)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eqz v3, :cond_d

    .line 309
    .line 310
    iget-object v3, p0, Lq2/h0;->r:Ly2/j;

    .line 311
    .line 312
    iput-object v1, p0, Lq2/h0;->r:Ly2/j;

    .line 313
    .line 314
    iput-boolean v2, p0, Lq2/h0;->q:Z

    .line 315
    .line 316
    invoke-virtual {v0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v1, p0, v3}, Ly2/o;->b(Lq2/h0;Ly2/j;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Lr2/u;->F()V

    .line 324
    .line 325
    .line 326
    :cond_d
    return-void
.end method

.method public final i(Ly1/o;Lb2/c;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/d1;->d:Lq2/h1;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lq2/h1;->z0(Ly1/o;Lb2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p0, p1}, Lq2/h0;->Y(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/h0;->g:Lq2/h0;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, v2, v1}, Lq2/h0;->T(Lq2/h0;ZI)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, v2, v1}, Lq2/h0;->V(Lq2/h0;ZI)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 15
    .line 16
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 17
    .line 18
    iget-boolean v1, v0, Lq2/y0;->j:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-wide v0, v0, Lo2/v0;->d:J

    .line 23
    .line 24
    new-instance v2, Ln3/a;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Ln3/a;-><init>(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_1
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-wide v1, v2, Ln3/a;->a:J

    .line 38
    .line 39
    check-cast v0, Lr2/u;

    .line 40
    .line 41
    invoke-virtual {v0, p0, v1, v2}, Lr2/u;->z(Lq2/h0;J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lq2/h0;->m:Lq2/q1;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    check-cast v0, Lr2/u;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lr2/u;->y(Z)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 4
    .line 5
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lq2/u0;->r:Lh1/e;

    .line 9
    .line 10
    iget-object v2, v0, Lq2/u0;->f:Lq2/l0;

    .line 11
    .line 12
    iget-object v3, v2, Lq2/l0;->a:Lq2/h0;

    .line 13
    .line 14
    invoke-virtual {v3}, Lq2/h0;->o()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    iget-boolean v3, v0, Lq2/u0;->s:Z

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lh1/e;->g()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v2, v2, Lq2/l0;->a:Lq2/h0;

    .line 27
    .line 28
    invoke-virtual {v2}, Lq2/h0;->z()Lh1/e;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, v3, Lh1/e;->a:[Ljava/lang/Object;

    .line 33
    .line 34
    iget v3, v3, Lh1/e;->c:I

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_0
    if-ge v6, v3, :cond_2

    .line 39
    .line 40
    aget-object v7, v4, v6

    .line 41
    .line 42
    check-cast v7, Lq2/h0;

    .line 43
    .line 44
    iget v8, v1, Lh1/e;->c:I

    .line 45
    .line 46
    if-gt v8, v6, :cond_1

    .line 47
    .line 48
    iget-object v7, v7, Lq2/h0;->F:Lq2/l0;

    .line 49
    .line 50
    iget-object v7, v7, Lq2/l0;->q:Lq2/u0;

    .line 51
    .line 52
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v7}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v7, v7, Lq2/h0;->F:Lq2/l0;

    .line 60
    .line 61
    iget-object v7, v7, Lq2/l0;->q:Lq2/u0;

    .line 62
    .line 63
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v8, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v9, v8, v6

    .line 69
    .line 70
    aput-object v7, v8, v6

    .line 71
    .line 72
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v2}, Lq2/h0;->o()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lh1/b;

    .line 80
    .line 81
    iget-object v2, v2, Lh1/b;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lh1/e;

    .line 84
    .line 85
    iget v2, v2, Lh1/e;->c:I

    .line 86
    .line 87
    iget v3, v1, Lh1/e;->c:I

    .line 88
    .line 89
    invoke-virtual {v1, v2, v3}, Lh1/e;->m(II)V

    .line 90
    .line 91
    .line 92
    iput-boolean v5, v0, Lq2/u0;->s:Z

    .line 93
    .line 94
    invoke-virtual {v1}, Lh1/e;->g()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/y0;->Z()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/h0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final o()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh1/e;->g()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lh1/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lh1/e;->g()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 4
    .line 5
    iget-boolean v0, v0, Lq2/y0;->u:Z

    .line 6
    .line 7
    return v0
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 4
    .line 5
    iget-boolean v0, v0, Lq2/y0;->t:Z

    .line 6
    .line 7
    return v0
.end method

.method public final s()Lq2/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 4
    .line 5
    iget-object v0, v0, Lq2/y0;->l:Lq2/f0;

    .line 6
    .line 7
    return-object v0
.end method

.method public final t()Lq2/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->q:Lq2/u0;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lq2/u0;->j:Lq2/f0;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object v0

    .line 13
    :cond_1
    :goto_0
    sget-object v0, Lq2/f0;->c:Lq2/f0;

    .line 14
    .line 15
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lr2/j0;->v(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " children: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lq2/h0;->o()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lh1/b;

    .line 23
    .line 24
    iget-object v1, v1, Lh1/b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lh1/e;

    .line 27
    .line 28
    iget v1, v1, Lh1/e;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " measurePolicy: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lq2/h0;->v:Lo2/m0;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " deactivated: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lq2/h0;->P:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final u()Lu0/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/h0;->w:Lu0/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu0/j;

    .line 6
    .line 7
    iget-object v1, p0, Lq2/h0;->v:Lo2/m0;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lu0/j;-><init>(Lq2/h0;Lo2/m0;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lq2/h0;->w:Lu0/j;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final v()Lq2/h0;
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/h0;->l:Lq2/h0;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lq2/h0;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lq2/h0;->l:Lq2/h0;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object v0
.end method

.method public final w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 4
    .line 5
    iget v0, v0, Lq2/y0;->i:I

    .line 6
    .line 7
    return v0
.end method

.method public final x()Ly2/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq2/h0;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lq2/h0;->P:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lq2/h0;->E:Lq2/d1;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lq2/d1;->d(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lq2/h0;->r:Ly2/j;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public final y()Lh1/e;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lq2/h0;->u:Z

    .line 2
    .line 3
    iget-object v1, p0, Lq2/h0;->t:Lh1/e;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lh1/e;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, v1, Lh1/e;->c:I

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Lh1/e;->c(ILh1/e;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lh1/e;->a:[Ljava/lang/Object;

    .line 20
    .line 21
    iget v2, v1, Lh1/e;->c:I

    .line 22
    .line 23
    sget-object v3, Lq2/h0;->S:Lb4/c;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v3, v4, v2}, Ls8/l;->h0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 27
    .line 28
    .line 29
    iput-boolean v4, p0, Lq2/h0;->u:Z

    .line 30
    .line 31
    :cond_0
    return-object v1
.end method

.method public final z()Lh1/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/h0;->f0()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lq2/h0;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lq2/h0;->i:Landroid/support/v4/media/session/t;

    .line 9
    .line 10
    iget-object v0, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lh1/e;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lq2/h0;->j:Lh1/e;

    .line 16
    .line 17
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
