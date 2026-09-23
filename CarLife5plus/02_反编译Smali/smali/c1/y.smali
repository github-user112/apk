.class public abstract Lc1/y;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/w2;

.field public static final b:Lf1/w2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lc1/x;->b:Lc1/x;

    .line 2
    .line 3
    new-instance v1, Lf1/w2;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lc1/y;->a:Lf1/w2;

    .line 9
    .line 10
    sget-object v0, Lc1/x;->c:Lc1/x;

    .line 11
    .line 12
    new-instance v1, Lf1/w2;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lc1/y;->b:Lf1/w2;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Lc1/w;J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lc1/w;->a:J

    .line 2
    .line 3
    iget-wide v2, p0, Lc1/w;->q:J

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide p0, p0, Lc1/w;->b:J

    .line 12
    .line 13
    return-wide p0

    .line 14
    :cond_0
    iget-wide v0, p0, Lc1/w;->f:J

    .line 15
    .line 16
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-wide p0, p0, Lc1/w;->g:J

    .line 23
    .line 24
    return-wide p0

    .line 25
    :cond_1
    iget-wide v0, p0, Lc1/w;->j:J

    .line 26
    .line 27
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-wide p0, p0, Lc1/w;->k:J

    .line 34
    .line 35
    return-wide p0

    .line 36
    :cond_2
    iget-wide v0, p0, Lc1/w;->n:J

    .line 37
    .line 38
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-wide p0, p0, Lc1/w;->o:J

    .line 45
    .line 46
    return-wide p0

    .line 47
    :cond_3
    iget-wide v0, p0, Lc1/w;->w:J

    .line 48
    .line 49
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-wide p0, p0, Lc1/w;->x:J

    .line 56
    .line 57
    return-wide p0

    .line 58
    :cond_4
    iget-wide v0, p0, Lc1/w;->c:J

    .line 59
    .line 60
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    iget-wide p0, p0, Lc1/w;->d:J

    .line 67
    .line 68
    return-wide p0

    .line 69
    :cond_5
    iget-wide v0, p0, Lc1/w;->h:J

    .line 70
    .line 71
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    iget-wide p0, p0, Lc1/w;->i:J

    .line 78
    .line 79
    return-wide p0

    .line 80
    :cond_6
    iget-wide v0, p0, Lc1/w;->l:J

    .line 81
    .line 82
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    iget-wide p0, p0, Lc1/w;->m:J

    .line 89
    .line 90
    return-wide p0

    .line 91
    :cond_7
    iget-wide v0, p0, Lc1/w;->y:J

    .line 92
    .line 93
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    iget-wide p0, p0, Lc1/w;->z:J

    .line 100
    .line 101
    return-wide p0

    .line 102
    :cond_8
    iget-wide v0, p0, Lc1/w;->u:J

    .line 103
    .line 104
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    iget-wide p0, p0, Lc1/w;->v:J

    .line 111
    .line 112
    return-wide p0

    .line 113
    :cond_9
    iget-wide v0, p0, Lc1/w;->p:J

    .line 114
    .line 115
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_a

    .line 120
    .line 121
    return-wide v2

    .line 122
    :cond_a
    iget-wide v0, p0, Lc1/w;->r:J

    .line 123
    .line 124
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    iget-wide p0, p0, Lc1/w;->s:J

    .line 131
    .line 132
    return-wide p0

    .line 133
    :cond_b
    iget-wide v0, p0, Lc1/w;->D:J

    .line 134
    .line 135
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_c

    .line 140
    .line 141
    return-wide v2

    .line 142
    :cond_c
    iget-wide v0, p0, Lc1/w;->F:J

    .line 143
    .line 144
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_d

    .line 149
    .line 150
    return-wide v2

    .line 151
    :cond_d
    iget-wide v0, p0, Lc1/w;->G:J

    .line 152
    .line 153
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_e

    .line 158
    .line 159
    return-wide v2

    .line 160
    :cond_e
    iget-wide v0, p0, Lc1/w;->H:J

    .line 161
    .line 162
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_f

    .line 167
    .line 168
    return-wide v2

    .line 169
    :cond_f
    iget-wide v0, p0, Lc1/w;->I:J

    .line 170
    .line 171
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_10

    .line 176
    .line 177
    return-wide v2

    .line 178
    :cond_10
    iget-wide v0, p0, Lc1/w;->J:J

    .line 179
    .line 180
    invoke-static {p1, p2, v0, v1}, Ly1/q;->c(JJ)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-eqz p0, :cond_11

    .line 185
    .line 186
    return-wide v2

    .line 187
    :cond_11
    sget p0, Ly1/q;->n:I

    .line 188
    .line 189
    sget-wide p0, Ly1/q;->m:J

    .line 190
    .line 191
    return-wide p0
