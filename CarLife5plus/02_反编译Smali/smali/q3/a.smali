.class public final Lq3/a;
.super Le4/s0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq3/a;->c:I

    .line 2
    .line 3
    iput-object p1, p0, Lq3/a;->d:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Le4/s0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c(Le4/r1;Ljava/util/List;)Le4/r1;
    .locals 6

    .line 1
    iget p2, p0, Lq3/a;->c:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lq3/a;->d:Landroid/view/ViewGroup;

    .line 7
    .line 8
    check-cast p2, Lr3/r;

    .line 9
    .line 10
    iget-boolean v0, p2, Lr3/r;->l:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    sub-int/2addr v4, v5

    .line 45
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    sub-int/2addr p2, v1

    .line 58
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p1, Le4/r1;->a:Le4/n1;

    .line 72
    .line 73
    invoke-virtual {p1, v2, v3, v4, p2}, Le4/n1;->n(IIII)Le4/r1;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_0
    return-object p1

    .line 78
    :pswitch_0
    iget-object p2, p0, Lq3/a;->d:Landroid/view/ViewGroup;

    .line 79
    .line 80
    check-cast p2, Lq3/q;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lq3/i;->m(Le4/r1;)Le4/r1;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Le4/a1;Landroid/support/v4/media/session/t;)Landroid/support/v4/media/session/t;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lq3/a;->c:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lq3/a;->d:Landroid/view/ViewGroup;

    .line 11
    .line 12
    check-cast v2, Lr3/r;

    .line 13
    .line 14
    iget-boolean v3, v2, Lr3/r;->l:Z

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    sub-int/2addr v7, v8

    .line 49
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    sub-int/2addr v2, v4

    .line 62
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v5, :cond_1

    .line 67
    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    if-nez v7, :cond_1

    .line 71
    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v5, v6, v7, v2}, Lx3/b;->b(IIII)Lx3/b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget v3, v2, Lx3/b;->a:I

    .line 80
    .line 81
    new-instance v4, Landroid/support/v4/media/session/t;

    .line 82
    .line 83
    iget-object v5, v1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v5, Lx3/b;

    .line 86
    .line 87
    iget v6, v2, Lx3/b;->b:I

    .line 88
    .line 89
    iget v7, v2, Lx3/b;->c:I

    .line 90
    .line 91
    iget v2, v2, Lx3/b;->d:I

    .line 92
    .line 93
    invoke-static {v5, v3, v6, v7, v2}, Le4/r1;->a(Lx3/b;IIII)Lx3/b;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iget-object v1, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Lx3/b;

    .line 100
    .line 101
    invoke-static {v1, v3, v6, v7, v2}, Le4/r1;->a(Lx3/b;IIII)Lx3/b;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const/4 v2, 0x6

    .line 106
    invoke-direct {v4, v2, v5, v1}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move-object v1, v4

    .line 110
    :goto_0
    return-object v1

    .line 111
    :pswitch_0
    iget-object v2, v0, Lq3/a;->d:Landroid/view/ViewGroup;

    .line 112
    .line 113
    check-cast v2, Lq3/q;

    .line 114
    .line 115
    iget-object v2, v2, Lq3/i;->y:Lq2/h0;

    .line 116
    .line 117
    iget-object v2, v2, Lq2/h0;->E:Lq2/d1;

    .line 118
    .line 119
    iget-object v2, v2, Lq2/d1;->c:Lq2/t;

    .line 120
    .line 121
    iget-object v3, v2, Lq2/t;->O:Lq2/a2;

    .line 122
    .line 123
    iget-boolean v3, v3, Lr1/o;->n:Z

    .line 124
    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_2
    const-wide/16 v3, 0x0

    .line 130
    .line 131
    invoke-virtual {v2, v3, v4}, Lq2/h1;->F(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    invoke-static {v3, v4}, Li9/a;->M(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    const/16 v5, 0x20

    .line 140
    .line 141
    shr-long v6, v3, v5

    .line 142
    .line 143
    long-to-int v7, v6

    .line 144
    if-gez v7, :cond_3

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    :cond_3
    const-wide v8, 0xffffffffL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    and-long/2addr v3, v8

    .line 153
    long-to-int v4, v3

    .line 154
    if-gez v4, :cond_4

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    :cond_4
    invoke-static {v2}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-interface {v3}, Lo2/w;->k()J

    .line 162
    .line 163
    .line 164
    move-result-wide v10

    .line 165
    shr-long v12, v10, v5

    .line 166
    .line 167
    long-to-int v3, v12

    .line 168
    and-long/2addr v10, v8

    .line 169
    long-to-int v11, v10

    .line 170
    iget-wide v12, v2, Lo2/v0;->c:J

    .line 171
    .line 172
    shr-long v14, v12, v5

    .line 173
    .line 174
    long-to-int v10, v14

    .line 175
    and-long/2addr v12, v8

    .line 176
    long-to-int v13, v12

    .line 177
    int-to-float v10, v10

    .line 178
    int-to-float v12, v13

    .line 179
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    int-to-long v13, v10

    .line 184
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    const/16 p1, 0x20

    .line 189
    .line 190
    int-to-long v5, v10

    .line 191
    shl-long v13, v13, p1

    .line 192
    .line 193
    and-long/2addr v5, v8

    .line 194
    or-long/2addr v5, v13

    .line 195
    invoke-virtual {v2, v5, v6}, Lq2/h1;->F(J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    invoke-static {v5, v6}, Li9/a;->M(J)J

    .line 200
    .line 201
    .line 202
    move-result-wide v5

    .line 203
    shr-long v13, v5, p1

    .line 204
    .line 205
    long-to-int v2, v13

    .line 206
    sub-int/2addr v3, v2

    .line 207
    if-gez v3, :cond_5

    .line 208
    .line 209
    const/4 v3, 0x0

    .line 210
    :cond_5
    and-long/2addr v5, v8

    .line 211
    long-to-int v2, v5

    .line 212
    sub-int/2addr v11, v2

    .line 213
    if-gez v11, :cond_6

    .line 214
    .line 215
    const/4 v6, 0x0

    .line 216
    goto :goto_1

    .line 217
    :cond_6
    move v6, v11

    .line 218
    :goto_1
    if-nez v7, :cond_7

    .line 219
    .line 220
    if-nez v4, :cond_7

    .line 221
    .line 222
    if-nez v3, :cond_7

    .line 223
    .line 224
    if-nez v6, :cond_7

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_7
    new-instance v2, Landroid/support/v4/media/session/t;

    .line 228
    .line 229
    iget-object v5, v1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v5, Lx3/b;

    .line 232
    .line 233
    invoke-static {v5, v7, v4, v3, v6}, Lq3/i;->l(Lx3/b;IIII)Lx3/b;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    iget-object v1, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v1, Lx3/b;

    .line 240
    .line 241
    invoke-static {v1, v7, v4, v3, v6}, Lq3/i;->l(Lx3/b;IIII)Lx3/b;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    const/4 v3, 0x6

    .line 246
    invoke-direct {v2, v3, v5, v1}, Landroid/support/v4/media/session/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    move-object v1, v2

    .line 250
    :goto_2
    return-object v1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
