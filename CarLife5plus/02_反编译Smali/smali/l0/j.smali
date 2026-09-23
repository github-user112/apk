.class public abstract Ll0/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0, v0}, Li2/c;->e(FF)J

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Ll0/r0;Ll0/q0;ZIILb3/i0;Lf9/k;Lb0/k;Ly1/n0;Ln1/c;Lf1/s;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p7

    move-object/from16 v0, p15

    const v3, 0x78d0d0fc

    .line 1
    invoke-virtual {v0, v3}, Lf1/s;->Y(I)Lf1/s;

    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p16, v3

    invoke-virtual {v0, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x10

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_1

    :cond_1
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v3, v7

    move-object/from16 v11, p2

    invoke-virtual {v0, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v3, v7

    move/from16 v12, p3

    invoke-virtual {v0, v12}, Lf1/s;->g(Z)Z

    move-result v7

    const/16 v9, 0x400

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_3

    :cond_3
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v3, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lf1/s;->g(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x4000

    goto :goto_4

    :cond_4
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v3, v7

    move-object/from16 v7, p4

    invoke-virtual {v0, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/high16 v16, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v16, 0x10000

    :goto_5
    or-int v3, v3, v16

    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/high16 v17, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v17, 0x80000

    :goto_6
    or-int v3, v3, v17

    move-object/from16 v13, p6

    invoke-virtual {v0, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v18, 0x400000

    :goto_7
    or-int v3, v3, v18

    invoke-virtual {v0, v4}, Lf1/s;->g(Z)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v3, v3, v18

    move/from16 v6, p8

    invoke-virtual {v0, v6}, Lf1/s;->d(I)Z

    move-result v19

    if-eqz v19, :cond_9

    const/high16 v19, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v19, 0x10000000

    :goto_9
    or-int v3, v3, v19

    move/from16 v6, p9

    invoke-virtual {v0, v6}, Lf1/s;->d(I)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v18, 0x4

    goto :goto_a

    :cond_a
    const/16 v18, 0x2

    :goto_a
    const/high16 v19, 0x30000

    or-int v18, v19, v18

    move-object/from16 v14, p10

    invoke-virtual {v0, v14}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v8, 0x20

    :cond_b
    or-int v8, v18, v8

    or-int/lit16 v8, v8, 0x180

    move-object/from16 v15, p12

    invoke-virtual {v0, v15}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v9, 0x800

    :cond_c
    or-int/2addr v8, v9

    move-object/from16 v9, p13

    invoke-virtual {v0, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v18, 0x4000

    goto :goto_b

    :cond_d
    const/16 v18, 0x2000

    :goto_b
    or-int v17, v8, v18

    const v8, 0x12492493

    and-int/2addr v8, v3

    const v5, 0x12492492

    const/16 v20, 0x0

    if-ne v8, v5, :cond_f

    const v5, 0x12493

    and-int v5, v17, v5

    const v8, 0x12492

    if-eq v5, v8, :cond_e

    goto :goto_c

    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v5, 0x1

    :goto_d
    and-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8, v5}, Lf1/s;->N(IZ)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0}, Lf1/s;->S()V

    and-int/lit8 v5, p16, 0x1

    sget-object v8, Lf1/n;->a:Lf1/w0;

    if-eqz v5, :cond_11

    invoke-virtual {v0}, Lf1/s;->x()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_e

    .line 2
    :cond_10
    invoke-virtual {v0}, Lf1/s;->Q()V

    move-object/from16 v22, p11

    const/16 v21, 0x1

    goto :goto_10

    .line 3
    :cond_11
    :goto_e
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_12

    .line 4
    new-instance v5, Lc8/y0;

    const/16 v21, 0x1

    const/16 v6, 0xe

    invoke-direct {v5, v6}, Lc8/y0;-><init>(I)V

    .line 5
    invoke-virtual {v0, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    goto :goto_f

    :cond_12
    const/16 v21, 0x1

    .line 6
    :goto_f
    check-cast v5, Lf9/k;

    move-object/from16 v22, v5

    .line 7
    :goto_10
    invoke-virtual {v0}, Lf1/s;->q()V

    .line 8
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_13

    .line 9
    new-instance v5, Lg3/w;

    move v6, v3

    const-wide/16 v3, 0x0

    move/from16 p11, v6

    const/4 v6, 0x6

    invoke-direct {v5, v1, v3, v4, v6}, Lg3/w;-><init>(Ljava/lang/String;JI)V

    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    goto :goto_11

    :cond_13
    move/from16 p11, v3

    .line 11
    :goto_11
    move-object v3, v5

    check-cast v3, Lf1/b1;

    .line 12
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg3/w;

    .line 13
    iget-wide v5, v4, Lg3/w;->b:J

    .line 14
    iget-object v4, v4, Lg3/w;->c:Lb3/n0;

    .line 15
    new-instance v7, Lg3/w;

    new-instance v9, Lb3/g;

    invoke-direct {v9, v1}, Lb3/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9, v5, v6, v4}, Lg3/w;-><init>(Lb3/g;JLb3/n0;)V

    .line 16
    invoke-virtual {v0, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v4

    .line 17
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_14

    if-ne v5, v8, :cond_15

    .line 18
    :cond_14
    new-instance v5, La8/n0;

    const/4 v4, 0x6

    invoke-direct {v5, v4, v7, v3}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 20
    :cond_15
    check-cast v5, Lf9/a;

    invoke-static {v5, v0}, Lf1/b;->h(Lf9/a;Lf1/s;)V

    and-int/lit8 v4, p11, 0xe

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    const/4 v4, 0x1

    goto :goto_12

    :cond_16
    const/4 v4, 0x0

    .line 21
    :goto_12
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_17

    if-ne v5, v8, :cond_18

    .line 22
    :cond_17
    invoke-static {v1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object v5

    .line 23
    invoke-virtual {v0, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 24
    :cond_18
    check-cast v5, Lf1/b1;

    .line 25
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v3

    .line 26
    new-instance v3, Lg3/k;

    .line 27
    sget-object v9, Li3/b;->c:Li3/b;

    move-object v6, v7

    move/from16 v7, v21

    move-object/from16 v18, v8

    move/from16 v8, v21

    move/from16 v1, p11

    move-object v10, v4

    move-object v11, v5

    move-object/from16 v12, v18

    const/4 v5, 0x0

    move/from16 v4, p7

    move-object/from16 v18, v6

    const/4 v6, 0x1

    .line 28
    invoke-direct/range {v3 .. v9}, Lg3/k;-><init>(ZIZIILi3/b;)V

    const/16 v21, 0x1

    xor-int/lit8 v4, p7, 0x1

    if-eqz p7, :cond_19

    const/4 v6, 0x1

    goto :goto_13

    :cond_19
    move/from16 v6, p9

    :goto_13
    if-eqz p7, :cond_1a

    const/4 v7, 0x1

    goto :goto_14

    :cond_1a
    move/from16 v7, p8

    .line 29
    :goto_14
    invoke-virtual {v0, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v8

    and-int/lit8 v9, v1, 0x70

    const/16 v5, 0x20

    if-ne v9, v5, :cond_1b

    const/16 v20, 0x1

    goto :goto_15

    :cond_1b
    const/16 v20, 0x0

    :goto_15
    or-int v5, v8, v20

    .line 30
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_1c

    if-ne v8, v12, :cond_1d

    .line 31
    :cond_1c
    new-instance v8, Ll0/h;

    const/4 v5, 0x0

    invoke-direct {v8, v2, v10, v11, v5}, Ll0/h;-><init>(Lf9/k;Lf1/b1;Lf1/b1;I)V

    .line 32
    invoke-virtual {v0, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 33
    :cond_1d
    check-cast v8, Lf9/k;

    and-int/lit16 v5, v1, 0x380

    shr-int/lit8 v9, v1, 0x6

    and-int/lit16 v9, v9, 0x1c00

    or-int/2addr v5, v9

    shl-int/lit8 v9, v17, 0x9

    const v10, 0xe000

    and-int v11, v9, v10

    or-int/2addr v5, v11

    or-int v5, v5, v19

    const/high16 v11, 0x380000

    and-int/2addr v11, v9

    or-int/2addr v5, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v9, v11

    or-int/2addr v5, v9

    shr-int/lit8 v9, v1, 0xf

    and-int/lit16 v9, v9, 0x380

    and-int/lit16 v11, v1, 0x1c00

    or-int/2addr v9, v11

    and-int/2addr v1, v10

    or-int/2addr v1, v9

    or-int v20, v1, v19

    move/from16 v16, p3

    move-object/from16 v10, p13

    move-object/from16 v17, p14

    move v11, v4

    move/from16 v19, v5

    move v12, v7

    move-object v4, v8

    move-object v7, v14

    move-object v9, v15

    move-object/from16 v8, v22

    move-object/from16 v5, p2

    move-object v14, v3

    move-object v15, v13

    move-object/from16 v3, v18

    move-object/from16 v18, v0

    move v13, v6

    move-object/from16 v6, p4

    .line 34
    invoke-static/range {v3 .. v20}, Ll0/p0;->e(Lg3/w;Lf9/k;Lr1/p;Lb3/o0;Lb3/i0;Lf9/k;Lb0/k;Ly1/n0;ZIILg3/k;Ll0/q0;ZLn1/c;Lf1/s;II)V

    move-object v12, v8

    goto :goto_16

    .line 35
    :cond_1e
    invoke-virtual/range {p15 .. p15}, Lf1/s;->Q()V

    move-object/from16 v12, p11

    .line 36
    :goto_16
    invoke-virtual/range {p15 .. p15}, Lf1/s;->r()Lf1/w1;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object v1, v0

    new-instance v0, Ll0/i;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Ll0/i;-><init>(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Ll0/r0;Ll0/q0;ZIILb3/i0;Lf9/k;Lb0/k;Ly1/n0;Ln1/c;I)V

    move-object/from16 v1, v23

    .line 37
    iput-object v0, v1, Lf1/w1;->d:Lf9/n;

    :cond_1f
    return-void
.end method
