.class public final Lj3/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lb3/t;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lb3/o0;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Lf3/d;

.field public final f:Ln3/c;

.field public final g:Lj3/f;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Lc3/h;

.field public j:La2/b;

.field public final k:Z

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb3/o0;Ljava/util/List;Ljava/util/List;Lf3/d;Ln3/c;)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Lj3/d;->a:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lj3/d;->b:Lb3/o0;

    .line 4
    iput-object v2, v0, Lj3/d;->c:Ljava/util/List;

    move-object/from16 v4, p4

    .line 5
    iput-object v4, v0, Lj3/d;->d:Ljava/util/List;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Lj3/d;->e:Lf3/d;

    .line 7
    iput-object v3, v0, Lj3/d;->f:Ln3/c;

    .line 8
    new-instance v4, Lj3/f;

    invoke-interface {v3}, Ln3/c;->a()F

    move-result v5

    const/4 v6, 0x1

    .line 9
    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 11
    sget-object v5, Lm3/l;->b:Lm3/l;

    iput-object v5, v4, Lj3/f;->b:Lm3/l;

    const/4 v5, 0x3

    .line 12
    iput v5, v4, Lj3/f;->c:I

    .line 13
    sget-object v7, Ly1/k0;->d:Ly1/k0;

    .line 14
    iput-object v7, v4, Lj3/f;->d:Ly1/k0;

    .line 15
    iput-object v4, v0, Lj3/d;->g:Lj3/f;

    .line 16
    iget-object v7, v1, Lb3/o0;->c:Lb3/y;

    iget-object v7, v1, Lb3/o0;->a:Lb3/e0;

    iget-object v1, v1, Lb3/o0;->b:Lb3/u;

    .line 17
    sget-object v8, Lj3/j;->a:La2/d;

    .line 18
    sget-object v8, Lj3/j;->a:La2/d;

    .line 19
    iget-object v9, v8, La2/d;->b:Ljava/lang/Object;

    check-cast v9, Lf1/v2;

    if-eqz v9, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Ll4/j;->d()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 21
    invoke-virtual {v8}, La2/d;->l()Lf1/v2;

    move-result-object v9

    iput-object v9, v8, La2/d;->b:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_1
    sget-object v9, Lj3/k;->a:Lj3/l;

    .line 23
    :goto_0
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 24
    iput-boolean v8, v0, Lj3/d;->k:Z

    .line 25
    iget v8, v1, Lb3/u;->b:I

    .line 26
    iget-object v9, v7, Lb3/e0;->k:Li3/b;

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-ne v8, v10, :cond_3

    :cond_2
    :goto_1
    const/4 v8, 0x2

    goto :goto_3

    :cond_3
    const/4 v10, 0x5

    if-ne v8, v10, :cond_5

    :cond_4
    const/4 v8, 0x3

    goto :goto_3

    :cond_5
    if-ne v8, v6, :cond_6

    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    if-ne v8, v11, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    if-ne v8, v5, :cond_8

    goto :goto_2

    :cond_8
    const/high16 v10, -0x80000000

    if-ne v8, v10, :cond_78

    :goto_2
    if-eqz v9, :cond_9

    .line 27
    invoke-virtual {v9}, Li3/b;->b()Li3/a;

    move-result-object v8

    .line 28
    iget-object v8, v8, Li3/a;->a:Ljava/util/Locale;

    if-nez v8, :cond_a

    .line 29
    :cond_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 30
    :cond_a
    invoke-static {v8}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-eqz v8, :cond_2

    if-eq v8, v6, :cond_4

    goto :goto_1

    .line 31
    :goto_3
    iput v8, v0, Lj3/d;->l:I

    .line 32
    new-instance v8, Lj3/c;

    invoke-direct {v8, v12, v0}, Lj3/c;-><init>(ILjava/lang/Object;)V

    .line 33
    iget-object v1, v1, Lb3/u;->i:Lm3/s;

    if-nez v1, :cond_b

    .line 34
    sget-object v1, Lm3/s;->c:Lm3/s;

    .line 35
    :cond_b
    iget-boolean v9, v1, Lm3/s;->b:Z

    if-eqz v9, :cond_c

    .line 36
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v9

    or-int/lit16 v9, v9, 0x80

    goto :goto_4

    .line 37
    :cond_c
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, -0x81

    .line 38
    :goto_4
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setFlags(I)V

    .line 39
    iget v1, v1, Lm3/s;->a:I

    if-ne v1, v6, :cond_d

    .line 40
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 41
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_5

    :cond_d
    if-ne v1, v11, :cond_e

    .line 42
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 43
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_5

    :cond_e
    if-ne v1, v5, :cond_f

    .line 44
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 45
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_5

    .line 46
    :cond_f
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 47
    :goto_5
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_11

    .line 48
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 49
    move-object v11, v10

    check-cast v11, Lb3/e;

    .line 50
    iget-object v11, v11, Lb3/e;->a:Ljava/lang/Object;

    .line 51
    instance-of v11, v11, Lb3/e0;

    if-eqz v11, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_11
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_12

    const/4 v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    .line 52
    :goto_8
    iget-wide v10, v7, Lb3/e0;->b:J

    iget-object v2, v7, Lb3/e0;->c:Lf3/k;

    iget-object v5, v7, Lb3/e0;->d:Lf3/i;

    iget-object v13, v7, Lb3/e0;->g:Ljava/lang/String;

    iget-object v14, v7, Lb3/e0;->a:Lm3/o;

    iget-object v15, v7, Lb3/e0;->j:Lm3/p;

    const/16 p1, 0x0

    iget-object v9, v7, Lb3/e0;->k:Li3/b;

    move-object/from16 p3, v13

    iget-wide v12, v7, Lb3/e0;->h:J

    move-object/from16 p5, v7

    const/16 p4, 0x1

    .line 53
    invoke-static {v10, v11}, Ln3/o;->b(J)J

    move-result-wide v6

    move/from16 v16, v1

    move-object/from16 v17, v2

    const-wide v1, 0x100000000L

    .line 54
    invoke-static {v6, v7, v1, v2}, Ln3/p;->a(JJ)Z

    move-result v18

    const-wide v1, 0x200000000L

    if-eqz v18, :cond_14

    invoke-interface {v3, v10, v11}, Ln3/c;->h0(J)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_13
    :goto_9
    move-object/from16 v6, p5

    goto :goto_a

    .line 55
    :cond_14
    invoke-static {v6, v7, v1, v2}, Ln3/p;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 56
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-static {v10, v11}, Ln3/o;->c(J)F

    move-result v7

    mul-float v7, v7, v6

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_9

    .line 57
    :goto_a
    iget-object v7, v6, Lb3/e0;->f:Lf3/n;

    if-nez v7, :cond_15

    if-nez v5, :cond_15

    if-eqz v17, :cond_1a

    :cond_15
    if-nez v17, :cond_16

    .line 58
    sget-object v10, Lf3/k;->c:Lf3/k;

    goto :goto_b

    :cond_16
    move-object/from16 v10, v17

    :goto_b
    if-eqz v5, :cond_17

    .line 59
    iget v5, v5, Lf3/i;->a:I

    goto :goto_c

    :cond_17
    const/4 v5, 0x0

    .line 60
    :goto_c
    iget-object v11, v6, Lb3/e0;->e:Lf3/j;

    if-eqz v11, :cond_18

    .line 61
    iget v11, v11, Lf3/j;->a:I

    goto :goto_d

    :cond_18
    const v11, 0xffff

    .line 62
    :goto_d
    iget-object v1, v8, Lj3/c;->b:Ljava/lang/Object;

    check-cast v1, Lj3/d;

    .line 63
    iget-object v2, v1, Lj3/d;->e:Lf3/d;

    check-cast v2, Lf3/e;

    invoke-virtual {v2, v7, v10, v5, v11}, Lf3/e;->b(Lf3/n;Lf3/k;II)Lf3/p;

    move-result-object v2

    .line 64
    instance-of v5, v2, Lf3/p;

    const-string v7, "null cannot be cast to non-null type android.graphics.Typeface"

    if-nez v5, :cond_19

    .line 65
    new-instance v5, La2/b;

    iget-object v10, v1, Lj3/d;->j:La2/b;

    invoke-direct {v5, v2, v10}, La2/b;-><init>(Lf3/p;La2/b;)V

    .line 66
    iput-object v5, v1, Lj3/d;->j:La2/b;

    .line 67
    iget-object v1, v5, La2/b;->d:Ljava/lang/Object;

    invoke-static {v1, v7}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_e

    .line 68
    :cond_19
    iget-object v1, v2, Lf3/p;->a:Ljava/lang/Object;

    .line 69
    invoke-static {v1, v7}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Typeface;

    .line 70
    :goto_e
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1a
    const/16 v1, 0xa

    if-eqz v9, :cond_1e

    .line 71
    iget-object v2, v9, Li3/b;->a:Ljava/util/List;

    sget-object v5, Li3/b;->c:Li3/b;

    .line 72
    sget-object v5, Li3/d;->a:Li3/c;

    .line 73
    invoke-interface {v5}, Li3/c;->n()Li3/b;

    move-result-object v7

    .line 74
    invoke-virtual {v9, v7}, Li3/b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 75
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v7, v10, :cond_1c

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v9, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 78
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 79
    check-cast v7, Li3/a;

    .line 80
    iget-object v7, v7, Li3/a;->a:Ljava/util/Locale;

    .line 81
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    const/4 v7, 0x0

    .line 82
    new-array v2, v7, [Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 83
    check-cast v2, [Ljava/util/Locale;

    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Locale;

    invoke-static {v2}, Lr2/g0;->c([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v2

    .line 84
    invoke-static {v4, v2}, La4/h;->u(Lj3/f;Landroid/os/LocaleList;)V

    goto :goto_11

    .line 85
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 86
    invoke-interface {v5}, Li3/c;->n()Li3/b;

    move-result-object v2

    invoke-virtual {v2}, Li3/b;->b()Li3/a;

    move-result-object v2

    goto :goto_10

    .line 87
    :cond_1d
    invoke-virtual {v9}, Li3/b;->b()Li3/a;

    move-result-object v2

    .line 88
    :goto_10
    iget-object v2, v2, Li3/a;->a:Ljava/util/Locale;

    .line 89
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    :cond_1e
    :goto_11
    if-eqz p3, :cond_1f

    .line 90
    const-string v2, ""

    move-object/from16 v5, p3

    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 92
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1f
    if-eqz v15, :cond_20

    .line 93
    sget-object v2, Lm3/p;->c:Lm3/p;

    .line 94
    invoke-virtual {v15, v2}, Lm3/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    .line 96
    iget v5, v15, Lm3/p;->a:F

    mul-float v2, v2, v5

    .line 97
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 98
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    .line 99
    iget v5, v15, Lm3/p;->b:F

    add-float/2addr v2, v5

    .line 100
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 101
    :cond_20
    invoke-interface {v14}, Lm3/o;->b()J

    move-result-wide v9

    .line 102
    invoke-virtual {v4, v9, v10}, Lj3/f;->d(J)V

    .line 103
    invoke-interface {v14}, Lm3/o;->e()Ly1/m;

    move-result-object v2

    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 104
    invoke-interface {v14}, Lm3/o;->a()F

    move-result v5

    .line 105
    invoke-virtual {v4, v2, v9, v10, v5}, Lj3/f;->c(Ly1/m;JF)V

    .line 106
    iget-object v2, v6, Lb3/e0;->n:Ly1/k0;

    .line 107
    invoke-virtual {v4, v2}, Lj3/f;->f(Ly1/k0;)V

    .line 108
    iget-object v2, v6, Lb3/e0;->m:Lm3/l;

    .line 109
    invoke-virtual {v4, v2}, Lj3/f;->g(Lm3/l;)V

    .line 110
    iget-object v2, v6, Lb3/e0;->p:La2/h;

    .line 111
    invoke-virtual {v4, v2}, Lj3/f;->e(La2/h;)V

    .line 112
    invoke-static {v12, v13}, Ln3/o;->b(J)J

    move-result-wide v9

    const-wide v14, 0x100000000L

    invoke-static {v9, v10, v14, v15}, Ln3/p;->a(JJ)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_23

    invoke-static {v12, v13}, Ln3/o;->c(J)F

    move-result v2

    cmpg-float v2, v2, v5

    if-nez v2, :cond_21

    goto :goto_12

    .line 113
    :cond_21
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v7

    mul-float v7, v7, v2

    .line 114
    invoke-interface {v3, v12, v13}, Ln3/c;->h0(J)F

    move-result v2

    cmpg-float v3, v7, v5

    if-nez v3, :cond_22

    goto :goto_13

    :cond_22
    div-float/2addr v2, v7

    .line 115
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_13

    .line 116
    :cond_23
    :goto_12
    invoke-static {v12, v13}, Ln3/o;->b(J)J

    move-result-wide v2

    const-wide v9, 0x200000000L

    invoke-static {v2, v3, v9, v10}, Ln3/p;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 117
    invoke-static {v12, v13}, Ln3/o;->c(J)F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 118
    :cond_24
    :goto_13
    iget-wide v2, v6, Lb3/e0;->l:J

    .line 119
    iget-object v4, v6, Lb3/e0;->i:Lm3/a;

    if-eqz v16, :cond_26

    .line 120
    invoke-static {v12, v13}, Ln3/o;->b(J)J

    move-result-wide v6

    const-wide v14, 0x100000000L

    invoke-static {v6, v7, v14, v15}, Ln3/p;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-static {v12, v13}, Ln3/o;->c(J)F

    move-result v6

    cmpg-float v6, v6, v5

    if-nez v6, :cond_25

    goto :goto_14

    :cond_25
    const/4 v6, 0x1

    goto :goto_15

    :cond_26
    :goto_14
    const/4 v6, 0x0

    .line 121
    :goto_15
    sget-wide v9, Ly1/q;->m:J

    .line 122
    invoke-static {v2, v3, v9, v10}, Ly1/q;->c(JJ)Z

    move-result v7

    if-nez v7, :cond_27

    .line 123
    sget-wide v14, Ly1/q;->l:J

    .line 124
    invoke-static {v2, v3, v14, v15}, Ly1/q;->c(JJ)Z

    move-result v7

    if-nez v7, :cond_27

    const/4 v7, 0x1

    goto :goto_16

    :cond_27
    const/4 v7, 0x0

    :goto_16
    if-eqz v4, :cond_29

    .line 125
    iget v11, v4, Lm3/a;->a:F

    .line 126
    invoke-static {v11, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_28

    goto :goto_17

    :cond_28
    const/4 v11, 0x1

    goto :goto_18

    :cond_29
    :goto_17
    const/4 v11, 0x0

    :goto_18
    if-nez v6, :cond_2a

    if-nez v7, :cond_2a

    if-nez v11, :cond_2a

    move-object/from16 v2, p1

    goto :goto_1d

    :cond_2a
    if-eqz v6, :cond_2b

    :goto_19
    move-wide/from16 v29, v12

    goto :goto_1a

    .line 127
    :cond_2b
    sget-wide v12, Ln3/o;->c:J

    goto :goto_19

    :goto_1a
    if-eqz v7, :cond_2c

    move-wide/from16 v34, v2

    goto :goto_1b

    :cond_2c
    move-wide/from16 v34, v9

    :goto_1b
    if-eqz v11, :cond_2d

    move-object/from16 v31, v4

    goto :goto_1c

    :cond_2d
    move-object/from16 v31, p1

    .line 128
    :goto_1c
    new-instance v19, Lb3/e0;

    const/16 v37, 0x0

    const v38, 0xf67f

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    invoke-direct/range {v19 .. v38}, Lb3/e0;-><init>(JJLf3/k;Lf3/i;Lf3/j;Lf3/n;Ljava/lang/String;JLm3/a;Lm3/p;Li3/b;JLm3/l;Ly1/k0;I)V

    move-object/from16 v2, v19

    :goto_1d
    if-eqz v2, :cond_2f

    .line 129
    iget-object v3, v0, Lj3/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v3, :cond_30

    if-nez v6, :cond_2e

    .line 130
    new-instance v7, Lb3/e;

    .line 131
    iget-object v9, v0, Lj3/d;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    .line 132
    invoke-direct {v7, v10, v9, v2}, Lb3/e;-><init>(IILjava/lang/Object;)V

    goto :goto_1f

    .line 133
    :cond_2e
    iget-object v7, v0, Lj3/d;->c:Ljava/util/List;

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb3/e;

    .line 134
    :goto_1f
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 135
    :cond_2f
    iget-object v4, v0, Lj3/d;->c:Ljava/util/List;

    .line 136
    :cond_30
    iget-object v2, v0, Lj3/d;->a:Ljava/lang/String;

    .line 137
    iget-object v3, v0, Lj3/d;->g:Lj3/f;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 138
    iget-object v6, v0, Lj3/d;->b:Lb3/o0;

    .line 139
    iget-object v7, v0, Lj3/d;->d:Ljava/util/List;

    .line 140
    iget-object v12, v0, Lj3/d;->f:Ln3/c;

    .line 141
    iget-boolean v9, v0, Lj3/d;->k:Z

    .line 142
    sget-object v10, Lj3/b;->a:Lj3/a;

    if-eqz v9, :cond_32

    .line 143
    invoke-static {}, Ll4/j;->d()Z

    move-result v9

    if-eqz v9, :cond_32

    .line 144
    iget-object v9, v6, Lb3/o0;->c:Lb3/y;

    if-eqz v9, :cond_31

    .line 145
    iget-object v9, v9, Lb3/y;->b:Lb3/w;

    .line 146
    :cond_31
    invoke-static {}, Ll4/j;->a()Ll4/j;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10, v11, v2}, Ll4/j;->g(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Lg9/l;->b(Ljava/lang/Object;)V

    goto :goto_20

    :cond_32
    move-object v9, v2

    .line 147
    :goto_20
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const-wide/16 v13, 0x0

    const-wide v15, 0xff00000000L

    if-eqz v10, :cond_33

    .line 148
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_33

    .line 149
    iget-object v10, v6, Lb3/o0;->b:Lb3/u;

    .line 150
    iget-object v10, v10, Lb3/u;->d:Lm3/q;

    .line 151
    sget-object v11, Lm3/q;->c:Lm3/q;

    .line 152
    invoke-static {v10, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 153
    iget-object v10, v6, Lb3/o0;->b:Lb3/u;

    .line 154
    iget-wide v10, v10, Lb3/u;->c:J

    and-long/2addr v10, v15

    cmp-long v19, v10, v13

    if-nez v19, :cond_33

    goto/16 :goto_4f

    .line 155
    :cond_33
    instance-of v10, v9, Landroid/text/Spannable;

    if-eqz v10, :cond_34

    .line 156
    check-cast v9, Landroid/text/Spannable;

    goto :goto_21

    .line 157
    :cond_34
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v9, v10

    .line 158
    :goto_21
    iget-object v10, v6, Lb3/o0;->a:Lb3/e0;

    iget-object v11, v6, Lb3/o0;->b:Lb3/u;

    .line 159
    iget-object v10, v10, Lb3/e0;->m:Lm3/l;

    const/16 p3, 0x0

    .line 160
    sget-object v5, Lm3/l;->c:Lm3/l;

    invoke-static {v10, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/16 v10, 0x21

    if-eqz v5, :cond_35

    .line 161
    sget-object v5, Lj3/b;->a:Lj3/a;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-wide/from16 p5, v13

    const/4 v13, 0x0

    .line 162
    invoke-interface {v9, v5, v13, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_22

    :cond_35
    move-wide/from16 p5, v13

    .line 163
    :goto_22
    iget-object v2, v6, Lb3/o0;->c:Lb3/y;

    if-eqz v2, :cond_36

    .line 164
    iget-object v2, v2, Lb3/y;->b:Lb3/w;

    if-eqz v2, :cond_36

    .line 165
    iget-boolean v2, v2, Lb3/w;->a:Z

    goto :goto_23

    :cond_36
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_38

    .line 166
    iget-object v2, v11, Lb3/u;->f:Lm3/i;

    if-nez v2, :cond_38

    .line 167
    iget-wide v1, v11, Lb3/u;->c:J

    .line 168
    invoke-static {v1, v2, v3, v12}, Lc7/a;->O(JFLn3/c;)F

    move-result v1

    .line 169
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_37

    .line 170
    new-instance v2, Le3/g;

    invoke-direct {v2, v1}, Le3/g;-><init>(F)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v13, 0x0

    .line 171
    invoke-interface {v9, v2, v13, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_37
    const/4 v13, 0x0

    goto :goto_29

    .line 172
    :cond_38
    iget-object v2, v11, Lb3/u;->f:Lm3/i;

    if-nez v2, :cond_39

    .line 173
    sget-object v2, Lm3/i;->c:Lm3/i;

    .line 174
    :cond_39
    iget-wide v13, v11, Lb3/u;->c:J

    .line 175
    invoke-static {v13, v14, v3, v12}, Lc7/a;->O(JFLn3/c;)F

    move-result v20

    .line 176
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_37

    .line 177
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_24

    :cond_3a
    invoke-static {v9}, Lxb/i;->R(Ljava/lang/CharSequence;)C

    move-result v5

    if-ne v5, v1, :cond_3b

    :goto_24
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_25
    move/from16 v21, v1

    goto :goto_26

    :cond_3b
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_25

    .line 178
    :goto_26
    new-instance v19, Le3/h;

    .line 179
    iget v1, v2, Lm3/i;->b:I

    and-int/lit8 v5, v1, 0x1

    if-lez v5, :cond_3c

    const/16 v22, 0x1

    goto :goto_27

    :cond_3c
    const/16 v22, 0x0

    :goto_27
    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_3d

    const/16 v23, 0x1

    goto :goto_28

    :cond_3d
    const/16 v23, 0x0

    .line 180
    :goto_28
    iget v1, v2, Lm3/i;->a:F

    const/16 v25, 0x0

    move/from16 v24, v1

    .line 181
    invoke-direct/range {v19 .. v25}, Le3/h;-><init>(FIZZFZ)V

    move-object/from16 v1, v19

    .line 182
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v13, 0x0

    .line 183
    invoke-interface {v9, v1, v13, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 184
    :goto_29
    iget-object v1, v11, Lb3/u;->d:Lm3/q;

    if-eqz v1, :cond_46

    const/16 p2, 0x0

    .line 185
    iget-wide v13, v1, Lm3/q;->a:J

    iget-wide v1, v1, Lm3/q;->b:J

    move-object v5, v11

    .line 186
    invoke-static/range {p2 .. p2}, Lc7/a;->H(I)J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Ln3/o;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-static/range {p2 .. p2}, Lc7/a;->H(I)J

    move-result-wide v10

    invoke-static {v1, v2, v10, v11}, Ln3/o;->a(JJ)Z

    move-result v10

    if-nez v10, :cond_3f

    :cond_3e
    and-long v10, v13, v15

    cmp-long v20, v10, p5

    if-nez v20, :cond_40

    :cond_3f
    :goto_2a
    move-object v15, v7

    move-object/from16 p5, v8

    goto/16 :goto_2d

    :cond_40
    and-long v10, v1, v15

    cmp-long v15, v10, p5

    if-nez v15, :cond_41

    goto :goto_2a

    .line 187
    :cond_41
    invoke-static {v13, v14}, Ln3/o;->b(J)J

    move-result-wide v10

    move-object v15, v7

    move-object/from16 p5, v8

    const-wide v7, 0x100000000L

    .line 188
    invoke-static {v10, v11, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v16

    if-eqz v16, :cond_42

    invoke-interface {v12, v13, v14}, Ln3/c;->h0(J)F

    move-result v10

    const-wide v7, 0x200000000L

    goto :goto_2b

    :cond_42
    const-wide v7, 0x200000000L

    .line 189
    invoke-static {v10, v11, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-static {v13, v14}, Ln3/o;->c(J)F

    move-result v10

    mul-float v10, v10, v3

    goto :goto_2b

    :cond_43
    const/4 v10, 0x0

    .line 190
    :goto_2b
    invoke-static {v1, v2}, Ln3/o;->b(J)J

    move-result-wide v13

    const-wide v7, 0x100000000L

    .line 191
    invoke-static {v13, v14, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_44

    invoke-interface {v12, v1, v2}, Ln3/c;->h0(J)F

    move-result v1

    goto :goto_2c

    :cond_44
    const-wide v7, 0x200000000L

    .line 192
    invoke-static {v13, v14, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_45

    invoke-static {v1, v2}, Ln3/o;->c(J)F

    move-result v1

    mul-float v1, v1, v3

    goto :goto_2c

    :cond_45
    const/4 v1, 0x0

    .line 193
    :goto_2c
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v3, v7

    float-to-int v3, v3

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    float-to-int v1, v1

    invoke-direct {v2, v3, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 194
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    const/4 v13, 0x0

    .line 195
    invoke-interface {v9, v2, v13, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2d

    :cond_46
    move-object v5, v11

    goto/16 :goto_2a

    .line 196
    :goto_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v2, :cond_4b

    .line 198
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 199
    check-cast v7, Lb3/e;

    .line 200
    iget-object v8, v7, Lb3/e;->a:Ljava/lang/Object;

    .line 201
    instance-of v10, v8, Lb3/e0;

    if-eqz v10, :cond_4a

    move-object v10, v8

    check-cast v10, Lb3/e0;

    .line 202
    iget-object v11, v10, Lb3/e0;->f:Lf3/n;

    if-nez v11, :cond_48

    .line 203
    iget-object v11, v10, Lb3/e0;->d:Lf3/i;

    if-nez v11, :cond_48

    .line 204
    iget-object v10, v10, Lb3/e0;->c:Lf3/k;

    if-eqz v10, :cond_47

    goto :goto_2f

    :cond_47
    const/4 v10, 0x0

    goto :goto_30

    :cond_48
    :goto_2f
    const/4 v10, 0x1

    :goto_30
    if-nez v10, :cond_49

    .line 205
    check-cast v8, Lb3/e0;

    .line 206
    iget-object v8, v8, Lb3/e0;->e:Lf3/j;

    if-eqz v8, :cond_4a

    .line 207
    :cond_49
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 208
    :cond_4b
    iget-object v2, v6, Lb3/o0;->a:Lb3/e0;

    .line 209
    iget-object v3, v2, Lb3/e0;->f:Lf3/n;

    if-nez v3, :cond_4d

    .line 210
    iget-object v6, v2, Lb3/e0;->d:Lf3/i;

    if-nez v6, :cond_4d

    .line 211
    iget-object v6, v2, Lb3/e0;->c:Lf3/k;

    if-eqz v6, :cond_4c

    goto :goto_31

    :cond_4c
    const/4 v6, 0x0

    goto :goto_32

    :cond_4d
    :goto_31
    const/4 v6, 0x1

    :goto_32
    if-nez v6, :cond_4f

    .line 212
    iget-object v6, v2, Lb3/e0;->e:Lf3/j;

    if-eqz v6, :cond_4e

    goto :goto_33

    :cond_4e
    move-object/from16 v2, p1

    goto :goto_34

    .line 213
    :cond_4f
    :goto_33
    iget-object v6, v2, Lb3/e0;->c:Lf3/k;

    .line 214
    iget-object v7, v2, Lb3/e0;->d:Lf3/i;

    .line 215
    iget-object v2, v2, Lb3/e0;->e:Lf3/j;

    .line 216
    new-instance v20, Lb3/e0;

    const/16 v38, 0x0

    const v39, 0xffc3

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    invoke-direct/range {v20 .. v39}, Lb3/e0;-><init>(JJLf3/k;Lf3/i;Lf3/j;Lf3/n;Ljava/lang/String;JLm3/a;Lm3/p;Li3/b;JLm3/l;Ly1/k0;I)V

    move-object/from16 v2, v20

    .line 217
    :goto_34
    new-instance v3, Lk3/a;

    move-object/from16 v6, p5

    const/4 v13, 0x0

    invoke-direct {v3, v13, v9, v6}, Lk3/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_52

    .line 219
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_51

    .line 220
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb3/e;

    .line 221
    iget-object v6, v6, Lb3/e;->a:Ljava/lang/Object;

    .line 222
    check-cast v6, Lb3/e0;

    if-nez v2, :cond_50

    goto :goto_35

    .line 223
    :cond_50
    invoke-virtual {v2, v6}, Lb3/e0;->c(Lb3/e0;)Lb3/e0;

    move-result-object v6

    .line 224
    :goto_35
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/e;

    .line 225
    iget v2, v2, Lb3/e;->b:I

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb3/e;

    .line 228
    iget v1, v1, Lb3/e;->c:I

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 230
    invoke-virtual {v3, v6, v2, v1}, Lk3/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    move-object/from16 v16, v5

    goto/16 :goto_3c

    .line 231
    :cond_52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v7, v6, 0x2

    .line 232
    new-array v8, v7, [I

    .line 233
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_36
    if-ge v11, v10, :cond_53

    .line 234
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 235
    check-cast v13, Lb3/e;

    .line 236
    iget v14, v13, Lb3/e;->b:I

    .line 237
    aput v14, v8, v11

    add-int v14, v11, v6

    .line 238
    iget v13, v13, Lb3/e;->c:I

    .line 239
    aput v13, v8, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_36

    :cond_53
    const/4 v11, 0x1

    if-le v7, v11, :cond_54

    .line 240
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    :cond_54
    if-eqz v7, :cond_77

    const/4 v13, 0x0

    .line 241
    aget v6, v8, v13

    move v10, v6

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v7, :cond_51

    .line 242
    aget v11, v8, v6

    if-ne v11, v10, :cond_55

    move-object/from16 p6, v1

    move-object/from16 p5, v2

    move-object/from16 v16, v5

    move/from16 v20, v6

    goto :goto_3b

    .line 243
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 p5, v2

    const/4 v14, 0x0

    :goto_38
    if-ge v14, v13, :cond_58

    .line 244
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p6, v1

    .line 245
    move-object/from16 v1, v16

    check-cast v1, Lb3/e;

    move-object/from16 v16, v5

    .line 246
    iget v5, v1, Lb3/e;->b:I

    move/from16 v20, v6

    .line 247
    iget v6, v1, Lb3/e;->c:I

    if-eq v5, v6, :cond_57

    .line 248
    invoke-static {v10, v11, v5, v6}, Lb3/h;->b(IIII)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 249
    iget-object v1, v1, Lb3/e;->a:Ljava/lang/Object;

    .line 250
    check-cast v1, Lb3/e0;

    if-nez v2, :cond_56

    :goto_39
    move-object v2, v1

    goto :goto_3a

    .line 251
    :cond_56
    invoke-virtual {v2, v1}, Lb3/e0;->c(Lb3/e0;)Lb3/e0;

    move-result-object v1

    goto :goto_39

    :cond_57
    :goto_3a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p6

    move-object/from16 v5, v16

    move/from16 v6, v20

    goto :goto_38

    :cond_58
    move-object/from16 p6, v1

    move-object/from16 v16, v5

    move/from16 v20, v6

    if-eqz v2, :cond_59

    .line 252
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v1, v5}, Lk3/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    move v10, v11

    :goto_3b
    add-int/lit8 v6, v20, 0x1

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v5, v16

    goto :goto_37

    .line 253
    :goto_3c
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_3d
    if-ge v7, v1, :cond_6a

    .line 254
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/e;

    .line 255
    iget-object v5, v3, Lb3/e;->a:Ljava/lang/Object;

    .line 256
    instance-of v6, v5, Lb3/e0;

    if-eqz v6, :cond_5a

    .line 257
    iget v13, v3, Lb3/e;->b:I

    .line 258
    iget v14, v3, Lb3/e;->c:I

    if-ltz v13, :cond_5a

    .line 259
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v13, v3, :cond_5a

    if-le v14, v13, :cond_5a

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v14, v3, :cond_5b

    :cond_5a
    move/from16 p5, v1

    move/from16 p6, v2

    move-object/from16 v22, v12

    move-object/from16 v1, v16

    move/from16 v16, v7

    goto/16 :goto_47

    .line 260
    :cond_5b
    check-cast v5, Lb3/e0;

    iget-wide v10, v5, Lb3/e0;->h:J

    .line 261
    iget-object v3, v5, Lb3/e0;->i:Lm3/a;

    iget-object v6, v5, Lb3/e0;->a:Lm3/o;

    if-eqz v3, :cond_5c

    .line 262
    iget v3, v3, Lm3/a;->a:F

    .line 263
    new-instance v8, Le3/a;

    move/from16 p5, v1

    const/4 v1, 0x0

    invoke-direct {v8, v3, v1}, Le3/a;-><init>(FI)V

    const/16 v3, 0x21

    .line 264
    invoke-interface {v9, v8, v13, v14, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_3e
    move/from16 p6, v2

    goto :goto_3f

    :cond_5c
    move/from16 p5, v1

    goto :goto_3e

    .line 265
    :goto_3f
    invoke-interface {v6}, Lm3/o;->b()J

    move-result-wide v1

    .line 266
    invoke-static {v9, v1, v2, v13, v14}, Lc7/a;->S(Landroid/text/Spannable;JII)V

    .line 267
    invoke-interface {v6}, Lm3/o;->e()Ly1/m;

    move-result-object v1

    .line 268
    invoke-interface {v6}, Lm3/o;->a()F

    move-result v2

    if-eqz v1, :cond_5e

    .line 269
    instance-of v3, v1, Ly1/n0;

    if-eqz v3, :cond_5d

    .line 270
    check-cast v1, Ly1/n0;

    .line 271
    iget-wide v1, v1, Ly1/n0;->a:J

    .line 272
    invoke-static {v9, v1, v2, v13, v14}, Lc7/a;->S(Landroid/text/Spannable;JII)V

    goto :goto_40

    .line 273
    :cond_5d
    new-instance v3, Ll3/b;

    check-cast v1, Ly1/j0;

    invoke-direct {v3, v1, v2}, Ll3/b;-><init>(Ly1/j0;F)V

    const/16 v1, 0x21

    .line 274
    invoke-interface {v9, v3, v13, v14, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 275
    :cond_5e
    :goto_40
    iget-object v1, v5, Lb3/e0;->m:Lm3/l;

    if-eqz v1, :cond_61

    .line 276
    iget v1, v1, Lm3/l;->a:I

    .line 277
    new-instance v2, Le3/k;

    or-int/lit8 v3, v1, 0x1

    if-ne v3, v1, :cond_5f

    const/4 v3, 0x1

    goto :goto_41

    :cond_5f
    const/4 v3, 0x0

    :goto_41
    or-int/lit8 v6, v1, 0x2

    if-ne v6, v1, :cond_60

    const/4 v1, 0x1

    goto :goto_42

    :cond_60
    const/4 v1, 0x0

    :goto_42
    invoke-direct {v2, v3, v1}, Le3/k;-><init>(ZZ)V

    const/16 v3, 0x21

    .line 278
    invoke-interface {v9, v2, v13, v14, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_43
    move-wide v1, v10

    goto :goto_44

    :cond_61
    const/16 v3, 0x21

    goto :goto_43

    .line 279
    :goto_44
    iget-wide v10, v5, Lb3/e0;->b:J

    move-wide v2, v1

    move-object/from16 v1, v16

    const/16 v6, 0x21

    .line 280
    invoke-static/range {v9 .. v14}, Lc7/a;->T(Landroid/text/Spannable;JLn3/c;II)V

    .line 281
    iget-object v8, v5, Lb3/e0;->g:Ljava/lang/String;

    if-eqz v8, :cond_62

    .line 282
    new-instance v10, Le3/b;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v8}, Le3/b;-><init>(ILjava/lang/Object;)V

    .line 283
    invoke-interface {v9, v10, v13, v14, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 284
    :cond_62
    iget-object v8, v5, Lb3/e0;->j:Lm3/p;

    if-eqz v8, :cond_63

    .line 285
    new-instance v10, Landroid/text/style/ScaleXSpan;

    .line 286
    iget v11, v8, Lm3/p;->a:F

    .line 287
    invoke-direct {v10, v11}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 288
    invoke-interface {v9, v10, v13, v14, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 289
    new-instance v10, Le3/a;

    .line 290
    iget v8, v8, Lm3/p;->b:F

    const/4 v11, 0x1

    .line 291
    invoke-direct {v10, v8, v11}, Le3/a;-><init>(FI)V

    .line 292
    invoke-interface {v9, v10, v13, v14, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_45

    :cond_63
    const/4 v11, 0x1

    .line 293
    :goto_45
    iget-object v8, v5, Lb3/e0;->k:Li3/b;

    .line 294
    invoke-static {v9, v8, v13, v14}, Lc7/a;->U(Landroid/text/Spannable;Li3/b;II)V

    move-object v8, v12

    .line 295
    iget-wide v11, v5, Lb3/e0;->l:J

    const-wide/16 v19, 0x10

    cmp-long v10, v11, v19

    if-eqz v10, :cond_64

    .line 296
    new-instance v10, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v11, v12}, Ly1/h0;->C(J)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 297
    invoke-interface {v9, v10, v13, v14, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 298
    :cond_64
    iget-object v10, v5, Lb3/e0;->n:Ly1/k0;

    if-eqz v10, :cond_66

    .line 299
    iget-wide v11, v10, Ly1/k0;->b:J

    .line 300
    new-instance v6, Le3/j;

    move-wide/from16 v20, v2

    .line 301
    iget-wide v2, v10, Ly1/k0;->a:J

    .line 302
    invoke-static {v2, v3}, Ly1/h0;->C(J)I

    move-result v2

    const/16 v3, 0x20

    move/from16 v16, v7

    move-object/from16 v22, v8

    shr-long v7, v11, v3

    long-to-int v3, v7

    .line 303
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v11

    long-to-int v8, v7

    .line 304
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 305
    iget v8, v10, Ly1/k0;->c:F

    cmpg-float v10, v8, p3

    if-nez v10, :cond_65

    const/4 v8, 0x1

    .line 306
    :cond_65
    invoke-direct {v6, v3, v7, v8, v2}, Le3/j;-><init>(FFFI)V

    const/16 v3, 0x21

    .line 307
    invoke-interface {v9, v6, v13, v14, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_46

    :cond_66
    move-wide/from16 v20, v2

    move/from16 v16, v7

    move-object/from16 v22, v8

    const/16 v3, 0x21

    .line 308
    :goto_46
    iget-object v2, v5, Lb3/e0;->p:La2/h;

    if-eqz v2, :cond_67

    .line 309
    new-instance v5, Ll3/a;

    invoke-direct {v5, v2}, Ll3/a;-><init>(La2/h;)V

    .line 310
    invoke-interface {v9, v5, v13, v14, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 311
    :cond_67
    invoke-static/range {v20 .. v21}, Ln3/o;->b(J)J

    move-result-wide v2

    const-wide v7, 0x100000000L

    invoke-static {v2, v3, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-static/range {v20 .. v21}, Ln3/o;->b(J)J

    move-result-wide v2

    const-wide v7, 0x200000000L

    invoke-static {v2, v3, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_68
    const/4 v2, 0x1

    goto :goto_48

    :cond_69
    :goto_47
    move/from16 v2, p6

    :goto_48
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v16, v1

    move-object/from16 v12, v22

    move/from16 v1, p5

    goto/16 :goto_3d

    :cond_6a
    move/from16 p6, v2

    move-object/from16 v22, v12

    move-object/from16 v1, v16

    if-eqz p6, :cond_70

    .line 312
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_49
    if-ge v7, v2, :cond_70

    .line 313
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/e;

    .line 314
    iget-object v5, v3, Lb3/e;->a:Ljava/lang/Object;

    .line 315
    check-cast v5, Lb3/b;

    .line 316
    instance-of v6, v5, Lb3/e0;

    if-eqz v6, :cond_6b

    .line 317
    iget v6, v3, Lb3/e;->b:I

    .line 318
    iget v3, v3, Lb3/e;->c:I

    if-ltz v6, :cond_6b

    .line 319
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v6, v8, :cond_6b

    if-le v3, v6, :cond_6b

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v3, v8, :cond_6c

    :cond_6b
    move v5, v7

    move-object/from16 v8, v22

    const/16 v10, 0x21

    goto :goto_4b

    .line 320
    :cond_6c
    check-cast v5, Lb3/e0;

    .line 321
    iget-wide v10, v5, Lb3/e0;->h:J

    .line 322
    invoke-static {v10, v11}, Ln3/o;->b(J)J

    move-result-wide v12

    move v5, v7

    const-wide v7, 0x100000000L

    .line 323
    invoke-static {v12, v13, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v14

    if-eqz v14, :cond_6d

    new-instance v7, Le3/f;

    move-object/from16 v8, v22

    invoke-interface {v8, v10, v11}, Ln3/c;->h0(J)F

    move-result v10

    invoke-direct {v7, v10}, Le3/f;-><init>(F)V

    goto :goto_4a

    :cond_6d
    move-wide/from16 v20, v10

    move-object/from16 v8, v22

    const-wide v10, 0x200000000L

    .line 324
    invoke-static {v12, v13, v10, v11}, Ln3/p;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 325
    new-instance v7, Le3/e;

    invoke-static/range {v20 .. v21}, Ln3/o;->c(J)F

    move-result v10

    invoke-direct {v7, v10}, Le3/e;-><init>(F)V

    goto :goto_4a

    :cond_6e
    move-object/from16 v7, p1

    :goto_4a
    const/16 v10, 0x21

    if-eqz v7, :cond_6f

    .line 326
    invoke-interface {v9, v7, v6, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6f
    :goto_4b
    add-int/lit8 v7, v5, 0x1

    move-object/from16 v22, v8

    goto :goto_49

    :cond_70
    move-object/from16 v8, v22

    .line 327
    iget-object v1, v1, Lb3/u;->d:Lm3/q;

    if-eqz v1, :cond_72

    .line 328
    iget-wide v1, v1, Lm3/q;->a:J

    .line 329
    invoke-static {v1, v2}, Ln3/o;->b(J)J

    move-result-wide v5

    const-wide v10, 0x100000000L

    .line 330
    invoke-static {v5, v6, v10, v11}, Ln3/p;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v8, v1, v2}, Ln3/c;->h0(J)F

    goto :goto_4c

    :cond_71
    const-wide v7, 0x200000000L

    .line 331
    invoke-static {v5, v6, v7, v8}, Ln3/p;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-static {v1, v2}, Ln3/o;->c(J)F

    .line 332
    :cond_72
    :goto_4c
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_4d
    if-ge v7, v1, :cond_73

    .line 333
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 334
    check-cast v2, Lb3/e;

    .line 335
    iget-object v2, v2, Lb3/e;->a:Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 336
    :cond_73
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_76

    const/4 v13, 0x0

    .line 337
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 338
    check-cast v1, Lb3/e;

    .line 339
    iget-object v2, v1, Lb3/e;->a:Ljava/lang/Object;

    if-nez v2, :cond_75

    .line 340
    iget v2, v1, Lb3/e;->b:I

    .line 341
    iget v1, v1, Lb3/e;->c:I

    .line 342
    const-class v3, Ll4/w;

    invoke-interface {v9, v2, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 343
    array-length v2, v1

    const/4 v12, 0x0

    :goto_4e
    if-ge v12, v2, :cond_74

    aget-object v3, v1, v12

    check-cast v3, Ll4/w;

    .line 344
    invoke-interface {v9, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4e

    .line 345
    :cond_74
    new-instance v1, Le3/i;

    .line 346
    throw p1

    .line 347
    :cond_75
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 348
    :cond_76
    :goto_4f
    iput-object v9, v0, Lj3/d;->h:Ljava/lang/CharSequence;

    .line 349
    new-instance v1, Lc3/h;

    iget-object v2, v0, Lj3/d;->g:Lj3/f;

    iget v3, v0, Lj3/d;->l:I

    invoke-direct {v1, v9, v2, v3}, Lc3/h;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v1, v0, Lj3/d;->i:Lc3/h;

    return-void

    .line 350
    :cond_77
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Array is empty."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_78
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 352
    const-string v2, "Invalid TextDirection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lj3/d;->j:La2/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, La2/b;->N()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Lj3/d;->k:Z

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lj3/d;->b:Lb3/o0;

    .line 19
    .line 20
    iget-object v0, v0, Lb3/o0;->c:Lb3/y;

    .line 21
    .line 22
    sget-object v0, Lj3/j;->a:La2/d;

    .line 23
    .line 24
    sget-object v0, Lj3/j;->a:La2/d;

    .line 25
    .line 26
    iget-object v2, v0, La2/d;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lf1/v2;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {}, Ll4/j;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, La2/d;->l()Lf1/v2;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v0, La2/d;->b:Ljava/lang/Object;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sget-object v2, Lj3/k;->a:Lj3/l;

    .line 47
    .line 48
    :goto_1
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    return v1

    .line 62
    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 63
    return v0
.end method

.method public final g()F
    .locals 10

    .line 1
    iget-object v0, p0, Lj3/d;->i:Lc3/h;

    .line 2
    .line 3
    iget v1, v0, Lc3/h;->e:F

    .line 4
    .line 5
    iget-object v2, v0, Lc3/h;->b:Landroid/text/TextPaint;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget v0, v0, Lc3/h;->e:F

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v3, Lc3/d;

    .line 25
    .line 26
    iget-object v4, v0, Lc3/h;->a:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-direct {v3, v4, v5}, Lc3/d;-><init>(Ljava/lang/CharSequence;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/util/PriorityQueue;

    .line 39
    .line 40
    new-instance v4, Lb4/c;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    invoke-direct {v4, v5}, Lb4/c;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const/16 v5, 0xa

    .line 47
    .line 48
    invoke-direct {v3, v5, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v6, 0x0

    .line 56
    :goto_0
    const/4 v7, -0x1

    .line 57
    if-eq v4, v7, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-ge v7, v5, :cond_1

    .line 64
    .line 65
    new-instance v7, Lr8/j;

    .line 66
    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-direct {v7, v6, v8}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Lr8/j;

    .line 87
    .line 88
    if-eqz v7, :cond_2

    .line 89
    .line 90
    iget-object v8, v7, Lr8/j;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v8, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    iget-object v7, v7, Lr8/j;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v7, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    sub-int/2addr v8, v7

    .line 107
    sub-int v7, v4, v6

    .line 108
    .line 109
    if-ge v8, v7, :cond_2

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    new-instance v7, Lr8/j;

    .line 115
    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-direct {v7, v6, v8}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    move v9, v6

    .line 135
    move v6, v4

    .line 136
    move v4, v9

    .line 137
    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_4

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_6

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Lr8/j;

    .line 161
    .line 162
    iget-object v4, v3, Lr8/j;->a:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v4, Ljava/lang/Number;

    .line 165
    .line 166
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    iget-object v3, v3, Lr8/j;->b:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v3, Ljava/lang/Number;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {v0}, Lc3/h;->b()Ljava/lang/CharSequence;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v5, v4, v3, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_5

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Lr8/j;

    .line 197
    .line 198
    iget-object v5, v4, Lr8/j;->a:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v5, Ljava/lang/Number;

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    iget-object v4, v4, Lr8/j;->b:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v4, Ljava/lang/Number;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v0}, Lc3/h;->b()Ljava/lang/CharSequence;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v6, v5, v4, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    goto :goto_2

    .line 227
    :cond_5
    move v1, v3

    .line 228
    :goto_3
    iput v1, v0, Lc3/h;->e:F

    .line 229
    .line 230
    return v1

    .line 231
    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 234
    .line 235
    .line 236
    throw v0
.end method

.method public final h()F
    .locals 1

    .line 1
    iget-object v0, p0, Lj3/d;->i:Lc3/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc3/h;->c()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
