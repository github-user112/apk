.class public final synthetic Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/lifecycle/z;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll4/q;

    .line 4
    .line 5
    const-string v1, "fetchFonts result is not OK. ("

    .line 6
    .line 7
    iget-object v2, v0, Ll4/q;->d:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Ll4/q;->h:Lg5/a;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    monitor-exit v2

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-virtual {v0}, Ll4/q;->c()Lb4/m;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v3, v2, Lb4/m;->e:I

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v0, Ll4/q;->d:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 32
    :try_start_2
    monitor-exit v4

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v1

    .line 35
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 37
    :catchall_2
    move-exception v1

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 41
    .line 42
    :try_start_4
    const-string v1, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 43
    .line 44
    sget v3, La4/j;->a:I

    .line 45
    .line 46
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Ll4/q;->c:Lib/d;

    .line 50
    .line 51
    iget-object v3, v0, Ll4/q;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    new-array v1, v1, [Lb4/m;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    sget-object v5, Lx3/e;->a:Lp9/q;

    .line 63
    .line 64
    const-string v5, "TypefaceCompat.createFromFontInfo"

    .line 65
    .line 66
    invoke-static {v5}, La/a;->m(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 67
    .line 68
    .line 69
    :try_start_5
    sget-object v5, Lx3/e;->a:Lp9/q;

    .line 70
    .line 71
    invoke-virtual {v5, v3, v1, v4}, Lp9/q;->q(Landroid/content/Context;[Lb4/m;I)Landroid/graphics/Typeface;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 75
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 76
    .line 77
    .line 78
    iget-object v3, v0, Ll4/q;->a:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v2, v2, Lb4/m;->a:Landroid/net/Uri;

    .line 81
    .line 82
    invoke-static {v3, v2}, Lp9/p1;->A(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 83
    .line 84
    .line 85
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    :try_start_7
    const-string v3, "EmojiCompat.MetadataRepo.create"

    .line 91
    .line 92
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lba/a;

    .line 96
    .line 97
    invoke-static {v2}, Li9/a;->L(Ljava/nio/MappedByteBuffer;)Lm4/b;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v3, v1, v2}, Lba/a;-><init>(Landroid/graphics/Typeface;Lm4/b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 102
    .line 103
    .line 104
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 105
    .line 106
    .line 107
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Ll4/q;->d:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 113
    :try_start_a
    iget-object v2, v0, Ll4/q;->h:Lg5/a;

    .line 114
    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lg5/a;->S(Lba/a;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catchall_3
    move-exception v2

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 124
    :try_start_b
    invoke-virtual {v0}, Ll4/q;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_2
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 129
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 130
    :catchall_4
    move-exception v1

    .line 131
    :try_start_e
    sget v2, La4/j;->a:I

    .line 132
    .line 133
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 134
    .line 135
    .line 136
    throw v1

    .line 137
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 138
    .line 139
    const-string v2, "Unable to open file."

    .line 140
    .line 141
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :catchall_5
    move-exception v1

    .line 146
    goto :goto_3

    .line 147
    :catchall_6
    move-exception v1

    .line 148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 149
    .line 150
    .line 151
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 152
    :goto_3
    :try_start_f
    sget v2, La4/j;->a:I

    .line 153
    .line 154
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    .line 159
    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ")"

    .line 169
    .line 170
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 181
    :goto_4
    iget-object v3, v0, Ll4/q;->d:Ljava/lang/Object;

    .line 182
    .line 183
    monitor-enter v3

    .line 184
    :try_start_10
    iget-object v2, v0, Ll4/q;->h:Lg5/a;

    .line 185
    .line 186
    if-eqz v2, :cond_5

    .line 187
    .line 188
    invoke-virtual {v2, v1}, Lg5/a;->R(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :catchall_7
    move-exception v0

    .line 193
    goto :goto_6

    .line 194
    :cond_5
    :goto_5
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 195
    invoke-virtual {v0}, Ll4/q;->a()V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :goto_6
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 200
    throw v0

    .line 201
    :goto_7
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 202
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Landroidx/lifecycle/z;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/view/Window;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lt1/c;

    .line 27
    .line 28
    invoke-virtual {v0}, Lt1/c;->l()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v6, v0, Lt1/c;->a:Lr2/u;

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    const-string v3, "ContentCapture:changeChecker"

    .line 39
    .line 40
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v6, v4}, Lr2/u;->y(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v0, Lt1/c;->l:Ls/w;

    .line 47
    .line 48
    iget-object v4, v3, Ls/k;->b:[I

    .line 49
    .line 50
    iget-object v3, v3, Ls/k;->a:[J

    .line 51
    .line 52
    array-length v7, v3

    .line 53
    sub-int/2addr v7, v2

    .line 54
    if-ltz v7, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    :goto_0
    aget-wide v8, v3, v2

    .line 58
    .line 59
    not-long v10, v8

    .line 60
    const/4 v12, 0x7

    .line 61
    shl-long/2addr v10, v12

    .line 62
    and-long/2addr v10, v8

    .line 63
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long/2addr v10, v12

    .line 69
    cmp-long v14, v10, v12

    .line 70
    .line 71
    if-eqz v14, :cond_3

    .line 72
    .line 73
    sub-int v10, v2, v7

    .line 74
    .line 75
    not-int v10, v10

    .line 76
    ushr-int/lit8 v10, v10, 0x1f

    .line 77
    .line 78
    const/16 v11, 0x8

    .line 79
    .line 80
    rsub-int/lit8 v10, v10, 0x8

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    :goto_1
    if-ge v12, v10, :cond_2

    .line 84
    .line 85
    const-wide/16 v13, 0xff

    .line 86
    .line 87
    and-long/2addr v13, v8

    .line 88
    const-wide/16 v15, 0x80

    .line 89
    .line 90
    cmp-long v17, v13, v15

    .line 91
    .line 92
    if-gez v17, :cond_1

    .line 93
    .line 94
    shl-int/lit8 v13, v2, 0x3

    .line 95
    .line 96
    add-int/2addr v13, v12

    .line 97
    aget v15, v4, v13

    .line 98
    .line 99
    invoke-virtual {v0}, Lt1/c;->k()Ls/k;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    invoke-virtual {v13, v15}, Ls/k;->a(I)Z

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-nez v13, :cond_1

    .line 108
    .line 109
    iget-object v13, v0, Lt1/c;->d:Ljava/util/ArrayList;

    .line 110
    .line 111
    new-instance v14, Lt1/d;

    .line 112
    .line 113
    move-object/from16 v21, v6

    .line 114
    .line 115
    iget-wide v5, v0, Lt1/c;->k:J

    .line 116
    .line 117
    sget-object v18, Lt1/e;->b:Lt1/e;

    .line 118
    .line 119
    const/16 v19, 0x0

    .line 120
    .line 121
    move-wide/from16 v16, v5

    .line 122
    .line 123
    invoke-direct/range {v14 .. v19}, Lt1/d;-><init>(IJLt1/e;Lf4/d;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v5, v0, Lt1/c;->h:Lcc/h;

    .line 130
    .line 131
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 132
    .line 133
    invoke-interface {v5, v6}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_1
    move-object/from16 v21, v6

    .line 138
    .line 139
    :goto_2
    shr-long/2addr v8, v11

    .line 140
    add-int/lit8 v12, v12, 0x1

    .line 141
    .line 142
    move-object/from16 v6, v21

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    move-object/from16 v21, v6

    .line 147
    .line 148
    if-ne v10, v11, :cond_5

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    move-object/from16 v21, v6

    .line 152
    .line 153
    :goto_3
    if-eq v2, v7, :cond_5

    .line 154
    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 156
    .line 157
    move-object/from16 v6, v21

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    goto :goto_0

    .line 161
    :cond_4
    move-object/from16 v21, v6

    .line 162
    .line 163
    :cond_5
    const-string v2, "ContentCapture:sendAppearEvents"

    .line 164
    .line 165
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    .line 168
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ly2/o;->a()Ly2/m;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v3, v0, Lt1/c;->m:Lr2/l2;

    .line 177
    .line 178
    invoke-virtual {v0, v2, v3}, Lt1/c;->n(Ly2/m;Lr2/l2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .line 180
    .line 181
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lt1/c;->k()Ls/k;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v2}, Lt1/c;->i(Ls/k;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lt1/c;->r()V

    .line 192
    .line 193
    .line 194
    const/4 v2, 0x0

    .line 195
    iput-boolean v2, v0, Lt1/c;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .line 197
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 198
    .line 199
    .line 200
    :goto_4
    return-void

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_5

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 205
    .line 206
    .line 207
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :pswitch_1
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Lr2/b0;

    .line 215
    .line 216
    const-string v2, "measureAndLayout"

    .line 217
    .line 218
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :try_start_4
    iget-object v2, v0, Lr2/b0;->d:Lr2/u;

    .line 222
    .line 223
    invoke-virtual {v2, v4}, Lr2/u;->y(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 224
    .line 225
    .line 226
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 227
    .line 228
    .line 229
    const-string v2, "checkForSemanticsChanges"

    .line 230
    .line 231
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :try_start_5
    invoke-virtual {v0}, Lr2/b0;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 235
    .line 236
    .line 237
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 238
    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    iput-boolean v2, v0, Lr2/b0;->L:Z

    .line 242
    .line 243
    return-void

    .line 244
    :catchall_2
    move-exception v0

    .line 245
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :catchall_3
    move-exception v0

    .line 250
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :pswitch_2
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v0, Lb1/a;

    .line 257
    .line 258
    const-string v2, "AndroidOwner:outOfFrameExecutor"

    .line 259
    .line 260
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :try_start_6
    invoke-virtual {v0}, Lb1/a;->invoke()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 264
    .line 265
    .line 266
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :catchall_4
    move-exception v0

    .line 271
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :pswitch_3
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v0, Lr2/u;

    .line 278
    .line 279
    const/4 v2, 0x0

    .line 280
    iput-boolean v2, v0, Lr2/u;->H0:Z

    .line 281
    .line 282
    iget-object v2, v0, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 283
    .line 284
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    const/16 v4, 0xa

    .line 292
    .line 293
    if-ne v3, v4, :cond_6

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Lr2/u;->M(Landroid/view/MotionEvent;)I

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_6
    const-string v0, "The ACTION_HOVER_EXIT event was not cleared."

    .line 300
    .line 301
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 302
    .line 303
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v2

    .line 307
    :pswitch_4
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Lb3/q;

    .line 310
    .line 311
    invoke-virtual {v0}, Lb3/q;->o()V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :pswitch_5
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v0, Lo6/c;

    .line 318
    .line 319
    iget v2, v0, Lo6/c;->g:I

    .line 320
    .line 321
    add-int/2addr v2, v4

    .line 322
    iput v2, v0, Lo6/c;->g:I

    .line 323
    .line 324
    return-void

    .line 325
    :pswitch_6
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, Lo6/b;

    .line 328
    .line 329
    invoke-virtual {v0}, Lo6/a;->a()V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :pswitch_7
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Lo6/a;

    .line 336
    .line 337
    invoke-virtual {v0}, Lo6/a;->a()V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_8
    invoke-direct {v1}, Landroidx/lifecycle/z;->a()V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :pswitch_9
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;

    .line 348
    .line 349
    invoke-static {v0}, Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;->a(Lcom/baidu/carlife/sdk/receiver/transport/GroupedProtocolTransport;)V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_a
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Li7/h;

    .line 356
    .line 357
    iget-object v2, v0, Li7/h;->b:Landroid/support/v4/media/session/t;

    .line 358
    .line 359
    if-eqz v2, :cond_7

    .line 360
    .line 361
    new-instance v4, Li7/g;

    .line 362
    .line 363
    invoke-direct {v4, v0}, Li7/g;-><init>(Li7/h;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v4, v3}, Landroid/support/v4/media/session/t;->j1(Landroid/support/v4/media/session/k;Landroid/os/Handler;)V

    .line 367
    .line 368
    .line 369
    :cond_7
    return-void

    .line 370
    :pswitch_b
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v0, Li7/c;

    .line 373
    .line 374
    sget-object v2, Li7/d;->a:Lr8/o;

    .line 375
    .line 376
    iget-object v0, v0, Li7/c;->c:Ljava/lang/Object;

    .line 377
    .line 378
    invoke-static {v0}, Li7/d;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :pswitch_c
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v0, Lg3/z;

    .line 385
    .line 386
    iget-object v5, v0, Lg3/z;->b:La2/b;

    .line 387
    .line 388
    iput-object v3, v0, Lg3/z;->n:Landroidx/lifecycle/z;

    .line 389
    .line 390
    iget-object v6, v0, Lg3/z;->m:Lh1/e;

    .line 391
    .line 392
    iget-object v0, v0, Lg3/z;->a:Landroid/view/View;

    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-nez v7, :cond_8

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    if-eqz v0, :cond_8

    .line 409
    .line 410
    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-ne v0, v4, :cond_8

    .line 415
    .line 416
    invoke-virtual {v6}, Lh1/e;->h()V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_c

    .line 420
    .line 421
    :cond_8
    iget-object v0, v6, Lh1/e;->a:[Ljava/lang/Object;

    .line 422
    .line 423
    iget v7, v6, Lh1/e;->c:I

    .line 424
    .line 425
    move-object v8, v3

    .line 426
    const/4 v9, 0x0

    .line 427
    :goto_6
    if-ge v9, v7, :cond_f

    .line 428
    .line 429
    aget-object v10, v0, v9

    .line 430
    .line 431
    check-cast v10, Lg3/y;

    .line 432
    .line 433
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    if-eqz v11, :cond_d

    .line 438
    .line 439
    if-eq v11, v4, :cond_c

    .line 440
    .line 441
    if-eq v11, v2, :cond_a

    .line 442
    .line 443
    const/4 v12, 0x3

    .line 444
    if-ne v11, v12, :cond_9

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_9
    new-instance v0, Lac/p;

    .line 448
    .line 449
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 450
    .line 451
    .line 452
    throw v0

    .line 453
    :cond_a
    :goto_7
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 454
    .line 455
    invoke-static {v3, v11}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v11

    .line 459
    if-nez v11, :cond_e

    .line 460
    .line 461
    sget-object v8, Lg3/y;->c:Lg3/y;

    .line 462
    .line 463
    if-ne v10, v8, :cond_b

    .line 464
    .line 465
    const/4 v8, 0x1

    .line 466
    goto :goto_8

    .line 467
    :cond_b
    const/4 v8, 0x0

    .line 468
    :goto_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    goto :goto_a

    .line 473
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 474
    .line 475
    :goto_9
    move-object v8, v3

    .line 476
    goto :goto_a

    .line 477
    :cond_d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_e
    :goto_a
    add-int/lit8 v9, v9, 0x1

    .line 481
    .line 482
    goto :goto_6

    .line 483
    :cond_f
    invoke-virtual {v6}, Lh1/e;->h()V

    .line 484
    .line 485
    .line 486
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-static {v3, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_10

    .line 493
    .line 494
    iget-object v0, v5, La2/b;->c:Ljava/lang/Object;

    .line 495
    .line 496
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 501
    .line 502
    iget-object v2, v5, La2/b;->b:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v2, Landroid/view/View;

    .line 505
    .line 506
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 507
    .line 508
    .line 509
    :cond_10
    if-eqz v8, :cond_12

    .line 510
    .line 511
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_11

    .line 516
    .line 517
    iget-object v0, v5, La2/b;->d:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v0, La2/d;

    .line 520
    .line 521
    iget-object v0, v0, La2/d;->b:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, La2/d;

    .line 524
    .line 525
    invoke-virtual {v0}, La2/d;->x()V

    .line 526
    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_11
    iget-object v0, v5, La2/b;->d:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, La2/d;

    .line 532
    .line 533
    iget-object v0, v0, La2/d;->b:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v0, La2/d;

    .line 536
    .line 537
    invoke-virtual {v0}, La2/d;->m()V

    .line 538
    .line 539
    .line 540
    :cond_12
    :goto_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 541
    .line 542
    invoke-static {v3, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-eqz v0, :cond_13

    .line 547
    .line 548
    iget-object v0, v5, La2/b;->c:Ljava/lang/Object;

    .line 549
    .line 550
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 555
    .line 556
    iget-object v2, v5, La2/b;->b:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v2, Landroid/view/View;

    .line 559
    .line 560
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 561
    .line 562
    .line 563
    :cond_13
    :goto_c
    return-void

    .line 564
    :pswitch_d
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 565
    .line 566
    move-object v2, v0

    .line 567
    check-cast v2, Lf8/b;

    .line 568
    .line 569
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    .line 571
    .line 572
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 573
    .line 574
    const-string v3, "CarLife_Vehicle"

    .line 575
    .line 576
    new-array v5, v4, [Ljava/lang/Object;

    .line 577
    .line 578
    const-string v6, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u89e3\u7801\u7ebf\u7a0b\u5df2\u542f\u52a8"

    .line 579
    .line 580
    const/16 v20, 0x0

    .line 581
    .line 582
    aput-object v6, v5, v20

    .line 583
    .line 584
    invoke-virtual {v0, v3, v5}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    :goto_d
    iget-object v0, v2, Lf8/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-eqz v0, :cond_16

    .line 594
    .line 595
    :try_start_7
    iget-object v0, v2, Lf8/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 596
    .line 597
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 598
    .line 599
    const-wide/16 v5, 0x64

    .line 600
    .line 601
    invoke-virtual {v0, v5, v6, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Lf8/a;

    .line 606
    .line 607
    if-nez v0, :cond_14

    .line 608
    .line 609
    goto :goto_d

    .line 610
    :cond_14
    iget-object v3, v2, Lf8/b;->i:Ljava/lang/Object;

    .line 611
    .line 612
    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 613
    :try_start_8
    iget-object v5, v2, Lf8/b;->c:Landroid/media/MediaCodec;

    .line 614
    .line 615
    if-eqz v5, :cond_15

    .line 616
    .line 617
    invoke-virtual {v2, v0}, Lf8/b;->f(Lf8/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 618
    .line 619
    .line 620
    goto :goto_e

    .line 621
    :catchall_5
    move-exception v0

    .line 622
    goto :goto_f

    .line 623
    :cond_15
    :goto_e
    :try_start_9
    monitor-exit v3

    .line 624
    goto :goto_d

    .line 625
    :catch_0
    move-exception v0

    .line 626
    goto :goto_10

    .line 627
    :goto_f
    monitor-exit v3

    .line 628
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 629
    :goto_10
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 630
    .line 631
    const-string v5, "CarLife_Vehicle"

    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    const-string v6, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u89e3\u7801\u5faa\u73af\u5f02\u5e38: "

    .line 638
    .line 639
    invoke-static {v6, v0}, La2/f;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    new-array v6, v4, [Ljava/lang/Object;

    .line 644
    .line 645
    const/4 v7, 0x0

    .line 646
    aput-object v0, v6, v7

    .line 647
    .line 648
    invoke-virtual {v3, v5, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    goto :goto_d

    .line 652
    :catch_1
    :cond_16
    const/4 v7, 0x0

    .line 653
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 654
    .line 655
    const-string v2, "CarLife_Vehicle"

    .line 656
    .line 657
    new-array v3, v4, [Ljava/lang/Object;

    .line 658
    .line 659
    const-string v4, "\u3010\u89c6\u9891\u89e3\u7801\u3011\u89e3\u7801\u7ebf\u7a0b\u5df2\u9000\u51fa"

    .line 660
    .line 661
    aput-object v4, v3, v7

    .line 662
    .line 663
    invoke-virtual {v0, v2, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :pswitch_e
    const/4 v7, 0x0

    .line 668
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast v0, Le7/a;

    .line 671
    .line 672
    iget-object v0, v0, Le7/a;->a:Le7/b;

    .line 673
    .line 674
    iput-boolean v7, v0, Le7/b;->b:Z

    .line 675
    .line 676
    invoke-virtual {v0}, Le7/b;->a()V

    .line 677
    .line 678
    .line 679
    return-void

    .line 680
    :pswitch_f
    const/4 v7, 0x0

    .line 681
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 682
    .line 683
    check-cast v0, Landroid/view/View;

    .line 684
    .line 685
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    const-string v3, "input_method"

    .line 690
    .line 691
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 696
    .line 697
    invoke-virtual {v2, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 698
    .line 699
    .line 700
    return-void

    .line 701
    :pswitch_10
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v0, La2/d;

    .line 704
    .line 705
    iget-object v0, v0, La2/d;->b:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 708
    .line 709
    invoke-static {v0}, Ld7/f;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    .line 710
    .line 711
    .line 712
    return-void

    .line 713
    :pswitch_11
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;

    .line 716
    .line 717
    invoke-static {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;->a(Lcom/baidu/carlife/sdk/receiver/transport/instant/WifiDirectDiscoverableTask;)V

    .line 718
    .line 719
    .line 720
    return-void

    .line 721
    :pswitch_12
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v0, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;

    .line 724
    .line 725
    invoke-static {v0}, Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover$discoverRunnable$1;->a(Lcom/baidu/carlife/sdk/receiver/transport/instant/BluetoothDeviceDiscover;)V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :pswitch_13
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 730
    .line 731
    check-cast v0, Lc/q;

    .line 732
    .line 733
    invoke-static {v0}, Lc/q;->a(Lc/q;)V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_14
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v0, Lc/j;

    .line 740
    .line 741
    iget-object v2, v0, Lc/j;->b:Ljava/lang/Runnable;

    .line 742
    .line 743
    if-eqz v2, :cond_17

    .line 744
    .line 745
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 746
    .line 747
    .line 748
    iput-object v3, v0, Lc/j;->b:Ljava/lang/Runnable;

    .line 749
    .line 750
    :cond_17
    return-void

    .line 751
    :pswitch_15
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v0, Landroid/view/KeyEvent;

    .line 754
    .line 755
    sget v2, Lb8/b;->b:I

    .line 756
    .line 757
    if-ne v2, v4, :cond_18

    .line 758
    .line 759
    sget-boolean v2, Lb8/b;->d:Z

    .line 760
    .line 761
    if-nez v2, :cond_18

    .line 762
    .line 763
    const/4 v2, 0x0

    .line 764
    invoke-static {v2, v0}, Lb8/b;->b(ILandroid/view/KeyEvent;)V

    .line 765
    .line 766
    .line 767
    sput v2, Lb8/b;->b:I

    .line 768
    .line 769
    :cond_18
    return-void

    .line 770
    :pswitch_16
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v0, Lb1/k;

    .line 773
    .line 774
    invoke-static {v0}, Lb1/k;->a(Lb1/k;)V

    .line 775
    .line 776
    .line 777
    return-void

    .line 778
    :pswitch_17
    iget-object v0, v1, Landroidx/lifecycle/z;->b:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v0, Landroidx/lifecycle/c0;

    .line 781
    .line 782
    iget-object v2, v0, Landroidx/lifecycle/c0;->f:Landroidx/lifecycle/v;

    .line 783
    .line 784
    iget v3, v0, Landroidx/lifecycle/c0;->b:I

    .line 785
    .line 786
    if-nez v3, :cond_19

    .line 787
    .line 788
    iput-boolean v4, v0, Landroidx/lifecycle/c0;->c:Z

    .line 789
    .line 790
    sget-object v3, Landroidx/lifecycle/n;->ON_PAUSE:Landroidx/lifecycle/n;

    .line 791
    .line 792
    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 793
    .line 794
    .line 795
    :cond_19
    iget v3, v0, Landroidx/lifecycle/c0;->a:I

    .line 796
    .line 797
    if-nez v3, :cond_1a

    .line 798
    .line 799
    iget-boolean v3, v0, Landroidx/lifecycle/c0;->c:Z

    .line 800
    .line 801
    if-eqz v3, :cond_1a

    .line 802
    .line 803
    sget-object v3, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 804
    .line 805
    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 806
    .line 807
    .line 808
    iput-boolean v4, v0, Landroidx/lifecycle/c0;->d:Z

    .line 809
    .line 810
    :cond_1a
    return-void

    .line 811
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method
