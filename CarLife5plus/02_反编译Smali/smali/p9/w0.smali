.class public final Lp9/w0;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lp9/y0;


# direct methods
.method public synthetic constructor <init>(Lp9/y0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp9/w0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp9/w0;->b:Lp9/y0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lp9/w0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp9/w0;->b:Lp9/y0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lp9/y0;->a()Lv9/i0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v2, v0, Lp9/y0;->b:I

    .line 13
    .line 14
    iget-object v0, v0, Lp9/y0;->a:Lp9/t;

    .line 15
    .line 16
    instance-of v3, v1, Ly9/v;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lp9/t;->k()Lv9/c;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Lp9/c2;->g(Lv9/c;)Ly9/v;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lp9/t;->k()Lv9/c;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Lv9/c;->f()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x2

    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lp9/t;->k()Lv9/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Lv9/k;->k()Lv9/k;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Lv9/e;

    .line 59
    .line 60
    invoke-static {v0}, Lp9/c2;->k(Lv9/e;)Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_0
    new-instance v0, Lac/y;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "Cannot determine receiver Java type of inherited declaration: "

    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x2

    .line 85
    invoke-direct {v0, v2, v1}, Lac/y;-><init>(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lp9/t;->f()Lq9/g;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    instance-of v3, v1, Lq9/c0;

    .line 94
    .line 95
    const-string v4, "Expected at least 1 type for compound type"

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x1

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    invoke-virtual {v0}, Lp9/t;->n()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    check-cast v1, Lq9/c0;

    .line 108
    .line 109
    add-int/2addr v2, v6

    .line 110
    invoke-virtual {v1, v2}, Lq9/c0;->a(I)Ll9/d;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v5}, Lq9/c0;->a(I)Ll9/d;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget v2, v2, Ll9/b;->b:I

    .line 119
    .line 120
    add-int/2addr v2, v6

    .line 121
    iget-object v1, v1, Lq9/c0;->b:Lq9/g;

    .line 122
    .line 123
    invoke-interface {v1}, Lq9/g;->q()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v3, Ll9/d;

    .line 128
    .line 129
    iget v7, v0, Ll9/b;->a:I

    .line 130
    .line 131
    sub-int/2addr v7, v2

    .line 132
    iget v0, v0, Ll9/b;->b:I

    .line 133
    .line 134
    sub-int/2addr v0, v2

    .line 135
    invoke-direct {v3, v7, v0, v6}, Ll9/b;-><init>(III)V

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v3}, Ls8/p;->v0(Ljava/util/List;Ll9/d;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    check-cast v1, Lq9/c0;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lq9/c0;->a(I)Ll9/d;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v1, v1, Lq9/c0;->b:Lq9/g;

    .line 150
    .line 151
    invoke-interface {v1}, Lq9/g;->q()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1, v0}, Ls8/p;->v0(Ljava/util/List;Ll9/d;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_0
    new-array v1, v5, [Ljava/lang/reflect/Type;

    .line 160
    .line 161
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, [Ljava/lang/reflect/Type;

    .line 166
    .line 167
    array-length v1, v0

    .line 168
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, [Ljava/lang/reflect/Type;

    .line 173
    .line 174
    array-length v1, v0

    .line 175
    if-eqz v1, :cond_4

    .line 176
    .line 177
    if-eq v1, v6, :cond_3

    .line 178
    .line 179
    new-instance v1, Lp9/x0;

    .line 180
    .line 181
    invoke-direct {v1, v0}, Lp9/x0;-><init>([Ljava/lang/reflect/Type;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    move-object v0, v1

    .line 185
    goto :goto_2

    .line 186
    :cond_3
    invoke-static {v0}, Ls8/l;->f0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljava/lang/reflect/Type;

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    new-instance v0, Lac/y;

    .line 194
    .line 195
    invoke-direct {v0, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_5
    instance-of v0, v1, Lq9/b0;

    .line 200
    .line 201
    if-eqz v0, :cond_8

    .line 202
    .line 203
    check-cast v1, Lq9/b0;

    .line 204
    .line 205
    iget-object v0, v1, Lq9/b0;->d:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Ljava/util/Collection;

    .line 212
    .line 213
    new-array v1, v5, [Ljava/lang/Class;

    .line 214
    .line 215
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, [Ljava/lang/Class;

    .line 220
    .line 221
    array-length v1, v0

    .line 222
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, [Ljava/lang/reflect/Type;

    .line 227
    .line 228
    array-length v1, v0

    .line 229
    if-eqz v1, :cond_7

    .line 230
    .line 231
    if-eq v1, v6, :cond_6

    .line 232
    .line 233
    new-instance v1, Lp9/x0;

    .line 234
    .line 235
    invoke-direct {v1, v0}, Lp9/x0;-><init>([Ljava/lang/reflect/Type;)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_6
    invoke-static {v0}, Ls8/l;->f0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/reflect/Type;

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_7
    new-instance v0, Lac/y;

    .line 247
    .line 248
    invoke-direct {v0, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_8
    invoke-interface {v1}, Lq9/g;->q()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Ljava/lang/reflect/Type;

    .line 261
    .line 262
    :goto_2
    return-object v0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lp9/w0;->b:Lp9/y0;

    .line 264
    .line 265
    invoke-virtual {v0}, Lp9/y0;->a()Lv9/i0;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-static {v0}, Lp9/c2;->d(Lw9/a;)Ljava/util/ArrayList;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
