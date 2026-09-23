.class public abstract Lc1/m2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lc1/x;->k:Lc1/x;

    .line 2
    .line 3
    new-instance v1, Lf1/c0;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lc1/m2;->a:Lf1/c0;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lr1/p;Ly1/l0;JF)Lr1/p;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 4
    .line 5
    cmpl-float v1, p4, v1

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    sget-wide v4, Ly1/p0;->a:J

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    sget-wide v8, Ly1/w;->a:J

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    move-wide v10, v8

    .line 18
    move-object v6, p1

    .line 19
    move/from16 v2, p4

    .line 20
    .line 21
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/a;->a(Lr1/p;FFFJLy1/l0;ZJJ)Lr1/p;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v1, v0

    .line 27
    :goto_0
    invoke-interface {p0, v1}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p2, p3, p1}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p1}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public static final b(JFLf1/s;)J
    .locals 4

    .line 1
    sget-object v0, Lc1/y;->a:Lf1/w2;

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lc1/w;

    .line 8
    .line 9
    sget-object v1, Lc1/y;->b:Lf1/w2;

    .line 10
    .line 11
    invoke-virtual {p3, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    iget-wide v1, v0, Lc1/w;->p:J

    .line 22
    .line 23
    invoke-static {p0, p1, v1, v2}, Ly1/q;->c(JJ)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    int-to-float p0, p0

    .line 33
    invoke-static {p2, p0}, Ln3/f;->a(FF)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    return-wide v1

    .line 40
    :cond_0
    const/4 p0, 0x1

    .line 41
    int-to-float p0, p0

    .line 42
    add-float/2addr p2, p0

    .line 43
    float-to-double p0, p2

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    double-to-float p0, p0

    .line 49
    const/high16 p1, 0x40900000    # 4.5f

    .line 50
    .line 51
    mul-float p0, p0, p1

    .line 52
    .line 53
    const/high16 p1, 0x40000000    # 2.0f

    .line 54
    .line 55
    add-float/2addr p0, p1

    .line 56
    const/high16 p1, 0x42c80000    # 100.0f

    .line 57
    .line 58
    div-float/2addr p0, p1

    .line 59
    iget-wide p1, v0, Lc1/w;->t:J

    .line 60
    .line 61
    invoke-static {p0, p1, p2}, Ly1/q;->b(FJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    invoke-static {p0, p1, v1, v2}, Ly1/h0;->k(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    :cond_1
    return-wide p0
.end method
