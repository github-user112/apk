.class public final La2/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements La2/g;


# instance fields
.field public final a:La2/a;

.field public final b:La2/b;

.field public c:Ld7/q;

.field public d:Ld7/q;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La2/a;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, La2/e;->a:Ln3/d;

    .line 10
    .line 11
    iput-object v1, v0, La2/a;->a:Ln3/c;

    .line 12
    .line 13
    sget-object v1, Ln3/m;->a:Ln3/m;

    .line 14
    .line 15
    iput-object v1, v0, La2/a;->b:Ln3/m;

    .line 16
    .line 17
    sget-object v1, La2/i;->a:La2/i;

    .line 18
    .line 19
    iput-object v1, v0, La2/a;->c:Ly1/o;

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, v0, La2/a;->d:J

    .line 24
    .line 25
    iput-object v0, p0, La2/c;->a:La2/a;

    .line 26
    .line 27
    new-instance v0, La2/b;

    .line 28
    .line 29
    invoke-direct {v0, p0}, La2/b;-><init>(La2/c;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, La2/c;->b:La2/b;

    .line 33
    .line 34
    return-void
.end method

.method public static b(La2/c;JLa2/h;I)Ld7/q;
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, La2/c;->e(La2/h;)Ld7/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p3, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p3, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ly1/h0;->c(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1, p1, p2}, Ly1/q;->c(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Ld7/q;->k(J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/graphics/Shader;

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ld7/q;->n(Landroid/graphics/Shader;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Ly1/k;

    .line 39
    .line 40
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Ld7/q;->l(Ly1/k;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget p1, p0, Ld7/q;->b:I

    .line 50
    .line 51
    if-ne p1, p4, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0, p4}, Ld7/q;->j(I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/4 p2, 0x1

    .line 62
    if-ne p1, p2, :cond_4

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_4
    invoke-virtual {p0, p2}, Ld7/q;->m(I)V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method


# virtual methods
.method public final D(F)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, La2/c;->J(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1, p0}, La2/f;->p(FLn3/c;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final H(I)F
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, La2/c;->a()F

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    div-float/2addr p1, v0

    .line 7
    return p1
.end method

.method public final J(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/c;->a()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-float/2addr p1, v0

    .line 6
    return p1
.end method

.method public final M()F
    .locals 1

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->a:Ln3/c;

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

.method public final P(FJJ)V
    .locals 3

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    sget-object v1, La2/j;->a:La2/j;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-static {p0, p2, p3, v1, v2}, La2/c;->b(La2/c;JLa2/h;I)Ld7/q;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {v0, p1, p4, p5, p2}, Ly1/o;->e(FJLd7/q;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final S(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/c;->a()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-float v0, v0, p1

    .line 6
    .line 7
    return v0
.end method

.method public final T(Ly1/e0;Ly1/m;FLa2/h;I)V
    .locals 8

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p2

    .line 9
    move v4, p3

    .line 10
    move-object v3, p4

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v1 .. v7}, La2/c;->c(Ly1/m;La2/h;FLy1/k;II)Ld7/q;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {v0, p1, p2}, Ly1/o;->q(Ly1/e0;Ld7/q;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final W(Ly1/e0;JLa2/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {p0, p2, p3, p4, v1}, La2/c;->b(La2/c;JLa2/h;I)Ld7/q;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {v0, p1, p2}, Ly1/o;->q(Ly1/e0;Ld7/q;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final X()La2/b;
    .locals 1

    .line 1
    iget-object v0, p0, La2/c;->b:La2/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a()F
    .locals 1

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->a:Ln3/c;

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

.method public final a0(JJJI)V
    .locals 8

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p3, v1

    .line 8
    .line 9
    long-to-int v3, v2

    .line 10
    move-wide v4, p1

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const-wide v6, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr p3, v6

    .line 21
    long-to-int p1, p3

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    shr-long v1, p5, v1

    .line 31
    .line 32
    long-to-int v2, v1

    .line 33
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-float/2addr p4, v1

    .line 38
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    and-long/2addr p5, v6

    .line 43
    long-to-int p6, p5

    .line 44
    invoke-static {p6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result p5

    .line 48
    add-float/2addr p5, p1

    .line 49
    sget-object p1, La2/j;->a:La2/j;

    .line 50
    .line 51
    invoke-static {p0, v4, v5, p1, p7}, La2/c;->b(La2/c;JLa2/h;I)Ld7/q;

    .line 52
    .line 53
    .line 54
    move-result-object p6

    .line 55
    move-object p1, v0

    .line 56
    invoke-interface/range {p1 .. p6}, Ly1/o;->a(FFFFLd7/q;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final synthetic b0(F)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, La2/f;->k(FLn3/c;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final c(Ly1/m;La2/h;FLy1/k;II)Ld7/q;
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, La2/c;->e(La2/h;)Ld7/q;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, La2/c;->b:La2/b;

    .line 8
    .line 9
    invoke-virtual {v0}, La2/b;->J()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p1, p3, v0, v1, p2}, Ly1/m;->a(FJLd7/q;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p2, Ld7/q;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    iget-object v0, p2, Ld7/q;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/graphics/Shader;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, v0}, Ld7/q;->n(Landroid/graphics/Shader;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ly1/h0;->c(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    sget-wide v2, Ly1/q;->b:J

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3}, Ly1/q;->c(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2, v2, v3}, Ld7/q;->k(J)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    int-to-float p1, p1

    .line 55
    const/high16 v0, 0x437f0000    # 255.0f

    .line 56
    .line 57
    div-float/2addr p1, v0

    .line 58
    cmpg-float p1, p1, p3

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p2, p3}, Ld7/q;->i(F)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p2, Ld7/q;->e:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Ly1/k;

    .line 69
    .line 70
    invoke-static {p1, p4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p2, p4}, Ld7/q;->l(Ly1/k;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget p1, p2, Ld7/q;->b:I

    .line 80
    .line 81
    if-ne p1, p5, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {p2, p5}, Ld7/q;->j(I)V

    .line 85
    .line 86
    .line 87
    :goto_1
    iget-object p1, p2, Ld7/q;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, p6, :cond_6

    .line 96
    .line 97
    return-object p2

    .line 98
    :cond_6
    invoke-virtual {p2, p6}, Ld7/q;->m(I)V

    .line 99
    .line 100
    .line 101
    return-object p2
.end method

.method public final c0()J
    .locals 2

    .line 1
    iget-object v0, p0, La2/c;->b:La2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/b;->J()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Lp4/e;->p(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final d(Ly1/f;Ly1/k;)V
    .locals 8

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v7, 0x1

    .line 7
    sget-object v3, La2/j;->a:La2/j;

    .line 8
    .line 9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v6, 0x3

    .line 12
    move-object v1, p0

    .line 13
    move-object v5, p2

    .line 14
    invoke-virtual/range {v1 .. v7}, La2/c;->c(Ly1/m;La2/h;FLy1/k;II)Ld7/q;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    invoke-interface {v0, p1, v1, v2, p2}, Ly1/o;->s(Ly1/f;JLd7/q;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final e(La2/h;)Ld7/q;
    .locals 4

    .line 1
    sget-object v0, La2/j;->a:La2/j;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, La2/c;->c:Ld7/q;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ld7/q;->r(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, La2/c;->c:Ld7/q;

    .line 22
    .line 23
    :cond_0
    return-object p1

    .line 24
    :cond_1
    instance-of v0, p1, La2/k;

    .line 25
    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    iget-object v0, p0, La2/c;->d:Ld7/q;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Ld7/q;->r(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, La2/c;->d:Ld7/q;

    .line 41
    .line 42
    :cond_2
    iget-object v1, v0, Ld7/q;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    check-cast p1, La2/k;

    .line 51
    .line 52
    iget v3, p1, La2/k;->a:F

    .line 53
    .line 54
    cmpg-float v2, v2, v3

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v0, v3}, Ld7/q;->q(F)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0}, Ld7/q;->e()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget v3, p1, La2/k;->c:I

    .line 67
    .line 68
    if-ne v2, v3, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v0, v3}, Ld7/q;->o(I)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget v3, p1, La2/k;->b:F

    .line 79
    .line 80
    cmpg-float v2, v2, v3

    .line 81
    .line 82
    if-nez v2, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 86
    .line 87
    .line 88
    :goto_2
    invoke-virtual {v0}, Ld7/q;->f()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iget p1, p1, La2/k;->d:I

    .line 93
    .line 94
    if-ne v1, p1, :cond_6

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_6
    invoke-virtual {v0, p1}, Ld7/q;->p(I)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_7
    new-instance p1, Lac/p;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public final synthetic e0(J)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->o(JLn3/c;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-object v0, p0, La2/c;->b:La2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/b;->J()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->b:Ln3/m;

    .line 4
    .line 5
    return-object v0
.end method

.method public final synthetic h0(J)F
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->n(JLn3/c;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final i0(JJJJLa2/h;)V
    .locals 9

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v2, p3, v1

    .line 8
    .line 9
    long-to-int v3, v2

    .line 10
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-wide v4, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p3, v4

    .line 20
    long-to-int p4, p3

    .line 21
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    shr-long v6, p5, v1

    .line 30
    .line 31
    long-to-int v7, v6

    .line 32
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    add-float/2addr v6, v3

    .line 37
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    and-long v7, p5, v4

    .line 42
    .line 43
    long-to-int v3, v7

    .line 44
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-float/2addr v3, p4

    .line 49
    shr-long v7, p7, v1

    .line 50
    .line 51
    long-to-int p4, v7

    .line 52
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    and-long v4, p7, v4

    .line 57
    .line 58
    long-to-int v1, v4

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v4, 0x3

    .line 64
    move-object/from16 v5, p9

    .line 65
    .line 66
    invoke-static {p0, p1, p2, v5, v4}, La2/c;->b(La2/c;JLa2/h;I)Ld7/q;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    move-object/from16 p8, p1

    .line 71
    .line 72
    move p6, p4

    .line 73
    move-object p1, v0

    .line 74
    move/from16 p7, v1

    .line 75
    .line 76
    move p2, v2

    .line 77
    move p5, v3

    .line 78
    move p4, v6

    .line 79
    invoke-interface/range {p1 .. p8}, Ly1/o;->i(FFFFFFLd7/q;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final synthetic m(J)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->m(JLn3/c;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final o(Ly1/f;JJJFLy1/k;I)V
    .locals 10

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v1, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, La2/j;->a:La2/j;

    .line 7
    .line 8
    const/4 v7, 0x3

    .line 9
    move-object v2, p0

    .line 10
    move/from16 v5, p8

    .line 11
    .line 12
    move-object/from16 v6, p9

    .line 13
    .line 14
    move/from16 v8, p10

    .line 15
    .line 16
    invoke-virtual/range {v2 .. v8}, La2/c;->c(Ly1/m;La2/h;FLy1/k;II)Ld7/q;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    move-object v2, p1

    .line 21
    move-wide v3, p2

    .line 22
    move-wide v5, p4

    .line 23
    move-wide/from16 v7, p6

    .line 24
    .line 25
    invoke-interface/range {v1 .. v9}, Ly1/o;->o(Ly1/f;JJJLd7/q;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final synthetic q(J)F
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, La2/f;->l(JLn3/c;)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final w(JJJF)V
    .locals 6

    .line 1
    iget-object v0, p0, La2/c;->a:La2/a;

    .line 2
    .line 3
    iget-object v0, v0, La2/a;->c:Ly1/o;

    .line 4
    .line 5
    iget-object v1, p0, La2/c;->d:Ld7/q;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v2}, Ld7/q;->r(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, La2/c;->d:Ld7/q;

    .line 18
    .line 19
    :cond_0
    iget-object v3, v1, Ld7/q;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Ly1/h0;->c(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-static {v4, v5, p1, p2}, Ly1/q;->c(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, p1, p2}, Ld7/q;->k(J)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, v1, Ld7/q;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Landroid/graphics/Shader;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ld7/q;->n(Landroid/graphics/Shader;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, v1, Ld7/q;->e:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Ly1/k;

    .line 53
    .line 54
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ld7/q;->l(Ly1/k;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget p1, v1, Ld7/q;->b:I

    .line 64
    .line 65
    const/4 p2, 0x3

    .line 66
    if-ne p1, p2, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v1, p2}, Ld7/q;->j(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    cmpg-float p1, p1, p7

    .line 77
    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {v1, p7}, Ld7/q;->q(F)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const/high16 p2, 0x40800000    # 4.0f

    .line 89
    .line 90
    cmpg-float p1, p1, p2

    .line 91
    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 96
    .line 97
    .line 98
    :goto_2
    invoke-virtual {v1}, Ld7/q;->e()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const/4 p2, 0x0

    .line 103
    if-nez p1, :cond_7

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_7
    invoke-virtual {v1, p2}, Ld7/q;->o(I)V

    .line 107
    .line 108
    .line 109
    :goto_3
    invoke-virtual {v1}, Ld7/q;->f()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_8
    invoke-virtual {v1, p2}, Ld7/q;->p(I)V

    .line 117
    .line 118
    .line 119
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-ne p1, v2, :cond_9

    .line 124
    .line 125
    :goto_5
    move-wide p2, p3

    .line 126
    move-wide p4, p5

    .line 127
    move-object p1, v0

    .line 128
    move-object p6, v1

    .line 129
    goto :goto_6

    .line 130
    :cond_9
    invoke-virtual {v1, v2}, Ld7/q;->m(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :goto_6
    invoke-interface/range {p1 .. p6}, Ly1/o;->c(JJLd7/q;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
