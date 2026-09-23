.class public final Lec/p;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Lcc/l;

.field public f:[B

.field public g:I

.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:[Ldc/d;

.field public final synthetic l:Ldc/o;

.field public final synthetic m:Ldc/e;


# direct methods
.method public constructor <init>([Ldc/d;Ldc/o;Ldc/e;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/p;->k:[Ldc/d;

    .line 2
    .line 3
    iput-object p2, p0, Lec/p;->l:Ldc/o;

    .line 4
    .line 5
    iput-object p3, p0, Lec/p;->m:Ldc/e;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Ly8/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lec/p;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lec/p;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lec/p;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 4

    .line 1
    new-instance v0, Lec/p;

    .line 2
    .line 3
    iget-object v1, p0, Lec/p;->l:Ldc/o;

    .line 4
    .line 5
    iget-object v2, p0, Lec/p;->m:Ldc/e;

    .line 6
    .line 7
    iget-object v3, p0, Lec/p;->k:[Ldc/d;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2, p2}, Lec/p;-><init>([Ldc/d;Ldc/o;Ldc/e;Lw8/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lec/p;->j:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lec/c;->c:Lfc/s;

    .line 4
    .line 5
    iget v2, v0, Lec/p;->i:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Lx8/a;->a:Lx8/a;

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    if-eq v2, v5, :cond_2

    .line 15
    .line 16
    if-eq v2, v4, :cond_0

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    :cond_0
    iget v2, v0, Lec/p;->h:I

    .line 21
    .line 22
    iget v3, v0, Lec/p;->g:I

    .line 23
    .line 24
    iget-object v7, v0, Lec/p;->f:[B

    .line 25
    .line 26
    iget-object v8, v0, Lec/p;->e:Lcc/l;

    .line 27
    .line 28
    iget-object v9, v0, Lec/p;->j:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v9, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :cond_2
    iget v2, v0, Lec/p;->h:I

    .line 45
    .line 46
    iget v3, v0, Lec/p;->g:I

    .line 47
    .line 48
    iget-object v7, v0, Lec/p;->f:[B

    .line 49
    .line 50
    iget-object v8, v0, Lec/p;->e:Lcc/l;

    .line 51
    .line 52
    iget-object v9, v0, Lec/p;->j:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v10, p1

    .line 60
    .line 61
    check-cast v10, Lcc/o;

    .line 62
    .line 63
    iget-object v10, v10, Lcc/o;->a:Ljava/lang/Object;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-static/range {p1 .. p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, v0, Lec/p;->j:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lac/w;

    .line 72
    .line 73
    iget-object v8, v0, Lec/p;->k:[Ldc/d;

    .line 74
    .line 75
    array-length v13, v8

    .line 76
    if-nez v13, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    new-array v14, v13, [Ljava/lang/Object;

    .line 80
    .line 81
    const/4 v15, 0x0

    .line 82
    invoke-static {v15, v13, v1, v14}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 v7, 0x6

    .line 86
    const/4 v9, 0x0

    .line 87
    invoke-static {v13, v7, v9}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    .line 93
    invoke-direct {v10, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 94
    .line 95
    .line 96
    move-object v7, v9

    .line 97
    const/4 v9, 0x0

    .line 98
    :goto_0
    if-ge v9, v13, :cond_5

    .line 99
    .line 100
    move-object v12, v7

    .line 101
    new-instance v7, Lec/o;

    .line 102
    .line 103
    move-object/from16 v16, v12

    .line 104
    .line 105
    const/4 v12, 0x0

    .line 106
    move-object/from16 v15, v16

    .line 107
    .line 108
    invoke-direct/range {v7 .. v12}, Lec/o;-><init>([Ldc/d;ILjava/util/concurrent/atomic/AtomicInteger;Lcc/h;Lw8/c;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v15, v7, v3}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 115
    .line 116
    move-object v7, v15

    .line 117
    const/4 v15, 0x0

    .line 118
    goto :goto_0

    .line 119
    :cond_5
    new-array v7, v13, [B

    .line 120
    .line 121
    move-object v8, v11

    .line 122
    move v3, v13

    .line 123
    move-object v9, v14

    .line 124
    const/4 v2, 0x0

    .line 125
    :cond_6
    :goto_1
    add-int/2addr v2, v5

    .line 126
    int-to-byte v2, v2

    .line 127
    iput-object v9, v0, Lec/p;->j:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v8, v0, Lec/p;->e:Lcc/l;

    .line 130
    .line 131
    iput-object v7, v0, Lec/p;->f:[B

    .line 132
    .line 133
    iput v3, v0, Lec/p;->g:I

    .line 134
    .line 135
    iput v2, v0, Lec/p;->h:I

    .line 136
    .line 137
    iput v5, v0, Lec/p;->i:I

    .line 138
    .line 139
    invoke-interface {v8, v0}, Lcc/w;->w(Lec/p;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    if-ne v10, v6, :cond_7

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_7
    :goto_2
    invoke-static {v10}, Lcc/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    check-cast v10, Ls8/z;

    .line 151
    .line 152
    if-nez v10, :cond_8

    .line 153
    .line 154
    :goto_3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 155
    .line 156
    return-object v1

    .line 157
    :cond_8
    iget v11, v10, Ls8/z;->a:I

    .line 158
    .line 159
    aget-object v12, v9, v11

    .line 160
    .line 161
    iget-object v10, v10, Ls8/z;->b:Ljava/lang/Object;

    .line 162
    .line 163
    aput-object v10, v9, v11

    .line 164
    .line 165
    if-ne v12, v1, :cond_9

    .line 166
    .line 167
    add-int/lit8 v3, v3, -0x1

    .line 168
    .line 169
    :cond_9
    aget-byte v10, v7, v11

    .line 170
    .line 171
    if-eq v10, v2, :cond_a

    .line 172
    .line 173
    int-to-byte v10, v2

    .line 174
    aput-byte v10, v7, v11

    .line 175
    .line 176
    invoke-interface {v8}, Lcc/w;->j()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-static {v10}, Lcc/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    check-cast v10, Ls8/z;

    .line 185
    .line 186
    if-nez v10, :cond_8

    .line 187
    .line 188
    :cond_a
    if-nez v3, :cond_6

    .line 189
    .line 190
    iput-object v9, v0, Lec/p;->j:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object v8, v0, Lec/p;->e:Lcc/l;

    .line 193
    .line 194
    iput-object v7, v0, Lec/p;->f:[B

    .line 195
    .line 196
    iput v3, v0, Lec/p;->g:I

    .line 197
    .line 198
    iput v2, v0, Lec/p;->h:I

    .line 199
    .line 200
    iput v4, v0, Lec/p;->i:I

    .line 201
    .line 202
    iget-object v10, v0, Lec/p;->l:Ldc/o;

    .line 203
    .line 204
    iget-object v11, v0, Lec/p;->m:Ldc/e;

    .line 205
    .line 206
    invoke-virtual {v10, v11, v9, v0}, Ldc/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    if-ne v10, v6, :cond_6

    .line 211
    .line 212
    :goto_4
    return-object v6
.end method
