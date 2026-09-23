.class public final Lc3/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextUtils$TruncateAt;

.field public final c:Z

.field public final d:Z

.field public e:Ld3/e;

.field public final f:Landroid/text/Layout;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:Landroid/graphics/Paint$FontMetricsInt;

.field public final n:I

.field public final o:[Le3/h;

.field public final p:Landroid/graphics/Rect;

.field public q:Lb3/q;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILc3/h;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v0, p2

    move/from16 v2, p4

    move/from16 v7, p7

    .line 1
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p3

    .line 2
    iput-object v4, v1, Lc3/n;->a:Landroid/text/TextPaint;

    move-object/from16 v8, p5

    .line 3
    iput-object v8, v1, Lc3/n;->b:Landroid/text/TextUtils$TruncateAt;

    .line 4
    iput-boolean v7, v1, Lc3/n;->c:Z

    .line 5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v1, Lc3/n;->p:Landroid/graphics/Rect;

    .line 6
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7
    invoke-static/range {p6 .. p6}, Lc3/o;->a(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v13

    .line 8
    sget-object v6, Lc3/l;->a:Landroid/text/Layout$Alignment;

    const/4 v14, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v14, :cond_3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    const/4 v6, 0x4

    if-eq v2, v6, :cond_0

    .line 9
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v6, v2

    goto :goto_1

    .line 10
    :cond_0
    sget-object v2, Lc3/l;->b:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Lc3/l;->a:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 12
    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 13
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 14
    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 15
    :goto_1
    instance-of v2, v3, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 16
    move-object v2, v3

    check-cast v2, Landroid/text/Spanned;

    const/4 v9, -0x1

    const-class v10, Le3/a;

    invoke-interface {v2, v9, v5, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    if-ge v2, v5, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 17
    :goto_2
    const-string v5, "TextLayout:initLayout"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual/range {p14 .. p14}, Lc3/h;->a()Landroid/text/BoringLayout$Metrics;

    move-result-object v9

    float-to-double v10, v0

    .line 19
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v5, v14

    float-to-int v5, v5

    const/16 v14, 0x21

    if-eqz v9, :cond_9

    .line 20
    invoke-virtual/range {p14 .. p14}, Lc3/h;->c()F

    move-result v12

    cmpg-float v0, v12, v0

    if-gtz v0, :cond_9

    if-nez v2, :cond_9

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, v1, Lc3/n;->l:Z

    if-ltz v5, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    const-string v2, "negative width"

    .line 23
    invoke-static {v2}, Lh3/a;->a(Ljava/lang/String;)V

    :goto_3
    if-ltz v5, :cond_7

    goto :goto_4

    .line 24
    :cond_7
    const-string v2, "negative ellipsized width"

    .line 25
    invoke-static {v2}, Lh3/a;->a(Ljava/lang/String;)V

    .line 26
    :goto_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v14, :cond_8

    move v4, v5

    move-object v5, v6

    move-object v6, v9

    move v9, v4

    move-object v2, v3

    move-object/from16 v3, p3

    .line 27
    invoke-static/range {v2 .. v9}, Lc/p;->f(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v3

    goto :goto_5

    :cond_8
    move v4, v5

    move-object v5, v6

    move-object v6, v9

    .line 28
    new-instance v2, Landroid/text/BoringLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move v12, v4

    move-object/from16 v3, p1

    move-object/from16 v11, p5

    move/from16 v10, p7

    move-object v9, v6

    move-object v6, v5

    move v5, v4

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v12}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v3, v2

    :goto_5
    move/from16 v9, p8

    move-object v7, v13

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_19

    :cond_9
    move v4, v5

    move-object v5, v6

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 29
    iput-boolean v2, v1, Lc3/n;->l:Z

    .line 30
    sget-object v3, Lc3/j;->a:Lib/d;

    move v6, v4

    .line 31
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 32
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v3, v7

    float-to-int v11, v3

    .line 33
    sget-object v3, Lc3/j;->a:Lib/d;

    const/4 v7, 0x0

    .line 34
    new-instance v2, Lc3/k;

    move-object/from16 v10, p5

    move/from16 v9, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p12

    move/from16 v12, p13

    move-object v0, v3

    move-object v8, v5

    move-object v7, v13

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v13, p7

    invoke-direct/range {v2 .. v17}, Lc3/k;-><init>(Ljava/lang/CharSequence;ILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)V

    .line 35
    invoke-virtual {v0, v2}, Lib/d;->b(Lc3/k;)Landroid/text/StaticLayout;

    move-result-object v3

    .line 36
    :goto_6
    iput-object v3, v1, Lc3/n;->f:Landroid/text/Layout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lc3/n;->g:I

    add-int/lit8 v2, v0, -0x1

    if-ge v0, v9, :cond_b

    :cond_a
    const/4 v14, 0x0

    goto :goto_7

    .line 39
    :cond_b
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-gtz v4, :cond_c

    .line 40
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_a

    :cond_c
    const/4 v14, 0x1

    .line 41
    :goto_7
    iput-boolean v14, v1, Lc3/n;->d:Z

    .line 42
    sget-wide v4, Lc3/o;->b:J

    const/16 v6, 0x20

    const-wide v8, 0xffffffffL

    if-nez p7, :cond_16

    .line 43
    iget-boolean v10, v1, Lc3/n;->l:Z

    if-eqz v10, :cond_e

    .line 44
    move-object v10, v3

    check-cast v10, Landroid/text/BoringLayout;

    .line 45
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x21

    if-lt v11, v12, :cond_d

    .line 46
    invoke-static {v10}, Lc/p;->w(Landroid/text/BoringLayout;)Z

    move-result v15

    goto :goto_a

    :cond_d
    :goto_8
    const/4 v15, 0x0

    goto :goto_a

    :cond_e
    const/16 v12, 0x21

    .line 47
    sget-object v10, Lc3/j;->a:Lib/d;

    .line 48
    move-object v10, v3

    check-cast v10, Landroid/text/StaticLayout;

    .line 49
    sget-object v11, Lc3/j;->a:Lib/d;

    .line 50
    iget v11, v11, Lib/d;->a:I

    packed-switch v11, :pswitch_data_0

    goto :goto_8

    .line 51
    :pswitch_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v12, :cond_f

    .line 52
    invoke-static {v10}, Lc/p;->x(Landroid/text/StaticLayout;)Z

    move-result v14

    goto :goto_9

    :cond_f
    const/16 v10, 0x1c

    if-lt v11, v10, :cond_10

    const/4 v14, 0x1

    goto :goto_9

    :cond_10
    const/4 v14, 0x0

    :goto_9
    move v15, v14

    :goto_a
    if-eqz v15, :cond_11

    goto :goto_f

    .line 53
    :cond_11
    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 54
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v13, 0x0

    .line 55
    invoke-virtual {v3, v13}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual {v3, v13}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    invoke-static {v14, v15, v10, v11}, Lc7/a;->u(IILandroid/text/TextPaint;Ljava/lang/CharSequence;)Landroid/graphics/Rect;

    move-result-object v14

    .line 56
    invoke-virtual {v3, v13}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v15

    .line 57
    iget v13, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v15, :cond_12

    sub-int/2addr v15, v13

    :goto_b
    const/4 v13, 0x1

    goto :goto_c

    .line 58
    :cond_12
    invoke-virtual {v3}, Landroid/text/Layout;->getTopPadding()I

    move-result v15

    goto :goto_b

    :goto_c
    if-ne v0, v13, :cond_13

    goto :goto_d

    .line 59
    :cond_13
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    invoke-static {v0, v13, v10, v11}, Lc7/a;->u(IILandroid/text/TextPaint;Ljava/lang/CharSequence;)Landroid/graphics/Rect;

    move-result-object v14

    .line 60
    :goto_d
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    .line 61
    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    if-le v10, v0, :cond_14

    sub-int/2addr v10, v0

    goto :goto_e

    .line 62
    :cond_14
    invoke-virtual {v3}, Landroid/text/Layout;->getBottomPadding()I

    move-result v10

    :goto_e
    if-nez v15, :cond_15

    if-nez v10, :cond_15

    goto :goto_f

    :cond_15
    int-to-long v13, v15

    shl-long/2addr v13, v6

    int-to-long v10, v10

    and-long/2addr v10, v8

    or-long/2addr v10, v13

    goto :goto_10

    :cond_16
    const/16 v12, 0x21

    :goto_f
    move-wide v10, v4

    .line 63
    :goto_10
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v13, 0x0

    if-nez v0, :cond_17

    goto :goto_11

    .line 65
    :cond_17
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 66
    const-string v14, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v14}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    const-class v15, Le3/h;

    invoke-static {v0, v15}, Lg5/a;->O(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 67
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_18

    :goto_11
    move-object v0, v13

    goto :goto_12

    .line 69
    :cond_18
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    invoke-static {v0, v14}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    .line 71
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 72
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v14, 0x0

    invoke-interface {v0, v14, v3, v15}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/h;

    .line 73
    :goto_12
    iput-object v0, v1, Lc3/n;->o:[Le3/h;

    if-eqz v0, :cond_1d

    .line 74
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v3, :cond_1b

    aget-object v14, v0, v15

    const/16 p1, 0x20

    .line 75
    iget v6, v14, Le3/h;->k:I

    if-gez v6, :cond_19

    .line 76
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 77
    :cond_19
    iget v6, v14, Le3/h;->l:I

    if-gez v6, :cond_1a

    .line 78
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1a
    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0x20

    goto :goto_13

    :cond_1b
    const/16 p1, 0x20

    if-nez v4, :cond_1c

    if-nez v5, :cond_1c

    .line 79
    sget-wide v3, Lc3/o;->b:J

    :goto_14
    move-wide v4, v3

    goto :goto_15

    :cond_1c
    int-to-long v3, v4

    shl-long v3, v3, p1

    int-to-long v5, v5

    and-long/2addr v5, v8

    or-long/2addr v3, v5

    goto :goto_14

    :cond_1d
    const/16 p1, 0x20

    :goto_15
    shr-long v14, v10, p1

    long-to-int v0, v14

    shr-long v14, v4, p1

    long-to-int v3, v14

    .line 80
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lc3/n;->h:I

    and-long/2addr v10, v8

    long-to-int v0, v10

    and-long/2addr v4, v8

    long-to-int v3, v4

    .line 81
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lc3/n;->i:I

    .line 82
    iget-object v9, v1, Lc3/n;->a:Landroid/text/TextPaint;

    iget-object v0, v1, Lc3/n;->o:[Le3/h;

    .line 83
    iget v3, v1, Lc3/n;->g:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 84
    iget-object v4, v1, Lc3/n;->f:Landroid/text/Layout;

    .line 85
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    if-ne v5, v4, :cond_1e

    if-eqz v0, :cond_1e

    .line 86
    array-length v4, v0

    if-nez v4, :cond_1f

    :cond_1e
    const/4 v7, 0x0

    goto/16 :goto_17

    :cond_1f
    move-object v11, v7

    .line 87
    new-instance v7, Landroid/text/SpannableString;

    const-string v4, "\u200b"

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {v0}, Ls8/l;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3/h;

    .line 89
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-eqz v3, :cond_20

    .line 90
    iget-boolean v3, v0, Le3/h;->d:Z

    if-eqz v3, :cond_20

    const/4 v15, 0x0

    goto :goto_16

    .line 91
    :cond_20
    iget-boolean v15, v0, Le3/h;->d:Z

    .line 92
    :goto_16
    new-instance v3, Le3/h;

    .line 93
    iget v5, v0, Le3/h;->a:F

    .line 94
    iget-boolean v6, v0, Le3/h;->d:Z

    .line 95
    iget v8, v0, Le3/h;->e:F

    .line 96
    iget-boolean v0, v0, Le3/h;->f:Z

    move/from16 p11, v0

    move-object/from16 p5, v3

    move/from16 p7, v4

    move/from16 p6, v5

    move/from16 p9, v6

    move/from16 p10, v8

    move/from16 p8, v15

    .line 97
    invoke-direct/range {p5 .. p11}, Le3/h;-><init>(FIZZFZ)V

    move-object/from16 v0, p5

    .line 98
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-virtual {v7, v0, v13, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    sget-object v0, Lc3/j;->a:Lib/d;

    .line 100
    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 101
    iget-boolean v0, v1, Lc3/n;->c:Z

    .line 102
    sget-object v12, Lc3/f;->a:Landroid/text/Layout$Alignment;

    .line 103
    sget-object v3, Lc3/j;->a:Lib/d;

    .line 104
    new-instance v6, Lc3/k;

    const v10, 0x7fffffff

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v17, v0

    invoke-direct/range {v6 .. v21}, Lc3/k;-><init>(Ljava/lang/CharSequence;ILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIZIIII)V

    .line 105
    invoke-virtual {v3, v6}, Lib/d;->b(Lc3/k;)Landroid/text/StaticLayout;

    move-result-object v0

    .line 106
    new-instance v13, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v13}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    const/4 v7, 0x0

    .line 107
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v3

    iput v3, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 108
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v3

    iput v3, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 109
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v3

    iput v3, v13, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 110
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_17
    if-eqz v13, :cond_21

    .line 111
    iget v0, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 112
    invoke-virtual {v1, v2}, Lc3/n;->e(I)F

    move-result v3

    invoke-virtual {v1, v2}, Lc3/n;->g(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v15, v0, v3

    goto :goto_18

    :cond_21
    const/4 v15, 0x0

    .line 113
    :goto_18
    iput v15, v1, Lc3/n;->n:I

    .line 114
    iput-object v13, v1, Lc3/n;->m:Landroid/graphics/Paint$FontMetricsInt;

    .line 115
    iget-object v0, v1, Lc3/n;->f:Landroid/text/Layout;

    .line 116
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v0, v2, v3}, La/a;->s(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v0

    .line 117
    iput v0, v1, Lc3/n;->j:F

    .line 118
    iget-object v0, v1, Lc3/n;->f:Landroid/text/Layout;

    .line 119
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {v0, v2, v3}, La/a;->t(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v0

    .line 120
    iput v0, v1, Lc3/n;->k:F

    return-void

    .line 121
    :goto_19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc3/n;->d:Z

    .line 2
    .line 3
    iget-object v1, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lc3/n;->g:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    iget v1, p0, Lc3/n;->h:I

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    iget v1, p0, Lc3/n;->i:I

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    iget v1, p0, Lc3/n;->n:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final b(I)F
    .locals 1

    .line 1
    iget v0, p0, Lc3/n;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lc3/n;->j:F

    .line 8
    .line 9
    iget v0, p0, Lc3/n;->k:F

    .line 10
    .line 11
    add-float/2addr p1, v0

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final c()Lb3/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/n;->q:Lb3/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lb3/q;

    .line 6
    .line 7
    iget-object v1, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lb3/q;-><init>(Landroid/text/Layout;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lc3/n;->q:Lb3/q;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final d(I)F
    .locals 2

    .line 1
    iget v0, p0, Lc3/n;->h:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lc3/n;->g:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lc3/n;->m:Landroid/graphics/Paint$FontMetricsInt;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lc3/n;->g(I)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    sub-float/2addr p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    :goto_0
    add-float/2addr v0, p1

    .line 31
    return v0
.end method

.method public final e(I)F
    .locals 3

    .line 1
    iget v0, p0, Lc3/n;->g:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iget-object v2, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lc3/n;->m:Landroid/graphics/Paint$FontMetricsInt;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    iget v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    add-float/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_0
    iget v1, p0, Lc3/n;->h:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    add-float/2addr v1, v2

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    iget p1, p0, Lc3/n;->i:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    :goto_0
    int-to-float p1, p1

    .line 43
    add-float/2addr v1, p1

    .line 44
    return v1
.end method

.method public final f(I)I
    .locals 3

    .line 1
    sget-object v0, Lc3/o;->a:Lc3/m;

    .line 2
    .line 3
    iget-object v0, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lc3/n;->b:Landroid/text/TextUtils$TruncateAt;

    .line 12
    .line 13
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final g(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Lc3/n;->h:I

    .line 13
    .line 14
    :goto_0
    int-to-float p1, p1

    .line 15
    add-float/2addr v0, p1

    .line 16
    return v0
.end method

.method public final h(IZ)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n;->c()Lb3/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Lb3/q;->k(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget-object v0, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lc3/n;->b(I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-float/2addr p1, p2

    .line 21
    return p1
.end method

.method public final i(IZ)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/n;->c()Lb3/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Lb3/q;->k(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget-object v0, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lc3/n;->b(I)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-float/2addr p1, p2

    .line 21
    return p1
.end method

.method public final j()Ld3/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lc3/n;->e:Ld3/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ld3/e;

    .line 7
    .line 8
    iget-object v1, p0, Lc3/n;->f:Landroid/text/Layout;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v3, p0, Lc3/n;->a:Landroid/text/TextPaint;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v0, v2, v1, v3}, Ld3/e;-><init>(Ljava/lang/CharSequence;ILjava/util/Locale;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lc3/n;->e:Ld3/e;

    .line 32
    .line 33
    return-object v0
.end method
