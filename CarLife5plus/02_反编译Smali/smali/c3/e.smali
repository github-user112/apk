.class public final Lc3/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:I

.field public b:F

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILc1/v2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lc3/e;->a:I

    .line 3
    iput-object p2, p0, Lc3/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc3/n;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/e;->c:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lc3/e;->a:I

    return-void
.end method


# virtual methods
.method public a(IZZZ)F
    .locals 5

    .line 1
    iget-object v0, p0, Lc3/e;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc3/n;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v3, v0, Lc3/n;->f:Landroid/text/Layout;

    .line 10
    .line 11
    invoke-static {v3, p1, p2}, La/a;->u(Landroid/text/Layout;IZ)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, v0, Lc3/n;->f:Landroid/text/Layout;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v0, v3}, Lc3/n;->f(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eq p1, v4, :cond_1

    .line 26
    .line 27
    if-ne p1, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 33
    :goto_1
    mul-int/lit8 v4, p1, 0x4

    .line 34
    .line 35
    if-eqz p4, :cond_2

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    if-eqz v3, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/4 v1, 0x3

    .line 46
    :cond_4
    :goto_2
    add-int/2addr v4, v1

    .line 47
    iget v1, p0, Lc3/e;->a:I

    .line 48
    .line 49
    if-ne v1, v4, :cond_5

    .line 50
    .line 51
    iget p1, p0, Lc3/e;->b:F

    .line 52
    .line 53
    return p1

    .line 54
    :cond_5
    if-eqz p4, :cond_6

    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Lc3/n;->h(IZ)F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    goto :goto_3

    .line 61
    :cond_6
    invoke-virtual {v0, p1, p2}, Lc3/n;->i(IZ)F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    :goto_3
    if-eqz p3, :cond_7

    .line 66
    .line 67
    iput v4, p0, Lc3/e;->a:I

    .line 68
    .line 69
    iput p1, p0, Lc3/e;->b:F

    .line 70
    .line 71
    :cond_7
    return p1
.end method

.method public b(FLy8/c;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lx2/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lx2/e;

    .line 7
    .line 8
    iget v1, v0, Lx2/e;->f:I

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
    iput v1, v0, Lx2/e;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lx2/e;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lx2/e;-><init>(Lc3/e;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lx2/e;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lx2/e;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lc3/e;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Lc1/v2;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/Float;

    .line 54
    .line 55
    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    .line 56
    .line 57
    .line 58
    iput v2, v0, Lx2/e;->f:I

    .line 59
    .line 60
    invoke-virtual {p2, v1, v0}, Lc1/v2;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 65
    .line 66
    if-ne p2, p1, :cond_3

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget p2, p0, Lc3/e;->b:F

    .line 76
    .line 77
    add-float/2addr p2, p1

    .line 78
    iput p2, p0, Lc3/e;->b:F

    .line 79
    .line 80
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 81
    .line 82
    return-object p1
.end method
