.class public final Lo1/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo1/b;


# static fields
.field public static final e:Lu0/j;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ls/h0;

.field public c:Lo1/f;

.field public final d:La8/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lf0/q;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lf0/q;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lm7/j;

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lm7/j;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lu0/j;

    .line 16
    .line 17
    const/16 v3, 0x13

    .line 18
    .line 19
    invoke-direct {v2, v3, v0, v1}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sput-object v2, Lo1/d;->e:Lu0/j;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo1/d;->a:Ljava/util/Map;

    .line 5
    .line 6
    sget-object p1, Ls/o0;->a:[J

    .line 7
    .line 8
    new-instance p1, Ls/h0;

    .line 9
    .line 10
    invoke-direct {p1}, Ls/h0;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lo1/d;->b:Ls/h0;

    .line 14
    .line 15
    new-instance p1, La8/q;

    .line 16
    .line 17
    const/16 v0, 0x18

    .line 18
    .line 19
    invoke-direct {p1, v0, p0}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lo1/d;->d:La8/q;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ln1/c;Lf1/s;I)V
    .locals 9

    .line 1
    const v0, 0x1fcd8740

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p4, 0x6

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p4

    .line 24
    :goto_1
    and-int/lit8 v2, p4, 0x30

    .line 25
    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v2

    .line 40
    :cond_3
    and-int/lit16 v2, p4, 0x180

    .line 41
    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {p3, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const/16 v2, 0x100

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 v2, 0x80

    .line 54
    .line 55
    :goto_3
    or-int/2addr v0, v2

    .line 56
    :cond_5
    and-int/lit16 v2, v0, 0x93

    .line 57
    .line 58
    const/16 v3, 0x92

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x1

    .line 62
    if-eq v2, v3, :cond_6

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    goto :goto_4

    .line 66
    :cond_6
    const/4 v2, 0x0

    .line 67
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 68
    .line 69
    invoke-virtual {p3, v3, v2}, Lf1/s;->N(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_c

    .line 74
    .line 75
    invoke-virtual {p3, p1}, Lf1/s;->Z(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 83
    .line 84
    if-ne v2, v3, :cond_8

    .line 85
    .line 86
    iget-object v2, p0, Lo1/d;->d:La8/q;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, La8/q;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_7

    .line 99
    .line 100
    new-instance v6, Lo1/i;

    .line 101
    .line 102
    iget-object v7, p0, Lo1/d;->a:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Ljava/util/Map;

    .line 109
    .line 110
    sget-object v8, Lo1/h;->a:Lf1/w2;

    .line 111
    .line 112
    new-instance v8, Lo1/g;

    .line 113
    .line 114
    invoke-direct {v8, v7, v2}, Lo1/g;-><init>(Ljava/util/Map;Lf9/k;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v6, v8}, Lo1/i;-><init>(Lo1/g;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v6}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    move-object v2, v6

    .line 124
    goto :goto_5

    .line 125
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string p3, "Type of the key "

    .line 128
    .line 129
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, " is not supported. On Android you can only use types which can be stored inside the Bundle."

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p2

    .line 154
    :cond_8
    :goto_5
    check-cast v2, Lo1/i;

    .line 155
    .line 156
    sget-object v6, Lo1/h;->a:Lf1/w2;

    .line 157
    .line 158
    invoke-virtual {v6, v2}, Lf1/w2;->a(Ljava/lang/Object;)Lf1/u1;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    sget-object v7, Lb5/a;->a:Lf1/t1;

    .line 163
    .line 164
    invoke-virtual {v7, v2}, Lf1/t1;->a(Ljava/lang/Object;)Lf1/u1;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    new-array v1, v1, [Lf1/u1;

    .line 169
    .line 170
    aput-object v6, v1, v4

    .line 171
    .line 172
    aput-object v7, v1, v5

    .line 173
    .line 174
    and-int/lit8 v0, v0, 0x70

    .line 175
    .line 176
    const/16 v5, 0x8

    .line 177
    .line 178
    or-int/2addr v0, v5

    .line 179
    invoke-static {v1, p2, p3, v0}, Lf1/b;->b([Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p0}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {p3, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    or-int/2addr v0, v1

    .line 191
    invoke-virtual {p3, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    or-int/2addr v0, v1

    .line 196
    invoke-virtual {p3}, Lf1/s;->K()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-nez v0, :cond_9

    .line 201
    .line 202
    if-ne v1, v3, :cond_a

    .line 203
    .line 204
    :cond_9
    new-instance v1, Ll0/u;

    .line 205
    .line 206
    const/16 v0, 0x9

    .line 207
    .line 208
    invoke-direct {v1, p0, p1, v2, v0}, Ll0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_a
    check-cast v1, Lf9/k;

    .line 215
    .line 216
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 217
    .line 218
    invoke-static {v0, v1, p3}, Lf1/b;->c(Ljava/lang/Object;Lf9/k;Lf1/s;)V

    .line 219
    .line 220
    .line 221
    iget-boolean v0, p3, Lf1/s;->y:Z

    .line 222
    .line 223
    if-eqz v0, :cond_b

    .line 224
    .line 225
    iget-object v0, p3, Lf1/s;->G:Lf1/g2;

    .line 226
    .line 227
    iget v0, v0, Lf1/g2;->i:I

    .line 228
    .line 229
    iget v1, p3, Lf1/s;->z:I

    .line 230
    .line 231
    if-ne v0, v1, :cond_b

    .line 232
    .line 233
    const/4 v0, -0x1

    .line 234
    iput v0, p3, Lf1/s;->z:I

    .line 235
    .line 236
    iput-boolean v4, p3, Lf1/s;->y:Z

    .line 237
    .line 238
    :cond_b
    invoke-virtual {p3, v4}, Lf1/s;->p(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_c
    invoke-virtual {p3}, Lf1/s;->Q()V

    .line 243
    .line 244
    .line 245
    :goto_6
    invoke-virtual {p3}, Lf1/s;->r()Lf1/w1;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    if-eqz p3, :cond_d

    .line 250
    .line 251
    new-instance v0, Lh0/u;

    .line 252
    .line 253
    const/4 v5, 0x5

    .line 254
    move-object v1, p0

    .line 255
    move-object v2, p1

    .line 256
    move-object v3, p2

    .line 257
    move v4, p4

    .line 258
    invoke-direct/range {v0 .. v5}, Lh0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 259
    .line 260
    .line 261
    iput-object v0, p3, Lf1/w1;->d:Lf9/n;

    .line 262
    .line 263
    :cond_d
    return-void
.end method
