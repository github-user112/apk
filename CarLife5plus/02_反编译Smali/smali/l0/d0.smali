.class public final Ll0/d0;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public final synthetic g:Lk2/a0;

.field public final synthetic h:Ll0/z0;


# direct methods
.method public synthetic constructor <init>(Lk2/a0;Ll0/z0;Lw8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Ll0/d0;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Ll0/d0;->g:Lk2/a0;

    .line 4
    .line 5
    iput-object p2, p0, Ll0/d0;->h:Ll0/z0;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Ll0/d0;->e:I

    .line 2
    .line 3
    check-cast p1, Lac/w;

    .line 4
    .line 5
    check-cast p2, Lw8/c;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Ll0/d0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ll0/d0;

    .line 15
    .line 16
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ll0/d0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ll0/d0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ll0/d0;

    .line 28
    .line 29
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ll0/d0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ll0/d0;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ll0/d0;

    .line 41
    .line 42
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ll0/d0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    iget p1, p0, Ll0/d0;->e:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ll0/d0;

    .line 7
    .line 8
    iget-object v0, p0, Ll0/d0;->h:Ll0/z0;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iget-object v2, p0, Ll0/d0;->g:Lk2/a0;

    .line 12
    .line 13
    invoke-direct {p1, v2, v0, p2, v1}, Ll0/d0;-><init>(Lk2/a0;Ll0/z0;Lw8/c;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Ll0/d0;

    .line 18
    .line 19
    iget-object v0, p0, Ll0/d0;->h:Ll0/z0;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iget-object v2, p0, Ll0/d0;->g:Lk2/a0;

    .line 23
    .line 24
    invoke-direct {p1, v2, v0, p2, v1}, Ll0/d0;-><init>(Lk2/a0;Ll0/z0;Lw8/c;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, Ll0/d0;

    .line 29
    .line 30
    iget-object v0, p0, Ll0/d0;->h:Ll0/z0;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Ll0/d0;->g:Lk2/a0;

    .line 34
    .line 35
    invoke-direct {p1, v2, v0, p2, v1}, Ll0/d0;-><init>(Lk2/a0;Ll0/z0;Lw8/c;I)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ll0/d0;->e:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Ll0/d0;->h:Ll0/z0;

    .line 7
    .line 8
    iget-object v4, v0, Ll0/d0;->g:Lk2/a0;

    .line 9
    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v6, Lx8/a;->a:Lx8/a;

    .line 13
    .line 14
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget v1, v0, Ll0/d0;->f:I

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-ne v1, v8, :cond_1

    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    move-object v6, v7

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_2
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput v8, v0, Ll0/d0;->f:I

    .line 41
    .line 42
    new-instance v1, Ll0/t0;

    .line 43
    .line 44
    invoke-direct {v1, v3, v2}, Ll0/t0;-><init>(Ll0/z0;I)V

    .line 45
    .line 46
    .line 47
    new-instance v5, Ll0/u0;

    .line 48
    .line 49
    invoke-direct {v5, v3, v2}, Ll0/u0;-><init>(Ll0/z0;I)V

    .line 50
    .line 51
    .line 52
    new-instance v15, Ll0/u0;

    .line 53
    .line 54
    invoke-direct {v15, v3, v8}, Ll0/u0;-><init>(Ll0/z0;I)V

    .line 55
    .line 56
    .line 57
    new-instance v14, La8/d;

    .line 58
    .line 59
    const/16 v2, 0x11

    .line 60
    .line 61
    invoke-direct {v14, v2, v3}, La8/d;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget v2, Lz/y;->a:F

    .line 65
    .line 66
    new-instance v13, Lac/h;

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-direct {v13, v2, v1}, Lac/h;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lw0/b1;

    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    invoke-direct {v1, v5, v2}, Lw0/b1;-><init>(Lf9/a;I)V

    .line 76
    .line 77
    .line 78
    new-instance v10, Lu7/i;

    .line 79
    .line 80
    const/16 v2, 0xa

    .line 81
    .line 82
    invoke-direct {v10, v2}, Lu7/i;-><init>(I)V

    .line 83
    .line 84
    .line 85
    new-instance v11, Lg9/w;

    .line 86
    .line 87
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v9, Lz/u;

    .line 91
    .line 92
    const/16 v17, 0x0

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    move-object/from16 v16, v1

    .line 96
    .line 97
    invoke-direct/range {v9 .. v17}, Lz/u;-><init>(Lf9/a;Lg9/w;Lz/w0;Lf9/o;Lf9/n;Lf9/a;Lf9/k;Lw8/c;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v4, v9, v0}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-ne v1, v6, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    move-object v1, v7

    .line 108
    :goto_0
    if-ne v1, v6, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    move-object v1, v7

    .line 112
    :goto_1
    if-ne v1, v6, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    move-object v1, v7

    .line 116
    :goto_2
    if-ne v1, v6, :cond_0

    .line 117
    .line 118
    :goto_3
    return-object v6

    .line 119
    :pswitch_0
    iget v1, v0, Ll0/d0;->f:I

    .line 120
    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    if-ne v1, v8, :cond_7

    .line 124
    .line 125
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    move-object v6, v7

    .line 129
    goto :goto_5

    .line 130
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v1

    .line 136
    :cond_8
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iput v8, v0, Ll0/d0;->f:I

    .line 140
    .line 141
    new-instance v1, Ll0/v0;

    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    invoke-direct {v1, v3, v5, v2}, Ll0/v0;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v4, v1, v0}, Lp4/e;->f(Lk2/a0;Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-ne v1, v6, :cond_9

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_9
    move-object v1, v7

    .line 155
    :goto_4
    if-ne v1, v6, :cond_6

    .line 156
    .line 157
    :goto_5
    return-object v6

    .line 158
    :pswitch_1
    iget v1, v0, Ll0/d0;->f:I

    .line 159
    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    if-ne v1, v8, :cond_a

    .line 163
    .line 164
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_b
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iput v8, v0, Ll0/d0;->f:I

    .line 178
    .line 179
    invoke-static {v4, v3, v0}, Ll0/p0;->l(Lk2/a0;Ll0/z0;Lw8/c;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-ne v1, v6, :cond_c

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_c
    :goto_6
    move-object v6, v7

    .line 187
    :goto_7
    return-object v6

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
