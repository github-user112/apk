.class public final Lb8/h;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:Lz7/b2;

.field public f:Ljava/util/Iterator;

.field public g:I

.field public h:I

.field public final synthetic i:Lz7/b2;


# direct methods
.method public constructor <init>(Lz7/b2;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb8/h;->i:Lz7/b2;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Lb8/h;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lb8/h;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lb8/h;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 1

    .line 1
    new-instance p1, Lb8/h;

    .line 2
    .line 3
    iget-object v0, p0, Lb8/h;->i:Lz7/b2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lb8/h;-><init>(Lz7/b2;Lw8/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lb8/h;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lb8/h;->g:I

    .line 10
    .line 11
    iget-object v3, p0, Lb8/h;->f:Ljava/util/Iterator;

    .line 12
    .line 13
    iget-object v4, p0, Lb8/h;->e:Lz7/b2;

    .line 14
    .line 15
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lb8/h;->i:Lz7/b2;

    .line 32
    .line 33
    iget-object v0, p1, Lz7/b2;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v4, p1

    .line 40
    move-object v3, v0

    .line 41
    const/4 p1, 0x0

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    add-int/lit8 v5, p1, 0x1

    .line 53
    .line 54
    if-ltz p1, :cond_4

    .line 55
    .line 56
    check-cast v0, Lz7/a2;

    .line 57
    .line 58
    iget-object p1, v0, Lz7/a2;->d:Lz7/q1;

    .line 59
    .line 60
    instance-of v6, p1, Lz7/f0;

    .line 61
    .line 62
    const-string v7, "/"

    .line 63
    .line 64
    const-string v8, " \u7b2c"

    .line 65
    .line 66
    const-string v9, "\u3010\u4efb\u52a1\u6267\u884c\u3011"

    .line 67
    .line 68
    const-string v10, "CarLife_Vehicle"

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 73
    .line 74
    iget-object v6, v4, Lz7/b2;->b:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v11, v4, Lz7/b2;->d:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    check-cast p1, Lz7/f0;

    .line 83
    .line 84
    iget-wide v12, p1, Lz7/f0;->b:J

    .line 85
    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v6, "\u6b65 \u5ef6\u8fdf"

    .line 107
    .line 108
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v6, "\u79d2"

    .line 115
    .line 116
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-array v6, v2, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object p1, v6, v1

    .line 126
    .line 127
    invoke-virtual {v0, v10, v6}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/16 p1, 0x3e8

    .line 131
    .line 132
    int-to-long v6, p1

    .line 133
    mul-long v12, v12, v6

    .line 134
    .line 135
    iput-object v4, p0, Lb8/h;->e:Lz7/b2;

    .line 136
    .line 137
    iput-object v3, p0, Lb8/h;->f:Ljava/util/Iterator;

    .line 138
    .line 139
    iput v5, p0, Lb8/h;->g:I

    .line 140
    .line 141
    iput v2, p0, Lb8/h;->h:I

    .line 142
    .line 143
    invoke-static {v12, v13, p0}, Lac/z;->g(JLw8/c;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 148
    .line 149
    if-ne p1, v0, :cond_2

    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_2
    move v0, v5

    .line 153
    :goto_1
    move p1, v0

    .line 154
    goto :goto_0

    .line 155
    :cond_3
    sget-object v6, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 156
    .line 157
    iget-object v11, v4, Lz7/b2;->b:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v12, v4, Lz7/b2;->d:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    iget-object v0, v0, Lz7/a2;->c:Ljava/lang/String;

    .line 166
    .line 167
    new-instance v13, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v7, "\u6b65 "

    .line 188
    .line 189
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-array v7, v2, [Ljava/lang/Object;

    .line 200
    .line 201
    aput-object v0, v7, v1

    .line 202
    .line 203
    invoke-virtual {v6, v10, v7}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-static {p1}, Lb8/o;->a(Lz7/q1;)V

    .line 207
    .line 208
    .line 209
    move p1, v5

    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_4
    invoke-static {}, Lp9/x1;->L()V

    .line 213
    .line 214
    .line 215
    const/4 p1, 0x0

    .line 216
    throw p1

    .line 217
    :cond_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 218
    .line 219
    return-object p1
.end method
