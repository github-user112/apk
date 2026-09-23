.class public final Lsa/d;
.super Lva/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lva/u;


# instance fields
.field public b:I

.field public c:Lsa/b;

.field public d:Lsa/c;

.field public e:Lsa/c;

.field public f:Lsa/c;

.field public g:Lsa/c;


# direct methods
.method public static e()Lsa/d;
    .locals 2

    .line 1
    new-instance v0, Lsa/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lva/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lsa/b;->g:Lsa/b;

    .line 7
    .line 8
    iput-object v1, v0, Lsa/d;->c:Lsa/b;

    .line 9
    .line 10
    sget-object v1, Lsa/c;->g:Lsa/c;

    .line 11
    .line 12
    iput-object v1, v0, Lsa/d;->d:Lsa/c;

    .line 13
    .line 14
    iput-object v1, v0, Lsa/d;->e:Lsa/c;

    .line 15
    .line 16
    iput-object v1, v0, Lsa/d;->f:Lsa/c;

    .line 17
    .line 18
    iput-object v1, v0, Lsa/d;->g:Lsa/c;

    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final a()Lva/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsa/d;->d()Lsa/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lsa/e;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final b(Lva/e;Lva/g;)Lva/i;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lsa/e;->k:Lpa/a;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v1, Lsa/e;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2}, Lsa/e;-><init>(Lva/e;Lva/g;)V
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lsa/d;->f(Lsa/e;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    iget-object p2, p1, Lva/q;->a:Lva/a;

    .line 20
    .line 21
    check-cast p2, Lsa/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    move-object v0, p2

    .line 26
    :goto_0
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lsa/d;->f(Lsa/e;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    throw p1
.end method

.method public final bridge synthetic c(Lva/n;)Lva/i;
    .locals 0

    .line 1
    check-cast p1, Lsa/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lsa/d;->f(Lsa/e;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lsa/d;->e()Lsa/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lsa/d;->d()Lsa/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lsa/d;->f(Lsa/e;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final d()Lsa/e;
    .locals 5

    .line 1
    new-instance v0, Lsa/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lsa/e;-><init>(Lsa/d;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lsa/d;->b:I

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lsa/d;->c:Lsa/b;

    .line 16
    .line 17
    iput-object v2, v0, Lsa/e;->c:Lsa/b;

    .line 18
    .line 19
    and-int/lit8 v2, v1, 0x2

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-ne v2, v4, :cond_1

    .line 23
    .line 24
    or-int/lit8 v3, v3, 0x2

    .line 25
    .line 26
    :cond_1
    iget-object v2, p0, Lsa/d;->d:Lsa/c;

    .line 27
    .line 28
    iput-object v2, v0, Lsa/e;->d:Lsa/c;

    .line 29
    .line 30
    and-int/lit8 v2, v1, 0x4

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-ne v2, v4, :cond_2

    .line 34
    .line 35
    or-int/lit8 v3, v3, 0x4

    .line 36
    .line 37
    :cond_2
    iget-object v2, p0, Lsa/d;->e:Lsa/c;

    .line 38
    .line 39
    iput-object v2, v0, Lsa/e;->e:Lsa/c;

    .line 40
    .line 41
    and-int/lit8 v2, v1, 0x8

    .line 42
    .line 43
    const/16 v4, 0x8

    .line 44
    .line 45
    if-ne v2, v4, :cond_3

    .line 46
    .line 47
    or-int/lit8 v3, v3, 0x8

    .line 48
    .line 49
    :cond_3
    iget-object v2, p0, Lsa/d;->f:Lsa/c;

    .line 50
    .line 51
    iput-object v2, v0, Lsa/e;->f:Lsa/c;

    .line 52
    .line 53
    const/16 v2, 0x10

    .line 54
    .line 55
    and-int/2addr v1, v2

    .line 56
    if-ne v1, v2, :cond_4

    .line 57
    .line 58
    or-int/lit8 v3, v3, 0x10

    .line 59
    .line 60
    :cond_4
    iget-object v1, p0, Lsa/d;->g:Lsa/c;

    .line 61
    .line 62
    iput-object v1, v0, Lsa/e;->g:Lsa/c;

    .line 63
    .line 64
    iput v3, v0, Lsa/e;->b:I

    .line 65
    .line 66
    return-object v0
.end method

.method public final f(Lsa/e;)V
    .locals 5

    .line 1
    sget-object v0, Lsa/e;->j:Lsa/e;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Lsa/e;->b:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p1, Lsa/e;->c:Lsa/b;

    .line 13
    .line 14
    iget v2, p0, Lsa/d;->b:I

    .line 15
    .line 16
    and-int/2addr v2, v1

    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lsa/d;->c:Lsa/b;

    .line 20
    .line 21
    sget-object v3, Lsa/b;->g:Lsa/b;

    .line 22
    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    new-instance v3, Lsa/a;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct {v3, v4}, Lsa/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v2}, Lsa/a;->f(Lsa/b;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Lsa/a;->f(Lsa/b;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lsa/a;->d()Lsa/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lsa/d;->c:Lsa/b;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput-object v0, p0, Lsa/d;->c:Lsa/b;

    .line 45
    .line 46
    :goto_0
    iget v0, p0, Lsa/d;->b:I

    .line 47
    .line 48
    or-int/2addr v0, v1

    .line 49
    iput v0, p0, Lsa/d;->b:I

    .line 50
    .line 51
    :cond_2
    iget v0, p1, Lsa/e;->b:I

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    and-int/2addr v0, v1

    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    iget-object v0, p1, Lsa/e;->d:Lsa/c;

    .line 58
    .line 59
    iget v2, p0, Lsa/d;->b:I

    .line 60
    .line 61
    and-int/2addr v2, v1

    .line 62
    if-ne v2, v1, :cond_3

    .line 63
    .line 64
    iget-object v2, p0, Lsa/d;->d:Lsa/c;

    .line 65
    .line 66
    sget-object v3, Lsa/c;->g:Lsa/c;

    .line 67
    .line 68
    if-eq v2, v3, :cond_3

    .line 69
    .line 70
    invoke-static {v2}, Lsa/c;->g(Lsa/c;)Lsa/a;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Lsa/a;->g(Lsa/c;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lsa/a;->e()Lsa/c;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lsa/d;->d:Lsa/c;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iput-object v0, p0, Lsa/d;->d:Lsa/c;

    .line 85
    .line 86
    :goto_1
    iget v0, p0, Lsa/d;->b:I

    .line 87
    .line 88
    or-int/2addr v0, v1

    .line 89
    iput v0, p0, Lsa/d;->b:I

    .line 90
    .line 91
    :cond_4
    iget v0, p1, Lsa/e;->b:I

    .line 92
    .line 93
    const/4 v1, 0x4

    .line 94
    and-int/2addr v0, v1

    .line 95
    if-ne v0, v1, :cond_6

    .line 96
    .line 97
    iget-object v0, p1, Lsa/e;->e:Lsa/c;

    .line 98
    .line 99
    iget v2, p0, Lsa/d;->b:I

    .line 100
    .line 101
    and-int/2addr v2, v1

    .line 102
    if-ne v2, v1, :cond_5

    .line 103
    .line 104
    iget-object v2, p0, Lsa/d;->e:Lsa/c;

    .line 105
    .line 106
    sget-object v3, Lsa/c;->g:Lsa/c;

    .line 107
    .line 108
    if-eq v2, v3, :cond_5

    .line 109
    .line 110
    invoke-static {v2}, Lsa/c;->g(Lsa/c;)Lsa/a;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2, v0}, Lsa/a;->g(Lsa/c;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Lsa/a;->e()Lsa/c;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lsa/d;->e:Lsa/c;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iput-object v0, p0, Lsa/d;->e:Lsa/c;

    .line 125
    .line 126
    :goto_2
    iget v0, p0, Lsa/d;->b:I

    .line 127
    .line 128
    or-int/2addr v0, v1

    .line 129
    iput v0, p0, Lsa/d;->b:I

    .line 130
    .line 131
    :cond_6
    iget v0, p1, Lsa/e;->b:I

    .line 132
    .line 133
    const/16 v1, 0x8

    .line 134
    .line 135
    and-int/2addr v0, v1

    .line 136
    if-ne v0, v1, :cond_8

    .line 137
    .line 138
    iget-object v0, p1, Lsa/e;->f:Lsa/c;

    .line 139
    .line 140
    iget v2, p0, Lsa/d;->b:I

    .line 141
    .line 142
    and-int/2addr v2, v1

    .line 143
    if-ne v2, v1, :cond_7

    .line 144
    .line 145
    iget-object v2, p0, Lsa/d;->f:Lsa/c;

    .line 146
    .line 147
    sget-object v3, Lsa/c;->g:Lsa/c;

    .line 148
    .line 149
    if-eq v2, v3, :cond_7

    .line 150
    .line 151
    invoke-static {v2}, Lsa/c;->g(Lsa/c;)Lsa/a;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2, v0}, Lsa/a;->g(Lsa/c;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Lsa/a;->e()Lsa/c;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, p0, Lsa/d;->f:Lsa/c;

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    iput-object v0, p0, Lsa/d;->f:Lsa/c;

    .line 166
    .line 167
    :goto_3
    iget v0, p0, Lsa/d;->b:I

    .line 168
    .line 169
    or-int/2addr v0, v1

    .line 170
    iput v0, p0, Lsa/d;->b:I

    .line 171
    .line 172
    :cond_8
    iget v0, p1, Lsa/e;->b:I

    .line 173
    .line 174
    const/16 v1, 0x10

    .line 175
    .line 176
    and-int/2addr v0, v1

    .line 177
    if-ne v0, v1, :cond_a

    .line 178
    .line 179
    iget-object v0, p1, Lsa/e;->g:Lsa/c;

    .line 180
    .line 181
    iget v2, p0, Lsa/d;->b:I

    .line 182
    .line 183
    and-int/2addr v2, v1

    .line 184
    if-ne v2, v1, :cond_9

    .line 185
    .line 186
    iget-object v2, p0, Lsa/d;->g:Lsa/c;

    .line 187
    .line 188
    sget-object v3, Lsa/c;->g:Lsa/c;

    .line 189
    .line 190
    if-eq v2, v3, :cond_9

    .line 191
    .line 192
    invoke-static {v2}, Lsa/c;->g(Lsa/c;)Lsa/a;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2, v0}, Lsa/a;->g(Lsa/c;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Lsa/a;->e()Lsa/c;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iput-object v0, p0, Lsa/d;->g:Lsa/c;

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_9
    iput-object v0, p0, Lsa/d;->g:Lsa/c;

    .line 207
    .line 208
    :goto_4
    iget v0, p0, Lsa/d;->b:I

    .line 209
    .line 210
    or-int/2addr v0, v1

    .line 211
    iput v0, p0, Lsa/d;->b:I

    .line 212
    .line 213
    :cond_a
    iget-object v0, p0, Lva/i;->a:Lva/d;

    .line 214
    .line 215
    iget-object p1, p1, Lsa/e;->a:Lva/d;

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Lva/d;->d(Lva/d;)Lva/d;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iput-object p1, p0, Lva/i;->a:Lva/d;

    .line 222
    .line 223
    return-void
.end method
