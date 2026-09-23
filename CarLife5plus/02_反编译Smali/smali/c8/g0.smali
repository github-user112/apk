.class public final Lc8/g0;
.super Landroid/database/ContentObserver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lz7/u1;

.field public d:Lz7/v;

.field public final e:Ldc/l0;

.field public f:Ljava/util/List;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "Brightness"

    .line 14
    .line 15
    iput-object v0, p0, Lc8/g0;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "\u5c4f\u5e55\u4eae\u5ea6"

    .line 18
    .line 19
    iput-object v0, p0, Lc8/g0;->b:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 22
    .line 23
    iput-object v0, p0, Lc8/g0;->c:Lz7/u1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lc8/g0;->e:Ldc/l0;

    .line 35
    .line 36
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 37
    .line 38
    iput-object v0, p0, Lc8/g0;->f:Ljava/util/List;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 2
    .line 3
    new-instance v0, Lb8/g;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-direct {v0, p0, v1, v2}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ll8/c;->b(Lf9/n;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/g0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(ZLf9/a;Lf9/k;Lf1/s;I)V
    .locals 19

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v15, p4

    .line 6
    .line 7
    const-string v0, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "onConfigured"

    .line 13
    .line 14
    invoke-static {v4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x6b120c13

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 21
    .line 22
    .line 23
    move/from16 v2, p1

    .line 24
    .line 25
    invoke-virtual {v15, v2}, Lf1/s;->g(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int v0, p5, v0

    .line 35
    .line 36
    invoke-virtual {v15, v4}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const/16 v1, 0x100

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x80

    .line 46
    .line 47
    :goto_1
    or-int/2addr v0, v1

    .line 48
    move-object/from16 v6, p0

    .line 49
    .line 50
    invoke-virtual {v15, v6}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const/16 v1, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v1, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v0, v1

    .line 62
    and-int/lit16 v1, v0, 0x493

    .line 63
    .line 64
    const/16 v5, 0x492

    .line 65
    .line 66
    if-ne v1, v5, :cond_4

    .line 67
    .line 68
    invoke-virtual {v15}, Lf1/s;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v15}, Lf1/s;->Q()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    :goto_3
    const v1, 0x6e3c21fe

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v1}, Lf1/s;->W(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v15}, Lf1/s;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 91
    .line 92
    if-ne v5, v7, :cond_5

    .line 93
    .line 94
    new-instance v5, Lf1/h1;

    .line 95
    .line 96
    const/16 v8, 0x1e

    .line 97
    .line 98
    invoke-direct {v5, v8}, Lf1/h1;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15, v5}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    move-object v8, v5

    .line 105
    check-cast v8, Lf1/h1;

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    invoke-static {v15, v5, v1}, La2/f;->B(Lf1/s;ZI)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-ne v1, v7, :cond_6

    .line 113
    .line 114
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-static {v1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v15, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    move-object v7, v1

    .line 124
    check-cast v7, Lf1/b1;

    .line 125
    .line 126
    invoke-virtual {v15, v5}, Lf1/s;->p(Z)V

    .line 127
    .line 128
    .line 129
    new-instance v1, La8/p0;

    .line 130
    .line 131
    const/4 v5, 0x2

    .line 132
    invoke-direct {v1, v3, v5}, La8/p0;-><init>(Lf9/a;I)V

    .line 133
    .line 134
    .line 135
    const v5, 0x5585a3a6

    .line 136
    .line 137
    .line 138
    invoke-static {v5, v1, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    new-instance v4, Lc8/m;

    .line 143
    .line 144
    const/4 v9, 0x1

    .line 145
    move-object/from16 v5, p3

    .line 146
    .line 147
    invoke-direct/range {v4 .. v9}, Lc8/m;-><init>(Lf9/k;Lz7/v1;Lf1/b1;Lf1/h1;I)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v18, v8

    .line 151
    .line 152
    move-object v8, v7

    .line 153
    move-object/from16 v7, v18

    .line 154
    .line 155
    const v1, 0x73d8fce4

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    new-instance v4, Lc8/e0;

    .line 163
    .line 164
    move-object/from16 v6, p0

    .line 165
    .line 166
    move v5, v2

    .line 167
    invoke-direct/range {v4 .. v9}, Lc8/e0;-><init>(ZLc8/g0;Lf1/h1;Lf1/b1;I)V

    .line 168
    .line 169
    .line 170
    const v1, 0x7e029556

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    and-int/lit8 v0, v0, 0xe

    .line 178
    .line 179
    const/high16 v1, 0x30c00000

    .line 180
    .line 181
    or-int v16, v0, v1

    .line 182
    .line 183
    const/16 v17, 0x17e

    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    const-wide/16 v6, 0x0

    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    const/4 v9, 0x0

    .line 190
    const/4 v10, 0x0

    .line 191
    const/4 v12, 0x0

    .line 192
    move/from16 v4, p1

    .line 193
    .line 194
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 195
    .line 196
    .line 197
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    if-eqz v7, :cond_7

    .line 202
    .line 203
    new-instance v0, Lc8/h;

    .line 204
    .line 205
    const/4 v6, 0x3

    .line 206
    move-object/from16 v1, p0

    .line 207
    .line 208
    move/from16 v2, p1

    .line 209
    .line 210
    move-object/from16 v4, p3

    .line 211
    .line 212
    move/from16 v5, p5

    .line 213
    .line 214
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 215
    .line 216
    .line 217
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 218
    .line 219
    :cond_7
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 7

    .line 1
    const-string v0, "\u3010\u5c4f\u5e55\u4eae\u5ea6\u3011\u6ce8\u518c\u5f02\u5e38: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    iget-boolean v3, p0, Lc8/g0;->g:Z

    .line 7
    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "screen_brightness"

    .line 19
    .line 20
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 25
    .line 26
    .line 27
    iput-boolean v2, p0, Lc8/g0;->g:Z

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lc8/g0;->onChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v3

    .line 36
    :try_start_1
    sget-object v4, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 37
    .line 38
    const-string v5, "CarLife_Vehicle"

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object v0, v2, v1

    .line 59
    .line 60
    invoke-virtual {v4, v5, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/g0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/g0;->c:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onChange(Z)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "screen_brightness"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    nop

    .line 22
    move-object v0, p1

    .line 23
    :goto_0
    if-eqz v0, :cond_6

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lc8/g0;->e:Ldc/l0;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1, v1}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 42
    .line 43
    const-string v2, "\u3010\u5c4f\u5e55\u4eae\u5ea6\u3011\u5f53\u524d\u4eae\u5ea6: "

    .line 44
    .line 45
    invoke-static {v0, v2}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x1

    .line 50
    new-array v4, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    aput-object v2, v4, v5

    .line 54
    .line 55
    const-string v2, "CarLife_Vehicle"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v4}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lc8/g0;->f:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object v4, v2

    .line 77
    check-cast v4, Lz7/v;

    .line 78
    .line 79
    iget v4, v4, Lz7/v;->c:I

    .line 80
    .line 81
    if-ge v0, v4, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move-object v2, p1

    .line 85
    :goto_1
    check-cast v2, Lz7/v;

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    new-instance p1, Lz7/v;

    .line 90
    .line 91
    iget v0, v2, Lz7/v;->c:I

    .line 92
    .line 93
    invoke-direct {p1, v0, v3}, Lz7/v;-><init>(IZ)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_2
    iget-object v1, p0, Lc8/g0;->f:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    move-object v3, v2

    .line 118
    check-cast v3, Lz7/v;

    .line 119
    .line 120
    iget v3, v3, Lz7/v;->c:I

    .line 121
    .line 122
    if-le v0, v3, :cond_3

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    move-object v2, p1

    .line 126
    :goto_2
    check-cast v2, Lz7/v;

    .line 127
    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    new-instance p1, Lz7/v;

    .line 131
    .line 132
    iget v0, v2, Lz7/v;->c:I

    .line 133
    .line 134
    invoke-direct {p1, v0, v5}, Lz7/v;-><init>(IZ)V

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 138
    .line 139
    iget-object v0, p0, Lc8/g0;->d:Lz7/v;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lz7/v;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_6

    .line 146
    .line 147
    invoke-static {p1}, Lb8/o;->a(Lz7/q1;)V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Lc8/g0;->d:Lz7/v;

    .line 151
    .line 152
    :cond_6
    return-void
.end method
