.class public final Lu7/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lu7/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu7/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu7/h;->a:Lu7/h;

    .line 7
    .line 8
    return-void
.end method

.method public static h(Lf1/s;)Landroidx/lifecycle/o;
    .locals 6

    .line 1
    const v0, -0x23db395d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ls4/a;->a:Lf1/t1;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/lifecycle/t;

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x6e3c21fe

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lf1/s;->W(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lf1/s;->K()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lf1/n;->a:Lf1/w0;

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/o;

    .line 34
    .line 35
    invoke-static {v1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    check-cast v1, Lf1/b1;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, v3}, Lf1/s;->p(Z)V

    .line 46
    .line 47
    .line 48
    const v4, -0x615d173a

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Lf1/s;->W(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {p0}, Lf1/s;->K()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    if-ne v5, v2, :cond_2

    .line 65
    .line 66
    :cond_1
    new-instance v5, La8/v;

    .line 67
    .line 68
    const/16 v2, 0x10

    .line 69
    .line 70
    invoke-direct {v5, v2, v0, v1}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    check-cast v5, Lf9/k;

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Lf1/s;->p(Z)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v5, p0}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroidx/lifecycle/o;

    .line 89
    .line 90
    invoke-virtual {p0, v3}, Lf1/s;->p(Z)V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;ZLf1/s;I)V
    .locals 9

    .line 1
    const v0, 0x5657c713

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    or-int/lit8 v0, p4, 0x30

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x13

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    move v6, p2

    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    :goto_0
    const p2, 0x6e3c21fe

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p2}, Lf1/s;->W(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 39
    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    const-string v0, "\u672a\u6388\u6743"

    .line 43
    .line 44
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p3, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    check-cast v0, Lf1/b1;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p3, v2}, Lf1/s;->p(Z)V

    .line 55
    .line 56
    .line 57
    sget-object v3, Lcom/muyetuge/carlifevehicle/service/AccessService;->e:Ldc/l0;

    .line 58
    .line 59
    const v5, 0x4c5de2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v5}, Lf1/s;->W(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-ne v5, v1, :cond_3

    .line 70
    .line 71
    new-instance v5, Lb8/g;

    .line 72
    .line 73
    const/16 v6, 0x12

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-direct {v5, v0, v7, v6}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    check-cast v5, Lf9/n;

    .line 83
    .line 84
    invoke-virtual {p3, v2}, Lf1/s;->p(Z)V

    .line 85
    .line 86
    .line 87
    invoke-static {p3, v5, v3}, Lf1/b;->f(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance v3, La8/j;

    .line 91
    .line 92
    const/16 v5, 0x11

    .line 93
    .line 94
    invoke-direct {v3, v5, p1}, La8/j;-><init>(ILjava/util/List;)V

    .line 95
    .line 96
    .line 97
    const v5, -0x74c7f2c4

    .line 98
    .line 99
    .line 100
    invoke-static {v5, v3, p3}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    new-instance v5, La8/m;

    .line 105
    .line 106
    const/16 v6, 0x13

    .line 107
    .line 108
    invoke-direct {v5, v0, v6}, La8/m;-><init>(Lf1/b1;I)V

    .line 109
    .line 110
    .line 111
    const v0, -0x3c5353e5

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v5, p3}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p3, p2}, Lf1/s;->W(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-ne p2, v1, :cond_4

    .line 126
    .line 127
    new-instance p2, Lm7/e;

    .line 128
    .line 129
    const/16 v1, 0x1d

    .line 130
    .line 131
    invoke-direct {p2, v1}, Lm7/e;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    check-cast p2, Lf9/a;

    .line 138
    .line 139
    invoke-virtual {p3, v2}, Lf1/s;->p(Z)V

    .line 140
    .line 141
    .line 142
    const/16 v5, 0xdb6

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v2, 0x1

    .line 146
    move-object v4, p3

    .line 147
    move-object v1, v0

    .line 148
    move-object v0, v3

    .line 149
    move-object v3, p2

    .line 150
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 151
    .line 152
    .line 153
    const/4 v6, 0x1

    .line 154
    :goto_1
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    if-eqz p2, :cond_5

    .line 159
    .line 160
    new-instance v3, Lu7/d;

    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    move-object v4, p0

    .line 164
    move-object v5, p1

    .line 165
    move v7, p4

    .line 166
    invoke-direct/range {v3 .. v8}, Lu7/d;-><init>(Lu7/h;Ljava/util/List;ZII)V

    .line 167
    .line 168
    .line 169
    iput-object v3, p2, Lf1/w1;->d:Lf9/n;

    .line 170
    .line 171
    :cond_5
    return-void
.end method

.method public final b(Ljava/util/List;ZLf9/a;Lf1/s;II)V
    .locals 11

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, -0x3914c47f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p6, 0x2

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    or-int/lit8 v1, p5, 0x30

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    and-int/lit8 v1, p5, 0x30

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p4, p2}, Lf1/s;->g(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x10

    .line 33
    .line 34
    :goto_0
    or-int v1, p5, v1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move/from16 v1, p5

    .line 38
    .line 39
    :goto_1
    and-int/lit16 v2, v1, 0x93

    .line 40
    .line 41
    const/16 v3, 0x92

    .line 42
    .line 43
    if-ne v2, v3, :cond_4

    .line 44
    .line 45
    invoke-virtual {p4}, Lf1/s;->z()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 53
    .line 54
    .line 55
    move v6, p2

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    const/4 v2, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_5
    move v2, p2

    .line 63
    :goto_3
    new-instance p2, La8/j;

    .line 64
    .line 65
    const/16 v0, 0x12

    .line 66
    .line 67
    invoke-direct {p2, v0, p1}, La8/j;-><init>(ILjava/util/List;)V

    .line 68
    .line 69
    .line 70
    const v0, -0x3ab35d96

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p2, p4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move p2, v1

    .line 78
    sget-object v1, Lu7/b;->f:Ln1/c;

    .line 79
    .line 80
    const v3, 0x4c5de2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4, v3}, Lf1/s;->W(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4}, Lf1/s;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 91
    .line 92
    if-ne v3, v5, :cond_6

    .line 93
    .line 94
    new-instance v3, Lc8/g;

    .line 95
    .line 96
    const/16 v5, 0x17

    .line 97
    .line 98
    invoke-direct {v3, p3, v5}, Lc8/g;-><init>(Lf9/a;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    check-cast v3, Lf9/a;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    invoke-virtual {p4, v5}, Lf1/s;->p(Z)V

    .line 108
    .line 109
    .line 110
    shl-int/lit8 p2, p2, 0x3

    .line 111
    .line 112
    and-int/lit16 p2, p2, 0x380

    .line 113
    .line 114
    or-int/lit8 v5, p2, 0x36

    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    move-object v4, p4

    .line 118
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 119
    .line 120
    .line 121
    move v6, v2

    .line 122
    :goto_4
    invoke-virtual {p4}, Lf1/s;->r()Lf1/w1;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-eqz p2, :cond_7

    .line 127
    .line 128
    new-instance v3, Lj8/a0;

    .line 129
    .line 130
    const/4 v10, 0x2

    .line 131
    move-object v4, p0

    .line 132
    move-object v5, p1

    .line 133
    move-object v7, p3

    .line 134
    move/from16 v8, p5

    .line 135
    .line 136
    move/from16 v9, p6

    .line 137
    .line 138
    invoke-direct/range {v3 .. v10}, Lj8/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLf9/a;III)V

    .line 139
    .line 140
    .line 141
    iput-object v3, p2, Lf1/w1;->d:Lf9/n;

    .line 142
    .line 143
    :cond_7
    return-void
