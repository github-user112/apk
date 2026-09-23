.class public final Lb3/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lb3/t;
.implements Lna/m;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ld6/f;Ln6/a;Lib/d;Lu0/j;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 124
    iput-object p2, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 125
    iput-object p3, p0, Lb3/q;->c:Ljava/lang/Object;

    .line 126
    iput-object p5, p0, Lb3/q;->d:Ljava/lang/Object;

    .line 127
    iput-object p6, p0, Lb3/q;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/Layout;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    :cond_0
    iget-object v2, p0, Lb3/q;->b:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v4}, Lxb/i;->O(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_1

    .line 11
    iget-object v1, p0, Lb3/q;->b:Ljava/lang/Object;

    check-cast v1, Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 12
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lb3/q;->b:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 14
    iput-object p1, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lb3/q;->c:Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lb3/q;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lb3/q;->d:Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lb3/q;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public constructor <init>(Lb3/g;Lb3/o0;Ljava/util/List;Ln3/c;Lf3/d;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, v0, Lb3/q;->b:Ljava/lang/Object;

    move-object/from16 v3, p3

    .line 20
    iput-object v3, v0, Lb3/q;->c:Ljava/lang/Object;

    .line 21
    new-instance v3, Lb3/p;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lb3/p;-><init>(Lb3/q;I)V

    sget-object v5, Lr8/i;->b:Lr8/i;

    invoke-static {v5, v3}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object v3

    iput-object v3, v0, Lb3/q;->d:Ljava/lang/Object;

    .line 22
    new-instance v3, Lb3/p;

    const/4 v6, 0x1

    invoke-direct {v3, v0, v6}, Lb3/p;-><init>(Lb3/q;I)V

    invoke-static {v5, v3}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object v3

    iput-object v3, v0, Lb3/q;->e:Ljava/lang/Object;

    .line 23
    iget-object v3, v2, Lb3/o0;->b:Lb3/u;

    .line 24
    sget-object v5, Lb3/h;->a:Lb3/g;

    .line 25
    iget-object v5, v1, Lb3/g;->d:Ljava/util/ArrayList;

    iget-object v7, v1, Lb3/g;->b:Ljava/lang/String;

    .line 26
    sget-object v8, Ls8/w;->a:Ls8/w;

    if-eqz v5, :cond_0

    .line 27
    new-instance v9, Lb3/f;

    .line 28
    invoke-direct {v9, v6}, Lb3/f;-><init>(I)V

    .line 29
    invoke-static {v5, v9}, Ls8/p;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v8

    .line 30
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v9, Ls8/k;

    invoke-direct {v9}, Ls8/k;-><init>()V

    .line 32
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v10, :cond_a

    .line 33
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 34
    check-cast v13, Lb3/e;

    .line 35
    iget-object v14, v13, Lb3/e;->a:Ljava/lang/Object;

    .line 36
    check-cast v14, Lb3/u;

    invoke-virtual {v3, v14}, Lb3/u;->a(Lb3/u;)Lb3/u;

    move-result-object v14

    .line 37
    iget v15, v13, Lb3/e;->b:I

    iget v13, v13, Lb3/e;->c:I

    if-gt v15, v13, :cond_1

    goto :goto_2

    .line 38
    :cond_1
    const-string v16, "Reversed range is not supported"

    .line 39
    invoke-static/range {v16 .. v16}, Lh3/a;->a(Ljava/lang/String;)V

    :goto_2
    if-ge v12, v15, :cond_4

    .line 40
    invoke-virtual {v9}, Ls8/k;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    .line 41
    invoke-virtual {v9}, Ls8/k;->last()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lb3/e;

    move-object/from16 v16, v5

    .line 42
    iget v5, v4, Lb3/e;->c:I

    move-object/from16 v17, v8

    iget-object v8, v4, Lb3/e;->a:Ljava/lang/Object;

    if-ge v15, v5, :cond_2

    .line 43
    new-instance v4, Lb3/e;

    invoke-direct {v4, v12, v15, v8}, Lb3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v15

    move-object/from16 v5, v16

    move-object/from16 v8, v17

    :goto_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move/from16 v18, v10

    .line 44
    new-instance v10, Lb3/e;

    invoke-direct {v10, v12, v5, v8}, Lb3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget v12, v4, Lb3/e;->c:I

    .line 46
    :goto_4
    invoke-virtual {v9}, Ls8/k;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v9}, Ls8/k;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/e;

    .line 47
    iget v4, v4, Lb3/e;->c:I

    if-ne v12, v4, :cond_3

    .line 48
    invoke-virtual {v9}, Ls8/k;->removeLast()Ljava/lang/Object;

    goto :goto_4

    :cond_3
    move-object/from16 v5, v16

    move-object/from16 v8, v17

    move/from16 v10, v18

    goto :goto_3

    :cond_4
    move-object/from16 v16, v5

    move-object/from16 v17, v8

    move/from16 v18, v10

    if-ge v12, v15, :cond_5

    .line 49
    new-instance v4, Lb3/e;

    invoke-direct {v4, v12, v15, v3}, Lb3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v15

    .line 50
    :cond_5
    invoke-virtual {v9}, Ls8/k;->m()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/e;

    if-eqz v4, :cond_9

    .line 51
    iget v5, v4, Lb3/e;->c:I

    iget-object v8, v4, Lb3/e;->a:Ljava/lang/Object;

    .line 52
    iget v4, v4, Lb3/e;->b:I

    if-ne v4, v15, :cond_6

    if-ne v5, v13, :cond_6

    .line 53
    invoke-virtual {v9}, Ls8/k;->removeLast()Ljava/lang/Object;

    .line 54
    new-instance v4, Lb3/e;

    check-cast v8, Lb3/u;

    invoke-virtual {v8, v14}, Lb3/u;->a(Lb3/u;)Lb3/u;

    move-result-object v5

    invoke-direct {v4, v15, v13, v5}, Lb3/e;-><init>(IILjava/lang/Object;)V

    .line 55
    invoke-virtual {v9, v4}, Ls8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    if-ne v4, v5, :cond_7

    .line 56
    new-instance v10, Lb3/e;

    invoke-direct {v10, v4, v5, v8}, Lb3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v9}, Ls8/k;->removeLast()Ljava/lang/Object;

    .line 58
    new-instance v4, Lb3/e;

    invoke-direct {v4, v15, v13, v14}, Lb3/e;-><init>(IILjava/lang/Object;)V

    .line 59
    invoke-virtual {v9, v4}, Ls8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-lt v5, v13, :cond_8

    .line 60
    new-instance v4, Lb3/e;

    check-cast v8, Lb3/u;

    invoke-virtual {v8, v14}, Lb3/u;->a(Lb3/u;)Lb3/u;

    move-result-object v5

    invoke-direct {v4, v15, v13, v5}, Lb3/e;-><init>(IILjava/lang/Object;)V

    .line 61
    invoke-virtual {v9, v4}, Ls8/k;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    .line 62
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 63
    :cond_9
    new-instance v4, Lb3/e;

    invoke-direct {v4, v15, v13, v14}, Lb3/e;-><init>(IILjava/lang/Object;)V

    .line 64
    invoke-virtual {v9, v4}, Ls8/k;->addLast(Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v16

    move-object/from16 v8, v17

    move/from16 v10, v18

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v17, v8

    .line 65
    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v12, v4, :cond_c

    invoke-virtual {v9}, Ls8/k;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 66
    invoke-virtual {v9}, Ls8/k;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/e;

    .line 67
    new-instance v5, Lb3/e;

    .line 68
    iget-object v8, v4, Lb3/e;->a:Ljava/lang/Object;

    iget v4, v4, Lb3/e;->c:I

    .line 69
    invoke-direct {v5, v12, v4, v8}, Lb3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_7
    invoke-virtual {v9}, Ls8/k;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v9}, Ls8/k;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb3/e;

    .line 71
    iget v5, v5, Lb3/e;->c:I

    if-ne v4, v5, :cond_b

    .line 72
    invoke-virtual {v9}, Ls8/k;->removeLast()Ljava/lang/Object;

    goto :goto_7

    :cond_b
    move v12, v4

    goto :goto_6

    .line 73
    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v12, v4, :cond_d

    .line 74
    new-instance v4, Lb3/e;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v12, v5, v3}, Lb3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 76
    new-instance v4, Lb3/e;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v3}, Lb3/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    .line 77
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_16

    .line 79
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 80
    check-cast v10, Lb3/e;

    .line 81
    iget v11, v10, Lb3/e;->b:I

    iget v12, v10, Lb3/e;->c:I

    .line 82
    new-instance v13, Lb3/g;

    if-eq v11, v12, :cond_f

    .line 83
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "substring(...)"

    invoke-static {v14, v15}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    const-string v14, ""

    .line 84
    :goto_a
    new-instance v15, La8/v0;

    const/4 v5, 0x3

    invoke-direct {v15, v5}, La8/v0;-><init>(I)V

    invoke-static {v1, v11, v12, v15}, Lb3/h;->a(Lb3/g;IILa8/v0;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_10

    move-object/from16 v5, v17

    .line 85
    :cond_10
    invoke-direct {v13, v14, v5}, Lb3/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 86
    iget-object v5, v10, Lb3/e;->a:Ljava/lang/Object;

    .line 87
    check-cast v5, Lb3/u;

    .line 88
    iget v10, v5, Lb3/u;->b:I

    const/high16 v15, -0x80000000

    if-ne v10, v15, :cond_11

    .line 89
    iget v10, v3, Lb3/u;->b:I

    .line 90
    iget v15, v5, Lb3/u;->a:I

    move-object/from16 v29, v6

    move-object/from16 v16, v7

    .line 91
    iget-wide v6, v5, Lb3/u;->c:J

    .line 92
    iget-object v1, v5, Lb3/u;->d:Lm3/q;

    move-object/from16 v23, v1

    .line 93
    iget-object v1, v5, Lb3/u;->e:Lb3/w;

    move-object/from16 v24, v1

    .line 94
    iget-object v1, v5, Lb3/u;->f:Lm3/i;

    move-object/from16 v25, v1

    .line 95
    iget v1, v5, Lb3/u;->g:I

    move/from16 v26, v1

    .line 96
    iget v1, v5, Lb3/u;->h:I

    .line 97
    iget-object v5, v5, Lb3/u;->i:Lm3/s;

    .line 98
    new-instance v18, Lb3/u;

    move/from16 v27, v1

    move-object/from16 v28, v5

    move-wide/from16 v21, v6

    move/from16 v20, v10

    move/from16 v19, v15

    invoke-direct/range {v18 .. v28}, Lb3/u;-><init>(IIJLm3/q;Lb3/w;Lm3/i;IILm3/s;)V

    move-object/from16 v5, v18

    goto :goto_b

    :cond_11
    move-object/from16 v29, v6

    move-object/from16 v16, v7

    .line 99
    :goto_b
    new-instance v1, Lb3/s;

    .line 100
    new-instance v6, Lb3/o0;

    .line 101
    iget-object v7, v2, Lb3/o0;->a:Lb3/e0;

    .line 102
    invoke-virtual {v3, v5}, Lb3/u;->a(Lb3/u;)Lb3/u;

    move-result-object v5

    .line 103
    invoke-direct {v6, v7, v5}, Lb3/o0;-><init>(Lb3/e0;Lb3/u;)V

    .line 104
    iget-object v5, v13, Lb3/g;->a:Ljava/util/List;

    if-nez v5, :cond_12

    move-object/from16 v21, v17

    goto :goto_c

    :cond_12
    move-object/from16 v21, v5

    .line 105
    :goto_c
    iget-object v5, v0, Lb3/q;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 106
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v10, :cond_15

    .line 108
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 109
    check-cast v15, Lb3/e;

    .line 110
    iget v2, v15, Lb3/e;->b:I

    move-object/from16 v25, v3

    iget v3, v15, Lb3/e;->c:I

    .line 111
    invoke-static {v11, v12, v2, v3}, Lb3/h;->b(IIII)Z

    move-result v18

    if-eqz v18, :cond_14

    if-gt v11, v2, :cond_13

    if-gt v3, v12, :cond_13

    :goto_e
    move/from16 v18, v2

    goto :goto_f

    .line 112
    :cond_13
    const-string v18, "placeholder can not overlap with paragraph."

    .line 113
    invoke-static/range {v18 .. v18}, Lh3/a;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 114
    :goto_f
    new-instance v2, Lb3/e;

    .line 115
    iget-object v15, v15, Lb3/e;->a:Ljava/lang/Object;

    move/from16 v19, v3

    sub-int v3, v18, v11

    move-object/from16 v18, v5

    sub-int v5, v19, v11

    .line 116
    invoke-direct {v2, v3, v5, v15}, Lb3/e;-><init>(IILjava/lang/Object;)V

    .line 117
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_14
    move-object/from16 v18, v5

    :goto_10
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v5, v18

    move-object/from16 v3, v25

    goto :goto_d

    :cond_15
    move-object/from16 v25, v3

    .line 118
    new-instance v18, Lj3/d;

    move-object/from16 v24, p4

    move-object/from16 v23, p5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-object/from16 v19, v14

    invoke-direct/range {v18 .. v24}, Lj3/d;-><init>(Ljava/lang/String;Lb3/o0;Ljava/util/List;Ljava/util/List;Lf3/d;Ln3/c;)V

    move-object/from16 v2, v18

    .line 119
    invoke-direct {v1, v2, v11, v12}, Lb3/s;-><init>(Lj3/d;II)V

    .line 120
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, v16

    move-object/from16 v6, v29

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 121
    :cond_16
    iput-object v4, v0, Lb3/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 3
    iput-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lb3/q;->c:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lb3/q;->d:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 7
    new-instance p1, Lc/f;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lc/f;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lb3/q;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp/h3;Lp/h3;Lua/e;Ljava/util/ArrayList;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lb3/q;->c:Ljava/lang/Object;

    iput-object p2, p0, Lb3/q;->d:Ljava/lang/Object;

    iput-object p3, p0, Lb3/q;->e:Ljava/lang/Object;

    iput-object p4, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lb3/q;->b:Ljava/lang/Object;

    return-void
.end method

.method public static q(Landroid/app/Activity;Ljava/util/List;Ld6/f;Lib/d;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ly6/a;

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ly6/a;->l(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v0, 0x1

    .line 38
    :goto_1
    invoke-static {}, La/a;->F()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    if-ne v0, v2, :cond_3

    .line 45
    .line 46
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance v1, Lkb/a;

    .line 51
    .line 52
    invoke-direct {v1, p3, p0, p1, p4}, Lkb/a;-><init>(Lib/d;Landroid/app/Activity;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1, v0, v1}, Ld6/f;->d(Ljava/util/List;ILkb/a;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lb3/s;

    .line 18
    .line 19
    iget-object v4, v4, Lb3/s;->a:Lj3/d;

    .line 20
    .line 21
    invoke-virtual {v4}, Lj3/d;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v2
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp/h3;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lb3/q;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lp/h3;

    .line 11
    .line 12
    iget-object v1, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lua/e;

    .line 15
    .line 16
    new-instance v2, Lza/a;

    .line 17
    .line 18
    iget-object v3, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v3}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lw9/b;

    .line 27
    .line 28
    invoke-direct {v2, v3}, Lza/a;-><init>(Lw9/b;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lp/h3;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public c(Lua/e;)Lna/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lp/h3;->c(Lua/e;)Lna/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Lua/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lp/h3;->d(Lua/e;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(Lua/e;Lza/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lp/h3;->e(Lua/e;Lza/f;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Lua/e;Lua/b;Lua/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lp/h3;->f(Lua/e;Lua/b;Lua/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g()F
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/q;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public i(I)Ljava/text/Bidi;
    .locals 14

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/text/Layout;

    .line 4
    .line 5
    iget-object v1, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lb3/q;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v3, p0, Lb3/q;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, [Z

    .line 16
    .line 17
    aget-boolean v4, v3, p1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/text/Bidi;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v5, p1, -0x1

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Number;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int v11, v1, v5

    .line 56
    .line 57
    iget-object v6, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v6, [C

    .line 60
    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    array-length v7, v6

    .line 64
    if-ge v7, v11, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    move-object v7, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    :goto_2
    new-array v6, v11, [C

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_3
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6, v5, v1, v7, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 77
    .line 78
    .line 79
    invoke-static {v7, v4, v11}, Ljava/text/Bidi;->requiresBidi([CII)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v13, 0x1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lb3/q;->n(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, -0x1

    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    const/4 v12, 0x1

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    const/4 v12, 0x0

    .line 105
    :goto_4
    new-instance v6, Ljava/text/Bidi;

    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-direct/range {v6 .. v12}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/text/Bidi;->getRunCount()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ne v0, v13, :cond_6

    .line 118
    .line 119
    :cond_5
    move-object v6, v5

    .line 120
    :cond_6
    invoke-virtual {v2, p1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    aput-boolean v13, v3, p1

    .line 124
    .line 125
    if-eqz v6, :cond_8

    .line 126
    .line 127
    iget-object p1, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p1, [C

    .line 130
    .line 131
    if-ne v7, p1, :cond_7

    .line 132
    .line 133
    move-object v7, v5

    .line 134
    goto :goto_5

    .line 135
    :cond_7
    move-object v7, p1

    .line 136
    :cond_8
    :goto_5
    iput-object v7, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 137
    .line 138
    return-object v6
.end method

.method public j(IZ)F
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-le p1, v1, :cond_0

    .line 14
    .line 15
    move p1, v1

    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public k(IZZ)F
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lb3/q;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Landroid/text/Layout;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p2}, Lb3/q;->j(IZ)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    return v1

    .line 18
    :cond_0
    invoke-static {v3, v1, v2}, La/a;->u(Landroid/text/Layout;IZ)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eq v1, v5, :cond_1

    .line 31
    .line 32
    if-eq v1, v6, :cond_1

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p2}, Lb3/q;->j(IZ)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    return v1

    .line 39
    :cond_1
    if-eqz v1, :cond_22

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-ne v1, v7, :cond_2

    .line 50
    .line 51
    goto/16 :goto_10

    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0, v1, v2}, Lb3/q;->m(IZ)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Lb3/q;->n(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    const/4 v8, -0x1

    .line 70
    const/4 v10, 0x1

    .line 71
    if-ne v7, v8, :cond_3

    .line 72
    .line 73
    const/4 v7, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v7, 0x0

    .line 76
    :goto_0
    invoke-virtual {v0, v6, v5}, Lb3/q;->p(II)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {v0, v2}, Lb3/q;->n(I)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    sub-int v12, v5, v11

    .line 85
    .line 86
    sub-int v11, v6, v11

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lb3/q;->i(I)Ljava/text/Bidi;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-virtual {v2, v12, v11}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v2, 0x0

    .line 100
    :goto_1
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-ne v11, v10, :cond_6

    .line 107
    .line 108
    :cond_5
    const/4 v13, 0x0

    .line 109
    goto/16 :goto_d

    .line 110
    .line 111
    :cond_6
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    new-array v12, v11, [Lc3/g;

    .line 116
    .line 117
    const/4 v13, 0x0

    .line 118
    :goto_2
    if-ge v13, v11, :cond_8

    .line 119
    .line 120
    new-instance v14, Lc3/g;

    .line 121
    .line 122
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunStart(I)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    add-int/2addr v15, v5

    .line 127
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    add-int v8, v16, v5

    .line 132
    .line 133
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    rem-int/lit8 v9, v16, 0x2

    .line 138
    .line 139
    if-ne v9, v10, :cond_7

    .line 140
    .line 141
    const/4 v9, 0x1

    .line 142
    goto :goto_3

    .line 143
    :cond_7
    const/4 v9, 0x0

    .line 144
    :goto_3
    invoke-direct {v14, v15, v8, v9}, Lc3/g;-><init>(IIZ)V

    .line 145
    .line 146
    .line 147
    aput-object v14, v12, v13

    .line 148
    .line 149
    add-int/lit8 v13, v13, 0x1

    .line 150
    .line 151
    const/4 v8, -0x1

    .line 152
    goto :goto_2

    .line 153
    :cond_8
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    new-array v9, v8, [B

    .line 158
    .line 159
    const/4 v13, 0x0

    .line 160
    :goto_4
    if-ge v13, v8, :cond_9

    .line 161
    .line 162
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    int-to-byte v14, v14

    .line 167
    aput-byte v14, v9, v13

    .line 168
    .line 169
    add-int/lit8 v13, v13, 0x1

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_9
    const/4 v13, 0x0

    .line 173
    invoke-static {v9, v13, v12, v13, v11}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    if-ne v1, v5, :cond_12

    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    :goto_5
    if-ge v2, v11, :cond_b

    .line 180
    .line 181
    aget-object v5, v12, v2

    .line 182
    .line 183
    iget v5, v5, Lc3/g;->a:I

    .line 184
    .line 185
    if-ne v5, v1, :cond_a

    .line 186
    .line 187
    move v8, v2

    .line 188
    goto :goto_6

    .line 189
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_b
    const/4 v8, -0x1

    .line 193
    :goto_6
    aget-object v1, v12, v8

    .line 194
    .line 195
    if-nez p2, :cond_d

    .line 196
    .line 197
    iget-boolean v1, v1, Lc3/g;->c:Z

    .line 198
    .line 199
    if-ne v7, v1, :cond_c

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_c
    move v9, v7

    .line 203
    goto :goto_8

    .line 204
    :cond_d
    :goto_7
    if-nez v7, :cond_e

    .line 205
    .line 206
    const/4 v9, 0x1

    .line 207
    goto :goto_8

    .line 208
    :cond_e
    const/4 v9, 0x0

    .line 209
    :goto_8
    if-nez v8, :cond_f

    .line 210
    .line 211
    if-eqz v9, :cond_f

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    return v1

    .line 218
    :cond_f
    sub-int/2addr v11, v10

    .line 219
    if-ne v8, v11, :cond_10

    .line 220
    .line 221
    if-nez v9, :cond_10

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    return v1

    .line 228
    :cond_10
    if-eqz v9, :cond_11

    .line 229
    .line 230
    sub-int/2addr v8, v10

    .line 231
    aget-object v1, v12, v8

    .line 232
    .line 233
    iget v1, v1, Lc3/g;->a:I

    .line 234
    .line 235
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    return v1

    .line 240
    :cond_11
    add-int/2addr v8, v10

    .line 241
    aget-object v1, v12, v8

    .line 242
    .line 243
    iget v1, v1, Lc3/g;->a:I

    .line 244
    .line 245
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    return v1

    .line 250
    :cond_12
    if-le v1, v6, :cond_13

    .line 251
    .line 252
    invoke-virtual {v0, v1, v5}, Lb3/q;->p(II)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    :cond_13
    const/4 v2, 0x0

    .line 257
    :goto_9
    if-ge v2, v11, :cond_15

    .line 258
    .line 259
    aget-object v5, v12, v2

    .line 260
    .line 261
    iget v5, v5, Lc3/g;->b:I

    .line 262
    .line 263
    if-ne v5, v1, :cond_14

    .line 264
    .line 265
    move v8, v2

    .line 266
    goto :goto_a

    .line 267
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_15
    const/4 v8, -0x1

    .line 271
    :goto_a
    aget-object v1, v12, v8

    .line 272
    .line 273
    if-nez p2, :cond_18

    .line 274
    .line 275
    iget-boolean v1, v1, Lc3/g;->c:Z

    .line 276
    .line 277
    if-ne v7, v1, :cond_16

    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_16
    if-nez v7, :cond_17

    .line 281
    .line 282
    const/4 v9, 0x1

    .line 283
    goto :goto_c

    .line 284
    :cond_17
    const/4 v9, 0x0

    .line 285
    goto :goto_c

    .line 286
    :cond_18
    :goto_b
    move v9, v7

    .line 287
    :goto_c
    if-nez v8, :cond_19

    .line 288
    .line 289
    if-eqz v9, :cond_19

    .line 290
    .line 291
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    return v1

    .line 296
    :cond_19
    sub-int/2addr v11, v10

    .line 297
    if-ne v8, v11, :cond_1a

    .line 298
    .line 299
    if-nez v9, :cond_1a

    .line 300
    .line 301
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    return v1

    .line 306
    :cond_1a
    if-eqz v9, :cond_1b

    .line 307
    .line 308
    sub-int/2addr v8, v10

    .line 309
    aget-object v1, v12, v8

    .line 310
    .line 311
    iget v1, v1, Lc3/g;->b:I

    .line 312
    .line 313
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    return v1

    .line 318
    :cond_1b
    add-int/2addr v8, v10

    .line 319
    aget-object v1, v12, v8

    .line 320
    .line 321
    iget v1, v1, Lc3/g;->b:I

    .line 322
    .line 323
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    return v1

    .line 328
    :goto_d
    invoke-virtual {v3, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez p2, :cond_1c

    .line 333
    .line 334
    if-ne v7, v2, :cond_1e

    .line 335
    .line 336
    :cond_1c
    if-nez v7, :cond_1d

    .line 337
    .line 338
    const/4 v7, 0x1

    .line 339
    goto :goto_e

    .line 340
    :cond_1d
    const/4 v7, 0x0

    .line 341
    :cond_1e
    :goto_e
    if-ne v1, v5, :cond_1f

    .line 342
    .line 343
    move v9, v7

    .line 344
    goto :goto_f

    .line 345
    :cond_1f
    if-nez v7, :cond_20

    .line 346
    .line 347
    const/4 v9, 0x1

    .line 348
    goto :goto_f

    .line 349
    :cond_20
    const/4 v9, 0x0

    .line 350
    :goto_f
    if-eqz v9, :cond_21

    .line 351
    .line 352
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    return v1

    .line 357
    :cond_21
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    return v1

    .line 362
    :cond_22
    :goto_10
    invoke-virtual/range {p0 .. p2}, Lb3/q;->j(IZ)F

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    return v1
.end method

.method public l(Lua/b;Lua/e;)Lna/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lp/h3;->l(Lua/b;Lua/e;)Lna/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public m(IZ)I
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "<this>"

    .line 14
    .line 15
    invoke-static {v0, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const-string v4, ")."

    .line 23
    .line 24
    if-ltz v2, :cond_6

    .line 25
    .line 26
    if-gt v2, v3, :cond_5

    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-gt v3, v2, :cond_1

    .line 32
    .line 33
    add-int v4, v3, v2

    .line 34
    .line 35
    ushr-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/Comparable;

    .line 42
    .line 43
    invoke-static {v5, v1}, Lp9/l;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-gez v5, :cond_0

    .line 48
    .line 49
    add-int/lit8 v3, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-lez v5, :cond_2

    .line 53
    .line 54
    add-int/lit8 v2, v4, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    neg-int v4, v3

    .line 60
    :cond_2
    if-gez v4, :cond_3

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    neg-int v1, v4

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-int/lit8 v1, v4, 0x1

    .line 67
    .line 68
    :goto_1
    if-eqz p2, :cond_4

    .line 69
    .line 70
    if-lez v1, :cond_4

    .line 71
    .line 72
    add-int/lit8 p2, v1, -0x1

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ne p1, v0, :cond_4

    .line 85
    .line 86
    return p2

    .line 87
    :cond_4
    return v1

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "toIndex ("

    .line 93
    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ") is greater than size ("

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string p2, "fromIndex (0) is greater than toIndex ("

    .line 122
    .line 123
    invoke-static {p2, v4, v2}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public n(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public o()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v1, p0, Lb3/q;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {v0}, Lm9/e0;->o0(Landroid/app/Activity;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ly6/a;

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v4, v0, v5}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lu0/j;

    .line 68
    .line 69
    invoke-static {v2, v3, v1}, Ln6/a;->o(Ljava/util/ArrayList;Ljava/util/ArrayList;Lu0/j;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lo6/d;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {v1, v0, v2}, Lo6/d;-><init>(Landroid/app/Activity;I)V

    .line 76
    .line 77
    .line 78
    const-wide/16 v2, 0x64

    .line 79
    .line 80
    sget-object v0, Lc7/b;->a:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public p(II)I
    .locals 2

    .line 1
    :goto_0
    if-le p1, p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/text/Layout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    add-int/lit8 v1, p1, -0x1

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x1680

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x2000

    .line 30
    .line 31
    invoke-static {v0, v1}, Lg9/l;->f(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x200a

    .line 38
    .line 39
    invoke-static {v0, v1}, Lg9/l;->f(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-gtz v1, :cond_0

    .line 44
    .line 45
    const/16 v1, 0x2007

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    :cond_0
    const/16 v1, 0x205f

    .line 50
    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    const/16 v1, 0x3000

    .line 54
    .line 55
    if-ne v0, v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return p1

    .line 59
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return p1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb3/q;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb3/q;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ldc/w;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    check-cast v0, Ldc/l0;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ldc/l0;->h(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lb3/q;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Ldc/w;

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    check-cast p2, Ldc/l0;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ldc/l0;->h(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
