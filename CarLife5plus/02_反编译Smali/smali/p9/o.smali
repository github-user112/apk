.class public final Lp9/o;
.super Lp9/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final c:Lv9/k0;

.field public final d:Lpa/i0;

.field public final e:Lsa/e;

.field public final f:Lra/f;

.field public final g:Lra/g;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lv9/k0;Lpa/i0;Lsa/e;Lra/f;Lra/g;)V
    .locals 2

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lp9/o;->c:Lv9/k0;

    .line 20
    .line 21
    iput-object p2, p0, Lp9/o;->d:Lpa/i0;

    .line 22
    .line 23
    iput-object p3, p0, Lp9/o;->e:Lsa/e;

    .line 24
    .line 25
    iput-object p4, p0, Lp9/o;->f:Lra/f;

    .line 26
    .line 27
    iput-object p5, p0, Lp9/o;->g:Lra/g;

    .line 28
    .line 29
    iget v0, p3, Lsa/e;->b:I

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    and-int/2addr v0, v1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    iget-object p1, p3, Lsa/e;->e:Lsa/c;

    .line 36
    .line 37
    iget p1, p1, Lsa/c;->c:I

    .line 38
    .line 39
    invoke-interface {p4, p1}, Lra/f;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p3, Lsa/e;->e:Lsa/c;

    .line 44
    .line 45
    iget p2, p2, Lsa/c;->d:I

    .line 46
    .line 47
    invoke-interface {p4, p2}, Lra/f;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_0
    const/4 p3, 0x1

    .line 58
    invoke-static {p2, p4, p5, p3}, Lta/g;->b(Lpa/i0;Lra/f;Lra/g;Z)Lta/d;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    iget-object p3, p2, Lta/d;->f:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p2, p2, Lta/d;->g:Ljava/lang/String;

    .line 67
    .line 68
    new-instance p5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {p3}, Lea/x;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    const-string v0, "getContainingDeclaration(...)"

    .line 85
    .line 86
    invoke-static {p3, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Lv9/w;->d()Lea/o;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sget-object v1, Lv9/o;->d:Lea/o;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const-string v1, "$"

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    instance-of v0, p3, Ljb/i;

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    check-cast p3, Ljb/i;

    .line 108
    .line 109
    iget-object p1, p3, Ljb/i;->e:Lpa/k;

    .line 110
    .line 111
    sget-object p3, Lsa/k;->i:Lva/m;

    .line 112
    .line 113
    const-string v0, "classModuleName"

    .line 114
    .line 115
    invoke-static {p3, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p3}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/Integer;

    .line 123
    .line 124
    if-eqz p1, :cond_1

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-interface {p4, p1}, Lra/f;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    const-string p1, "main"

    .line 136
    .line 137
    :goto_0
    sget-object p3, Lua/f;->a:Lg9/x;

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object p3, p3, Lg9/x;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p3, Ljava/util/regex/Pattern;

    .line 145
    .line 146
    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string p3, "_"

    .line 151
    .line 152
    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string p3, "replaceAll(...)"

    .line 157
    .line 158
    invoke-static {p1, p3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    invoke-interface {p1}, Lv9/w;->d()Lea/o;

    .line 167
    .line 168
    .line 169
    move-result-object p4

    .line 170
    sget-object v0, Lv9/o;->a:Lea/o;

    .line 171
    .line 172
    invoke-static {p4, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p4

    .line 176
    if-eqz p4, :cond_3

    .line 177
    .line 178
    instance-of p3, p3, Lv9/d0;

    .line 179
    .line 180
    if-eqz p3, :cond_3

    .line 181
    .line 182
    check-cast p1, Ljb/s;

    .line 183
    .line 184
    iget-object p1, p1, Ljb/s;->E:Ljb/k;

    .line 185
    .line 186
    instance-of p3, p1, Lna/h;

    .line 187
    .line 188
    if-eqz p3, :cond_3

    .line 189
    .line 190
    check-cast p1, Lna/h;

    .line 191
    .line 192
    iget-object p3, p1, Lna/h;->b:Lcb/b;

    .line 193
    .line 194
    if-eqz p3, :cond_3

    .line 195
    .line 196
    new-instance p3, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p1, Lna/h;->a:Lcb/b;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcb/b;->d()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string p4, "getInternalName(...)"

    .line 208
    .line 209
    invoke-static {p1, p4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/16 p4, 0x2f

    .line 213
    .line 214
    invoke-static {p1, p4, p1}, Lxb/i;->b0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {p1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lua/e;->b()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    goto :goto_1

    .line 234
    :cond_3
    const-string p1, ""

    .line 235
    .line 236
    :goto_1
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string p1, "()"

    .line 240
    .line 241
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    :goto_2
    iput-object p1, p0, Lp9/o;->h:Ljava/lang/String;

    .line 252
    .line 253
    return-void

    .line 254
    :cond_4
    new-instance p2, Lac/y;

    .line 255
    .line 256
    new-instance p3, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string p4, "No field signature for property: "

    .line 259
    .line 260
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    const/4 p3, 0x2

    .line 271
    invoke-direct {p2, p3, p1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p2
.end method


# virtual methods
.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/o;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
