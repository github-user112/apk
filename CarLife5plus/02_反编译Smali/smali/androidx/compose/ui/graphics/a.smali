.class public abstract Landroidx/compose/ui/graphics/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static final a(Lr1/p;FFFJLy1/l0;ZJJ)Lr1/p;
    .locals 12

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide/from16 v4, p4

    .line 7
    .line 8
    move-object/from16 v6, p6

    .line 9
    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    move-wide/from16 v8, p8

    .line 13
    .line 14
    move-wide/from16 v10, p10

    .line 15
    .line 16
    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/GraphicsLayerElement;-><init>(FFFJLy1/l0;ZJJ)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static b(Lr1/p;FFLy1/l0;I)Lr1/p;
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, p1

    .line 13
    :goto_0
    and-int/lit16 p1, v0, 0x100

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, p2

    .line 21
    :goto_1
    sget-wide v4, Ly1/p0;->a:J

    .line 22
    .line 23
    and-int/lit16 p1, v0, 0x800

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    sget-object p1, Ly1/h0;->a:Ly1/g0;

    .line 28
    .line 29
    move-object v6, p1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v6, p3

    .line 32
    :goto_2
    and-int/lit16 p1, v0, 0x1000

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    const/4 p1, 0x1

    .line 40
    const/4 v7, 0x1

    .line 41
    :goto_3
    sget-wide v8, Ly1/w;->a:J

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    move-wide v10, v8

    .line 45
    move-object v0, p0

    .line 46
    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/a;->a(Lr1/p;FFFJLy1/l0;ZJJ)Lr1/p;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
