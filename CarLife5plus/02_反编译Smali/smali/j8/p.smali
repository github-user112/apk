.class public abstract Lj8/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static final a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V
    .locals 23

    move/from16 v1, p0

    move-object/from16 v0, p11

    move/from16 v12, p12

    move/from16 v13, p13

    const-string v2, "content"

    move-object/from16 v11, p10

    invoke-static {v11, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x2bcd7bbe

    .line 1
    invoke-virtual {v0, v2}, Lf1/s;->Y(I)Lf1/s;

    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lf1/s;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v12

    goto :goto_1

    :cond_1
    move v2, v12

    :goto_1
    and-int/lit8 v3, v13, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    :cond_2
    move-object/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_2

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v2, v6

    :goto_3
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_5

    or-int/lit16 v2, v2, 0x80

    :cond_5
    and-int/lit8 v6, v13, 0x8

    if-eqz v6, :cond_7

    or-int/lit16 v2, v2, 0xc00

    :cond_6
    move/from16 v7, p4

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v12, 0xc00

    if-nez v7, :cond_6

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Lf1/s;->g(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_4

    :cond_8
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v2, v8

    :goto_5
    or-int/lit16 v8, v2, 0x6000

    and-int/lit8 v9, v13, 0x20

    if-eqz v9, :cond_a

    const v8, 0x36000

    or-int/2addr v8, v2

    :cond_9
    move/from16 v2, p5

    goto :goto_7

    :cond_a
    const/high16 v2, 0x30000

    and-int/2addr v2, v12

    if-nez v2, :cond_9

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Lf1/s;->d(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v8, v10

    :goto_7
    and-int/lit8 v10, v13, 0x40

    const/high16 v14, 0x180000

    if-eqz v10, :cond_d

    or-int/2addr v8, v14

    :cond_c
    move-object/from16 v14, p6

    goto :goto_9

    :cond_d
    and-int/2addr v14, v12

    if-nez v14, :cond_c

    move-object/from16 v14, p6

    invoke-virtual {v0, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x100000

    goto :goto_8

    :cond_e
    const/high16 v15, 0x80000

    :goto_8
    or-int/2addr v8, v15

    :goto_9
    and-int/lit16 v15, v13, 0x80

    const/high16 v16, 0xc00000

    if-eqz v15, :cond_f

    or-int v8, v8, v16

    move-object/from16 v4, p7

    goto :goto_b

    :cond_f
    and-int v16, v12, v16

    move-object/from16 v4, p7

    if-nez v16, :cond_11

    invoke-virtual {v0, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x800000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x400000

    :goto_a
    or-int v8, v8, v17

    :cond_11
    :goto_b
    and-int/lit16 v1, v13, 0x100

    const/high16 v17, 0x6000000

    if-eqz v1, :cond_13

    or-int v8, v8, v17

    :cond_12
    move/from16 v17, v1

    move-object/from16 v1, p8

    goto :goto_d

    :cond_13
    and-int v17, v12, v17

    if-nez v17, :cond_12

    move/from16 v17, v1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/high16 v18, 0x4000000

    goto :goto_c

    :cond_14
    const/high16 v18, 0x2000000

    :goto_c
    or-int v8, v8, v18

    :goto_d
    and-int/lit16 v1, v13, 0x200

    const/high16 v18, 0x30000000

    if-eqz v1, :cond_16

    or-int v8, v8, v18

    :cond_15
    move/from16 v18, v1

    move-object/from16 v1, p9

    goto :goto_f

    :cond_16
    and-int v18, v12, v18

    if-nez v18, :cond_15

    move/from16 v18, v1

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lf1/s;->h(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x20000000

    goto :goto_e

    :cond_17
    const/high16 v19, 0x10000000

    :goto_e
    or-int v8, v8, v19

    :goto_f
    const v19, 0x12492493

    and-int v1, v8, v19

    const v2, 0x12492492

    if-ne v1, v2, :cond_19

    invoke-virtual {v0}, Lf1/s;->z()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_10

    .line 2
    :cond_18
    invoke-virtual {v0}, Lf1/s;->Q()V

    move/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v8, v4

    move-object v2, v5

    move v5, v7

    move-object v7, v14

    move-wide/from16 v3, p2

    goto/16 :goto_18

    .line 3
    :cond_19
    :goto_10
    invoke-virtual {v0}, Lf1/s;->S()V

    and-int/lit8 v1, v12, 0x1

    sget-object v2, Lf1/n;->a:Lf1/w0;

    move/from16 v19, v1

    if-eqz v19, :cond_1b

    invoke-virtual {v0}, Lf1/s;->x()Z

    move-result v19

    if-eqz v19, :cond_1a

    goto :goto_11

    .line 4
    :cond_1a
    invoke-virtual {v0}, Lf1/s;->Q()V

    and-int/lit16 v3, v8, -0x381

    move/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v19, v2

    move v1, v3

    move-object v8, v4

    move-object v2, v5

    move v5, v7

    move-object v7, v14

    move-wide/from16 v3, p2

    goto/16 :goto_16

    :cond_1b
    :goto_11
    if-eqz v3, :cond_1d

    const v3, 0x6e3c21fe

    .line 5
    invoke-virtual {v0, v3}, Lf1/s;->W(I)V

    .line 6
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1c

    .line 7
    new-instance v3, Lb3/f0;

    const/16 v5, 0x9

    invoke-direct {v3, v5}, Lb3/f0;-><init>(I)V

    .line 8
    invoke-virtual {v0, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 9
    :cond_1c
    check-cast v3, Lf9/a;

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v0, v5}, Lf1/s;->p(Z)V

    goto :goto_12

    :cond_1d
    move-object v3, v5

    .line 11
    :goto_12
    sget-object v5, Lc1/y;->a:Lf1/w2;

    .line 12
    invoke-virtual {v0, v5}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v5

    .line 13
    check-cast v5, Lc1/w;

    move-object/from16 v19, v2

    .line 14
    iget-wide v1, v5, Lc1/w;->F:J

    and-int/lit16 v5, v8, -0x381

    if-eqz v6, :cond_1e

    const/4 v7, 0x1

    :cond_1e
    if-eqz v9, :cond_1f

    const/4 v6, 0x0

    goto :goto_13

    :cond_1f
    move/from16 v6, p5

    :goto_13
    const/4 v8, 0x0

    if-eqz v10, :cond_20

    move-object v14, v8

    :cond_20
    if-eqz v15, :cond_21

    move-object v4, v8

    :cond_21
    if-eqz v17, :cond_22

    move-object v9, v8

    goto :goto_14

    :cond_22
    move-object/from16 v9, p8

    :goto_14
    if-eqz v18, :cond_23

    move-object v10, v8

    :goto_15
    move-object v8, v4

    move-wide/from16 v21, v1

    move-object v2, v3

    move-wide/from16 v3, v21

    move v1, v5

    move v5, v7

    move-object v7, v14

    goto :goto_16

    :cond_23
    move-object/from16 v10, p9

    goto :goto_15

    .line 15
    :goto_16
    invoke-virtual {v0}, Lf1/s;->q()V

    if-eqz p0, :cond_28

    .line 16
    sget-object v14, Ld/c;->a:Lf1/c0;

    .line 17
    invoke-virtual {v0, v14}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_24

    .line 18
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "\u3010\u5168\u5c40\u5f39\u7a97\u3011\u4e0d\u652f\u6301\u5728\u60ac\u6d6e\u7a97\u4e2d\u6253\u5f00"

    const/16 v20, 0x0

    aput-object v15, v14, v20

    const-string v15, "CarLife_Vehicle"

    invoke-virtual {v1, v15, v14}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lf1/s;->r()Lf1/w1;

    move-result-object v15

    if-eqz v15, :cond_29

    new-instance v0, Lj8/k;

    const/4 v14, 0x0

    move/from16 v1, p0

    invoke-direct/range {v0 .. v14}, Lj8/k;-><init>(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;III)V

    .line 19
    iput-object v0, v15, Lf1/w1;->d:Lf9/n;

    return-void

    :cond_24
    const/4 v14, 0x1

    const v11, 0x4c5de2

    .line 20
    invoke-virtual {v0, v11}, Lf1/s;->W(I)V

    and-int/lit8 v1, v1, 0x70

    const/16 v11, 0x20

    if-ne v1, v11, :cond_25

    const/4 v1, 0x1

    goto :goto_17

    :cond_25
    const/4 v1, 0x0

    .line 21
    :goto_17
    invoke-virtual {v0}, Lf1/s;->K()Ljava/lang/Object;

    move-result-object v11

    if-nez v1, :cond_26

    move-object/from16 v1, v19

    if-ne v11, v1, :cond_27

    .line 22
    :cond_26
    new-instance v11, Lc8/g;

    const/16 v1, 0xd

    invoke-direct {v11, v2, v1}, Lc8/g;-><init>(Lf9/a;I)V

    .line 23
    invoke-virtual {v0, v11}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 24
    :cond_27
    check-cast v11, Lf9/a;

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lf1/s;->p(Z)V

    .line 26
    new-instance v1, Lr3/s;

    const/4 v12, 0x3

    invoke-direct {v1, v12, v5}, Lr3/s;-><init>(IZ)V

    .line 27
    new-instance v12, Lj8/m;

    move-object/from16 p6, p10

    move-wide/from16 p2, v3

    move/from16 p5, v6

    move-object/from16 p4, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p1, v12

    invoke-direct/range {p1 .. p9}, Lj8/m;-><init>(JLf9/n;ILf9/n;Lf9/n;Lf9/n;Lf9/n;)V

    const v13, -0x6559790

    invoke-static {v13, v12, v0}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    move-result-object v12

    const/16 v13, 0x180

    const/4 v14, 0x0

    move-object/from16 p4, v0

    move-object/from16 p2, v1

    move-object/from16 p1, v11

    move-object/from16 p3, v12

    const/16 p5, 0x180

    const/16 p6, 0x0

    .line 28
    invoke-static/range {p1 .. p6}, Lp9/q;->a(Lf9/a;Lr3/s;Ln1/c;Lf1/s;II)V

    :cond_28
    :goto_18
    invoke-virtual/range {p11 .. p11}, Lf1/s;->r()Lf1/w1;

    move-result-object v15

    if-eqz v15, :cond_29

    new-instance v0, Lj8/k;

    const/4 v14, 0x1

    move/from16 v1, p0

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lj8/k;-><init>(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;III)V

    .line 29
    iput-object v0, v15, Lf1/w1;->d:Lf9/n;

    :cond_29
    return-void
.end method

.method public static final b(ZLf9/a;Ll8/p;Lf9/k;Lf1/s;I)V
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    move/from16 v15, p5

    .line 10
    .line 11
    const-string v1, "httpService"

    .line 12
    .line 13
    invoke-static {v14, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "callback"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v1, -0x4e37dc59

    .line 22
    .line 23
    .line 24
    invoke-virtual {v11, v1}, Lf1/s;->Y(I)Lf1/s;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v11, v0}, Lf1/s;->g(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x2

    .line 36
    :goto_0
    or-int/2addr v1, v15

    .line 37
    invoke-virtual {v11, v14}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const/16 v3, 0x100

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/16 v3, 0x80

    .line 47
    .line 48
    :goto_1
    or-int/2addr v1, v3

    .line 49
    and-int/lit16 v3, v15, 0xc00

    .line 50
    .line 51
    const/16 v4, 0x800

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v11, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    const/16 v3, 0x800

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v3, 0x400

    .line 65
    .line 66
    :goto_2
    or-int/2addr v1, v3

    .line 67
    :cond_3
    move v7, v1

    .line 68
    and-int/lit16 v1, v7, 0x493

    .line 69
    .line 70
    const/16 v3, 0x492

    .line 71
    .line 72
    if-ne v1, v3, :cond_5

    .line 73
    .line 74
    invoke-virtual {v11}, Lf1/s;->z()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-virtual {v11}, Lf1/s;->Q()V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 87
    .line 88
    invoke-virtual {v14}, Ll8/p;->k()V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    invoke-virtual {v14}, Ll8/p;->l()V

    .line 93
    .line 94
    .line 95
    :goto_4
    sget-object v1, Ll8/p;->l:Ldc/l0;

    .line 96
    .line 97
    invoke-static {v1, v11}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v8, v3

    .line 106
    check-cast v8, Ljava/lang/String;

    .line 107
    .line 108
    const v3, -0x6815fd56

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11, v3}, Lf1/s;->W(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    and-int/lit16 v5, v7, 0x1c00

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    if-ne v5, v4, :cond_7

    .line 122
    .line 123
    const/4 v4, 0x1

    .line 124
    goto :goto_5

    .line 125
    :cond_7
    const/4 v4, 0x0

    .line 126
    :goto_5
    or-int/2addr v3, v4

    .line 127
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 132
    .line 133
    if-nez v3, :cond_8

    .line 134
    .line 135
    if-ne v4, v10, :cond_9

    .line 136
    .line 137
    :cond_8
    move-object v4, v1

    .line 138
    new-instance v1, Lj8/n;

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v5, 0x0

    .line 142
    move-object/from16 v3, p1

    .line 143
    .line 144
    invoke-direct/range {v1 .. v6}, Lj8/n;-><init>(Lf9/k;Ljava/lang/Object;Lf1/b1;Lw8/c;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object v4, v1

    .line 151
    :cond_9
    check-cast v4, Lf9/n;

    .line 152
    .line 153
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 154
    .line 155
    .line 156
    invoke-static {v11, v4, v8}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const v1, 0x4c5de2

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11, v1}, Lf1/s;->W(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v11}, Lf1/s;->K()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-ne v1, v10, :cond_a

    .line 170
    .line 171
    new-instance v1, Lc8/g;

    .line 172
    .line 173
    const/16 v2, 0xc

    .line 174
    .line 175
    move-object/from16 v3, p1

    .line 176
    .line 177
    invoke-direct {v1, v3, v2}, Lc8/g;-><init>(Lf9/a;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_a
    move-object/from16 v3, p1

    .line 185
    .line 186
    :goto_6
    check-cast v1, Lf9/a;

    .line 187
    .line 188
    invoke-virtual {v11, v9}, Lf1/s;->p(Z)V

    .line 189
    .line 190
    .line 191
    new-instance v2, Lj8/o;

    .line 192
    .line 193
    const/4 v4, 0x3

    .line 194
    invoke-direct {v2, v14, v4}, Lj8/o;-><init>(Ll8/p;I)V

    .line 195
    .line 196
    .line 197
    const v4, 0x481370de

    .line 198
    .line 199
    .line 200
    invoke-static {v4, v2, v11}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    and-int/lit8 v12, v7, 0xe

    .line 205
    .line 206
    const/16 v13, 0x3fc

    .line 207
    .line 208
    const-wide/16 v2, 0x0

    .line 209
    .line 210
    const/4 v4, 0x0

    .line 211
    const/4 v5, 0x0

    .line 212
    const/4 v6, 0x0

    .line 213
    const/4 v7, 0x0

    .line 214
    const/4 v8, 0x0

    .line 215
    const/4 v9, 0x0

    .line 216
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 217
    .line 218
    .line 219
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    if-eqz v6, :cond_b

    .line 224
    .line 225
    new-instance v0, Lj8/j;

    .line 226
    .line 227
    move/from16 v1, p0

    .line 228
    .line 229
    move-object/from16 v2, p1

    .line 230
    .line 231
    move-object/from16 v4, p3

    .line 232
    .line 233
    move-object v3, v14

    .line 234
    move v5, v15

    .line 235
    invoke-direct/range {v0 .. v5}, Lj8/j;-><init>(ZLf9/a;Ll8/p;Lf9/k;I)V

    .line 236
    .line 237
    .line 238
    iput-object v0, v6, Lf1/w1;->d:Lf9/n;

    .line 239
    .line 240
    :cond_b
    return-void
.end method
