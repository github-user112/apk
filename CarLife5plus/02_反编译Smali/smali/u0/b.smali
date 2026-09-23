.class public final Lu0/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lg3/r;


# instance fields
.field public a:Lu0/k;

.field public b:Lac/j1;

.field public c:Lu0/o;

.field public d:Ldc/a0;


# virtual methods
.method public final a(Lg3/w;Lg3/q;Lb3/l0;Lba/j;Lx1/c;Lx1/c;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lu0/b;->c:Lu0/o;

    .line 2
    .line 3
    if-eqz p4, :cond_2

    .line 4
    .line 5
    iget-object p4, p4, Lu0/o;->m:Lu0/l;

    .line 6
    .line 7
    iget-object v0, p4, Lu0/l;->c:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iput-object p1, p4, Lu0/l;->j:Lg3/w;

    .line 11
    .line 12
    iput-object p2, p4, Lu0/l;->l:Lg3/q;

    .line 13
    .line 14
    iput-object p3, p4, Lu0/l;->k:Lb3/l0;

    .line 15
    .line 16
    iput-object p5, p4, Lu0/l;->m:Lx1/c;

    .line 17
    .line 18
    iput-object p6, p4, Lu0/l;->n:Lx1/c;

    .line 19
    .line 20
    iget-boolean p1, p4, Lu0/l;->e:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-boolean p1, p4, Lu0/l;->d:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lu0/l;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    throw p1

    .line 38
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lu0/b;->j(Lk7/d;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/b;->a:Lu0/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lr2/i1;->p:Lf1/w2;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lr2/m2;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast v0, Lr2/j1;

    .line 16
    .line 17
    invoke-virtual {v0}, Lr2/j1;->b()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    iget-object v0, p0, Lu0/b;->b:Lac/j1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lu0/b;->b:Lac/j1;

    .line 10
    .line 11
    invoke-virtual {p0}, Lu0/b;->i()Ldc/v;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Ldc/a0;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    invoke-virtual {v1}, Ldc/a0;->m()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget v0, v1, Ldc/a0;->k:I

    .line 26
    .line 27
    int-to-long v4, v0

    .line 28
    add-long/2addr v2, v4

    .line 29
    iget-wide v4, v1, Ldc/a0;->j:J

    .line 30
    .line 31
    invoke-virtual {v1}, Ldc/a0;->m()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    iget v0, v1, Ldc/a0;->k:I

    .line 36
    .line 37
    int-to-long v8, v0

    .line 38
    add-long/2addr v6, v8

    .line 39
    invoke-virtual {v1}, Ldc/a0;->m()J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    iget v0, v1, Ldc/a0;->k:I

    .line 44
    .line 45
    int-to-long v10, v0

    .line 46
    add-long/2addr v8, v10

    .line 47
    iget v0, v1, Ldc/a0;->l:I

    .line 48
    .line 49
    int-to-long v10, v0

    .line 50
    add-long/2addr v8, v10

    .line 51
    invoke-virtual/range {v1 .. v9}, Ldc/a0;->s(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit v1

    .line 58
    throw v0

    .line 59
    :cond_1
    return-void
.end method

.method public final e(Lg3/w;Lg3/k;Ll0/u;Ll0/s;)V
    .locals 7

    .line 1
    new-instance v0, Lk7/d;

    .line 2
    .line 3
    const/4 v6, 0x2

    .line 4
    move-object v2, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lk7/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lu0/b;->j(Lk7/d;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(Lx1/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu0/b;->c:Lu0/o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v2, p1, Lx1/c;->a:F

    .line 8
    .line 9
    invoke-static {v2}, Li9/a;->N(F)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v3, p1, Lx1/c;->b:F

    .line 14
    .line 15
    invoke-static {v3}, Li9/a;->N(F)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v4, p1, Lx1/c;->c:F

    .line 20
    .line 21
    invoke-static {v4}, Li9/a;->N(F)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget p1, p1, Lx1/c;->d:F

    .line 26
    .line 27
    invoke-static {p1}, Li9/a;->N(F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lu0/o;->l:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget-object p1, v0, Lu0/o;->j:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, v0, Lu0/o;->l:Landroid/graphics/Rect;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object v0, v0, Lu0/o;->a:Landroid/view/View;

    .line 49
    .line 50
    new-instance v1, Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/b;->a:Lu0/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lr2/i1;->p:Lf1/w2;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lr2/m2;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast v0, Lr2/j1;

    .line 16
    .line 17
    invoke-virtual {v0}, Lr2/j1;->a()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final h(Lg3/w;Lg3/w;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lu0/b;->c:Lu0/o;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-object v1, v0, Lu0/o;->h:Lg3/w;

    .line 6
    .line 7
    iget-wide v1, v1, Lg3/w;->b:J

    .line 8
    .line 9
    iget-wide v3, p2, Lg3/w;->b:J

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v4}, Lb3/n0;->b(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lu0/o;->h:Lg3/w;

    .line 19
    .line 20
    iget-object v1, v1, Lg3/w;->c:Lb3/n0;

    .line 21
    .line 22
    iget-object v3, p2, Lg3/w;->c:Lb3/n0;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 34
    :goto_1
    iput-object p2, v0, Lu0/o;->h:Lg3/w;

    .line 35
    .line 36
    iget-object v3, v0, Lu0/o;->j:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    :goto_2
    if-ge v4, v3, :cond_3

    .line 44
    .line 45
    iget-object v5, v0, Lu0/o;->j:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lu0/p;

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    iput-object p2, v5, Lu0/p;->g:Lg3/w;

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget-object v3, v0, Lu0/o;->m:Lu0/l;

    .line 67
    .line 68
    iget-object v4, v3, Lu0/l;->c:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v4

    .line 71
    const/4 v5, 0x0

    .line 72
    :try_start_0
    iput-object v5, v3, Lu0/l;->j:Lg3/w;

    .line 73
    .line 74
    iput-object v5, v3, Lu0/l;->l:Lg3/q;

    .line 75
    .line 76
    iput-object v5, v3, Lu0/l;->k:Lb3/l0;

    .line 77
    .line 78
    iput-object v5, v3, Lu0/l;->m:Lx1/c;

    .line 79
    .line 80
    iput-object v5, v3, Lu0/l;->n:Lx1/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    monitor-exit v4

    .line 83
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v4, -0x1

    .line 88
    if-eqz v3, :cond_6

    .line 89
    .line 90
    if-eqz v1, :cond_e

    .line 91
    .line 92
    iget-object p1, v0, Lu0/o;->b:Lu0/j;

    .line 93
    .line 94
    iget-wide v1, p2, Lg3/w;->b:J

    .line 95
    .line 96
    invoke-static {v1, v2}, Lb3/n0;->f(J)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    iget-wide v1, p2, Lg3/w;->b:J

    .line 101
    .line 102
    invoke-static {v1, v2}, Lb3/n0;->e(J)I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    iget-object p2, v0, Lu0/o;->h:Lg3/w;

    .line 107
    .line 108
    iget-object p2, p2, Lg3/w;->c:Lb3/n0;

    .line 109
    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    iget-wide v1, p2, Lb3/n0;->a:J

    .line 113
    .line 114
    invoke-static {v1, v2}, Lb3/n0;->f(J)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    move v9, p2

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    const/4 v9, -0x1

    .line 121
    :goto_3
    iget-object p2, v0, Lu0/o;->h:Lg3/w;

    .line 122
    .line 123
    iget-object p2, p2, Lg3/w;->c:Lb3/n0;

    .line 124
    .line 125
    if-eqz p2, :cond_5

    .line 126
    .line 127
    iget-wide v0, p2, Lb3/n0;->a:J

    .line 128
    .line 129
    invoke-static {v0, v1}, Lb3/n0;->e(J)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    move v10, v4

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    const/4 v10, -0x1

    .line 136
    :goto_4
    invoke-virtual {p1}, Lu0/j;->t()Landroid/view/inputmethod/InputMethodManager;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget-object p1, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 141
    .line 142
    move-object v6, p1

    .line 143
    check-cast v6, Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_6
    if-eqz p1, :cond_8

    .line 150
    .line 151
    iget-object v1, p1, Lg3/w;->a:Lb3/g;

    .line 152
    .line 153
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v3, p2, Lg3/w;->a:Lb3/g;

    .line 156
    .line 157
    iget-object v3, v3, Lb3/g;->b:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_7

    .line 164
    .line 165
    iget-wide v5, p1, Lg3/w;->b:J

    .line 166
    .line 167
    iget-wide v7, p2, Lg3/w;->b:J

    .line 168
    .line 169
    invoke-static {v5, v6, v7, v8}, Lb3/n0;->b(JJ)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    iget-object p1, p1, Lg3/w;->c:Lb3/n0;

    .line 176
    .line 177
    iget-object p2, p2, Lg3/w;->c:Lb3/n0;

    .line 178
    .line 179
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_8

    .line 184
    .line 185
    :cond_7
    iget-object p1, v0, Lu0/o;->b:Lu0/j;

    .line 186
    .line 187
    invoke-virtual {p1}, Lu0/j;->t()Landroid/view/inputmethod/InputMethodManager;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget-object p1, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p1, Landroid/view/View;

    .line 194
    .line 195
    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_8
    iget-object p1, v0, Lu0/o;->j:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    :goto_5
    if-ge v2, p1, :cond_e

    .line 206
    .line 207
    iget-object p2, v0, Lu0/o;->j:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    check-cast p2, Lu0/p;

    .line 220
    .line 221
    if-eqz p2, :cond_d

    .line 222
    .line 223
    iget-object v1, v0, Lu0/o;->h:Lg3/w;

    .line 224
    .line 225
    iget-object v3, v0, Lu0/o;->b:Lu0/j;

    .line 226
    .line 227
    iget-boolean v5, p2, Lu0/p;->k:Z

    .line 228
    .line 229
    if-nez v5, :cond_9

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_9
    iput-object v1, p2, Lu0/p;->g:Lg3/w;

    .line 233
    .line 234
    iget-boolean v5, p2, Lu0/p;->i:Z

    .line 235
    .line 236
    if-eqz v5, :cond_a

    .line 237
    .line 238
    iget p2, p2, Lu0/p;->h:I

    .line 239
    .line 240
    invoke-static {v1}, Lp9/q;->i(Lg3/w;)Landroid/view/inputmethod/ExtractedText;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v3}, Lu0/j;->t()Landroid/view/inputmethod/InputMethodManager;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    iget-object v7, v3, Lu0/j;->b:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v7, Landroid/view/View;

    .line 251
    .line 252
    invoke-virtual {v6, v7, p2, v5}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 253
    .line 254
    .line 255
    :cond_a
    iget-object p2, v1, Lg3/w;->c:Lb3/n0;

    .line 256
    .line 257
    iget-wide v5, v1, Lg3/w;->b:J

    .line 258
    .line 259
    if-eqz p2, :cond_b

    .line 260
    .line 261
    iget-wide v7, p2, Lb3/n0;->a:J

    .line 262
    .line 263
    invoke-static {v7, v8}, Lb3/n0;->f(J)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    move v11, p2

    .line 268
    goto :goto_6

    .line 269
    :cond_b
    const/4 v11, -0x1

    .line 270
    :goto_6
    iget-object p2, v1, Lg3/w;->c:Lb3/n0;

    .line 271
    .line 272
    if-eqz p2, :cond_c

    .line 273
    .line 274
    iget-wide v7, p2, Lb3/n0;->a:J

    .line 275
    .line 276
    invoke-static {v7, v8}, Lb3/n0;->e(J)I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    move v12, p2

    .line 281
    goto :goto_7

    .line 282
    :cond_c
    const/4 v12, -0x1

    .line 283
    :goto_7
    invoke-static {v5, v6}, Lb3/n0;->f(J)I

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    invoke-static {v5, v6}, Lb3/n0;->e(J)I

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    invoke-virtual {v3}, Lu0/j;->t()Landroid/view/inputmethod/InputMethodManager;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    iget-object p2, v3, Lu0/j;->b:Ljava/lang/Object;

    .line 296
    .line 297
    move-object v8, p2

    .line 298
    check-cast v8, Landroid/view/View;

    .line 299
    .line 300
    invoke-virtual/range {v7 .. v12}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 301
    .line 302
    .line 303
    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    move-object p1, v0

    .line 308
    monitor-exit v4

    .line 309
    throw p1

    .line 310
    :cond_e
    return-void
.end method

.method public final i()Ldc/v;
    .locals 3

    .line 1
    iget-object v0, p0, Lu0/b;->d:Ldc/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-boolean v0, Lt0/b;->a:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_1
    sget-object v0, Lcc/a;->c:Lcc/a;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v2, v1, v0}, Ldc/b0;->a(IILcc/a;)Ldc/a0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lu0/b;->d:Ldc/a0;

    .line 21
    .line 22
    return-object v0
.end method

.method public final j(Lk7/d;)V
    .locals 6

    .line 1
    iget-object v3, p0, Lu0/b;->a:Lu0/k;

    .line 2
    .line 3
    if-nez v3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ldc/i;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v2, p0

    .line 11
    move-object v1, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Ldc/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, v3, Lr1/o;->n:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v3}, Lr1/o;->m0()Lac/w;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Lb0/g;

    .line 25
    .line 26
    const/16 v5, 0x12

    .line 27
    .line 28
    invoke-direct {v1, v3, v0, v4, v5}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {p1, v4, v1, v0}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :goto_0
    iput-object v4, v2, Lu0/b;->b:Lac/j1;

    .line 37
    .line 38
    return-void
.end method

.method public final k(Lu0/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/b;->a:Lu0/k;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Expected textInputModifierNode to be "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, " but was "

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lu0/b;->a:Lu0/k;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lc0/b;->c(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lu0/b;->a:Lu0/k;

    .line 35
    .line 36
    return-void
.end method
