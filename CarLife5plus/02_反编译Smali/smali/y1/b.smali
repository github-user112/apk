.class public final Ly1/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ly1/o;


# instance fields
.field public a:Landroid/graphics/Canvas;

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ly1/c;->a:Landroid/graphics/Canvas;

    .line 5
    .line 6
    iput-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(FFFFLd7/q;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    iget-object p5, p5, Ld7/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v5, p5

    .line 6
    check-cast v5, Landroid/graphics/Paint;

    .line 7
    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(JJLd7/q;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    shr-long v2, p1, v1

    .line 6
    .line 7
    long-to-int v3, v2

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-wide v3, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr p1, v3

    .line 18
    long-to-int p2, p1

    .line 19
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    shr-long v5, p3, v1

    .line 24
    .line 25
    long-to-int p2, v5

    .line 26
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    and-long/2addr p3, v3

    .line 31
    long-to-int p4, p3

    .line 32
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object p3, p5, Ld7/q;->c:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v5, p3

    .line 39
    check-cast v5, Landroid/graphics/Paint;

    .line 40
    .line 41
    move v3, p2

    .line 42
    move v1, v2

    .line 43
    move v2, p1

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final d(Lx1/c;)V
    .locals 6

    .line 1
    iget v1, p1, Lx1/c;->a:F

    .line 2
    .line 3
    iget v2, p1, Lx1/c;->b:F

    .line 4
    .line 5
    iget v3, p1, Lx1/c;->c:F

    .line 6
    .line 7
    iget v4, p1, Lx1/c;->d:F

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Ly1/b;->k(FFFFI)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(FJLd7/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    shr-long v1, p2, v1

    .line 6
    .line 7
    long-to-int v2, v1

    .line 8
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-wide v2, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr p2, v2

    .line 18
    long-to-int p3, p2

    .line 19
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget-object p3, p4, Ld7/q;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p3, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ly1/h0;->n(Landroid/graphics/Canvas;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final h(Ly1/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    instance-of v1, p1, Ly1/h;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast p1, Ly1/h;

    .line 8
    .line 9
    iget-object p1, p1, Ly1/h;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string v0, "Unable to obtain android.graphics.Path"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final i(FFFFFFLd7/q;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    iget-object p7, p7, Ld7/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v7, p7

    .line 6
    check-cast v7, Landroid/graphics/Paint;

    .line 7
    .line 8
    move v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    move v5, p5

    .line 13
    move v6, p6

    .line 14
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final j([F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ly1/h0;->p([F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Ly1/h0;->u(Landroid/graphics/Matrix;[F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final k(FFFFI)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    if-nez p5, :cond_0

    .line 4
    .line 5
    sget-object p5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 6
    .line 7
    :goto_0
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object v5, p5

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object p5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final l(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    const/high16 v0, 0x42340000    # 45.0f

    .line 2
    .line 3
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Ly1/f;JJJLd7/q;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ly1/b;->b:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ly1/b;->b:Landroid/graphics/Rect;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ly1/b;->c:Landroid/graphics/Rect;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 20
    .line 21
    invoke-static {p1}, Ly1/h0;->j(Ly1/f;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Ly1/b;->b:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x20

    .line 31
    .line 32
    shr-long v3, p2, v2

    .line 33
    .line 34
    long-to-int v4, v3

    .line 35
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    const-wide v5, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    and-long/2addr p2, v5

    .line 43
    long-to-int p3, p2

    .line 44
    iput p3, v1, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    shr-long v7, p4, v2

    .line 47
    .line 48
    long-to-int p2, v7

    .line 49
    add-int/2addr v4, p2

    .line 50
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    and-long v3, p4, v5

    .line 53
    .line 54
    long-to-int p2, v3

    .line 55
    add-int/2addr p3, p2

    .line 56
    iput p3, v1, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    iget-object p2, p0, Ly1/b;->c:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-static {p2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    long-to-int p3, v3

    .line 66
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    long-to-int v4, v3

    .line 69
    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    shr-long v2, p6, v2

    .line 72
    .line 73
    long-to-int v3, v2

    .line 74
    add-int/2addr p3, v3

    .line 75
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    and-long v2, p6, v5

    .line 78
    .line 79
    long-to-int p3, v2

    .line 80
    add-int/2addr v4, p3

    .line 81
    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 82
    .line 83
    move-object/from16 p3, p8

    .line 84
    .line 85
    iget-object p3, p3, Ld7/q;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p3, Landroid/graphics/Paint;

    .line 88
    .line 89
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final p(Lx1/c;Ld7/q;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    iget v1, p1, Lx1/c;->a:F

    .line 4
    .line 5
    iget v2, p1, Lx1/c;->b:F

    .line 6
    .line 7
    iget v3, p1, Lx1/c;->c:F

    .line 8
    .line 9
    iget v4, p1, Lx1/c;->d:F

    .line 10
    .line 11
    iget-object p1, p2, Ld7/q;->c:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v5, p1

    .line 14
    check-cast v5, Landroid/graphics/Paint;

    .line 15
    .line 16
    const/16 v6, 0x1f

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final q(Ly1/e0;Ld7/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    instance-of v1, p1, Ly1/h;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast p1, Ly1/h;

    .line 8
    .line 9
    iget-object p1, p1, Ly1/h;->a:Landroid/graphics/Path;

    .line 10
    .line 11
    iget-object p2, p2, Ld7/q;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 20
    .line 21
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ly1/h0;->n(Landroid/graphics/Canvas;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final s(Ly1/f;JLd7/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-static {p1}, Ly1/h0;->j(Ly1/f;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    shr-long v1, p2, v1

    .line 10
    .line 11
    long-to-int v2, v1

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-wide v2, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p2, v2

    .line 22
    long-to-int p3, p2

    .line 23
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object p3, p4, Ld7/q;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p3, Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
