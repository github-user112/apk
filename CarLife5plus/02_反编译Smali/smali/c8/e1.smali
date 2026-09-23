.class public final Lc8/e1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz7/v1;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final a:Lz7/u1;

.field public final b:Lr8/o;

.field public final c:Lr8/o;

.field public d:Lz7/a1;

.field public final e:Ldc/l0;

.field public f:Ljava/util/List;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lz7/u1;->a:Lz7/u1;

    .line 5
    .line 6
    iput-object v0, p0, Lc8/e1;->a:Lz7/u1;

    .line 7
    .line 8
    new-instance v0, Lb3/f0;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lc8/e1;->b:Lr8/o;

    .line 19
    .line 20
    new-instance v0, La5/e;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-direct {v0, v1, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lc8/e1;->c:Lr8/o;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lc8/e1;->e:Ldc/l0;

    .line 42
    .line 43
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 44
    .line 45
    iput-object v0, p0, Lc8/e1;->f:Ljava/util/List;

    .line 46
    .line 47
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
    const/4 v2, 0x6

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
    const-string v0, "\u5149\u7167\u4eae\u5ea6"

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
    const v0, 0x5f51264d

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
    const/16 v8, 0x5a

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
    const/4 v5, 0x6

    .line 132
    invoke-direct {v1, v3, v5}, La8/p0;-><init>(Lf9/a;I)V

    .line 133
    .line 134
    .line 135
    const v5, 0x316c9f06

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
    const/4 v9, 0x3

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
    const v1, -0x516be9bc

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    new-instance v4, Lc8/d1;

    .line 163
    .line 164
    const/4 v9, 0x1

    .line 165
    move-object/from16 v6, p0

    .line 166
    .line 167
    move v5, v2

    .line 168
    invoke-direct/range {v4 .. v9}, Lc8/d1;-><init>(ZLc8/e1;Lf1/h1;Lf1/b1;I)V

    .line 169
    .line 170
    .line 171
    const v1, -0x6df1bf4a

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v4, v15}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    and-int/lit8 v0, v0, 0xe

    .line 179
    .line 180
    const/high16 v1, 0x30c00000

    .line 181
    .line 182
    or-int v16, v0, v1

    .line 183
    .line 184
    const/16 v17, 0x17e

    .line 185
    .line 186
    const/4 v5, 0x0

    .line 187
    const-wide/16 v6, 0x0

    .line 188
    .line 189
    const/4 v8, 0x0

    .line 190
    const/4 v9, 0x0

    .line 191
    const/4 v10, 0x0

    .line 192
    const/4 v12, 0x0

    .line 193
    move/from16 v4, p1

    .line 194
    .line 195
    invoke-static/range {v4 .. v17}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 196
    .line 197
    .line 198
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lf1/s;->r()Lf1/w1;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    if-eqz v7, :cond_7

    .line 203
    .line 204
    new-instance v0, Lc8/h;

    .line 205
    .line 206
    const/16 v6, 0x8

    .line 207
    .line 208
    move-object/from16 v1, p0

    .line 209
    .line 210
    move/from16 v2, p1

    .line 211
    .line 212
    move-object/from16 v4, p3

    .line 213
    .line 214
    move/from16 v5, p5

    .line 215
    .line 216
    invoke-direct/range {v0 .. v6}, Lc8/h;-><init>(Lz7/v1;ZLf9/a;Lf9/k;II)V

    .line 217
    .line 218
    .line 219
    iput-object v0, v7, Lf1/w1;->d:Lf9/n;

    .line 220
    .line 221
    :cond_7
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 6

    .line 1
    const-string v0, "\u3010\u5149\u7167\u4eae\u5ea6\u3011\u6ce8\u518c\u5f02\u5e38: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iget-object v2, p0, Lc8/e1;->c:Lr8/o;

    .line 6
    .line 7
    invoke-virtual {v2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/hardware/Sensor;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Lc8/e1;->g:Z

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lc8/e1;->b:Lr8/o;

    .line 20
    .line 21
    invoke-virtual {v2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/hardware/SensorManager;

    .line 26
    .line 27
    iget-object v3, p0, Lc8/e1;->c:Lr8/o;

    .line 28
    .line 29
    invoke-virtual {v3}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/hardware/Sensor;

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    invoke-virtual {v2, p0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 37
    .line 38
    .line 39
    iput-boolean v1, p0, Lc8/e1;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v2

    .line 45
    :try_start_1
    sget-object v3, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 46
    .line 47
    const-string v4, "CarLife_Vehicle"

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    aput-object v0, v1, v2

    .line 69
    .line 70
    invoke-virtual {v3, v4, v1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_0
    :goto_0
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Sensor"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lz7/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc8/e1;->a:Lz7/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    aget p1, p1, v1

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v2

    .line 20
    :goto_0
    if-eqz p1, :cond_7

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v3, p0, Lc8/e1;->e:Ldc/l0;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v2, v0}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lc8/e1;->f:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    move-object v4, v3

    .line 56
    check-cast v4, Lz7/a1;

    .line 57
    .line 58
    iget v4, v4, Lz7/a1;->c:I

    .line 59
    .line 60
    if-ge p1, v4, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v3, v2

    .line 64
    :goto_1
    check-cast v3, Lz7/a1;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    new-instance v2, Lz7/a1;

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    iget v0, v3, Lz7/a1;->c:I

    .line 72
    .line 73
    invoke-direct {v2, v0, p1}, Lz7/a1;-><init>(IZ)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    iget-object v0, p0, Lc8/e1;->f:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    move-object v4, v3

    .line 98
    check-cast v4, Lz7/a1;

    .line 99
    .line 100
    iget v4, v4, Lz7/a1;->c:I

    .line 101
    .line 102
    if-le p1, v4, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move-object v3, v2

    .line 106
    :goto_2
    check-cast v3, Lz7/a1;

    .line 107
    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    new-instance v2, Lz7/a1;

    .line 111
    .line 112
    iget p1, v3, Lz7/a1;->c:I

    .line 113
    .line 114
    invoke-direct {v2, p1, v1}, Lz7/a1;-><init>(IZ)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 118
    .line 119
    iget-object p1, p0, Lc8/e1;->d:Lz7/a1;

    .line 120
    .line 121
    invoke-virtual {v2, p1}, Lz7/a1;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_7

    .line 126
    .line 127
    invoke-static {v2}, Lb8/o;->a(Lz7/q1;)V

    .line 128
    .line 129
    .line 130
    iput-object v2, p0, Lc8/e1;->d:Lz7/a1;

    .line 131
    .line 132
    :cond_7
    return-void
.end method
