.class public abstract Lr2/d2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/w2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lr2/k0;->E:Lr2/k0;

    .line 2
    .line 3
    new-instance v1, Lf1/w2;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lr2/d2;->a:Lf1/w2;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lu0/k;Ldc/i;Ly8/c;)V
    .locals 4

    .line 1
    instance-of v0, p2, Lr2/b2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lr2/b2;

    .line 7
    .line 8
    iget v1, v0, Lr2/b2;->e:I

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
    iput v1, v0, Lr2/b2;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lr2/b2;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lr2/b2;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lr2/b2;->e:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_1
    invoke-static {p2}, Lp9/v;->l(Ljava/lang/Object;)Lac/p;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    throw p0

    .line 47
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object p2, p0

    .line 51
    check-cast p2, Lr1/o;

    .line 52
    .line 53
    iget-object p2, p2, Lr1/o;->a:Lr1/o;

    .line 54
    .line 55
    iget-boolean p2, p2, Lr1/o;->n:Z

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-object p0, p0, Lq2/h0;->A:Lf1/a0;

    .line 68
    .line 69
    check-cast p0, Ln1/g;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v1, Lr2/d2;->a:Lf1/w2;

    .line 75
    .line 76
    invoke-static {p0, v1}, Lf1/b;->t(Lf1/q1;Lf1/t1;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-nez p0, :cond_3

    .line 81
    .line 82
    iput v2, v0, Lr2/b2;->e:I

    .line 83
    .line 84
    invoke-static {p2, p1, v0}, Lr2/d2;->b(Lq2/q1;Lf9/n;Ly8/c;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    .line 89
    .line 90
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string p1, "establishTextInputSession called from an unattached node"

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public static final b(Lq2/q1;Lf9/n;Ly8/c;)V
    .locals 4

    .line 1
    instance-of v0, p2, Lr2/c2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lr2/c2;

    .line 7
    .line 8
    iget v1, v0, Lr2/c2;->e:I

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
    iput v1, v0, Lr2/c2;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lr2/c2;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lr2/c2;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lr2/c2;->e:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    if-eq v1, v2, :cond_2

    .line 33
    .line 34
    const/4 p0, 0x2

    .line 35
    if-eq v1, p0, :cond_1

    .line 36
    .line 37
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    invoke-static {p2}, Lp9/v;->l(Ljava/lang/Object;)Lac/p;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    throw p0

    .line 50
    :cond_2
    invoke-static {p2}, Lp9/v;->l(Ljava/lang/Object;)Lac/p;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0

    .line 55
    :cond_3
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput v2, v0, Lr2/c2;->e:I

    .line 59
    .line 60
    check-cast p0, Lr2/u;

    .line 61
    .line 62
    invoke-virtual {p0, p1, v0}, Lr2/u;->O(Lf9/n;Ly8/c;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