.end method

.method public final c(ZLjava/lang/String;Ljava/lang/String;Lf9/a;Lf1/s;I)V
    .locals 22

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v8, p5

    .line 8
    .line 9
    move/from16 v9, p6

    .line 10
    .line 11
    const v0, 0x188b740d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v8, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v9, 0x6

    .line 18
    .line 19
    move/from16 v10, p1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v8, v10}, Lf1/s;->g(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v9

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v0, v9

    .line 35
    :goto_1
    and-int/lit8 v1, v9, 0x30

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v8, v3}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v1, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v0, v1

    .line 51
    :cond_3
    and-int/lit16 v1, v9, 0x180

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v8, v6}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/16 v1, 0x100

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    const/16 v1, 0x80

    .line 65
    .line 66
    :goto_3
    or-int/2addr v0, v1

    .line 67
    :cond_5
    and-int/lit16 v1, v9, 0xc00

    .line 68
    .line 69
    if-nez v1, :cond_7

    .line 70
    .line 71
    invoke-virtual {v8, v7}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    const/16 v1, 0x800

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_6
    const/16 v1, 0x400

    .line 81
    .line 82
    :goto_4
    or-int/2addr v0, v1

    .line 83
    :cond_7
    move v11, v0

    .line 84
    and-int/lit16 v0, v11, 0x493

    .line 85
    .line 86
    const/16 v1, 0x492

    .line 87
    .line 88
    if-ne v0, v1, :cond_9

    .line 89
    .line 90
    invoke-virtual {v8}, Lf1/s;->z()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_8

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_8
    invoke-virtual {v8}, Lf1/s;->Q()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_9
    :goto_5
    sget-object v0, Lr2/n0;->b:Lf1/w2;

    .line 103
    .line 104
    invoke-virtual {v8, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/content/Context;

    .line 109
    .line 110
    sget-object v1, Lr2/i1;->f:Lf1/w2;

    .line 111
    .line 112
    invoke-virtual {v8, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    move-object v2, v1

    .line 117
    check-cast v2, Lr2/d1;

    .line 118
    .line 119
    invoke-virtual {v8}, Lf1/s;->K()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget-object v4, Lf1/n;->a:Lf1/w0;

    .line 124
    .line 125
    if-ne v1, v4, :cond_a

    .line 126
    .line 127
    invoke-static {v8}, Lf1/b;->l(Lf1/s;)Lac/w;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v8, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_a
    check-cast v1, Lac/w;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v5, "adb shell pm grant "

    .line 143
    .line 144
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, " "

    .line 151
    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    new-instance v0, La8/p0;

    .line 163
    .line 164
    const/16 v5, 0xa

    .line 165
    .line 166
    invoke-direct {v0, v7, v5}, La8/p0;-><init>(Lf9/a;I)V

    .line 167
    .line 168
    .line 169
    const v5, -0x30c49b8c

    .line 170
    .line 171
    .line 172
    invoke-static {v5, v0, v8}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    sget-object v16, Lu7/b;->e:Ln1/c;

    .line 177
    .line 178
    new-instance v0, Lc8/m;

    .line 179
    .line 180
    const/16 v5, 0x8

    .line 181
    .line 182
    invoke-direct/range {v0 .. v5}, Lc8/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    const v1, -0x2f9a6f0a

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v0, v8}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 189
    .line 190
    .line 191
    move-result-object v17

    .line 192
    new-instance v0, Lu7/g;

    .line 193
    .line 194
    const/4 v1, 0x2

    .line 195
    invoke-direct {v0, v4, v6, v1}, Lu7/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    .line 197
    .line 198
    const v1, -0x77c4a73c

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v0, v8}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 202
    .line 203
    .line 204
    move-result-object v18

    .line 205
    and-int/lit8 v0, v11, 0xe

    .line 206
    .line 207
    const/high16 v1, 0x36c00000

    .line 208
    .line 209
    or-int v20, v0, v1

    .line 210
    .line 211
    const/16 v21, 0x7e

    .line 212
    .line 213
    const/4 v9, 0x0

    .line 214
    const-wide/16 v10, 0x0

    .line 215
    .line 216
    const/4 v12, 0x0

    .line 217
    const/4 v13, 0x0

    .line 218
    const/4 v14, 0x0

    .line 219
    move-object/from16 v19, v8

    .line 220
    .line 221
    move/from16 v8, p1

    .line 222
    .line 223
    invoke-static/range {v8 .. v21}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 224
    .line 225
    .line 226
    :goto_6
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    if-eqz v8, :cond_b

    .line 231
    .line 232
    new-instance v0, La8/u;

    .line 233
    .line 234
    move-object/from16 v1, p0

    .line 235
    .line 236
    move/from16 v2, p1

    .line 237
    .line 238
    move-object/from16 v3, p2

    .line 239
    .line 240
    move-object v4, v6

    .line 241
    move-object v5, v7

    .line 242
    move/from16 v6, p6

    .line 243
    .line 244
    invoke-direct/range {v0 .. v6}, La8/u;-><init>(Lu7/h;ZLjava/lang/String;Ljava/lang/String;Lf9/a;I)V

    .line 245
    .line 246
    .line 247
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 248
    .line 249
    :cond_b
    return-void