.end method

.method public static b(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Lc1/w;
    .locals 76

    move/from16 v0, p64

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 1
    sget-wide v1, Le1/b;->j:J

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 2
    sget-wide v1, Le1/b;->t:J

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p4

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 3
    sget-wide v1, Le1/b;->k:J

    move-wide v10, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p6

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 4
    sget-wide v1, Le1/b;->e:J

    move-wide v12, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p8

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 5
    sget-wide v1, Le1/b;->l:J

    move-wide/from16 v16, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v16, p12

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 6
    sget-wide v1, Le1/b;->v:J

    move-wide/from16 v18, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v18, p14

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 7
    sget-wide v1, Le1/b;->m:J

    move-wide/from16 v20, v1

    goto :goto_6

    :cond_6
    move-wide/from16 v20, p16

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    .line 8
    sget-wide v1, Le1/b;->p:J

    move-wide/from16 v24, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v24, p20

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    .line 9
    sget-wide v1, Le1/b;->F:J

    move-wide/from16 v26, v1

    goto :goto_8

    :cond_8
    move-wide/from16 v26, p22

    :goto_8
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_9

    .line 10
    sget-wide v1, Le1/b;->q:J

    move-wide/from16 v28, v1

    goto :goto_9

    :cond_9
    move-wide/from16 v28, p24

    :goto_9
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_a

    .line 11
    sget-wide v1, Le1/b;->a:J

    move-wide/from16 v30, v1

    goto :goto_a

    :cond_a
    move-wide/from16 v30, p26

    :goto_a
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_b

    .line 12
    sget-wide v1, Le1/b;->g:J

    move-wide/from16 v32, v1

    goto :goto_b

    :cond_b
    move-wide/from16 v32, p28

    :goto_b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    .line 13
    sget-wide v1, Le1/b;->w:J

    move-wide/from16 v34, v1

    goto :goto_c

    :cond_c
    move-wide/from16 v34, p30

    :goto_c
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 14
    sget-wide v1, Le1/b;->n:J

    move-wide/from16 v36, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v36, p32

    :goto_d
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 15
    sget-wide v1, Le1/b;->E:J

    move-wide/from16 v38, v1

    goto :goto_e

    :cond_e
    move-wide/from16 v38, p34

    :goto_e
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 16
    sget-wide v1, Le1/b;->o:J

    move-wide/from16 v40, v1

    goto :goto_f

    :cond_f
    move-wide/from16 v40, p36

    :goto_f
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-wide/from16 v42, p0

    goto :goto_10

    :cond_10
    move-wide/from16 v42, p38

    :goto_10
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 17
    sget-wide v1, Le1/b;->f:J

    move-wide/from16 v44, v1

    goto :goto_11

    :cond_11
    move-wide/from16 v44, p40

    :goto_11
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 18
    sget-wide v1, Le1/b;->d:J

    move-wide/from16 v46, v1

    goto :goto_12

    :cond_12
    move-wide/from16 v46, p42

    .line 19
    :goto_12
    sget-wide v48, Le1/b;->b:J

    .line 20
    sget-wide v50, Le1/b;->h:J

    .line 21
    sget-wide v52, Le1/b;->c:J

    .line 22
    sget-wide v54, Le1/b;->i:J

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 23
    sget-wide v1, Le1/b;->r:J

    move-wide/from16 v56, v1

    goto :goto_13

    :cond_13
    move-wide/from16 v56, p44

    :goto_13
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 24
    sget-wide v1, Le1/b;->s:J

    move-wide/from16 v58, v1

    goto :goto_14

    :cond_14
    move-wide/from16 v58, p46

    :goto_14
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    .line 25
    sget-wide v1, Le1/b;->u:J

    move-wide/from16 v60, v1

    goto :goto_15

    :cond_15
    move-wide/from16 v60, p48

    :goto_15
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 26
    sget-wide v1, Le1/b;->x:J

    move-wide/from16 v62, v1

    goto :goto_16

    :cond_16
    move-wide/from16 v62, p50

    :goto_16
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 27
    sget-wide v1, Le1/b;->y:J

    move-wide/from16 v66, v1

    goto :goto_17

    :cond_17
    move-wide/from16 v66, p52

    :goto_17
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    .line 28
    sget-wide v0, Le1/b;->z:J

    move-wide/from16 v68, v0

    goto :goto_18

    :cond_18
    move-wide/from16 v68, p54

    :goto_18
    and-int/lit8 v0, p65, 0x1

    if-eqz v0, :cond_19

    .line 29
    sget-wide v0, Le1/b;->A:J

    move-wide/from16 v70, v0

    goto :goto_19

    :cond_19
    move-wide/from16 v70, p56

    :goto_19
    and-int/lit8 v0, p65, 0x2

    if-eqz v0, :cond_1a

    .line 30
    sget-wide v0, Le1/b;->B:J

    move-wide/from16 v72, v0

    goto :goto_1a

    :cond_1a
    move-wide/from16 v72, p58

    :goto_1a
    and-int/lit8 v0, p65, 0x4

    if-eqz v0, :cond_1b

    .line 31
    sget-wide v0, Le1/b;->C:J

    move-wide/from16 v74, v0

    goto :goto_1b

    :cond_1b
    move-wide/from16 v74, p60

    :goto_1b
    and-int/lit8 v0, p65, 0x8

    if-eqz v0, :cond_1c

    .line 32
    sget-wide v0, Le1/b;->D:J

    move-wide/from16 v64, v0

    goto :goto_1c

    :cond_1c
    move-wide/from16 v64, p62

    .line 33
    :goto_1c
    new-instance v3, Lc1/w;

    move-wide/from16 v4, p0

    move-wide/from16 v14, p10

    move-wide/from16 v22, p18

    invoke-direct/range {v3 .. v75}, Lc1/w;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v3
.end method

.method public static final c(Lc1/w;I)J
    .locals 0

    .line 1
    invoke-static {p1}, Le1/d;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    sget-wide p0, Ly1/q;->m:J

    .line 9
    .line 10
    return-wide p0

    .line 11
    :pswitch_1
    iget-wide p0, p0, Lc1/w;->l:J

    .line 12
    .line 13
    return-wide p0

    .line 14
    :pswitch_2
    iget-wide p0, p0, Lc1/w;->j:J

    .line 15
    .line 16
    return-wide p0

    .line 17
    :pswitch_3
    iget-wide p0, p0, Lc1/w;->r:J

    .line 18
    .line 19
    return-wide p0

    .line 20
    :pswitch_4
    iget-wide p0, p0, Lc1/w;->t:J

    .line 21
    .line 22
    return-wide p0

    .line 23
    :pswitch_5
    iget-wide p0, p0, Lc1/w;->E:J

    .line 24
    .line 25
    return-wide p0

    .line 26
    :pswitch_6
    iget-wide p0, p0, Lc1/w;->J:J

    .line 27
    .line 28
    return-wide p0

    .line 29
    :pswitch_7
    iget-wide p0, p0, Lc1/w;->I:J

    .line 30
    .line 31
    return-wide p0

    .line 32
    :pswitch_8
    iget-wide p0, p0, Lc1/w;->H:J

    .line 33
    .line 34
    return-wide p0

    .line 35
    :pswitch_9
    iget-wide p0, p0, Lc1/w;->G:J

    .line 36
    .line 37
    return-wide p0

    .line 38
    :pswitch_a
    iget-wide p0, p0, Lc1/w;->F:J

    .line 39
    .line 40
    return-wide p0

    .line 41
    :pswitch_b
    iget-wide p0, p0, Lc1/w;->D:J

    .line 42
    .line 43
    return-wide p0

    .line 44
    :pswitch_c
    iget-wide p0, p0, Lc1/w;->p:J

    .line 45
    .line 46
    return-wide p0

    .line 47
    :pswitch_d
    iget-wide p0, p0, Lc1/w;->h:J

    .line 48
    .line 49
    return-wide p0

    .line 50
    :pswitch_e
    iget-wide p0, p0, Lc1/w;->f:J

    .line 51
    .line 52
    return-wide p0

    .line 53
    :pswitch_f
    iget-wide p0, p0, Lc1/w;->C:J

    .line 54
    .line 55
    return-wide p0

    .line 56
    :pswitch_10
    iget-wide p0, p0, Lc1/w;->c:J

    .line 57
    .line 58
    return-wide p0

    .line 59
    :pswitch_11
    iget-wide p0, p0, Lc1/w;->a:J

    .line 60
    .line 61
    return-wide p0

    .line 62
    :pswitch_12
    iget-wide p0, p0, Lc1/w;->B:J

    .line 63
    .line 64
    return-wide p0

    .line 65
    :pswitch_13
    iget-wide p0, p0, Lc1/w;->A:J

    .line 66
    .line 67
    return-wide p0

    .line 68
    :pswitch_14
    iget-wide p0, p0, Lc1/w;->m:J

    .line 69
    .line 70
    return-wide p0

    .line 71
    :pswitch_15
    iget-wide p0, p0, Lc1/w;->k:J

    .line 72
    .line 73
    return-wide p0

    .line 74
    :pswitch_16
    iget-wide p0, p0, Lc1/w;->s:J

    .line 75
    .line 76
    return-wide p0

    .line 77
    :pswitch_17
    iget-wide p0, p0, Lc1/w;->q:J

    .line 78
    .line 79
    return-wide p0

    .line 80
    :pswitch_18
    iget-wide p0, p0, Lc1/w;->i:J

    .line 81
    .line 82
    return-wide p0

    .line 83
    :pswitch_19
    iget-wide p0, p0, Lc1/w;->g:J

    .line 84
    .line 85
    return-wide p0

    .line 86
    :pswitch_1a
    iget-wide p0, p0, Lc1/w;->d:J

    .line 87
    .line 88
    return-wide p0

    .line 89
    :pswitch_1b
    iget-wide p0, p0, Lc1/w;->b:J

    .line 90
    .line 91
    return-wide p0

    .line 92
    :pswitch_1c
    iget-wide p0, p0, Lc1/w;->z:J

    .line 93
    .line 94
    return-wide p0

    .line 95
    :pswitch_1d
    iget-wide p0, p0, Lc1/w;->x:J

    .line 96
    .line 97
    return-wide p0

    .line 98
    :pswitch_1e
    iget-wide p0, p0, Lc1/w;->o:J

    .line 99
    .line 100
    return-wide p0

    .line 101
    :pswitch_1f
    iget-wide p0, p0, Lc1/w;->u:J

    .line 102
    .line 103
    return-wide p0

    .line 104
    :pswitch_20
    iget-wide p0, p0, Lc1/w;->e:J

    .line 105
    .line 106
    return-wide p0

    .line 107
    :pswitch_21
    iget-wide p0, p0, Lc1/w;->v:J

    .line 108
    .line 109
    return-wide p0

    .line 110
    :pswitch_22
    iget-wide p0, p0, Lc1/w;->y:J

    .line 111
    .line 112
    return-wide p0

    .line 113
    :pswitch_23
    iget-wide p0, p0, Lc1/w;->w:J

    .line 114
    .line 115
    return-wide p0

    .line 116
    :pswitch_24
    iget-wide p0, p0, Lc1/w;->n:J

    .line 117
    .line 118
    return-wide p0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static d(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJII)Lc1/w;
    .locals 76

    move/from16 v0, p64

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1
    sget-wide v1, Le1/c;->t:J

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p0

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2
    sget-wide v1, Le1/c;->j:J

    move-wide v6, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 3
    sget-wide v1, Le1/c;->u:J

    move-wide v8, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p4

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 4
    sget-wide v1, Le1/c;->k:J

    move-wide v10, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p6

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    .line 5
    sget-wide v1, Le1/c;->e:J

    move-wide v12, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p8

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    .line 6
    sget-wide v1, Le1/c;->w:J

    move-wide v14, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p10

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    .line 7
    sget-wide v1, Le1/c;->l:J

    move-wide/from16 v16, v1

    goto :goto_6

    :cond_6
    move-wide/from16 v16, p12

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    .line 8
    sget-wide v1, Le1/c;->x:J

    move-wide/from16 v18, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v18, p14

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    .line 9
    sget-wide v1, Le1/c;->m:J

    move-wide/from16 v20, v1

    goto :goto_8

    :cond_8
    move-wide/from16 v20, p16

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    .line 10
    sget-wide v1, Le1/c;->H:J

    move-wide/from16 v22, v1

    goto :goto_9

    :cond_9
    move-wide/from16 v22, p18

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    .line 11
    sget-wide v1, Le1/c;->p:J

    move-wide/from16 v24, v1

    goto :goto_a

    :cond_a
    move-wide/from16 v24, p20

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    .line 12
    sget-wide v1, Le1/c;->I:J

    move-wide/from16 v26, v1

    goto :goto_b

    :cond_b
    move-wide/from16 v26, p22

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    .line 13
    sget-wide v1, Le1/c;->q:J

    move-wide/from16 v28, v1

    goto :goto_c

    :cond_c
    move-wide/from16 v28, p24

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    .line 14
    sget-wide v1, Le1/c;->a:J

    move-wide/from16 v30, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v30, p26

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    .line 15
    sget-wide v1, Le1/c;->g:J

    move-wide/from16 v32, v1

    goto :goto_e

    :cond_e
    move-wide/from16 v32, p28

    :goto_e
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 16
    sget-wide v1, Le1/c;->y:J

    move-wide/from16 v34, v1

    goto :goto_f

    :cond_f
    move-wide/from16 v34, p30

    :goto_f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 17
    sget-wide v1, Le1/c;->n:J

    move-wide/from16 v36, v1

    goto :goto_10

    :cond_10
    move-wide/from16 v36, p32

    :goto_10
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    .line 18
    sget-wide v1, Le1/c;->G:J

    move-wide/from16 v38, v1

    goto :goto_11

    :cond_11
    move-wide/from16 v38, p34

    :goto_11
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 19
    sget-wide v1, Le1/c;->o:J

    move-wide/from16 v40, v1

    goto :goto_12

    :cond_12
    move-wide/from16 v40, p36

    :goto_12
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-wide/from16 v42, v4

    goto :goto_13

    :cond_13
    move-wide/from16 v42, p38

    :goto_13
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    .line 20
    sget-wide v1, Le1/c;->f:J

    move-wide/from16 v44, v1

    goto :goto_14

    :cond_14
    move-wide/from16 v44, p40

    :goto_14
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    .line 21
    sget-wide v1, Le1/c;->d:J

    move-wide/from16 v46, v1

    goto :goto_15

    :cond_15
    move-wide/from16 v46, p42

    .line 22
    :goto_15
    sget-wide v48, Le1/c;->b:J

    .line 23
    sget-wide v50, Le1/c;->h:J

    .line 24
    sget-wide v52, Le1/c;->c:J

    .line 25
    sget-wide v54, Le1/c;->i:J

    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    .line 26
    sget-wide v1, Le1/c;->r:J

    move-wide/from16 v56, v1

    goto :goto_16

    :cond_16
    move-wide/from16 v56, p44

    :goto_16
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 27
    sget-wide v1, Le1/c;->s:J

    move-wide/from16 v58, v1

    goto :goto_17

    :cond_17
    move-wide/from16 v58, p46

    :goto_17
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    .line 28
    sget-wide v1, Le1/c;->v:J

    move-wide/from16 v60, v1

    goto :goto_18

    :cond_18
    move-wide/from16 v60, p48

    :goto_18
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    .line 29
    sget-wide v1, Le1/c;->z:J

    move-wide/from16 v62, v1

    goto :goto_19

    :cond_19
    move-wide/from16 v62, p50

    :goto_19
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    .line 30
    sget-wide v1, Le1/c;->A:J

    move-wide/from16 v66, v1

    goto :goto_1a

    :cond_1a
    move-wide/from16 v66, p52

    :goto_1a
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 31
    sget-wide v0, Le1/c;->B:J

    move-wide/from16 v68, v0

    goto :goto_1b

    :cond_1b
    move-wide/from16 v68, p54

    :goto_1b
    and-int/lit8 v0, p65, 0x1

    if-eqz v0, :cond_1c

    .line 32
    sget-wide v0, Le1/c;->C:J

    move-wide/from16 v70, v0

    goto :goto_1c

    :cond_1c
    move-wide/from16 v70, p56

    :goto_1c
    and-int/lit8 v0, p65, 0x2

    if-eqz v0, :cond_1d

    .line 33
    sget-wide v0, Le1/c;->D:J

    move-wide/from16 v72, v0

    goto :goto_1d

    :cond_1d
    move-wide/from16 v72, p58

    :goto_1d
    and-int/lit8 v0, p65, 0x4

    if-eqz v0, :cond_1e

    .line 34
    sget-wide v0, Le1/c;->E:J

    move-wide/from16 v74, v0

    goto :goto_1e

    :cond_1e
    move-wide/from16 v74, p60

    :goto_1e
    and-int/lit8 v0, p65, 0x8

    if-eqz v0, :cond_1f

    .line 35
    sget-wide v0, Le1/c;->F:J

    move-wide/from16 v64, v0

    goto :goto_1f

    :cond_1f
    move-wide/from16 v64, p62

    .line 36
    :goto_1f
    new-instance v3, Lc1/w;

    invoke-direct/range {v3 .. v75}, Lc1/w;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v3
.end method
