.class public final synthetic Lu0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu0/e;


# direct methods
.method public synthetic constructor <init>(Lu0/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu0/d;->a:I

    iput-object p1, p0, Lu0/d;->b:Lu0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu0/e;Ly2/j;)V
    .locals 0

    .line 2
    const/4 p2, 0x3

    iput p2, p0, Lu0/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/d;->b:Lu0/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lu0/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lu0/d;->b:Lu0/e;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lb3/g;

    .line 11
    .line 12
    iget-boolean v0, v3, Lu0/e;->t:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, v3, Lu0/e;->s:Ll0/s0;

    .line 20
    .line 21
    iget-object v0, v0, Ll0/s0;->e:Lg3/c0;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v4, Lg3/i;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v5, Lg3/a;

    .line 31
    .line 32
    invoke-direct {v5, p1, v1}, Lg3/a;-><init>(Lb3/g;I)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    new-array p1, p1, [Lg3/g;

    .line 37
    .line 38
    aput-object v4, p1, v2

    .line 39
    .line 40
    aput-object v5, p1, v1

    .line 41
    .line 42
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v2, v3, Lu0/e;->s:Ll0/s0;

    .line 47
    .line 48
    iget-object v3, v2, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 49
    .line 50
    iget-object v2, v2, Ll0/s0;->v:Ll0/s;

    .line 51
    .line 52
    invoke-virtual {v3, p1}, Landroid/support/v4/media/session/t;->J0(Ljava/util/List;)Lg3/w;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v0, v3, p1}, Lg3/c0;->a(Lg3/w;Lg3/w;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ll0/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, v3, Lu0/e;->r:Lg3/w;

    .line 65
    .line 66
    iget-object v4, v0, Lg3/w;->a:Lb3/g;

    .line 67
    .line 68
    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 69
    .line 70
    iget-wide v5, v0, Lg3/w;->b:J

    .line 71
    .line 72
    sget v0, Lb3/n0;->c:I

    .line 73
    .line 74
    const/16 v0, 0x20

    .line 75
    .line 76
    shr-long v7, v5, v0

    .line 77
    .line 78
    long-to-int v8, v7

    .line 79
    const-wide v9, 0xffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    and-long/2addr v5, v9

    .line 85
    long-to-int v6, v5

    .line 86
    const-string v5, "<this>"

    .line 87
    .line 88
    invoke-static {v4, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v5, "replacement"

    .line 92
    .line 93
    invoke-static {p1, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    if-lt v6, v8, :cond_2

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v4, v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v5, v4, v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v4, v3, Lu0/e;->r:Lg3/w;

    .line 121
    .line 122
    iget-wide v4, v4, Lg3/w;->b:J

    .line 123
    .line 124
    shr-long/2addr v4, v0

    .line 125
    long-to-int v0, v4

    .line 126
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    add-int/2addr p1, v0

    .line 133
    invoke-static {p1, p1}, Lb3/d0;->b(II)J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    iget-object p1, v3, Lu0/e;->s:Ll0/s0;

    .line 138
    .line 139
    iget-object p1, p1, Ll0/s0;->v:Ll0/s;

    .line 140
    .line 141
    new-instance v0, Lg3/w;

    .line 142
    .line 143
    const/4 v3, 0x4

    .line 144
    invoke-direct {v0, v2, v4, v5, v3}, Lg3/w;-><init>(Ljava/lang/String;JI)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ll0/s;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v1, "End index ("

    .line 160
    .line 161
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ") is less than start index ("

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ")."

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :pswitch_0
    check-cast p1, Lb3/g;

    .line 189
    .line 190
    iget-object v0, v3, Lu0/e;->s:Ll0/s0;

    .line 191
    .line 192
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 193
    .line 194
    iget-boolean v1, v3, Lu0/e;->t:Z

    .line 195
    .line 196
    invoke-static {v0, p1, v1}, Lu0/e;->D0(Ll0/s0;Ljava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 200
    .line 201
    return-object p1

    .line 202
    :pswitch_1
    check-cast p1, Ljava/util/List;

    .line 203
    .line 204
    iget-object v0, v3, Lu0/e;->s:Ll0/s0;

    .line 205
    .line 206
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    .line 212
    iget-object v0, v3, Lu0/e;->s:Ll0/s0;

    .line 213
    .line 214
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, v0, Ll0/q1;->a:Lb3/l0;

    .line 222
    .line 223
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_3
    const/4 v1, 0x0

    .line 228
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    return-object p1

    .line 233
    :pswitch_2
    check-cast p1, Lb3/g;

    .line 234
    .line 235
    iget-object v0, v3, Lu0/e;->s:Ll0/s0;

    .line 236
    .line 237
    iget-object v0, v0, Ll0/s0;->t:Lf1/k1;

    .line 238
    .line 239
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v3, Lu0/e;->s:Ll0/s0;

    .line 245
    .line 246
    iget-object v0, v0, Ll0/s0;->s:Lf1/k1;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v3, Lu0/e;->s:Ll0/s0;

    .line 252
    .line 253
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 254
    .line 255
    iget-boolean v2, v3, Lu0/e;->t:Z

    .line 256
    .line 257
    invoke-static {v0, p1, v2}, Lu0/e;->D0(Ll0/s0;Ljava/lang/String;Z)V

    .line 258
    .line 259
    .line 260
    return-object v1

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
