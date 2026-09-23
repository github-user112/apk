.class public abstract Lc1/b1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    int-to-float v0, v0

    .line 3
    sput v0, Lc1/b1;->a:F

    .line 4
    .line 5
    sget-wide v0, Le1/o;->l:J

    .line 6
    .line 7
    sget-object v2, Ln3/o;->b:[Ln3/p;

    .line 8
    .line 9
    const-wide v2, 0xff00000000L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v2, v0

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    const-string v4, "Cannot perform operation for Unspecified type."

    .line 22
    .line 23
    invoke-static {v4}, Ln3/i;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {v0, v1}, Ln3/o;->c(J)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    int-to-float v1, v1

    .line 32
    div-float/2addr v0, v1

    .line 33
    invoke-static {v0, v2, v3}, Lc7/a;->M(FJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    sput-wide v0, Lc1/b1;->b:J

    .line 38
    .line 39
    return-void
.end method

.method public static final a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V
    .locals 103

    move-object/from16 v0, p15

    move/from16 v1, p16

    move/from16 v2, p18

    const v3, -0x7296427d

    .line 1
    invoke-virtual {v0, v3}, Lf1/s;->Y(I)Lf1/s;

    move-object/from16 v9, p0

    invoke-virtual {v0, v9}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v1

    and-int/lit8 v5, v1, 0x30

    move-object/from16 v10, p1

    if-nez v5, :cond_2

    invoke-virtual {v0, v10}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v3, v5

    :cond_2
    and-int/lit16 v5, v1, 0x180

    if-nez v5, :cond_4

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v3, v6

    goto :goto_3

    :cond_4
    move-object/from16 v5, p2

    :goto_3
    const v6, 0x6c16c00

    or-int/2addr v6, v3

    and-int/lit16 v7, v2, 0x200

    const/high16 v8, 0x30000000

    if-eqz v7, :cond_6

    const v6, 0x36c16c00

    or-int/2addr v6, v3

    :cond_5
    move-object/from16 v3, p6

    goto :goto_5

    :cond_6
    and-int v3, v1, v8

    if-nez v3, :cond_5

    move-object/from16 v3, p6

    invoke-virtual {v0, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x20000000

    goto :goto_4

    :cond_7
    const/high16 v11, 0x10000000

    :goto_4
    or-int/2addr v6, v11

    :goto_5
    const v11, 0x1b6db6

    or-int v11, p17, v11

    const/high16 v12, 0x20000

    and-int/2addr v12, v2

    if-eqz v12, :cond_9

    const v11, 0xdb6db6

    or-int v11, p17, v11

    :cond_8
    move/from16 v13, p10

    goto :goto_7

    :cond_9
    const/high16 v13, 0xc00000

    and-int v13, p17, v13

    if-nez v13, :cond_8

    move/from16 v13, p10

    invoke-virtual {v0, v13}, Lf1/s;->g(Z)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x800000

    goto :goto_6

    :cond_a
    const/high16 v14, 0x400000

    :goto_6
    or-int/2addr v11, v14

    :goto_7
    const/high16 v14, 0x6000000

    and-int v14, p17, v14

    const/high16 v15, 0x40000

    if-nez v14, :cond_d

    and-int v14, v2, v15

    if-nez v14, :cond_b

    move/from16 v14, p11

    invoke-virtual {v0, v14}, Lf1/s;->d(I)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x4000000

    goto :goto_8

    :cond_b
    move/from16 v14, p11

    :cond_c
    const/high16 v16, 0x2000000

    :goto_8
    or-int v11, v11, v16

    goto :goto_9

    :cond_d
    move/from16 v14, p11

    :goto_9
    or-int/2addr v8, v11

    const v11, 0x12492493

    and-int/2addr v6, v11

    const v16, 0x12492493

    const v11, 0x12492492

    if-ne v6, v11, :cond_f

    and-int v6, v8, v16

    if-ne v6, v11, :cond_f

    invoke-virtual {v0}, Lf1/s;->z()Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_a

    .line 2
    :cond_e
    invoke-virtual {v0}, Lf1/s;->Q()V

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v15, p14

    move-object v7, v3

    move v11, v13

    move v12, v14

    move/from16 v13, p12

    move-object/from16 v14, p13

    goto/16 :goto_12

    .line 3
    :cond_f
    :goto_a
    invoke-virtual {v0}, Lf1/s;->S()V

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_11

    invoke-virtual {v0}, Lf1/s;->x()Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_b

    .line 4
    :cond_10
    invoke-virtual {v0}, Lf1/s;->Q()V

    move/from16 v11, p3

    move-object/from16 v18, p7

    move/from16 v17, p12

    move-object/from16 v21, p13

    move-object/from16 v8, p14

    move-object/from16 v20, v3

    move v15, v13

    move/from16 v16, v14

    move-object/from16 v3, p4

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    goto/16 :goto_d

    .line 5
    :cond_11
    :goto_b
    sget-object v6, Lc1/u2;->a:Lf1/c0;

    .line 6
    invoke-virtual {v0, v6}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb3/o0;

    if-eqz v7, :cond_12

    const/4 v3, 0x0

    :cond_12
    if-eqz v12, :cond_13

    const/4 v13, 0x0

    :cond_13
    and-int v7, v2, v15

    if-eqz v7, :cond_15

    if-eqz v13, :cond_14

    const/4 v7, 0x1

    goto :goto_c

    :cond_14
    const v7, 0x7fffffff

    :goto_c
    move v14, v7

    .line 7
    :cond_15
    sget-object v7, Lc1/t0;->a:Lc1/t0;

    const/4 v7, 0x3

    .line 8
    invoke-static {v7, v0}, Lc1/l1;->a(ILf1/s;)Ly1/l0;

    move-result-object v7

    .line 9
    sget-object v12, Lc1/y;->a:Lf1/w2;

    .line 10
    invoke-virtual {v0, v12}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v12

    .line 11
    check-cast v12, Lc1/w;

    .line 12
    iget-object v15, v12, Lc1/w;->P:Lc1/q2;

    const v11, 0x5bd0a3e6

    .line 13
    invoke-virtual {v0, v11}, Lf1/s;->W(I)V

    if-nez v15, :cond_16

    .line 14
    new-instance v16, Lc1/q2;

    const/16 v11, 0x12

    .line 15
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v17

    .line 16
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v19

    .line 17
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v8

    const v15, 0x3ec28f5c    # 0.38f

    .line 18
    invoke-static {v15, v8, v9}, Ly1/q;->b(FJ)J

    move-result-wide v21

    .line 19
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v23

    .line 20
    sget-wide v25, Ly1/q;->l:J

    const/16 v8, 0x1a

    .line 21
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v33

    .line 22
    invoke-static {v12, v4}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v35

    .line 23
    sget-object v9, Lw0/x1;->a:Lf1/c0;

    .line 24
    invoke-virtual {v0, v9}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v37, v9

    check-cast v37, Lw0/w1;

    .line 25
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v38

    const/16 v9, 0x18

    .line 26
    invoke-static {v12, v9}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v40

    .line 27
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v8

    const v15, 0x3df5c28f    # 0.12f

    .line 28
    invoke-static {v15, v8, v9}, Ly1/q;->b(FJ)J

    move-result-wide v42

    .line 29
    invoke-static {v12, v4}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v44

    const/16 v8, 0x13

    .line 30
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v46

    .line 31
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v48

    .line 32
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v4

    const v15, 0x3ec28f5c    # 0.38f

    .line 33
    invoke-static {v15, v4, v5}, Ly1/q;->b(FJ)J

    move-result-wide v50

    .line 34
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v52

    .line 35
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v54

    .line 36
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v56

    .line 37
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v4

    .line 38
    invoke-static {v15, v4, v5}, Ly1/q;->b(FJ)J

    move-result-wide v58

    const/4 v9, 0x2

    .line 39
    invoke-static {v12, v9}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v60

    const/16 v4, 0x1a

    .line 40
    invoke-static {v12, v4}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v62

    .line 41
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v64

    .line 42
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v4

    .line 43
    invoke-static {v15, v4, v5}, Ly1/q;->b(FJ)J

    move-result-wide v66

    .line 44
    invoke-static {v12, v9}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v68

    .line 45
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v70

    .line 46
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v72

    .line 47
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v4

    .line 48
    invoke-static {v15, v4, v5}, Ly1/q;->b(FJ)J

    move-result-wide v74

    .line 49
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v76

    .line 50
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v78

    .line 51
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v80

    .line 52
    invoke-static {v12, v11}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v4

    .line 53
    invoke-static {v15, v4, v5}, Ly1/q;->b(FJ)J

    move-result-wide v82

    .line 54
    invoke-static {v12, v9}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v84

    .line 55
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v86

    .line 56
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v88

    .line 57
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v4

    .line 58
    invoke-static {v15, v4, v5}, Ly1/q;->b(FJ)J

    move-result-wide v90

    .line 59
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v92

    .line 60
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v94

    .line 61
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v96

    .line 62
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v4

    .line 63
    invoke-static {v15, v4, v5}, Ly1/q;->b(FJ)J

    move-result-wide v98

    .line 64
    invoke-static {v12, v8}, Lc1/y;->c(Lc1/w;I)J

    move-result-wide v100

    move-wide/from16 v27, v25

    move-wide/from16 v29, v25

    move-wide/from16 v31, v25

    .line 65
    invoke-direct/range {v16 .. v101}, Lc1/q2;-><init>(JJJJJJJJJJLw0/w1;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    move-object/from16 v4, v16

    .line 66
    iput-object v4, v12, Lc1/w;->P:Lc1/q2;

    move-object v15, v4

    :cond_16
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v0, v4}, Lf1/s;->p(Z)V

    .line 68
    sget-object v4, Lg3/e0;->a:Lb3/i0;

    sget-object v5, Ll0/r0;->a:Ll0/r0;

    sget-object v8, Ll0/q0;->a:Ll0/q0;

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object v3, v6

    move-object/from16 v21, v7

    move/from16 v16, v14

    const/4 v11, 0x1

    const/16 v17, 0x1

    move-object v14, v8

    move-object v8, v15

    move v15, v13

    move-object v13, v5

    :goto_d
    invoke-virtual {v0}, Lf1/s;->q()V

    const v4, 0x1cab964

    .line 69
    invoke-virtual {v0, v4}, Lf1/s;->W(I)V

    .line 70
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v4

    .line 71
    sget-object v5, Lf1/n;->a:Lf1/w0;

    if-ne v4, v5, :cond_17

    .line 72
    invoke-static {v0}, Lp9/v;->n(Lf1/s;)Lb0/k;

    move-result-object v4

    .line 73
    :cond_17
    check-cast v4, Lb0/k;

    const/4 v5, 0x0

    .line 74
    invoke-virtual {v0, v5}, Lf1/s;->p(Z)V

    const v6, 0x1cad142

    .line 75
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    .line 76
    invoke-virtual {v3}, Lb3/o0;->b()J

    move-result-wide v6

    const-wide/16 v22, 0x10

    cmp-long v9, v6, v22

    if-eqz v9, :cond_18

    :goto_e
    move-wide/from16 v23, v6

    goto :goto_11

    .line 77
    :cond_18
    invoke-static {v4, v0, v5}, Lc7/a;->k(Lb0/k;Lf1/s;I)Lf1/b1;

    move-result-object v6

    invoke-interface {v6}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v11, :cond_19

    .line 78
    iget-wide v5, v8, Lc1/q2;->c:J

    :goto_f
    move-wide v6, v5

    goto :goto_10

    :cond_19
    if-eqz v5, :cond_1a

    .line 79
    iget-wide v5, v8, Lc1/q2;->a:J

    goto :goto_f

    .line 80
    :cond_1a
    iget-wide v5, v8, Lc1/q2;->b:J

    goto :goto_f

    :goto_10
    const/4 v5, 0x0

    goto :goto_e

    .line 81
    :goto_11
    invoke-virtual {v0, v5}, Lf1/s;->p(Z)V

    .line 82
    new-instance v22, Lb3/o0;

    const-wide/16 v31, 0x0

    const v33, 0xfffffe

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v22 .. v33}, Lb3/o0;-><init>(JJLf3/k;JIJI)V

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Lb3/o0;->d(Lb3/o0;)Lb3/o0;

    move-result-object v12

    .line 83
    sget-object v5, Lr2/i1;->h:Lf1/w2;

    .line 84
    invoke-virtual {v0, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v5

    .line 85
    move-object v7, v5

    check-cast v7, Ln3/c;

    .line 86
    sget-object v5, Lw0/x1;->a:Lf1/c0;

    .line 87
    iget-object v6, v8, Lc1/q2;->k:Lw0/w1;

    .line 88
    invoke-virtual {v5, v6}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    move-result-object v5

    move-object/from16 v19, v4

    .line 89
    new-instance v4, Lc1/w0;

    move-object/from16 v9, p0

    move-object/from16 v6, p5

    move-object v1, v5

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v21}, Lc1/w0;-><init>(Lr1/p;Lf9/n;Ln3/c;Lc1/q2;Ljava/lang/String;Lf9/k;ZLb3/o0;Ll0/r0;Ll0/q0;ZIILb3/i0;Lb0/k;Lf9/n;Ly1/l0;)V

    const v5, -0x7078cdbd

    invoke-static {v5, v4, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    move-result-object v4

    const/16 v5, 0x38

    invoke-static {v1, v4, v0, v5}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    move-object v5, v3

    move v4, v11

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v7, v20

    move-object/from16 v14, v21

    move-object v15, v8

    move-object/from16 v8, v18

    .line 90
    :goto_12
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, v0

    new-instance v0, Lc1/x0;

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v102, v1

    move/from16 v18, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v18}, Lc1/x0;-><init>(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;III)V

    move-object/from16 v1, v102

    .line 91
    iput-object v0, v1, Lf1/w1;->d:Lf9/n;

    :cond_1b
    return-void
.end method

.method public static final b(Lf9/n;Lf9/o;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;ZFLf9/k;Ln1/c;Lf9/n;Ld0/h0;Lf1/s;II)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v0, p13

    move/from16 v14, p14

    move/from16 v15, p15

    .line 1
    sget-object v13, Lr1/c;->e:Lr1/h;

    move-object/from16 v16, v13

    sget-object v13, Lr1/c;->a:Lr1/h;

    move-object/from16 v17, v13

    const v13, 0x53f0cda1

    invoke-virtual {v0, v13}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v13, v14, 0x6

    move/from16 v18, v13

    sget-object v13, Lr1/m;->a:Lr1/m;

    if-nez v18, :cond_1

    invoke-virtual {v0, v13}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x4

    goto :goto_0

    :cond_0
    const/16 v18, 0x2

    :goto_0
    or-int v18, v14, v18

    goto :goto_1

    :cond_1
    move/from16 v18, v14

    :goto_1
    and-int/lit8 v20, v14, 0x30

    const/16 v21, 0x10

    const/16 v22, 0x20

    if-nez v20, :cond_3

    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x20

    goto :goto_2

    :cond_2
    const/16 v20, 0x10

    :goto_2
    or-int v18, v18, v20

    :cond_3
    and-int/lit16 v12, v14, 0x180

    const/16 v23, 0x80

    const/16 v24, 0x100

    if-nez v12, :cond_5

    invoke-virtual {v0, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x100

    goto :goto_3

    :cond_4
    const/16 v12, 0x80

    :goto_3
    or-int v18, v18, v12

    :cond_5
    and-int/lit16 v12, v14, 0xc00

    const/16 v25, 0x400

    move/from16 v26, v12

    if-nez v26, :cond_7

    invoke-virtual {v0, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x800

    goto :goto_4

    :cond_6
    const/16 v26, 0x400

    :goto_4
    or-int v18, v18, v26

    :cond_7
    and-int/lit16 v12, v14, 0x6000

    if-nez v12, :cond_9

    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    const/16 v12, 0x2000

    :goto_5
    or-int v18, v18, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int/2addr v12, v14

    if-nez v12, :cond_b

    invoke-virtual {v0, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v12, 0x10000

    :goto_6
    or-int v18, v18, v12

    :cond_b
    const/high16 v12, 0x180000

    and-int/2addr v12, v14

    if-nez v12, :cond_d

    invoke-virtual {v0, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v12, 0x80000

    :goto_7
    or-int v18, v18, v12

    :cond_d
    const/high16 v12, 0xc00000

    and-int/2addr v12, v14

    if-nez v12, :cond_f

    invoke-virtual {v0, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v12, 0x400000

    :goto_8
    or-int v18, v18, v12

    :cond_f
    const/high16 v12, 0x6000000

    and-int/2addr v12, v14

    move/from16 v27, v12

    if-nez v27, :cond_11

    invoke-virtual {v0, v8}, Lf1/s;->g(Z)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v27, 0x2000000

    :goto_9
    or-int v18, v18, v27

    :cond_11
    const/high16 v27, 0x30000000

    and-int v27, v14, v27

    if-nez v27, :cond_13

    invoke-virtual {v0, v9}, Lf1/s;->c(F)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v27, 0x10000000

    :goto_a
    or-int v18, v18, v27

    :cond_13
    and-int/lit8 v27, v15, 0x6

    if-nez v27, :cond_15

    invoke-virtual {v0, v10}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    const/16 v27, 0x4

    goto :goto_b

    :cond_14
    const/16 v27, 0x2

    :goto_b
    or-int v27, v15, v27

    goto :goto_c

    :cond_15
    move/from16 v27, v15

    :goto_c
    and-int/lit8 v29, v15, 0x30

    if-nez v29, :cond_17

    invoke-virtual {v0, v11}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/16 v21, 0x20

    :cond_16
    or-int v27, v27, v21

    :cond_17
    and-int/lit16 v12, v15, 0x180

    if-nez v12, :cond_19

    move-object/from16 v12, p11

    invoke-virtual {v0, v12}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    const/16 v23, 0x100

    :cond_18
    or-int v27, v27, v23

    goto :goto_d

    :cond_19
    move-object/from16 v12, p11

    :goto_d
    and-int/lit16 v14, v15, 0xc00

    if-nez v14, :cond_1b

    move-object/from16 v14, p12

    invoke-virtual {v0, v14}, Lf1/s;->f(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    const/16 v25, 0x800

    :cond_1a
    or-int v27, v27, v25

    :goto_e
    move/from16 v15, v27

    goto :goto_f

    :cond_1b
    move-object/from16 v14, p12

    goto :goto_e

    :goto_f
    const v22, 0x12492493

    and-int v12, v18, v22

    const v3, 0x12492492

    if-ne v12, v3, :cond_1d

    and-int/lit16 v3, v15, 0x493

    const/16 v12, 0x492

    if-ne v3, v12, :cond_1d

    invoke-virtual {v0}, Lf1/s;->z()Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_10

    .line 2
    :cond_1c
    invoke-virtual {v0}, Lf1/s;->Q()V

    move-object/from16 v4, p2

    move-object/from16 v12, p11

    move v6, v9

    goto/16 :goto_2c

    :cond_1d
    :goto_10
    and-int/lit8 v3, v15, 0xe

    const/4 v12, 0x4

    if-ne v3, v12, :cond_1e

    const/4 v3, 0x1

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    :goto_11
    const/high16 v12, 0xe000000

    and-int v12, v18, v12

    move/from16 v19, v3

    const/high16 v3, 0x4000000

    if-ne v12, v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    :goto_12
    or-int v3, v19, v3

    const/high16 v12, 0x70000000

    and-int v12, v18, v12

    move/from16 v19, v3

    const/high16 v3, 0x20000000

    if-ne v12, v3, :cond_20

    const/4 v3, 0x1

    goto :goto_13

    :cond_20
    const/4 v3, 0x0

    :goto_13
    or-int v3, v19, v3

    and-int/lit16 v12, v15, 0x1c00

    move/from16 v19, v3

    const/16 v3, 0x800

    if-ne v12, v3, :cond_21

    const/4 v3, 0x1

    goto :goto_14

    :cond_21
    const/4 v3, 0x0

    :goto_14
    or-int v3, v19, v3

    .line 3
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v12

    if-nez v3, :cond_22

    .line 4
    sget-object v3, Lf1/n;->a:Lf1/w0;

    if-ne v12, v3, :cond_23

    .line 5
    :cond_22
    new-instance v12, Lc1/e1;

    invoke-direct {v12, v10, v8, v9, v14}, Lc1/e1;-><init>(Lf9/k;ZFLd0/h0;)V

    .line 6
    invoke-virtual {v0, v12}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 7
    :cond_23
    check-cast v12, Lc1/e1;

    .line 8
    sget-object v3, Lr2/i1;->n:Lf1/w2;

    .line 9
    invoke-virtual {v0, v3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Ln3/m;

    .line 11
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v8

    .line 12
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v10

    move/from16 v19, v15

    .line 13
    invoke-static {v0, v13}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v15

    .line 14
    sget-object v21, Lq2/j;->d0:Lq2/i;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v9, Lq2/i;->b:Lq2/a0;

    .line 16
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 17
    iget-boolean v1, v0, Lf1/s;->S:Z

    if-eqz v1, :cond_24

    .line 18
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_15

    .line 19
    :cond_24
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 20
    :goto_15
    sget-object v1, Lq2/i;->e:Lq2/h;

    .line 21
    invoke-static {v0, v1, v12}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 22
    sget-object v12, Lq2/i;->d:Lq2/h;

    .line 23
    invoke-static {v0, v12, v10}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 24
    sget-object v10, Lq2/i;->f:Lq2/h;

    .line 25
    iget-boolean v2, v0, Lf1/s;->S:Z

    if-nez v2, :cond_25

    .line 26
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 27
    :cond_25
    invoke-static {v8, v0, v8, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 28
    :cond_26
    sget-object v2, Lq2/i;->c:Lq2/h;

    .line 29
    invoke-static {v0, v2, v15}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v7, v19, 0x3

    and-int/lit8 v7, v7, 0xe

    .line 30
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v0, v7}, Ln1/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0xeec5941

    invoke-virtual {v0, v7}, Lf1/s;->W(I)V

    if-eqz v4, :cond_2a

    .line 31
    const-string v7, "Leading"

    invoke-static {v13, v7}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v7

    .line 32
    sget-object v8, Ld1/r;->i:Lr1/p;

    .line 33
    invoke-interface {v7, v8}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v7

    move-object/from16 v8, v16

    const/4 v15, 0x0

    .line 34
    invoke-static {v8, v15}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    move-result-object v11

    .line 35
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v15

    .line 36
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v6

    .line 37
    invoke-static {v0, v7}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v7

    .line 38
    invoke-virtual {v0}, Lf1/s;->a0()V

    move-object/from16 v16, v3

    .line 39
    iget-boolean v3, v0, Lf1/s;->S:Z

    if-eqz v3, :cond_27

    .line 40
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_16

    .line 41
    :cond_27
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 42
    :goto_16
    invoke-static {v0, v1, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 43
    invoke-static {v0, v12, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 44
    iget-boolean v3, v0, Lf1/s;->S:Z

    if-nez v3, :cond_28

    .line 45
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 46
    :cond_28
    invoke-static {v15, v0, v15, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 47
    :cond_29
    invoke-static {v0, v2, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v3, v18, 0xc

    and-int/lit8 v3, v3, 0xe

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 49
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    :goto_17
    const/4 v15, 0x0

    goto :goto_18

    :cond_2a
    move-object/from16 v8, v16

    move-object/from16 v16, v3

    goto :goto_17

    .line 50
    :goto_18
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    const v3, 0xeec7ce4

    .line 51
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    if-eqz v5, :cond_2e

    .line 52
    const-string v3, "Trailing"

    invoke-static {v13, v3}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v3

    .line 53
    sget-object v6, Ld1/r;->i:Lr1/p;

    .line 54
    invoke-interface {v3, v6}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v3

    .line 55
    invoke-static {v8, v15}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    move-result-object v6

    .line 56
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v7

    .line 57
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v8

    .line 58
    invoke-static {v0, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v3

    .line 59
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 60
    iget-boolean v11, v0, Lf1/s;->S:Z

    if-eqz v11, :cond_2b

    .line 61
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_19

    .line 62
    :cond_2b
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 63
    :goto_19
    invoke-static {v0, v1, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 64
    invoke-static {v0, v12, v8}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 65
    iget-boolean v6, v0, Lf1/s;->S:Z

    if-nez v6, :cond_2c

    .line 66
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 67
    :cond_2c
    invoke-static {v7, v0, v7, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 68
    :cond_2d
    invoke-static {v0, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v3, v18, 0xf

    and-int/lit8 v3, v3, 0xe

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    const/4 v15, 0x0

    .line 71
    :cond_2e
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    move-object/from16 v3, v16

    .line 72
    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/a;->d(Ld0/h0;Ln3/m;)F

    move-result v6

    .line 73
    sget-object v7, Ln3/m;->a:Ln3/m;

    if-ne v3, v7, :cond_2f

    .line 74
    invoke-virtual {v14, v3}, Ld0/h0;->b(Ln3/m;)F

    move-result v3

    goto :goto_1a

    .line 75
    :cond_2f
    invoke-virtual {v14, v3}, Ld0/h0;->a(Ln3/m;)F

    move-result v3

    :goto_1a
    if-eqz v4, :cond_30

    .line 76
    sget v7, Ld1/r;->c:F

    sub-float/2addr v6, v7

    int-to-float v7, v15

    cmpg-float v8, v6, v7

    if-gez v8, :cond_30

    move v6, v7

    :cond_30
    move/from16 v25, v6

    if-eqz v5, :cond_31

    .line 77
    sget v6, Ld1/r;->c:F

    sub-float/2addr v3, v6

    int-to-float v6, v15

    cmpg-float v7, v3, v6

    if-gez v7, :cond_31

    move v3, v6

    :cond_31
    const v6, 0xeecf47a

    .line 78
    invoke-virtual {v0, v6}, Lf1/s;->W(I)V

    const/4 v6, 0x0

    if-eqz p5, :cond_35

    .line 79
    const-string v7, "Prefix"

    invoke-static {v13, v7}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v7

    .line 80
    sget v8, Ld1/r;->f:F

    const/4 v11, 0x2

    .line 81
    invoke-static {v7, v8, v6, v11}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    move-result-object v7

    .line 82
    invoke-static {v7}, Landroidx/compose/foundation/layout/c;->m(Lr1/p;)Lr1/p;

    move-result-object v24

    .line 83
    sget v27, Ld1/r;->e:F

    const/16 v28, 0x0

    const/16 v29, 0xa

    const/16 v26, 0x0

    .line 84
    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    move-result-object v7

    move-object/from16 v8, v17

    const/4 v15, 0x0

    .line 85
    invoke-static {v8, v15}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    move-result-object v11

    .line 86
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v15

    .line 87
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v6

    .line 88
    invoke-static {v0, v7}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v7

    .line 89
    invoke-virtual {v0}, Lf1/s;->a0()V

    move/from16 v29, v3

    .line 90
    iget-boolean v3, v0, Lf1/s;->S:Z

    if-eqz v3, :cond_32

    .line 91
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_1b

    .line 92
    :cond_32
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 93
    :goto_1b
    invoke-static {v0, v1, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 94
    invoke-static {v0, v12, v6}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 95
    iget-boolean v3, v0, Lf1/s;->S:Z

    if-nez v3, :cond_33

    .line 96
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 97
    :cond_33
    invoke-static {v15, v0, v15, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 98
    :cond_34
    invoke-static {v0, v2, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v3, v18, 0x12

    and-int/lit8 v3, v3, 0xe

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v6, p5

    invoke-interface {v6, v0, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 100
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    :goto_1c
    const/4 v15, 0x0

    goto :goto_1d

    :cond_35
    move-object/from16 v6, p5

    move/from16 v29, v3

    move-object/from16 v8, v17

    goto :goto_1c

    .line 101
    :goto_1d
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    const v3, 0xeed2338

    .line 102
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    if-eqz p6, :cond_39

    .line 103
    const-string v3, "Suffix"

    invoke-static {v13, v3}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v3

    .line 104
    sget v7, Ld1/r;->f:F

    const/4 v11, 0x0

    const/4 v15, 0x2

    .line 105
    invoke-static {v3, v7, v11, v15}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    move-result-object v3

    .line 106
    invoke-static {v3}, Landroidx/compose/foundation/layout/c;->m(Lr1/p;)Lr1/p;

    move-result-object v26

    .line 107
    sget v27, Ld1/r;->e:F

    const/16 v30, 0x0

    const/16 v31, 0xa

    const/16 v28, 0x0

    .line 108
    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    move-result-object v3

    const/4 v15, 0x0

    .line 109
    invoke-static {v8, v15}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    move-result-object v7

    .line 110
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v11

    .line 111
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v15

    .line 112
    invoke-static {v0, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v3

    .line 113
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 114
    iget-boolean v4, v0, Lf1/s;->S:Z

    if-eqz v4, :cond_36

    .line 115
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_1e

    .line 116
    :cond_36
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 117
    :goto_1e
    invoke-static {v0, v1, v7}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 118
    invoke-static {v0, v12, v15}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 119
    iget-boolean v4, v0, Lf1/s;->S:Z

    if-nez v4, :cond_37

    .line 120
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 121
    :cond_37
    invoke-static {v11, v0, v11, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 122
    :cond_38
    invoke-static {v0, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v3, v18, 0x15

    and-int/lit8 v3, v3, 0xe

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v7, p6

    invoke-interface {v7, v0, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 124
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    :goto_1f
    const/4 v15, 0x0

    goto :goto_20

    :cond_39
    move-object/from16 v7, p6

    goto :goto_1f

    .line 125
    :goto_20
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    .line 126
    sget v3, Ld1/r;->f:F

    const/4 v4, 0x2

    const/4 v11, 0x0

    .line 127
    invoke-static {v13, v3, v11, v4}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    move-result-object v17

    .line 128
    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/c;->m(Lr1/p;)Lr1/p;

    move-result-object v30

    if-nez v6, :cond_3a

    move/from16 v31, v25

    goto :goto_21

    :cond_3a
    int-to-float v4, v15

    move/from16 v31, v4

    :goto_21
    if-nez v7, :cond_3b

    move/from16 v33, v29

    goto :goto_22

    :cond_3b
    int-to-float v4, v15

    move/from16 v33, v4

    :goto_22
    const/16 v34, 0x0

    const/16 v35, 0xa

    const/16 v32, 0x0

    .line 129
    invoke-static/range {v30 .. v35}, Landroidx/compose/foundation/layout/a;->k(Lr1/p;FFFFI)Lr1/p;

    move-result-object v4

    const v11, 0xeed7a49

    .line 130
    invoke-virtual {v0, v11}, Lf1/s;->W(I)V

    if-eqz p1, :cond_3c

    .line 131
    const-string v11, "Hint"

    invoke-static {v13, v11}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v11

    invoke-interface {v11, v4}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v11

    shr-int/lit8 v15, v18, 0x3

    and-int/lit8 v15, v15, 0x70

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v5, p1

    invoke-interface {v5, v11, v0, v15}, Lf9/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    const/4 v15, 0x0

    goto :goto_24

    :cond_3c
    move-object/from16 v5, p1

    goto :goto_23

    .line 132
    :goto_24
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    .line 133
    const-string v11, "TextField"

    invoke-static {v13, v11}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v11

    invoke-interface {v11, v4}, Lr1/p;->a(Lr1/p;)Lr1/p;

    move-result-object v4

    const/4 v11, 0x1

    .line 134
    invoke-static {v8, v11}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    move-result-object v15

    .line 135
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v11

    .line 136
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v5

    .line 137
    invoke-static {v0, v4}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v4

    .line 138
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 139
    iget-boolean v6, v0, Lf1/s;->S:Z

    if-eqz v6, :cond_3d

    .line 140
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_25

    .line 141
    :cond_3d
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 142
    :goto_25
    invoke-static {v0, v1, v15}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 143
    invoke-static {v0, v12, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 144
    iget-boolean v5, v0, Lf1/s;->S:Z

    if-nez v5, :cond_3e

    .line 145
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 146
    :cond_3e
    invoke-static {v11, v0, v11, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 147
    :cond_3f
    invoke-static {v0, v2, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v4, v18, 0x3

    and-int/lit8 v4, v4, 0xe

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-interface {v5, v0, v4}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    .line 149
    invoke-virtual {v0, v11}, Lf1/s;->p(Z)V

    const v4, 0xeeda5b9

    .line 150
    invoke-virtual {v0, v4}, Lf1/s;->W(I)V

    if-eqz p2, :cond_43

    .line 151
    sget v4, Ld1/r;->g:F

    move/from16 v6, p8

    .line 152
    invoke-static {v3, v4, v6}, Lm9/e0;->p0(FFF)F

    move-result v3

    const/4 v4, 0x2

    const/4 v11, 0x0

    .line 153
    invoke-static {v13, v3, v11, v4}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    move-result-object v3

    .line 154
    invoke-static {v3}, Landroidx/compose/foundation/layout/c;->m(Lr1/p;)Lr1/p;

    move-result-object v3

    .line 155
    const-string v4, "Label"

    invoke-static {v3, v4}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v3

    const/4 v15, 0x0

    .line 156
    invoke-static {v8, v15}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    move-result-object v4

    .line 157
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v11

    .line 158
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v15

    .line 159
    invoke-static {v0, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v3

    .line 160
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 161
    iget-boolean v5, v0, Lf1/s;->S:Z

    if-eqz v5, :cond_40

    .line 162
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_26

    .line 163
    :cond_40
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 164
    :goto_26
    invoke-static {v0, v1, v4}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 165
    invoke-static {v0, v12, v15}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 166
    iget-boolean v4, v0, Lf1/s;->S:Z

    if-nez v4, :cond_41

    .line 167
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 168
    :cond_41
    invoke-static {v11, v0, v11, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 169
    :cond_42
    invoke-static {v0, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v3, v18, 0x9

    and-int/lit8 v3, v3, 0xe

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v0, v3}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 171
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    :goto_27
    const/4 v15, 0x0

    goto :goto_28

    :cond_43
    move-object/from16 v4, p2

    move/from16 v6, p8

    goto :goto_27

    .line 172
    :goto_28
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    const v3, 0xeedebc6

    .line 173
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    if-eqz p11, :cond_47

    .line 174
    const-string v3, "Supporting"

    invoke-static {v13, v3}, Landroidx/compose/ui/layout/a;->c(Lr1/p;Ljava/lang/Object;)Lr1/p;

    move-result-object v3

    .line 175
    sget v5, Ld1/r;->h:F

    const/4 v11, 0x0

    const/4 v15, 0x2

    .line 176
    invoke-static {v3, v5, v11, v15}, Landroidx/compose/foundation/layout/c;->d(Lr1/p;FFI)Lr1/p;

    move-result-object v3

    .line 177
    invoke-static {v3}, Landroidx/compose/foundation/layout/c;->m(Lr1/p;)Lr1/p;

    move-result-object v3

    .line 178
    sget v5, Ld1/r;->b:F

    .line 179
    sget v11, Ld1/r;->d:F

    const/4 v13, 0x0

    int-to-float v13, v13

    .line 180
    new-instance v15, Ld0/h0;

    invoke-direct {v15, v5, v11, v5, v13}, Ld0/h0;-><init>(FFFF)V

    .line 181
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/a;->g(Lr1/p;Ld0/h0;)Lr1/p;

    move-result-object v3

    const/4 v15, 0x0

    .line 182
    invoke-static {v8, v15}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    move-result-object v5

    .line 183
    invoke-static {v0}, Lf1/b;->p(Lf1/s;)I

    move-result v8

    .line 184
    invoke-virtual {v0}, Lf1/s;->l()Lf1/q1;

    move-result-object v11

    .line 185
    invoke-static {v0, v3}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    move-result-object v3

    .line 186
    invoke-virtual {v0}, Lf1/s;->a0()V

    .line 187
    iget-boolean v13, v0, Lf1/s;->S:Z

    if-eqz v13, :cond_44

    .line 188
    invoke-virtual {v0, v9}, Lf1/s;->k(Lf9/a;)V

    goto :goto_29

    .line 189
    :cond_44
    invoke-virtual {v0}, Lf1/s;->k0()V

    .line 190
    :goto_29
    invoke-static {v0, v1, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 191
    invoke-static {v0, v12, v11}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 192
    iget-boolean v1, v0, Lf1/s;->S:Z

    if-nez v1, :cond_45

    .line 193
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 194
    :cond_45
    invoke-static {v8, v0, v8, v10}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 195
    :cond_46
    invoke-static {v0, v2, v3}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    shr-int/lit8 v1, v19, 0x6

    and-int/lit8 v1, v1, 0xe

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v12, p11

    invoke-interface {v12, v0, v1}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 197
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    :goto_2a
    const/4 v15, 0x0

    goto :goto_2b

    :cond_47
    move-object/from16 v12, p11

    const/4 v3, 0x1

    goto :goto_2a

    .line 198
    :goto_2b
    invoke-virtual {v0, v15}, Lf1/s;->p(Z)V

    .line 199
    invoke-virtual {v0, v3}, Lf1/s;->p(Z)V

    .line 200
    :goto_2c
    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    move-result-object v0

    if-eqz v0, :cond_48

    move-object v1, v0

    new-instance v0, Lc1/y0;

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v15, p15

    move-object/from16 v36, v1

    move-object v3, v4

    move v9, v6

    move-object v13, v14

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Lc1/y0;-><init>(Lf9/n;Lf9/o;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;ZFLf9/k;Ln1/c;Lf9/n;Ld0/h0;II)V

    move-object/from16 v1, v36

    .line 201
    iput-object v0, v1, Lf1/w1;->d:Lf9/n;

    :cond_48
    return-void
.end method

.method public static final c(IIIIIIIIFJFLd0/h0;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p8, p5, v0}, Lm9/e0;->q0(FII)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    filled-new-array {p6, p2, p3, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    const/4 p3, 0x4

    .line 11
    if-ge v0, p3, :cond_0

    .line 12
    .line 13
    aget p3, p2, v0

    .line 14
    .line 15
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p2, p12, Ld0/h0;->b:F

    .line 23
    .line 24
    mul-float p2, p2, p11

    .line 25
    .line 26
    int-to-float p3, p5

    .line 27
    const/high16 p5, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr p3, p5

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-static {p2, p3, p8}, Lm9/e0;->p0(FFF)F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iget p3, p12, Ld0/h0;->d:F

    .line 39
    .line 40
    mul-float p3, p3, p11

    .line 41
    .line 42
    int-to-float p4, p4

    .line 43
    add-float/2addr p2, p4

    .line 44
    add-float/2addr p2, p3

    .line 45
    invoke-static {p9, p10}, Ln3/a;->i(J)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-static {p2}, Li9/a;->N(F)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    add-int/2addr p0, p7

    .line 62
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public static final d(IIIIIIIFJFLd0/h0;)I
    .locals 0

    .line 1
    add-int/2addr p2, p3

    .line 2
    add-int/2addr p4, p2

    .line 3
    add-int/2addr p6, p2

    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-static {p7, p5, p2}, Lm9/e0;->q0(FII)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    add-int/2addr p2, p0

    .line 18
    add-int/2addr p2, p1

    .line 19
    sget-object p0, Ln3/m;->a:Ln3/m;

    .line 20
    .line 21
    invoke-virtual {p11, p0}, Ld0/h0;->a(Ln3/m;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p11, p0}, Ld0/h0;->b(Ln3/m;)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    add-float/2addr p0, p1

    .line 30
    mul-float p0, p0, p10

    .line 31
    .line 32
    int-to-float p1, p5

    .line 33
    add-float/2addr p1, p0

    .line 34
    mul-float p1, p1, p7

    .line 35
    .line 36
    invoke-static {p1}, Li9/a;->N(F)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p8, p9}, Ln3/a;->j(J)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0
.end method

.method public static final e(ZIILo2/v0;Lo2/v0;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget p0, p4, Lo2/v0;->b:I

    .line 4
    .line 5
    sub-int/2addr p1, p0

    .line 6
    int-to-float p0, p1

    .line 7
    const/high16 p1, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float/2addr p0, p1

    .line 10
    const/4 p1, 0x1

    .line 11
    int-to-float p1, p1

    .line 12
    const/4 p2, 0x0

    .line 13
    add-float/2addr p1, p2

    .line 14
    mul-float p1, p1, p0

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :cond_0
    sget p0, Ld1/r;->b:F

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    iget p0, p3, Lo2/v0;->b:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    div-int/lit8 p0, p0, 0x2

    .line 29
    .line 30
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method
