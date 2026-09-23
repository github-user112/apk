.class public Ljc/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _availablePermits$volatile:I

.field public final a:Lac/h;

.field private volatile synthetic deqIdx$volatile:J

.field private volatile synthetic enqIdx$volatile:J

.field private volatile synthetic head$volatile:Ljava/lang/Object;

.field private volatile synthetic tail$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "head$volatile"

    .line 2
    .line 3
    const-class v1, Ljc/g;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ljc/g;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "deqIdx$volatile"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ljc/g;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    .line 21
    const-string v0, "tail$volatile"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Ljc/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    const-string v0, "enqIdx$volatile"

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Ljc/g;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 36
    .line 37
    const-string v0, "_availablePermits$volatile"

    .line 38
    .line 39
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Ljc/g;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljc/i;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x2

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Ljc/i;-><init>(JLjc/i;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ljc/g;->head$volatile:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Ljc/g;->tail$volatile:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput v0, p0, Ljc/g;->_availablePermits$volatile:I

    .line 19
    .line 20
    new-instance v0, Lac/h;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, v1, p0}, Lac/h;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Ljc/g;->a:Lac/h;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljc/b;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Ljc/b;->a:Lac/i;

    .line 6
    .line 7
    iget-object v3, v1, Ljc/b;->b:Ljc/c;

    .line 8
    .line 9
    :cond_0
    :goto_0
    sget-object v4, Ljc/g;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x1

    .line 16
    if-gt v4, v5, :cond_0

    .line 17
    .line 18
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    if-lez v4, :cond_1

    .line 22
    .line 23
    sget-object v4, Ljc/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    invoke-virtual {v4, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, La8/q;

    .line 29
    .line 30
    const/16 v6, 0x11

    .line 31
    .line 32
    invoke-direct {v4, v6, v3, v1}, La8/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget v1, v2, Lac/f0;->c:I

    .line 36
    .line 37
    new-instance v3, Lac/h;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v3, v6, v4}, Lac/h;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5, v1, v3}, Lac/i;->B(Ljava/lang/Object;ILf9/o;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    sget-object v4, Ljc/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Ljc/i;

    .line 54
    .line 55
    sget-object v8, Ljc/g;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 56
    .line 57
    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    sget-object v10, Ljc/e;->i:Ljc/e;

    .line 62
    .line 63
    sget v11, Ljc/h;->f:I

    .line 64
    .line 65
    int-to-long v11, v11

    .line 66
    div-long v11, v8, v11

    .line 67
    .line 68
    :goto_1
    invoke-static {v7, v11, v12, v10}, Lfc/a;->b(Lfc/q;JLf9/n;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    invoke-static {v13}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    if-nez v14, :cond_6

    .line 77
    .line 78
    invoke-static {v13}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v15

    .line 86
    check-cast v15, Lfc/q;

    .line 87
    .line 88
    move-object/from16 v16, v7

    .line 89
    .line 90
    iget-wide v6, v15, Lfc/q;->c:J

    .line 91
    .line 92
    move-wide/from16 v17, v6

    .line 93
    .line 94
    iget-wide v6, v14, Lfc/q;->c:J

    .line 95
    .line 96
    cmp-long v19, v17, v6

    .line 97
    .line 98
    if-ltz v19, :cond_2

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    invoke-virtual {v14}, Lfc/q;->j()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_3

    .line 106
    .line 107
    move-object/from16 v7, v16

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v4, v0, v15, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_4

    .line 116
    .line 117
    invoke-virtual {v15}, Lfc/q;->f()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_6

    .line 122
    .line 123
    invoke-virtual {v15}, Lfc/b;->e()V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    if-eq v6, v15, :cond_3

    .line 132
    .line 133
    invoke-virtual {v14}, Lfc/q;->f()Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_5

    .line 138
    .line 139
    invoke-virtual {v14}, Lfc/b;->e()V

    .line 140
    .line 141
    .line 142
    :cond_5
    move-object/from16 v7, v16

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    :goto_3
    invoke-static {v13}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Ljc/i;

    .line 151
    .line 152
    iget-object v6, v4, Ljc/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 153
    .line 154
    sget v7, Ljc/h;->f:I

    .line 155
    .line 156
    int-to-long v10, v7

    .line 157
    rem-long/2addr v8, v10

    .line 158
    long-to-int v7, v8

    .line 159
    :cond_7
    const/4 v8, 0x0

    .line 160
    invoke-virtual {v6, v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_8

    .line 165
    .line 166
    invoke-interface {v1, v4, v7}, Lac/u1;->a(Lfc/q;I)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_8
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    if-eqz v8, :cond_7

    .line 175
    .line 176
    sget-object v8, Ljc/h;->b:Lfc/s;

    .line 177
    .line 178
    sget-object v9, Ljc/h;->c:Lfc/s;

    .line 179
    .line 180
    :cond_9
    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_a

    .line 185
    .line 186
    sget-object v4, Ljc/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 187
    .line 188
    const/4 v10, 0x0

    .line 189
    invoke-virtual {v4, v3, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    new-instance v4, La8/q;

    .line 193
    .line 194
    const/16 v6, 0x11

    .line 195
    .line 196
    invoke-direct {v4, v6, v3, v1}, La8/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    iget v1, v2, Lac/f0;->c:I

    .line 200
    .line 201
    new-instance v3, Lac/h;

    .line 202
    .line 203
    const/4 v6, 0x0

    .line 204
    invoke-direct {v3, v6, v4}, Lac/h;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v5, v1, v3}, Lac/i;->B(Ljava/lang/Object;ILf9/o;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_a
    const/4 v10, 0x0

    .line 212
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    if-eq v4, v8, :cond_9

    .line 217
    .line 218
    goto/16 :goto_0
.end method

.method public final b()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    sget-object v1, Ljc/g;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ge v2, v3, :cond_11

    .line 11
    .line 12
    if-ltz v2, :cond_1

    .line 13
    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_1
    sget-object v1, Ljc/g;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljc/i;

    .line 23
    .line 24
    sget-object v4, Ljc/g;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    sget v6, Ljc/h;->f:I

    .line 31
    .line 32
    int-to-long v6, v6

    .line 33
    div-long v6, v4, v6

    .line 34
    .line 35
    sget-object v8, Ljc/f;->i:Ljc/f;

    .line 36
    .line 37
    :goto_0
    invoke-static {v2, v6, v7, v8}, Lfc/a;->b(Lfc/q;JLf9/n;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-static {v9}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    if-nez v10, :cond_6

    .line 46
    .line 47
    invoke-static {v9}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    check-cast v11, Lfc/q;

    .line 56
    .line 57
    iget-wide v12, v11, Lfc/q;->c:J

    .line 58
    .line 59
    iget-wide v14, v10, Lfc/q;->c:J

    .line 60
    .line 61
    cmp-long v16, v12, v14

    .line 62
    .line 63
    if-ltz v16, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v10}, Lfc/q;->j()Z

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    if-nez v12, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v1, v0, v11, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-eqz v12, :cond_5

    .line 78
    .line 79
    invoke-virtual {v11}, Lfc/q;->f()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {v11}, Lfc/b;->e()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    if-eq v12, v11, :cond_4

    .line 94
    .line 95
    invoke-virtual {v10}, Lfc/q;->f()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-eqz v11, :cond_2

    .line 100
    .line 101
    invoke-virtual {v10}, Lfc/b;->e()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    :goto_2
    invoke-static {v9}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljc/i;

    .line 110
    .line 111
    iget-object v2, v1, Ljc/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 112
    .line 113
    invoke-virtual {v1}, Lfc/b;->a()V

    .line 114
    .line 115
    .line 116
    iget-wide v8, v1, Lfc/q;->c:J

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    cmp-long v10, v8, v6

    .line 120
    .line 121
    if-lez v10, :cond_8

    .line 122
    .line 123
    :cond_7
    :goto_3
    const/4 v3, 0x0

    .line 124
    goto :goto_6

    .line 125
    :cond_8
    sget v6, Ljc/h;->f:I

    .line 126
    .line 127
    int-to-long v6, v6

    .line 128
    rem-long/2addr v4, v6

    .line 129
    long-to-int v5, v4

    .line 130
    sget-object v4, Ljc/h;->b:Lfc/s;

    .line 131
    .line 132
    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-nez v4, :cond_d

    .line 137
    .line 138
    sget v4, Ljc/h;->a:I

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    :goto_4
    if-ge v6, v4, :cond_a

    .line 142
    .line 143
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    sget-object v8, Ljc/h;->c:Lfc/s;

    .line 148
    .line 149
    if-ne v7, v8, :cond_9

    .line 150
    .line 151
    goto :goto_6

    .line 152
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    sget-object v6, Ljc/h;->b:Lfc/s;

    .line 156
    .line 157
    sget-object v7, Ljc/h;->d:Lfc/s;

    .line 158
    .line 159
    :cond_b
    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_c

    .line 164
    .line 165
    const/4 v1, 0x1

    .line 166
    goto :goto_5

    .line 167
    :cond_c
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    if-eq v4, v6, :cond_b

    .line 172
    .line 173
    :goto_5
    xor-int/2addr v3, v1

    .line 174
    goto :goto_6

    .line 175
    :cond_d
    sget-object v2, Ljc/h;->e:Lfc/s;

    .line 176
    .line 177
    if-ne v4, v2, :cond_e

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_e
    instance-of v2, v4, Lac/g;

    .line 181
    .line 182
    sget-object v5, Lr8/z;->a:Lr8/z;

    .line 183
    .line 184
    if-eqz v2, :cond_f

    .line 185
    .line 186
    check-cast v4, Lac/g;

    .line 187
    .line 188
    iget-object v2, v0, Ljc/g;->a:Lac/h;

    .line 189
    .line 190
    invoke-interface {v4, v5, v2}, Lac/g;->n(Ljava/lang/Object;Lf9/o;)Lfc/s;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_7

    .line 195
    .line 196
    invoke-interface {v4, v2}, Lac/g;->A(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_f
    instance-of v2, v4, Lic/f;

    .line 201
    .line 202
    if-eqz v2, :cond_10

    .line 203
    .line 204
    check-cast v4, Lic/f;

    .line 205
    .line 206
    check-cast v4, Lic/e;

    .line 207
    .line 208
    invoke-virtual {v4, v0, v5}, Lic/e;->g(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_7

    .line 213
    .line 214
    :goto_6
    if-eqz v3, :cond_0

    .line 215
    .line 216
    :goto_7
    return-void

    .line 217
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v3, "unexpected: "

    .line 222
    .line 223
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v1

    .line 241
    :cond_11
    :goto_8
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-le v2, v3, :cond_12

    .line 246
    .line 247
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_12

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 255
    .line 256
    const-string v2, "The number of released permits cannot be greater than 1"

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v1
.end method
