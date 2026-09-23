.class public abstract Lc1/u2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lc1/x;->l:Lc1/x;

    .line 2
    .line 3
    new-instance v1, Lf1/c0;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lc1/u2;->a:Lf1/c0;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Lb3/o0;Ln1/c;Lf1/s;I)V
    .locals 3

    .line 1
    const v0, -0x1b6f9f5f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    invoke-virtual {p2, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    and-int/lit8 v1, v0, 0x13

    .line 30
    .line 31
    const/16 v2, 0x12

    .line 32
    .line 33
    if-ne v1, v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    :goto_2
    sget-object v1, Lc1/u2;->a:Lf1/c0;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lb3/o0;

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Lb3/o0;->d(Lb3/o0;)Lb3/o0;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    and-int/lit8 v0, v0, 0x70

    .line 63
    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    or-int/2addr v0, v2

    .line 67
    invoke-static {v1, p1, p2, v0}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 68
    .line 69
    .line 70
    :goto_3
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    new-instance v0, Lc1/h;

    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    invoke-direct {v0, p0, p1, p3, v1}, Lc1/h;-><init>(Ljava/lang/Object;Lf9/n;II)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method public static final b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V
    .locals 30

    move-object/from16 v0, p17

    move/from16 v1, p18

    move/from16 v2, p19

    move/from16 v3, p20

    const v4, -0x7a7e7926

    .line 1
    invoke-virtual {v0, v4}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p0

    invoke-virtual {v0, v4}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    move v7, v1

    :goto_1
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v7, v7, 0x30

    :cond_2
    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v1, 0x30

    if-nez v11, :cond_2

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v7, v12

    :goto_3
    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_5

    or-int/lit16 v7, v7, 0x180

    move-wide/from16 v5, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v15, v1, 0x180

    move-wide/from16 v5, p2

    if-nez v15, :cond_7

    invoke-virtual {v0, v5, v6}, Lf1/s;->e(J)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x100

    goto :goto_4

    :cond_6
    const/16 v17, 0x80

    :goto_4
    or-int v7, v7, v17

    :cond_7
    :goto_5
    and-int/lit8 v17, v3, 0x8

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-eqz v17, :cond_8

    or-int/lit16 v7, v7, 0xc00

    move-wide/from16 v10, p4

    goto :goto_7

    :cond_8
    and-int/lit16 v9, v1, 0xc00

    move-wide/from16 v10, p4

    if-nez v9, :cond_a

    invoke-virtual {v0, v10, v11}, Lf1/s;->e(J)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x800

    goto :goto_6

    :cond_9
    const/16 v21, 0x400

    :goto_6
    or-int v7, v7, v21

    :cond_a
    :goto_7
    or-int/lit16 v9, v7, 0x6000

    and-int/lit8 v22, v3, 0x20

    const v23, 0x36000

    const/high16 v24, 0x10000

    if-eqz v22, :cond_c

    or-int v9, v7, v23

    :cond_b
    move-object/from16 v7, p6

    goto :goto_9

    :cond_c
    const/high16 v7, 0x30000

    and-int/2addr v7, v1

    if-nez v7, :cond_b

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    const/high16 v25, 0x20000

    goto :goto_8

    :cond_d
    const/high16 v25, 0x10000

    :goto_8
    or-int v9, v9, v25

    :goto_9
    const/high16 v25, 0x6d80000

    or-int v25, v9, v25

    and-int/lit16 v13, v3, 0x200

    if-eqz v13, :cond_f

    const/high16 v25, 0x36d80000

    or-int v25, v9, v25

    :cond_e
    move-object/from16 v9, p9

    goto :goto_b

    :cond_f
    const/high16 v9, 0x30000000

    and-int/2addr v9, v1

    if-nez v9, :cond_e

    move-object/from16 v9, p9

    invoke-virtual {v0, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    const/high16 v26, 0x20000000

    goto :goto_a

    :cond_10
    const/high16 v26, 0x10000000

    :goto_a
    or-int v25, v25, v26

    :goto_b
    and-int/lit16 v14, v3, 0x400

    if-eqz v14, :cond_11

    or-int/lit8 v15, v2, 0x6

    move-wide/from16 v4, p10

    goto :goto_d

    :cond_11
    move-wide/from16 v4, p10

    invoke-virtual {v0, v4, v5}, Lf1/s;->e(J)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v15, 0x4

    goto :goto_c

    :cond_12
    const/4 v15, 0x2

    :goto_c
    or-int/2addr v15, v2

    :goto_d
    and-int/lit16 v6, v3, 0x800

    if-eqz v6, :cond_13

    or-int/lit8 v15, v15, 0x30

    move/from16 v1, p12

    goto :goto_f

    :cond_13
    and-int/lit8 v16, v2, 0x30

    move/from16 v1, p12

    if-nez v16, :cond_15

    invoke-virtual {v0, v1}, Lf1/s;->d(I)Z

    move-result v16

    if-eqz v16, :cond_14

    const/16 v20, 0x20

    goto :goto_e

    :cond_14
    const/16 v20, 0x10

    :goto_e
    or-int v15, v15, v20

    :cond_15
    :goto_f
    and-int/lit16 v1, v3, 0x1000

    if-eqz v1, :cond_17

    or-int/lit16 v15, v15, 0x180

    move/from16 v16, v1

    :cond_16
    move/from16 v1, p13

    goto :goto_11

    :cond_17
    move/from16 v16, v1

    and-int/lit16 v1, v2, 0x180

    if-nez v1, :cond_16

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Lf1/s;->g(Z)Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v26, 0x100

    goto :goto_10

    :cond_18
    const/16 v26, 0x80

    :goto_10
    or-int v15, v15, v26

    :goto_11
    and-int/lit16 v1, v3, 0x2000

    if-eqz v1, :cond_1a

    or-int/lit16 v15, v15, 0xc00

    move/from16 v20, v1

    :cond_19
    move/from16 v1, p14

    goto :goto_12

    :cond_1a
    move/from16 v20, v1

    and-int/lit16 v1, v2, 0xc00

    if-nez v1, :cond_19

    move/from16 v1, p14

    invoke-virtual {v0, v1}, Lf1/s;->d(I)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/16 v18, 0x800

    :cond_1b
    or-int v15, v15, v18

    :goto_12
    or-int v15, v15, v23

    and-int v18, v3, v24

    move-object/from16 v1, p16

    if-nez v18, :cond_1c

    invoke-virtual {v0, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    const/high16 v18, 0x100000

    goto :goto_13

    :cond_1c
    const/high16 v18, 0x80000

    :goto_13
    or-int v15, v15, v18

    const v18, 0x12492493

    and-int v1, v25, v18

    const v2, 0x12492492

    if-ne v1, v2, :cond_1e

    const v1, 0x92493

    and-int/2addr v1, v15

    const v2, 0x92492

    if-ne v1, v2, :cond_1e

    invoke-virtual {v0}, Lf1/s;->z()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_14

    .line 2
    :cond_1d
    invoke-virtual {v0}, Lf1/s;->Q()V

    move-wide v2, v10

    move-wide v11, v4

    move-wide v5, v2

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object v10, v9

    move-wide/from16 v8, p7

    goto/16 :goto_21

    .line 3
    :cond_1e
    :goto_14
    invoke-virtual {v0}, Lf1/s;->S()V

    and-int/lit8 v1, p18, 0x1

    const v2, -0x380001

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lf1/s;->x()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_15

    .line 4
    :cond_1f
    invoke-virtual {v0}, Lf1/s;->Q()V

    and-int v1, v3, v24

    if-eqz v1, :cond_20

    and-int/2addr v15, v2

    :cond_20
    move-object/from16 v1, p1

    move-wide/from16 v18, p2

    move-wide/from16 v21, p7

    move/from16 v6, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p16

    move-object v8, v9

    move/from16 v9, p15

    goto :goto_1c

    :cond_21
    :goto_15
    if-eqz v8, :cond_22

    .line 5
    sget-object v1, Lr1/m;->a:Lr1/m;

    goto :goto_16

    :cond_22
    move-object/from16 v1, p1

    :goto_16
    if-eqz v12, :cond_23

    .line 6
    sget-wide v18, Ly1/q;->m:J

    goto :goto_17

    :cond_23
    move-wide/from16 v18, p2

    :goto_17
    if-eqz v17, :cond_24

    .line 7
    sget-wide v10, Ln3/o;->c:J

    :cond_24
    const/4 v8, 0x0

    if-eqz v22, :cond_25

    move-object v7, v8

    .line 8
    :cond_25
    sget-wide v21, Ln3/o;->c:J

    if-eqz v13, :cond_26

    goto :goto_18

    :cond_26
    move-object v8, v9

    :goto_18
    if-eqz v14, :cond_27

    move-wide/from16 v4, v21

    :cond_27
    const/4 v9, 0x1

    if-eqz v6, :cond_28

    const/4 v6, 0x1

    goto :goto_19

    :cond_28
    move/from16 v6, p12

    :goto_19
    if-eqz v16, :cond_29

    const/4 v12, 0x1

    goto :goto_1a

    :cond_29
    move/from16 v12, p13

    :goto_1a
    if-eqz v20, :cond_2a

    const v13, 0x7fffffff

    goto :goto_1b

    :cond_2a
    move/from16 v13, p14

    :goto_1b
    and-int v14, v3, v24

    if-eqz v14, :cond_2b

    .line 9
    sget-object v14, Lc1/u2;->a:Lf1/c0;

    .line 10
    invoke-virtual {v0, v14}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb3/o0;

    and-int/2addr v15, v2

    goto :goto_1c

    :cond_2b
    move-object/from16 v14, p16

    :goto_1c
    invoke-virtual {v0}, Lf1/s;->q()V

    const v2, -0x6cf36ecd

    .line 11
    invoke-virtual {v0, v2}, Lf1/s;->W(I)V

    const-wide/16 v16, 0x10

    cmp-long v20, v18, v16

    if-eqz v20, :cond_2c

    move-object/from16 p13, v1

    move-wide/from16 v23, v18

    const/4 v1, 0x0

    goto :goto_1f

    :cond_2c
    const v2, -0x6cf36bc8

    .line 12
    invoke-virtual {v0, v2}, Lf1/s;->W(I)V

    .line 13
    invoke-virtual {v14}, Lb3/o0;->b()J

    move-result-wide v23

    cmp-long v2, v23, v16

    if-eqz v2, :cond_2d

    move-object/from16 p13, v1

    :goto_1d
    const/4 v1, 0x0

    goto :goto_1e

    .line 14
    :cond_2d
    sget-object v2, Lc1/a0;->a:Lf1/c0;

    .line 15
    invoke-virtual {v0, v2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Ly1/q;

    move-object/from16 p13, v1

    .line 17
    iget-wide v1, v2, Ly1/q;->a:J

    move-wide/from16 v23, v1

    goto :goto_1d

    .line 18
    :goto_1e
    invoke-virtual {v0, v1}, Lf1/s;->p(Z)V

    :goto_1f
    invoke-virtual {v0, v1}, Lf1/s;->p(Z)V

    if-eqz v8, :cond_2e

    .line 19
    iget v1, v8, Lm3/k;->a:I

    goto :goto_20

    :cond_2e
    const/high16 v1, -0x80000000

    :goto_20
    const v2, 0xfd6f50

    move/from16 p9, v1

    move-wide/from16 p10, v4

    move-object/from16 p6, v7

    move-wide/from16 p4, v10

    move-object/from16 p1, v14

    move-wide/from16 p7, v21

    move-wide/from16 p2, v23

    const p12, 0xfd6f50

    .line 20
    invoke-static/range {p1 .. p12}, Lb3/o0;->e(Lb3/o0;JJLf3/k;JIJI)Lb3/o0;

    move-result-object v1

    and-int/lit8 v2, v25, 0x7e

    or-int/lit16 v2, v2, 0xc00

    shl-int/lit8 v15, v15, 0x9

    const v16, 0xe000

    and-int v16, v15, v16

    or-int v2, v2, v16

    const/high16 v16, 0x70000

    and-int v16, v15, v16

    or-int v2, v2, v16

    const/high16 v16, 0x380000

    and-int v15, v15, v16

    or-int/2addr v2, v15

    const/high16 v15, 0xc00000

    or-int/2addr v2, v15

    move-object/from16 p1, p0

    move-object/from16 p2, p13

    move-object/from16 p8, v0

    move-object/from16 p3, v1

    move/from16 p9, v2

    move/from16 p4, v6

    move/from16 p7, v9

    move/from16 p5, v12

    move/from16 p6, v13

    .line 21
    invoke-static/range {p1 .. p9}, Ll0/p0;->b(Ljava/lang/String;Lr1/p;Lb3/o0;IZIILf1/s;I)V

    move-object/from16 v1, p2

    move-object v2, v1

    move/from16 v16, v9

    move v15, v13

    move-object/from16 v17, v14

    move v13, v6

    move v14, v12

    move-wide/from16 v28, v10

    move-object v10, v8

    move-wide v11, v4

    move-wide/from16 v5, v28

    move-wide/from16 v3, v18

    move-wide/from16 v8, v21

    .line 22
    :goto_21
    invoke-virtual/range {p17 .. p17}, Lf1/s;->r()Lf1/w1;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object v1, v0

    new-instance v0, Lc1/t2;

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v27, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v20}, Lc1/t2;-><init>(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;III)V

    move-object/from16 v1, v27

    .line 23
    iput-object v0, v1, Lf1/w1;->d:Lf9/n;

    :cond_2f
    return-void
.end method
