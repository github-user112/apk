.class public final Lw0/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lw8/h;

.field public final b:Landroid/content/Context;

.field public final c:Lw0/x;

.field public final d:Li3/b;

.field public final e:Ljc/c;

.field public f:Landroid/view/textclassifier/TextClassifier;

.field public final g:Lf1/k1;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lw8/h;Landroid/content/Context;Lw0/x;Li3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/t;->a:Lw8/h;

    .line 5
    .line 6
    iput-object p2, p0, Lw0/t;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lw0/t;->c:Lw0/x;

    .line 9
    .line 10
    iput-object p4, p0, Lw0/t;->d:Li3/b;

    .line 11
    .line 12
    new-instance p1, Ljc/c;

    .line 13
    .line 14
    invoke-direct {p1}, Ljc/c;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lw0/t;->e:Ljc/c;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lw0/t;->g:Lf1/k1;

    .line 25
    .line 26
    new-instance p1, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lw0/t;->h:Ljava/lang/Object;

    .line 32
    .line 33
    return-void
.end method

.method public static final a(Lw0/t;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;Ly8/c;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    iget-object v2, v0, Lw0/t;->g:Lf1/k1;

    .line 6
    .line 7
    iget-object v3, v0, Lw0/t;->e:Ljc/c;

    .line 8
    .line 9
    instance-of v4, v1, Lw0/r;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v1

    .line 14
    check-cast v4, Lw0/r;

    .line 15
    .line 16
    iget v5, v4, Lw0/r;->j:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lw0/r;->j:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lw0/r;

    .line 29
    .line 30
    invoke-direct {v4, v0, v1}, Lw0/r;-><init>(Lw0/t;Ly8/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v4, Lw0/r;->h:Ljava/lang/Object;

    .line 34
    .line 35
    iget v5, v4, Lw0/r;->j:I

    .line 36
    .line 37
    sget-object v6, Lr8/z;->a:Lr8/z;

    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x1

    .line 41
    sget-object v10, Lx8/a;->a:Lx8/a;

    .line 42
    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    if-eq v5, v8, :cond_2

    .line 46
    .line 47
    if-ne v5, v7, :cond_1

    .line 48
    .line 49
    iget-wide v7, v4, Lw0/r;->g:J

    .line 50
    .line 51
    iget-object v3, v4, Lw0/r;->f:Ljc/c;

    .line 52
    .line 53
    iget-object v0, v4, Lw0/r;->e:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {v0}, Ls1/o;->h(Ljava/lang/Object;)Landroid/view/textclassifier/TextClassification;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v4, v4, Lw0/r;->d:Ljava/lang/CharSequence;

    .line 60
    .line 61
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_2
    iget-wide v11, v4, Lw0/r;->g:J

    .line 75
    .line 76
    iget-object v5, v4, Lw0/r;->f:Ljc/c;

    .line 77
    .line 78
    iget-object v13, v4, Lw0/r;->e:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v13}, Ls1/o;->j(Ljava/lang/Object;)Landroid/view/textclassifier/TextClassifier;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    iget-object v14, v4, Lw0/r;->d:Ljava/lang/CharSequence;

    .line 85
    .line 86
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-static {v1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v1, p1

    .line 94
    .line 95
    iput-object v1, v4, Lw0/r;->d:Ljava/lang/CharSequence;

    .line 96
    .line 97
    move-object/from16 v5, p4

    .line 98
    .line 99
    iput-object v5, v4, Lw0/r;->e:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object v3, v4, Lw0/r;->f:Ljc/c;

    .line 102
    .line 103
    move-wide/from16 v11, p2

    .line 104
    .line 105
    iput-wide v11, v4, Lw0/r;->g:J

    .line 106
    .line 107
    iput v8, v4, Lw0/r;->j:I

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    if-ne v13, v10, :cond_4

    .line 114
    .line 115
    move-object v4, v10

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    move-object v14, v1

    .line 118
    move-object v13, v5

    .line 119
    move-object v5, v3

    .line 120
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lw0/g1;

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    sget-object v15, Lw0/v;->a:Lf1/w2;

    .line 129
    .line 130
    move-object/from16 p5, v10

    .line 131
    .line 132
    iget-wide v9, v1, Lw0/g1;->b:J

    .line 133
    .line 134
    invoke-static {v11, v12, v9, v10}, Lb3/n0;->b(JJ)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-eqz v9, :cond_5

    .line 139
    .line 140
    iget-object v1, v1, Lw0/g1;->a:Ljava/lang/CharSequence;

    .line 141
    .line 142
    invoke-static {v14, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const/4 v1, 0x0

    .line 151
    :goto_2
    const/4 v15, 0x0

    .line 152
    if-ne v1, v8, :cond_7

    .line 153
    .line 154
    invoke-virtual {v5, v15}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-object v6

    .line 158
    :goto_3
    const/4 v15, 0x0

    .line 159
    goto :goto_6

    .line 160
    :cond_6
    move-object/from16 p5, v10

    .line 161
    .line 162
    const/4 v15, 0x0

    .line 163
    :cond_7
    invoke-virtual {v5, v15}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Ll8/e;->p()V

    .line 167
    .line 168
    .line 169
    invoke-static {v11, v12}, Lb3/n0;->f(J)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-static {v11, v12}, Lb3/n0;->e(J)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-static {v14, v1, v5}, Ll8/e;->d(Ljava/lang/CharSequence;II)Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lw0/t;->b()Landroid/os/LocaleList;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v1, v0}, Ll8/e;->c(Landroid/view/textclassifier/TextClassification$Request$Builder;Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Ll8/e;->e(Landroid/view/textclassifier/TextClassification$Request$Builder;)Landroid/view/textclassifier/TextClassification$Request;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v13, v0}, Ll8/e;->f(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput-object v14, v4, Lw0/r;->d:Ljava/lang/CharSequence;

    .line 198
    .line 199
    iput-object v0, v4, Lw0/r;->e:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v3, v4, Lw0/r;->f:Ljc/c;

    .line 202
    .line 203
    iput-wide v11, v4, Lw0/r;->g:J

    .line 204
    .line 205
    iput v7, v4, Lw0/r;->j:I

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Ljc/c;->d(Ly8/c;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    move-object/from16 v4, p5

    .line 212
    .line 213
    if-ne v1, v4, :cond_8

    .line 214
    .line 215
    :goto_4
    return-object v4

    .line 216
    :cond_8
    move-wide v7, v11

    .line 217
    move-object v4, v14

    .line 218
    :goto_5
    :try_start_1
    new-instance v1, Lw0/g1;

    .line 219
    .line 220
    invoke-direct {v1, v4, v7, v8, v0}, Lw0/g1;-><init>(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .line 225
    .line 226
    const/4 v15, 0x0

    .line 227
    invoke-virtual {v3, v15}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v6

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    const/4 v15, 0x0

    .line 233
    invoke-virtual {v3, v15}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    throw v0

    .line 237
    :catchall_1
    move-exception v0

    .line 238
    goto :goto_3

    .line 239
    :goto_6
    invoke-virtual {v5, v15}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    throw v0
.end method


# virtual methods
.method public final b()Landroid/os/LocaleList;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lw0/t;->d:Li3/b;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v3, 0xa

    .line 9
    .line 10
    invoke-static {v1, v3}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v1, Li3/b;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Li3/a;

    .line 34
    .line 35
    iget-object v3, v3, Li3/a;->a:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-array v0, v0, [Ljava/util/Locale;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, [Ljava/util/Locale;

    .line 48
    .line 49
    array-length v1, v0

    .line 50
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, [Ljava/util/Locale;

    .line 55
    .line 56
    invoke-static {v0}, Lr2/g0;->c([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_1
    invoke-static {}, Lr2/g0;->d()V

    .line 62
    .line 63
    .line 64
    sget-object v1, Li3/d;->a:Li3/c;

    .line 65
    .line 66
    invoke-interface {v1}, Li3/c;->n()Li3/b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Li3/b;->b()Li3/a;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v1, v1, Li3/a;->a:Ljava/util/Locale;

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    new-array v2, v2, [Ljava/util/Locale;

    .line 78
    .line 79
    aput-object v1, v2, v0

    .line 80
    .line 81
    invoke-static {v2}, Lr2/g0;->c([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
