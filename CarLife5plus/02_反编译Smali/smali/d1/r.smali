.class public abstract Ld1/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:J

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:F

.field public static final g:F

.field public static final h:F

.field public static final i:Lr1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0, v0, v0}, Ln3/b;->a(IIII)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    sput-wide v0, Ld1/r;->a:J

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    sput v0, Ld1/r;->b:F

    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    sput v1, Ld1/r;->c:F

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    int-to-float v1, v1

    .line 20
    sput v1, Ld1/r;->d:F

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    int-to-float v1, v1

    .line 24
    sput v1, Ld1/r;->e:F

    .line 25
    .line 26
    const/16 v1, 0x18

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    sput v1, Ld1/r;->f:F

    .line 30
    .line 31
    sput v0, Ld1/r;->g:F

    .line 32
    .line 33
    sput v0, Ld1/r;->h:F

    .line 34
    .line 35
    const/16 v0, 0x30

    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 39
    .line 40
    invoke-static {v1, v0, v0}, Landroidx/compose/foundation/layout/c;->a(Lr1/p;FF)Lr1/p;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Ld1/r;->i:Lr1/p;

    .line 45
    .line 46
    return-void
.end method

.method public static final a(Ljava/lang/String;Lf9/n;Lb3/i0;Lf9/n;Lf9/n;ZZLb0/k;Ld0/h0;Lc1/q2;Ln1/c;Lf1/s;II)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v2, p11

    move/from16 v3, p12

    move/from16 v5, p13

    const/4 v6, 0x0

    .line 1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x5a44f6ef

    .line 2
    invoke-virtual {v2, v8}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v8, v3, 0x6

    if-nez v8, :cond_1

    sget-object v8, Ld1/s;->a:Ld1/s;

    invoke-virtual {v2, v8}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v3

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    and-int/lit8 v16, v3, 0x30

    const/16 v17, 0x10

    if-nez v16, :cond_3

    invoke-virtual {v2, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x20

    goto :goto_2

    :cond_2
    const/16 v16, 0x10

    :goto_2
    or-int v8, v8, v16

    :cond_3
    and-int/lit16 v15, v3, 0x180

    const/16 v19, 0x80

    const/16 v20, 0x100

    if-nez v15, :cond_5

    move-object/from16 v15, p1

    invoke-virtual {v2, v15}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x100

    goto :goto_3

    :cond_4
    const/16 v21, 0x80

    :goto_3
    or-int v8, v8, v21

    goto :goto_4

    :cond_5
    move-object/from16 v15, p1

    :goto_4
    and-int/lit16 v9, v3, 0xc00

    const/16 v22, 0x400

    if-nez v9, :cond_7

    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    const/16 v24, 0x800

    goto :goto_5

    :cond_6
    const/16 v24, 0x400

    :goto_5
    or-int v8, v8, v24

    goto :goto_6

    :cond_7
    move-object/from16 v9, p2

    :goto_6
    and-int/lit16 v6, v3, 0x6000

    const/16 v25, 0x2000

    const/16 v26, 0x4000

    if-nez v6, :cond_9

    invoke-virtual {v2, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4000

    goto :goto_7

    :cond_8
    const/16 v6, 0x2000

    :goto_7
    or-int/2addr v8, v6

    :cond_9
    const/high16 v6, 0x30000

    and-int v27, v3, v6

    const/high16 v28, 0x10000

    const/high16 v29, 0x20000

    const/high16 v30, 0x30000

    const/4 v6, 0x0

    if-nez v27, :cond_b

    invoke-virtual {v2, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    const/high16 v27, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v27, 0x10000

    :goto_8
    or-int v8, v8, v27

    :cond_b
    const/high16 v27, 0x180000

    and-int v31, v3, v27

    const/high16 v32, 0x80000

    const/high16 v33, 0x100000

    if-nez v31, :cond_d

    invoke-virtual {v2, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    const/high16 v31, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v31, 0x80000

    :goto_9
    or-int v8, v8, v31

    :cond_d
    const/high16 v31, 0xc00000

    and-int v34, v3, v31

    const/high16 v35, 0x400000

    const/high16 v36, 0x800000

    if-nez v34, :cond_f

    invoke-virtual {v2, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    const/high16 v34, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v34, 0x400000

    :goto_a
    or-int v8, v8, v34

    :cond_f
    const/high16 v34, 0x6000000

    and-int v34, v3, v34

    if-nez v34, :cond_11

    invoke-virtual {v2, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    const/high16 v34, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v34, 0x2000000

    :goto_b
    or-int v8, v8, v34

    :cond_11
    const/high16 v34, 0x30000000

    and-int v34, v3, v34

    if-nez v34, :cond_13

    invoke-virtual {v2, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    const/high16 v34, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v34, 0x10000000

    :goto_c
    or-int v8, v8, v34

    :cond_13
    and-int/lit8 v34, v5, 0x6

    if-nez v34, :cond_15

    invoke-virtual {v2, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_14

    const/16 v18, 0x4

    goto :goto_d

    :cond_14
    const/16 v18, 0x2

    :goto_d
    or-int v18, v5, v18

    goto :goto_e

    :cond_15
    move/from16 v18, v5

    :goto_e
    and-int/lit8 v34, v5, 0x30

    move/from16 v6, p5

    if-nez v34, :cond_17

    invoke-virtual {v2, v6}, Lf1/s;->g(Z)Z

    move-result v37

    if-eqz v37, :cond_16

    const/16 v17, 0x20

    :cond_16
    or-int v18, v18, v17

    :cond_17
    and-int/lit16 v3, v5, 0x180

    if-nez v3, :cond_19

    invoke-virtual {v2, v10}, Lf1/s;->g(Z)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v19, 0x100

    :cond_18
    or-int v18, v18, v19

    :cond_19
    and-int/lit16 v3, v5, 0xc00

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lf1/s;->g(Z)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v22, 0x800

    :cond_1a
    or-int v18, v18, v22

    :cond_1b
    and-int/lit16 v3, v5, 0x6000

    if-nez v3, :cond_1d

    invoke-virtual {v2, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v25, 0x4000

    :cond_1c
    or-int v18, v18, v25

    :cond_1d
    and-int v3, v5, v30

    if-nez v3, :cond_1f

    invoke-virtual {v2, v12}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/high16 v28, 0x20000

    :cond_1e
    or-int v18, v18, v28

    :cond_1f
    and-int v3, v5, v27

    if-nez v3, :cond_21

    invoke-virtual {v2, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/high16 v32, 0x100000

    :cond_20
    or-int v18, v18, v32

    :cond_21
    and-int v3, v5, v31

    if-nez v3, :cond_23

    invoke-virtual {v2, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/high16 v35, 0x800000

    :cond_22
    or-int v18, v18, v35

    :cond_23
    move/from16 v22, v18

    const v3, 0x12492493

    and-int/2addr v3, v8

    const v4, 0x12492492

    if-ne v3, v4, :cond_25

    const v3, 0x492493

    and-int v3, v22, v3

    const v4, 0x492492

    if-ne v3, v4, :cond_25

    invoke-virtual {v2}, Lf1/s;->z()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_f

    .line 3
    :cond_24
    invoke-virtual {v2}, Lf1/s;->Q()V

    move-object v15, v2

    goto/16 :goto_33

    :cond_25
    :goto_f
    and-int/lit8 v3, v8, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_26

    const/4 v3, 0x1

    goto :goto_10

    :cond_26
    const/4 v3, 0x0

    :goto_10
    and-int/lit16 v4, v8, 0x1c00

    move/from16 v17, v3

    const/16 v3, 0x800

    if-ne v4, v3, :cond_27

    const/4 v3, 0x1

    goto :goto_11

    :cond_27
    const/4 v3, 0x0

    :goto_11
    or-int v3, v17, v3

    .line 4
    invoke-virtual {v2}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v4

    .line 5
    sget-object v10, Lf1/n;->a:Lf1/w0;

    const/4 v12, 0x6

    if-nez v3, :cond_28

    if-ne v4, v10, :cond_29

    .line 6
    :cond_28
    new-instance v3, Lb3/g;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v12}, Lb3/g;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v4, Lg3/d0;

    sget-object v12, Lg3/p;->a:Lg3/e0;

    invoke-direct {v4, v3, v12}, Lg3/d0;-><init>(Lb3/g;Lg3/q;)V

    .line 8
    invoke-virtual {v2, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 9
    :cond_29
    check-cast v4, Lg3/d0;

    .line 10
    iget-object v3, v4, Lg3/d0;->a:Lb3/g;

    .line 11
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    shr-int/lit8 v4, v22, 0xc

    and-int/lit8 v4, v4, 0xe

    .line 12
    invoke-static {v11, v2, v4}, Lc7/a;->k(Lb0/k;Lf1/s;I)Lf1/b1;

    move-result-object v4

    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 13
    sget-object v3, Ld1/g;->a:Ld1/g;

    goto :goto_12

    .line 14
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2b

    sget-object v3, Ld1/g;->b:Ld1/g;

    goto :goto_12

    .line 15
    :cond_2b
    sget-object v3, Ld1/g;->c:Ld1/g;

    :goto_12
    if-nez p6, :cond_2c

    .line 16
    iget-wide v4, v13, Lc1/q2;->z:J

    goto :goto_13

    :cond_2c
    if-eqz v12, :cond_2d

    .line 17
    iget-wide v4, v13, Lc1/q2;->x:J

    goto :goto_13

    .line 18
    :cond_2d
    iget-wide v4, v13, Lc1/q2;->y:J

    .line 19
    :goto_13
    sget-object v1, Lc1/z2;->a:Lf1/w2;

    .line 20
    invoke-virtual {v2, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    check-cast v1, Lc1/y2;

    .line 22
    iget-object v6, v1, Lc1/y2;->j:Lb3/o0;

    .line 23
    iget-object v1, v1, Lc1/y2;->l:Lb3/o0;

    move/from16 v26, v8

    .line 24
    invoke-virtual {v6}, Lb3/o0;->b()J

    move-result-wide v8

    sget v17, Ly1/q;->n:I

    move/from16 v27, v12

    .line 25
    sget-wide v11, Ly1/q;->m:J

    .line 26
    invoke-static {v8, v9, v11, v12}, Ly1/q;->c(JJ)Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v1}, Lb3/o0;->b()J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Ly1/q;->c(JJ)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 27
    :cond_2e
    invoke-virtual {v6}, Lb3/o0;->b()J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Ly1/q;->c(JJ)Z

    move-result v8

    if-nez v8, :cond_30

    invoke-virtual {v1}, Lb3/o0;->b()J

    move-result-wide v8

    invoke-static {v8, v9, v11, v12}, Ly1/q;->c(JJ)Z

    move-result v8

    if-eqz v8, :cond_30

    :cond_2f
    const/4 v8, 0x1

    goto :goto_14

    :cond_30
    const/4 v8, 0x0

    .line 28
    :goto_14
    invoke-virtual {v1}, Lb3/o0;->b()J

    move-result-wide v11

    const-wide/16 v17, 0x10

    if-eqz v8, :cond_32

    cmp-long v9, v11, v17

    if-eqz v9, :cond_31

    goto :goto_15

    :cond_31
    move-wide v11, v4

    .line 29
    :cond_32
    :goto_15
    invoke-virtual {v6}, Lb3/o0;->b()J

    move-result-wide v19

    if-eqz v8, :cond_34

    cmp-long v9, v19, v17

    if-eqz v9, :cond_33

    goto :goto_16

    :cond_33
    move-wide/from16 v28, v4

    goto :goto_17

    :cond_34
    :goto_16
    move-wide/from16 v28, v19

    :goto_17
    if-eqz p3, :cond_35

    const/4 v9, 0x1

    :goto_18
    move-object/from16 v30, v1

    goto :goto_19

    :cond_35
    const/4 v9, 0x0

    goto :goto_18

    :goto_19
    const/16 v1, 0x30

    move-object/from16 v31, v6

    const/4 v6, 0x0

    .line 30
    invoke-static {v3, v2, v1, v6}, Lv/u0;->c(Ljava/lang/Enum;Lf1/s;II)Lv/s0;

    move-result-object v3

    iget-object v6, v3, Lv/s0;->b:Lf1/k1;

    .line 31
    sget-object v19, Lv/d;->j:Lv/w0;

    .line 32
    invoke-virtual {v3}, Lv/s0;->c()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ld1/g;

    const/16 v32, 0x30

    const v1, -0x796609df

    invoke-virtual {v2, v1}, Lf1/s;->W(I)V

    .line 33
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v33, 0x0

    const/high16 v34, 0x3f800000    # 1.0f

    if-eqz v1, :cond_38

    move-object/from16 v17, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_37

    const/4 v3, 0x2

    if-ne v1, v3, :cond_36

    :goto_1a
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1b
    const/4 v3, 0x0

    goto :goto_1c

    .line 34
    :cond_36
    new-instance v0, Lac/p;

    .line 35
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    throw v0

    :cond_37
    const/4 v1, 0x0

    goto :goto_1b

    :cond_38
    move-object/from16 v17, v3

    goto :goto_1a

    .line 37
    :goto_1c
    invoke-virtual {v2, v3}, Lf1/s;->p(Z)V

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 39
    invoke-virtual {v6}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 40
    check-cast v3, Ld1/g;

    move-object/from16 v20, v1

    const v1, -0x796609df

    invoke-virtual {v2, v1}, Lf1/s;->W(I)V

    .line 41
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_39

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3b

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3a

    :cond_39
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1d
    const/4 v3, 0x0

    goto :goto_1e

    .line 42
    :cond_3a
    new-instance v0, Lac/p;

    .line 43
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    throw v0

    :cond_3b
    const/4 v1, 0x0

    goto :goto_1d

    .line 45
    :goto_1e
    invoke-virtual {v2, v3}, Lf1/s;->p(Z)V

    .line 46
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 47
    invoke-virtual/range {v17 .. v17}, Lv/s0;->e()Lv/o0;

    const v3, 0x4c116805    # 3.8117396E7f

    .line 48
    invoke-virtual {v2, v3}, Lf1/s;->W(I)V

    const/16 v3, 0x96

    move-object/from16 v18, v1

    const/4 v1, 0x0

    move-object/from16 v35, v6

    move-object/from16 v15, v17

    move-object/from16 v17, v18

    const/4 v6, 0x6

    .line 49
    invoke-static {v3, v6, v1}, Lv/d;->k(IILv/t;)Lv/v0;

    move-result-object v18

    const/4 v6, 0x0

    .line 50
    invoke-virtual {v2, v6}, Lf1/s;->p(Z)V

    const/high16 v21, 0x30000

    move-object/from16 v16, v20

    move-object/from16 v20, v2

    const/4 v2, 0x2

    .line 51
    invoke-static/range {v15 .. v21}, Lv/u0;->b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;

    move-result-object v6

    move-object/from16 v17, v15

    move-object/from16 v15, v20

    .line 52
    sget-object v1, Ld1/b;->c:Ld1/b;

    .line 53
    invoke-virtual/range {v17 .. v17}, Lv/s0;->c()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ld1/g;

    const v3, 0x55952420

    invoke-virtual {v15, v3}, Lf1/s;->W(I)V

    .line 54
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3f

    move/from16 v38, v8

    const/4 v8, 0x1

    if-eq v3, v8, :cond_3d

    if-ne v3, v2, :cond_3c

    :goto_1f
    const/4 v3, 0x0

    :goto_20
    const/4 v8, 0x0

    goto :goto_22

    .line 55
    :cond_3c
    new-instance v0, Lac/p;

    .line 56
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 57
    throw v0

    :cond_3d
    if-eqz v9, :cond_3e

    goto :goto_1f

    :cond_3e
    :goto_21
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_3f
    move/from16 v38, v8

    goto :goto_21

    .line 58
    :goto_22
    invoke-virtual {v15, v8}, Lf1/s;->p(Z)V

    .line 59
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 60
    invoke-virtual/range {v35 .. v35}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 61
    check-cast v3, Ld1/g;

    const v8, 0x55952420

    invoke-virtual {v15, v8}, Lf1/s;->W(I)V

    .line 62
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_42

    const/4 v8, 0x1

    if-eq v3, v8, :cond_41

    if-ne v3, v2, :cond_40

    :goto_23
    const/4 v3, 0x0

    :goto_24
    const/4 v8, 0x0

    goto :goto_25

    .line 63
    :cond_40
    new-instance v0, Lac/p;

    .line 64
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 65
    throw v0

    :cond_41
    if-eqz v9, :cond_42

    goto :goto_23

    :cond_42
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_24

    .line 66
    :goto_25
    invoke-virtual {v15, v8}, Lf1/s;->p(Z)V

    .line 67
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 68
    invoke-virtual/range {v17 .. v17}, Lv/s0;->e()Lv/o0;

    move-result-object v8

    invoke-virtual {v1, v8, v15, v7}, Ld1/b;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lv/v;

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v3

    .line 69
    invoke-static/range {v15 .. v21}, Lv/u0;->b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;

    move-result-object v1

    move-object/from16 v17, v15

    move-object/from16 v15, v20

    .line 70
    invoke-virtual/range {v17 .. v17}, Lv/s0;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/g;

    const v7, 0x433c6eba

    invoke-virtual {v15, v7}, Lf1/s;->W(I)V

    .line 71
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_43

    const/4 v8, 0x1

    if-eq v3, v8, :cond_45

    if-ne v3, v2, :cond_44

    :cond_43
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_26
    const/4 v8, 0x0

    goto :goto_27

    .line 72
    :cond_44
    new-instance v0, Lac/p;

    .line 73
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 74
    throw v0

    :cond_45
    if-eqz v9, :cond_43

    const/4 v3, 0x0

    goto :goto_26

    .line 75
    :goto_27
    invoke-virtual {v15, v8}, Lf1/s;->p(Z)V

    .line 76
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 77
    invoke-virtual/range {v35 .. v35}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 78
    check-cast v3, Ld1/g;

    invoke-virtual {v15, v7}, Lf1/s;->W(I)V

    .line 79
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_46

    const/4 v8, 0x1

    if-eq v3, v8, :cond_48

    if-ne v3, v2, :cond_47

    :cond_46
    const/4 v3, 0x0

    const/high16 v33, 0x3f800000    # 1.0f

    goto :goto_28

    .line 80
    :cond_47
    new-instance v0, Lac/p;

    .line 81
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 82
    throw v0

    :cond_48
    if-eqz v9, :cond_46

    const/4 v3, 0x0

    .line 83
    :goto_28
    invoke-virtual {v15, v3}, Lf1/s;->p(Z)V

    .line 84
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 85
    invoke-virtual/range {v17 .. v17}, Lv/s0;->e()Lv/o0;

    const v7, -0x6f581a62

    .line 86
    invoke-virtual {v15, v7}, Lf1/s;->W(I)V

    const/16 v7, 0x96

    const/4 v8, 0x6

    const/4 v9, 0x0

    .line 87
    invoke-static {v7, v8, v9}, Lv/d;->k(IILv/t;)Lv/v0;

    move-result-object v18

    .line 88
    invoke-virtual {v15, v3}, Lf1/s;->p(Z)V

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v2

    .line 89
    invoke-static/range {v15 .. v21}, Lv/u0;->b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;

    move-result-object v2

    move-object/from16 v17, v15

    move-object/from16 v15, v20

    .line 90
    invoke-virtual/range {v35 .. v35}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 91
    check-cast v3, Ld1/g;

    const v7, -0x66748bf

    invoke-virtual {v15, v7}, Lf1/s;->W(I)V

    .line 92
    sget-object v8, Ld1/q;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_49

    move-wide/from16 v18, v11

    :goto_29
    const/4 v3, 0x0

    goto :goto_2a

    :cond_49
    move-wide/from16 v18, v28

    goto :goto_29

    .line 93
    :goto_2a
    invoke-virtual {v15, v3}, Lf1/s;->p(Z)V

    .line 94
    invoke-static/range {v18 .. v19}, Ly1/q;->f(J)Lz1/c;

    move-result-object v3

    .line 95
    invoke-virtual {v15, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v9

    .line 96
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v33, v2

    .line 97
    sget-object v2, Lu/c;->a:Lu/c;

    if-nez v9, :cond_4a

    if-ne v7, v10, :cond_4b

    .line 98
    :cond_4a
    new-instance v7, Lb2/a;

    const/16 v9, 0x11

    invoke-direct {v7, v9, v3}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 99
    new-instance v3, Lv/w0;

    invoke-direct {v3, v2, v7}, Lv/w0;-><init>(Lf9/k;Lf9/k;)V

    .line 100
    invoke-virtual {v15, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    move-object v7, v3

    .line 101
    :cond_4b
    move-object/from16 v19, v7

    check-cast v19, Lv/w0;

    .line 102
    invoke-virtual/range {v17 .. v17}, Lv/s0;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/g;

    const v7, -0x66748bf

    invoke-virtual {v15, v7}, Lf1/s;->W(I)V

    .line 103
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_4c

    move-object/from16 v25, v10

    move-wide v9, v11

    :goto_2b
    const/4 v3, 0x0

    goto :goto_2c

    :cond_4c
    move-object/from16 v25, v10

    move-wide/from16 v9, v28

    goto :goto_2b

    .line 104
    :goto_2c
    invoke-virtual {v15, v3}, Lf1/s;->p(Z)V

    .line 105
    new-instance v3, Ly1/q;

    invoke-direct {v3, v9, v10}, Ly1/q;-><init>(J)V

    .line 106
    invoke-virtual/range {v35 .. v35}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 107
    check-cast v9, Ld1/g;

    invoke-virtual {v15, v7}, Lf1/s;->W(I)V

    .line 108
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4d

    :goto_2d
    const/4 v7, 0x0

    goto :goto_2e

    :cond_4d
    move-wide/from16 v11, v28

    goto :goto_2d

    .line 109
    :goto_2e
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 110
    new-instance v9, Ly1/q;

    invoke-direct {v9, v11, v12}, Ly1/q;-><init>(J)V

    .line 111
    invoke-virtual/range {v17 .. v17}, Lv/s0;->e()Lv/o0;

    const v10, 0x5b1c500c

    .line 112
    invoke-virtual {v15, v10}, Lf1/s;->W(I)V

    const/16 v10, 0x96

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 113
    invoke-static {v10, v11, v12}, Lv/d;->k(IILv/t;)Lv/v0;

    move-result-object v18

    .line 114
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    move-object/from16 v16, v3

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v9

    .line 115
    invoke-static/range {v15 .. v21}, Lv/u0;->b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;

    move-result-object v9

    move-object/from16 v17, v15

    move-object/from16 v15, v20

    .line 116
    invoke-virtual/range {v35 .. v35}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 117
    check-cast v3, Ld1/g;

    const v3, 0x3cff1b76

    invoke-virtual {v15, v3}, Lf1/s;->W(I)V

    .line 118
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 119
    invoke-static {v4, v5}, Ly1/q;->f(J)Lz1/c;

    move-result-object v7

    .line 120
    invoke-virtual {v15, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v10

    .line 121
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_4e

    move-object/from16 v10, v25

    if-ne v11, v10, :cond_4f

    goto :goto_2f

    :cond_4e
    move-object/from16 v10, v25

    .line 122
    :goto_2f
    new-instance v11, Lb2/a;

    const/16 v12, 0x11

    invoke-direct {v11, v12, v7}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 123
    new-instance v7, Lv/w0;

    invoke-direct {v7, v2, v11}, Lv/w0;-><init>(Lf9/k;Lf9/k;)V

    .line 124
    invoke-virtual {v15, v7}, Lf1/s;->h0(Ljava/lang/Object;)V

    move-object v11, v7

    .line 125
    :cond_4f
    move-object/from16 v19, v11

    check-cast v19, Lv/w0;

    .line 126
    invoke-virtual/range {v17 .. v17}, Lv/s0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/g;

    invoke-virtual {v15, v3}, Lf1/s;->W(I)V

    const/4 v7, 0x0

    .line 127
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 128
    new-instance v2, Ly1/q;

    invoke-direct {v2, v4, v5}, Ly1/q;-><init>(J)V

    .line 129
    invoke-virtual/range {v35 .. v35}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 130
    check-cast v11, Ld1/g;

    invoke-virtual {v15, v3}, Lf1/s;->W(I)V

    .line 131
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    .line 132
    new-instance v3, Ly1/q;

    invoke-direct {v3, v4, v5}, Ly1/q;-><init>(J)V

    .line 133
    invoke-virtual/range {v17 .. v17}, Lv/s0;->e()Lv/o0;

    const v4, -0x206794ff

    .line 134
    invoke-virtual {v15, v4}, Lf1/s;->W(I)V

    const/16 v4, 0x96

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 135
    invoke-static {v4, v11, v12}, Lv/d;->k(IILv/t;)Lv/v0;

    move-result-object v18

    .line 136
    invoke-virtual {v15, v7}, Lf1/s;->p(Z)V

    move-object/from16 v16, v2

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v3

    .line 137
    invoke-static/range {v15 .. v21}, Lv/u0;->b(Lv/s0;Ljava/lang/Object;Ljava/lang/Object;Lv/v;Lv/w0;Lf1/s;I)Lv/p0;

    move-result-object v2

    move-object/from16 v15, v20

    .line 138
    iget-object v3, v6, Lv/p0;->h:Lf1/k1;

    .line 139
    invoke-virtual {v3}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 140
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v20

    const v3, -0x95b99d5

    invoke-virtual {v15, v3}, Lf1/s;->W(I)V

    if-nez p3, :cond_50

    move/from16 v5, v20

    move-object/from16 v11, v33

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto :goto_30

    :cond_50
    move-object v6, v2

    .line 141
    new-instance v2, Ld1/l;

    move-object/from16 v7, p3

    move/from16 v5, v20

    move-object/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v11, v33

    move/from16 v8, v38

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v9}, Ld1/l;-><init>(Lb3/o0;Lb3/o0;FLv/p0;Lf9/n;ZLv/p0;)V

    const v3, -0x49b4cc60

    invoke-static {v3, v2, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    move-result-object v9

    .line 142
    :goto_30
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    .line 143
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_51

    .line 144
    sget-object v2, Lf1/w0;->f:Lf1/w0;

    new-instance v3, Ld1/n;

    invoke-direct {v3, v1, v12}, Ld1/n;-><init>(Lv/p0;I)V

    invoke-static {v2, v3}, Lf1/b;->n(Lf1/p2;Lf9/a;)Lf1/f0;

    move-result-object v2

    .line 145
    invoke-virtual {v15, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 146
    :cond_51
    check-cast v2, Lf1/v2;

    const v1, -0x95b1996

    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 147
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    .line 148
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_52

    .line 149
    sget-object v1, Lf1/w0;->f:Lf1/w0;

    new-instance v2, Ld1/n;

    const/4 v8, 0x1

    invoke-direct {v2, v11, v8}, Ld1/n;-><init>(Lv/p0;I)V

    invoke-static {v1, v2}, Lf1/b;->n(Lf1/p2;Lf9/a;)Lf1/f0;

    move-result-object v1

    .line 150
    invoke-virtual {v15, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 151
    :cond_52
    check-cast v1, Lf1/v2;

    const v1, -0x95ab8ec

    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 152
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    const v1, -0x95a706c

    .line 153
    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 154
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    const v1, -0x95a2632

    .line 155
    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 156
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    if-nez p6, :cond_53

    .line 157
    iget-wide v1, v13, Lc1/q2;->v:J

    goto :goto_31

    :cond_53
    if-eqz v27, :cond_54

    .line 158
    iget-wide v1, v13, Lc1/q2;->t:J

    goto :goto_31

    .line 159
    :cond_54
    iget-wide v1, v13, Lc1/q2;->u:J

    :goto_31
    const v3, -0x95a02f1

    .line 160
    invoke-virtual {v15, v3}, Lf1/s;->W(I)V

    if-nez v0, :cond_55

    const/16 v16, 0x0

    goto :goto_32

    .line 161
    :cond_55
    new-instance v3, Ld1/m;

    invoke-direct {v3, v1, v2, v0}, Ld1/m;-><init>(JLf9/n;)V

    const v1, 0x7bf77be6

    invoke-static {v1, v3, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    move-result-object v1

    move-object/from16 v16, v1

    .line 162
    :goto_32
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    const v1, -0x959ddf6

    .line 163
    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 164
    invoke-virtual {v15, v12}, Lf1/s;->p(Z)V

    const v1, -0x21cc046f

    .line 165
    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 166
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_56

    .line 167
    new-instance v1, Lx1/e;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lx1/e;-><init>(J)V

    .line 168
    invoke-static {v1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    move-result-object v1

    .line 169
    invoke-virtual {v15, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 170
    :cond_56
    check-cast v1, Lf1/b1;

    .line 171
    new-instance v2, Ld1/k;

    move-object/from16 v3, p8

    invoke-direct {v2, v1, v3, v14, v12}, Ld1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf9/n;I)V

    const v4, 0x96014d9

    invoke-static {v4, v2, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    move-result-object v2

    .line 172
    invoke-virtual {v15, v5}, Lf1/s;->c(F)Z

    move-result v4

    .line 173
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_57

    if-ne v6, v10, :cond_58

    .line 174
    :cond_57
    new-instance v6, Ld1/i;

    invoke-direct {v6, v5, v1}, Ld1/i;-><init>(FLf1/b1;)V

    .line 175
    invoke-virtual {v15, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 176
    :cond_58
    move-object/from16 v21, v6

    check-cast v21, Lf9/k;

    shr-int/lit8 v1, v26, 0x3

    and-int/lit8 v1, v1, 0x70

    const/16 v24, 0x6

    or-int/lit8 v1, v1, 0x6

    shl-int/lit8 v4, v22, 0x15

    const/high16 v6, 0xe000000

    and-int/2addr v4, v6

    or-int v26, v1, v4

    shr-int/lit8 v1, v22, 0x6

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v27, v1, 0x30

    const/16 v36, 0x0

    move-object/from16 v15, v36

    move-object/from16 v17, v36

    move-object/from16 v18, v36

    move-object/from16 v23, v36

    move-object/from16 v12, p1

    move/from16 v19, p5

    move-object/from16 v25, p11

    move-object/from16 v22, v2

    move-object/from16 v24, v3

    move/from16 v20, v5

    move-object v14, v9

    move-object/from16 v13, v36

    const/4 v3, 0x0

    .line 177
    invoke-static/range {v12 .. v27}, Lc1/b1;->b(Lf9/n;Lf9/o;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;ZFLf9/k;Ln1/c;Lf9/n;Ld0/h0;Lf1/s;II)V

    move-object/from16 v15, v25

    .line 178
    invoke-virtual {v15, v3}, Lf1/s;->p(Z)V

    .line 179
    :goto_33
    invoke-virtual {v15}, Lf1/s;->r()Lf1/w1;

    move-result-object v14

    if-eqz v14, :cond_59

    new-instance v0, Ld1/o;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Ld1/o;-><init>(Ljava/lang/String;Lf9/n;Lb3/i0;Lf9/n;Lf9/n;ZZLb0/k;Ld0/h0;Lc1/q2;Ln1/c;II)V

    .line 180
    iput-object v0, v14, Lf1/w1;->d:Lf9/n;

    :cond_59
    return-void
.end method

.method public static final b(JLb3/o0;Lf9/n;Lf1/s;I)V
    .locals 8

    .line 1
    const v0, 0x480b140c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p5, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p4, p0, p1}, Lf1/s;->e(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p5

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p5

    .line 23
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p4, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit16 v1, p5, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {p4, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    const/16 v1, 0x100

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/16 v1, 0x80

    .line 53
    .line 54
    :goto_3
    or-int/2addr v0, v1

    .line 55
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 56
    .line 57
    const/16 v2, 0x92

    .line 58
    .line 59
    if-ne v1, v2, :cond_7

    .line 60
    .line 61
    invoke-virtual {p4}, Lf1/s;->z()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_6
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 69
    .line 70
    .line 71
    move-wide v1, p0

    .line 72
    move-object v3, p2

    .line 73
    move-object v4, p3

    .line 74
    move-object v6, p4

    .line 75
    goto :goto_5

    .line 76
    :cond_7
    :goto_4
    and-int/lit16 v7, v0, 0x3fe

    .line 77
    .line 78
    move-wide v2, p0

    .line 79
    move-object v4, p2

    .line 80
    move-object v5, p3

    .line 81
    move-object v6, p4

    .line 82
    invoke-static/range {v2 .. v7}, Ld1/e;->a(JLb3/o0;Lf9/n;Lf1/s;I)V

    .line 83
    .line 84
    .line 85
    move-wide v1, v2

    .line 86
    move-object v3, v4

    .line 87
    move-object v4, v5

    .line 88
    :goto_5
    invoke-virtual {v6}, Lf1/s;->r()Lf1/w1;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-eqz p0, :cond_8

    .line 93
    .line 94
    new-instance v0, Ld1/h;

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    move v5, p5

    .line 98
    invoke-direct/range {v0 .. v6}, Ld1/h;-><init>(JLb3/o0;Lf9/n;II)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lf1/w1;->d:Lf9/n;

    .line 102
    .line 103
    :cond_8
    return-void
.end method

.method public static final c(JLf9/n;Lf1/s;I)V
    .locals 3

    .line 1
    const v0, 0x2758fb84

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p4, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p3, p0, p1}, Lf1/s;->e(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p4

    .line 23
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit8 v1, v0, 0x13

    .line 40
    .line 41
    const/16 v2, 0x12

    .line 42
    .line 43
    if-ne v1, v2, :cond_5

    .line 44
    .line 45
    invoke-virtual {p3}, Lf1/s;->z()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 53
    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_5
    :goto_3
    sget-object v1, Lc1/a0;->a:Lf1/c0;

    .line 57
    .line 58
    new-instance v2, Ly1/q;

    .line 59
    .line 60
    invoke-direct {v2, p0, p1}, Ly1/q;-><init>(J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    and-int/lit8 v0, v0, 0x70

    .line 68
    .line 69
    const/16 v2, 0x8

    .line 70
    .line 71
    or-int/2addr v0, v2

    .line 72
    invoke-static {v1, p2, p3, v0}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 73
    .line 74
    .line 75
    :goto_4
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    if-eqz p3, :cond_6

    .line 80
    .line 81
    new-instance v0, Ld1/p;

    .line 82
    .line 83
    invoke-direct {v0, p0, p1, p2, p4}, Ld1/p;-><init>(JLf9/n;I)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p3, Lf1/w1;->d:Lf9/n;

    .line 87
    .line 88
    :cond_6
    return-void
.end method

.method public static final d(Lo2/l0;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Lo2/l0;->x()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lo2/x;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lo2/x;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lo2/x;->o:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    return-object v1
.end method
