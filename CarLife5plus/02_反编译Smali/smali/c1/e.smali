.class public final Lc1/e;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:I

.field public final synthetic f:Lv/c;

.field public final synthetic g:F

.field public final synthetic h:Z

.field public final synthetic i:Lc1/f;

.field public final synthetic j:Lb0/j;


# direct methods
.method public constructor <init>(Lv/c;FZLc1/f;Lb0/j;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/e;->f:Lv/c;

    .line 2
    .line 3
    iput p2, p0, Lc1/e;->g:F

    .line 4
    .line 5
    iput-boolean p3, p0, Lc1/e;->h:Z

    .line 6
    .line 7
    iput-object p4, p0, Lc1/e;->i:Lc1/f;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/e;->j:Lb0/j;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Ly8/i;-><init>(ILw8/c;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lc1/e;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lc1/e;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lc1/e;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 7

    .line 1
    new-instance v0, Lc1/e;

    .line 2
    .line 3
    iget-object v4, p0, Lc1/e;->i:Lc1/f;

    .line 4
    .line 5
    iget-object v5, p0, Lc1/e;->j:Lb0/j;

    .line 6
    .line 7
    iget-object v1, p0, Lc1/e;->f:Lv/c;

    .line 8
    .line 9
    iget v2, p0, Lc1/e;->g:F

    .line 10
    .line 11
    iget-boolean v3, p0, Lc1/e;->h:Z

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lc1/e;-><init>(Lv/c;FZLc1/f;Lb0/j;Lw8/c;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lc1/e;->e:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    iget-object v2, p0, Lc1/e;->f:Lv/c;

    .line 30
    .line 31
    iget-object v0, v2, Lv/c;->e:Lf1/k1;

    .line 32
    .line 33
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ln3/f;

    .line 38
    .line 39
    iget v0, v0, Ln3/f;->a:F

    .line 40
    .line 41
    iget v4, p0, Lc1/e;->g:F

    .line 42
    .line 43
    invoke-static {v0, v4}, Ln3/f;->a(FF)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    iget-boolean v0, p0, Lc1/e;->h:Z

    .line 50
    .line 51
    sget-object v8, Lx8/a;->a:Lx8/a;

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    new-instance p1, Ln3/f;

    .line 56
    .line 57
    invoke-direct {p1, v4}, Ln3/f;-><init>(F)V

    .line 58
    .line 59
    .line 60
    iput v3, p0, Lc1/e;->e:I

    .line 61
    .line 62
    invoke-virtual {v2, p1, p0}, Lv/c;->e(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v8, :cond_3

    .line 67
    .line 68
    move-object v6, p0

    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_3
    :goto_0
    move-object v6, p0

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_4
    iget-object v0, v2, Lv/c;->e:Lf1/k1;

    .line 75
    .line 76
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ln3/f;

    .line 81
    .line 82
    iget v0, v0, Ln3/f;->a:F

    .line 83
    .line 84
    iget-object v3, p0, Lc1/e;->i:Lc1/f;

    .line 85
    .line 86
    iget v5, v3, Lc1/f;->b:F

    .line 87
    .line 88
    invoke-static {v0, v5}, Ln3/f;->a(FF)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const/4 v6, 0x0

    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    new-instance v0, Lb0/m;

    .line 96
    .line 97
    const-wide/16 v9, 0x0

    .line 98
    .line 99
    invoke-direct {v0, v9, v10}, Lb0/m;-><init>(J)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    iget v5, v3, Lc1/f;->d:F

    .line 104
    .line 105
    invoke-static {v0, v5}, Ln3/f;->a(FF)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_6

    .line 110
    .line 111
    new-instance v0, Lb0/h;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    iget v3, v3, Lc1/f;->c:F

    .line 118
    .line 119
    invoke-static {v0, v3}, Ln3/f;->a(FF)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    new-instance v0, Lb0/d;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    move-object v0, v6

    .line 132
    :goto_1
    iput p1, p0, Lc1/e;->e:I

    .line 133
    .line 134
    sget-object p1, Ld1/f;->b:Lv/v0;

    .line 135
    .line 136
    sget-object v3, Ld1/f;->a:Lv/v0;

    .line 137
    .line 138
    iget-object v5, p0, Lc1/e;->j:Lb0/j;

    .line 139
    .line 140
    if-eqz v5, :cond_b

    .line 141
    .line 142
    instance-of p1, v5, Lb0/m;

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    :goto_2
    move-object v6, v3

    .line 147
    goto :goto_4

    .line 148
    :cond_8
    instance-of p1, v5, Lb0/b;

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_9
    instance-of p1, v5, Lb0/h;

    .line 154
    .line 155
    if-eqz p1, :cond_a

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_a
    instance-of p1, v5, Lb0/d;

    .line 159
    .line 160
    if-eqz p1, :cond_f

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_b
    if-eqz v0, :cond_f

    .line 164
    .line 165
    instance-of v3, v0, Lb0/m;

    .line 166
    .line 167
    if-eqz v3, :cond_c

    .line 168
    .line 169
    :goto_3
    move-object v6, p1

    .line 170
    goto :goto_4

    .line 171
    :cond_c
    instance-of v3, v0, Lb0/b;

    .line 172
    .line 173
    if-eqz v3, :cond_d

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_d
    instance-of v3, v0, Lb0/h;

    .line 177
    .line 178
    if-eqz v3, :cond_e

    .line 179
    .line 180
    sget-object v6, Ld1/f;->c:Lv/v0;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_e
    instance-of v0, v0, Lb0/d;

    .line 184
    .line 185
    if-eqz v0, :cond_f

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_f
    :goto_4
    if-eqz v6, :cond_10

    .line 189
    .line 190
    new-instance v3, Ln3/f;

    .line 191
    .line 192
    invoke-direct {v3, v4}, Ln3/f;-><init>(F)V

    .line 193
    .line 194
    .line 195
    const/4 v5, 0x0

    .line 196
    const/16 v7, 0xc

    .line 197
    .line 198
    move-object v4, v6

    .line 199
    move-object v6, p0

    .line 200
    invoke-static/range {v2 .. v7}, Lv/c;->c(Lv/c;Ljava/lang/Object;Lv/j;Lf9/k;Ly8/i;I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    if-ne p1, v8, :cond_11

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_10
    move-object v6, p0

    .line 208
    new-instance p1, Ln3/f;

    .line 209
    .line 210
    invoke-direct {p1, v4}, Ln3/f;-><init>(F)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, p1, p0}, Lv/c;->e(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-ne p1, v8, :cond_11

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_11
    move-object p1, v1

    .line 221
    :goto_5
    if-ne p1, v8, :cond_12

    .line 222
    .line 223
    :goto_6
    return-object v8

    .line 224
    :cond_12
    :goto_7
    return-object v1
.end method