.end method

.method public final d(ILf1/s;)V
    .locals 4

    .line 1
    const v0, -0x2fc4cbea

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lf1/s;->z()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lu7/b;->a:Ln1/c;

    .line 23
    .line 24
    const/16 v1, 0x30

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v2, v0, p2, v1, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 29
    .line 30
    .line 31
    const-string v0, "\u5f00\u673a\u542f\u52a8\u6743\u9650"

    .line 32
    .line 33
    sget-object v1, Lu7/b;->b:Ln1/c;

    .line 34
    .line 35
    const/16 v2, 0x36

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v1, p2, v2, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 39
    .line 40
    .line 41
    const-string v0, "\u65e0\u969c\u788d\u6743\u9650"

    .line 42
    .line 43
    sget-object v1, Lu7/b;->c:Ln1/c;

    .line 44
    .line 45
    invoke-static {v0, v1, p2, v2, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 46
    .line 47
    .line 48
    const-string v0, "\u5176\u4ed6\u6743\u9650"

    .line 49
    .line 50
    sget-object v1, Lu7/b;->d:Ln1/c;

    .line 51
    .line 52
    invoke-static {v0, v1, p2, v2, v3}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p2}, Lf1/s;->r()Lf1/w1;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    new-instance v0, La8/d;

    .line 62
    .line 63
    const/16 v1, 0x19

    .line 64
    .line 65
    invoke-direct {v0, p1, v1, p0}, La8/d;-><init>(IILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p2, Lf1/w1;->d:Lf9/n;

    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public final e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLf1/s;II)V
    .locals 16

    .line 1
    move-object/from16 v4, p5

    .line 2
    .line 3
    move/from16 v7, p6

    .line 4
    .line 5
    const v0, 0x16ef0883

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, p7, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    or-int/lit16 v1, v7, 0xc00

    .line 16
    .line 17
    move v2, v1

    .line 18
    move/from16 v1, p4

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    and-int/lit16 v1, v7, 0xc00

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    move/from16 v1, p4

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Lf1/s;->g(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const/16 v2, 0x800

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v2, 0x400

    .line 37
    .line 38
    :goto_0
    or-int/2addr v2, v7

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move/from16 v1, p4

    .line 41
    .line 42
    move v2, v7

    .line 43
    :goto_1
    and-int/lit16 v3, v2, 0x2493

    .line 44
    .line 45
    const/16 v5, 0x2492

    .line 46
    .line 47
    if-ne v3, v5, :cond_4

    .line 48
    .line 49
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 57
    .line 58
    .line 59
    move-object/from16 v12, p1

    .line 60
    .line 61
    move v5, v1

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    :cond_5
    sget-object v0, Lr2/n0;->b:Lf1/w2;

    .line 69
    .line 70
    invoke-virtual {v4, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/content/Context;

    .line 75
    .line 76
    move-object/from16 v8, p2

    .line 77
    .line 78
    invoke-static {v0, v8}, Lu3/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v9, 0x0

    .line 83
    if-nez v0, :cond_6

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_6
    const/4 v3, 0x0

    .line 87
    :goto_3
    const v0, 0x6e3c21fe

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    sget-object v10, Lf1/n;->a:Lf1/w0;

    .line 98
    .line 99
    if-ne v5, v10, :cond_8

    .line 100
    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    const-string v3, "\u5df2\u5f00\u542f"

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_7
    const-string v3, "\u672a\u6388\u6743"

    .line 107
    .line 108
    :goto_4
    invoke-static {v3}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_8
    check-cast v5, Lf1/b1;

    .line 116
    .line 117
    invoke-static {v4, v9, v0}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-ne v0, v10, :cond_9

    .line 122
    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_9
    move-object v11, v0

    .line 133
    check-cast v11, Lf1/b1;

    .line 134
    .line 135
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 136
    .line 137
    .line 138
    new-instance v0, La8/j;

    .line 139
    .line 140
    const/16 v3, 0x15

    .line 141
    .line 142
    move-object/from16 v12, p1

    .line 143
    .line 144
    invoke-direct {v0, v3, v12}, La8/j;-><init>(ILjava/util/List;)V

    .line 145
    .line 146
    .line 147
    const v3, 0x5ad3766c

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v3, La8/m;

    .line 155
    .line 156
    const/16 v6, 0x14

    .line 157
    .line 158
    invoke-direct {v3, v5, v6}, La8/m;-><init>(Lf1/b1;I)V

    .line 159
    .line 160
    .line 161
    const v5, 0x2e07bb8b

    .line 162
    .line 163
    .line 164
    invoke-static {v5, v3, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    const v13, 0x4c5de2

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v13}, Lf1/s;->W(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    if-ne v5, v10, :cond_a

    .line 179
    .line 180
    new-instance v5, Lu7/e;

    .line 181
    .line 182
    const/4 v6, 0x0

    .line 183
    invoke-direct {v5, v11, v6}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_a
    check-cast v5, Lf9/a;

    .line 190
    .line 191
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 192
    .line 193
    .line 194
    shr-int/lit8 v2, v2, 0x3

    .line 195
    .line 196
    and-int/lit16 v2, v2, 0x380

    .line 197
    .line 198
    or-int/lit16 v2, v2, 0xc36

    .line 199
    .line 200
    const/4 v6, 0x0

    .line 201
    move v15, v2

    .line 202
    move v2, v1

    .line 203
    move-object v1, v3

    .line 204
    move-object v3, v5

    .line 205
    move v5, v15

    .line 206
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 207
    .line 208
    .line 209
    move v14, v2

    .line 210
    invoke-interface {v11}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-virtual {v4, v13}, Lf1/s;->W(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-ne v0, v10, :cond_b

    .line 228
    .line 229
    new-instance v0, Lu7/e;

    .line 230
    .line 231
    const/4 v2, 0x1

    .line 232
    invoke-direct {v0, v11, v2}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_b
    check-cast v0, Lf9/a;

    .line 239
    .line 240
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 241
    .line 242
    .line 243
    const/16 v6, 0x6db0

    .line 244
    .line 245
    move-object/from16 v3, p3

    .line 246
    .line 247
    move-object v5, v4

    .line 248
    move-object v2, v8

    .line 249
    move-object v4, v0

    .line 250
    move-object/from16 v0, p0

    .line 251
    .line 252
    invoke-virtual/range {v0 .. v6}, Lu7/h;->c(ZLjava/lang/String;Ljava/lang/String;Lf9/a;Lf1/s;I)V

    .line 253
    .line 254
    .line 255
    move v5, v14

    .line 256
    :goto_5
    invoke-virtual/range {p5 .. p5}, Lf1/s;->r()Lf1/w1;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    if-eqz v8, :cond_c

    .line 261
    .line 262
    new-instance v0, Lj8/b0;

    .line 263
    .line 264
    move-object/from16 v1, p0

    .line 265
    .line 266
    move-object/from16 v3, p2

    .line 267
    .line 268
    move-object/from16 v4, p3

    .line 269
    .line 270
    move v6, v7

    .line 271
    move-object v2, v12

    .line 272
    move/from16 v7, p7

    .line 273
    .line 274
    invoke-direct/range {v0 .. v7}, Lj8/b0;-><init>(Lu7/h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 275
    .line 276
    .line 277
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 278
    .line 279
    :cond_c
    return-void
.end method

.method public final f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V
    .locals 15

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v6, p4

    .line 6
    .line 7
    move/from16 v7, p5

    .line 8
    .line 9
    const v0, -0xb2391df

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v6, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x10

    .line 25
    .line 26
    :goto_0
    or-int/2addr v0, v7

    .line 27
    and-int/lit8 v1, p6, 0x4

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    or-int/lit16 v0, v0, 0x180

    .line 32
    .line 33
    :cond_1
    move/from16 v4, p3

    .line 34
    .line 35
    :goto_1
    move v8, v0

    .line 36
    goto :goto_3

    .line 37
    :cond_2
    and-int/lit16 v4, v7, 0x180

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    move/from16 v4, p3

    .line 42
    .line 43
    invoke-virtual {v6, v4}, Lf1/s;->g(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    const/16 v5, 0x100

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    const/16 v5, 0x80

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v5

    .line 55
    goto :goto_1

    .line 56
    :goto_3
    and-int/lit16 v0, v8, 0x493

    .line 57
    .line 58
    const/16 v5, 0x492

    .line 59
    .line 60
    if-ne v0, v5, :cond_5

    .line 61
    .line 62
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_4

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    const/4 v9, 0x1

    .line 78
    goto :goto_5

    .line 79
    :cond_6
    move v9, v4

    .line 80
    :goto_5
    sget-object v0, Lr2/n0;->b:Lf1/w2;

    .line 81
    .line 82
    invoke-virtual {v6, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/content/Context;

    .line 87
    .line 88
    sget-object v1, Ld/c;->a:Lf1/c0;

    .line 89
    .line 90
    invoke-virtual {v6, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v4, v1

    .line 95
    check-cast v4, Landroid/app/Activity;

    .line 96
    .line 97
    invoke-static {v0, v3}, Lc7/a;->K(Landroid/content/Context;Ljava/util/List;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v6}, Lu7/h;->h(Lf1/s;)Landroidx/lifecycle/o;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const v10, 0x4c5de2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v10}, Lf1/s;->W(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {v6, v5}, Lf1/s;->d(I)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    sget-object v11, Lf1/n;->a:Lf1/w0;

    .line 124
    .line 125
    if-nez v5, :cond_7

    .line 126
    .line 127
    if-ne v10, v11, :cond_9

    .line 128
    .line 129
    :cond_7
    if-eqz v1, :cond_8

    .line 130
    .line 131
    const-string v5, "\u5df2\u5f00\u542f"

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    const-string v5, "\u672a\u6388\u6743"

    .line 135
    .line 136
    :goto_6
    invoke-static {v5}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v6, v10}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_9
    check-cast v10, Lf1/b1;

    .line 144
    .line 145
    const/4 v12, 0x0

    .line 146
    invoke-virtual {v6, v12}, Lf1/s;->p(Z)V

    .line 147
    .line 148
    .line 149
    new-instance v5, La8/j;

    .line 150
    .line 151
    const/16 v13, 0x13

    .line 152
    .line 153
    invoke-direct {v5, v13, v2}, La8/j;-><init>(ILjava/util/List;)V

    .line 154
    .line 155
    .line 156
    const v13, 0x70ae0618

    .line 157
    .line 158
    .line 159
    invoke-static {v13, v5, v6}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    new-instance v5, La8/m;

    .line 164
    .line 165
    const/16 v14, 0x15

    .line 166
    .line 167
    invoke-direct {v5, v10, v14}, La8/m;-><init>(Lf1/b1;I)V

    .line 168
    .line 169
    .line 170
    const v10, -0x657b4de7

    .line 171
    .line 172
    .line 173
    invoke-static {v10, v5, v6}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const v5, -0x48fade91

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v5}, Lf1/s;->W(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v1}, Lf1/s;->g(Z)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-virtual {v6, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    or-int/2addr v5, v14

    .line 192
    invoke-virtual {v6, v3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    or-int/2addr v5, v14

    .line 197
    invoke-virtual {v6, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    or-int/2addr v5, v14

    .line 202
    invoke-virtual {v6, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    or-int/2addr v5, v14

    .line 207
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    if-nez v5, :cond_a

    .line 212
    .line 213
    if-ne v14, v11, :cond_b

    .line 214
    .line 215
    :cond_a
    move-object v2, v0

    .line 216
    new-instance v0, Lu7/f;

    .line 217
    .line 218
    move-object/from16 v5, p1

    .line 219
    .line 220
    invoke-direct/range {v0 .. v5}, Lu7/f;-><init>(ZLandroid/content/Context;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    move-object v14, v0

    .line 227
    :cond_b
    move-object v3, v14

    .line 228
    check-cast v3, Lf9/a;

    .line 229
    .line 230
    invoke-virtual {v6, v12}, Lf1/s;->p(Z)V

    .line 231
    .line 232
    .line 233
    and-int/lit16 v0, v8, 0x380

    .line 234
    .line 235
    or-int/lit8 v5, v0, 0x36

    .line 236
    .line 237
    const/4 v6, 0x0

    .line 238
    move-object/from16 v4, p4

    .line 239
    .line 240
    move v2, v9

    .line 241
    move-object v1, v10

    .line 242
    move-object v0, v13

    .line 243
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 244
    .line 245
    .line 246
    move v4, v2

    .line 247
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    if-eqz v8, :cond_c

    .line 252
    .line 253
    new-instance v0, Lj8/a0;

    .line 254
    .line 255
    move-object v1, p0

    .line 256
    move-object/from16 v2, p1

    .line 257
    .line 258
    move-object/from16 v3, p2

    .line 259
    .line 260
    move/from16 v6, p6

    .line 261
    .line 262
    move v5, v7

    .line 263
    invoke-direct/range {v0 .. v6}, Lj8/a0;-><init>(Lu7/h;Ljava/util/List;Ljava/util/List;ZII)V

    .line 264
    .line 265
    .line 266
    iput-object v0, v8, Lf1/w1;->d:Lf9/n;

    .line 267
    .line 268
    :cond_c
    return-void
.end method

.method public final g(Ljava/util/List;ZLf1/s;I)V
    .locals 10

    .line 1
    const v0, -0x433f465d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    or-int/lit8 v0, p4, 0x30

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0x93

    .line 10
    .line 11
    const/16 v1, 0x92

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    move v7, p2

    .line 26
    move-object v5, p3

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v0, 0x21

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-lt p2, v0, :cond_7

    .line 35
    .line 36
    sget-object p2, Lr2/n0;->b:Lf1/w2;

    .line 37
    .line 38
    invoke-virtual {p3, p2}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Landroid/content/Context;

    .line 43
    .line 44
    sget-object v0, Ld/c;->a:Lf1/c0;

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/app/Activity;

    .line 51
    .line 52
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 53
    .line 54
    invoke-static {v1}, Lu7/j;->b(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {p3}, Lu7/h;->h(Lf1/s;)Landroidx/lifecycle/o;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const v4, 0x4c5de2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v4}, Lf1/s;->W(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {p3, v2}, Lf1/s;->d(I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    sget-object v5, Lf1/n;->a:Lf1/w0;

    .line 81
    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    if-ne v4, v5, :cond_4

    .line 85
    .line 86
    :cond_2
    if-eqz v1, :cond_3

    .line 87
    .line 88
    const-string v2, "\u5df2\u5f00\u542f"

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    const-string v2, "\u672a\u6388\u6743"

    .line 92
    .line 93
    :goto_1
    invoke-static {v2}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {p3, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    check-cast v4, Lf1/b1;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p3, v2}, Lf1/s;->p(Z)V

    .line 104
    .line 105
    .line 106
    new-instance v6, La8/j;

    .line 107
    .line 108
    const/16 v7, 0x14

    .line 109
    .line 110
    invoke-direct {v6, v7, p1}, La8/j;-><init>(ILjava/util/List;)V

    .line 111
    .line 112
    .line 113
    const v7, 0xd833a91

    .line 114
    .line 115
    .line 116
    invoke-static {v7, v6, p3}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance v7, La8/m;

    .line 121
    .line 122
    const/16 v8, 0x16

    .line 123
    .line 124
    invoke-direct {v7, v4, v8}, La8/m;-><init>(Lf1/b1;I)V

    .line 125
    .line 126
    .line 127
    const v4, 0x1cace730

    .line 128
    .line 129
    .line 130
    invoke-static {v4, v7, p3}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const v7, -0x48fade91

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, v7}, Lf1/s;->W(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v1}, Lf1/s;->g(Z)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    or-int/2addr v7, v8

    .line 149
    invoke-virtual {p3, v0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    or-int/2addr v7, v8

    .line 154
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    if-nez v7, :cond_5

    .line 159
    .line 160
    if-ne v8, v5, :cond_6

    .line 161
    .line 162
    :cond_5
    new-instance v8, Lm7/w;

    .line 163
    .line 164
    const/4 v5, 0x1

    .line 165
    invoke-direct {v8, v5, p2, v0, v1}, Lm7/w;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, v8}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    check-cast v8, Lf9/a;

    .line 172
    .line 173
    invoke-virtual {p3, v2}, Lf1/s;->p(Z)V

    .line 174
    .line 175
    .line 176
    move-object v1, v6

    .line 177
    const/16 v6, 0x1b6

    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    move-object v5, p3

    .line 181
    move-object v2, v4

    .line 182
    move-object v4, v8

    .line 183
    invoke-static/range {v1 .. v7}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    move-object v5, p3

    .line 188
    :goto_2
    const/4 v7, 0x1

    .line 189
    :goto_3
    invoke-virtual {v5}, Lf1/s;->r()Lf1/w1;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    if-eqz p2, :cond_8

    .line 194
    .line 195
    new-instance v4, Lu7/d;

    .line 196
    .line 197
    const/4 v9, 0x1

    .line 198
    move-object v5, p0

    .line 199
    move-object v6, p1

    .line 200
    move v8, p4

    .line 201
    invoke-direct/range {v4 .. v9}, Lu7/d;-><init>(Lu7/h;Ljava/util/List;ZII)V

    .line 202
    .line 203
    .line 204
    iput-object v4, p2, Lf1/w1;->d:Lf9/n;

    .line 205
    .line 206
    :cond_8
    return-void
.end method
