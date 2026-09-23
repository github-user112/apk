.class public final synthetic Lc8/f1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Lc8/f1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/f1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/f1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lc8/f1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lc8/f1;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lc8/f1;->f:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Lc8/f1;->g:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lc8/f1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc8/f1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo1/a;

    .line 9
    .line 10
    iget-object v1, p0, Lc8/f1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lo1/j;

    .line 13
    .line 14
    iget-object v2, p0, Lc8/f1;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lo1/f;

    .line 17
    .line 18
    iget-object v3, p0, Lc8/f1;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lc8/f1;->g:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v5, v0, Lo1/a;->b:Lo1/f;

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    if-eq v5, v2, :cond_0

    .line 30
    .line 31
    iput-object v2, v0, Lo1/a;->b:Lo1/f;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    iget-object v5, v0, Lo1/a;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v5, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    iput-object v3, v0, Lo1/a;->c:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v6, v2

    .line 48
    :goto_1
    iput-object v1, v0, Lo1/a;->a:Lo1/j;

    .line 49
    .line 50
    iget-object v1, p0, Lc8/f1;->f:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object v1, v0, Lo1/a;->d:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object v4, v0, Lo1/a;->e:[Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v1, v0, Lo1/a;->f:Lo1/e;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    check-cast v1, La2/b;

    .line 63
    .line 64
    invoke-virtual {v1}, La2/b;->f0()V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    iput-object v1, v0, Lo1/a;->f:Lo1/e;

    .line 69
    .line 70
    invoke-virtual {v0}, Lo1/a;->a()V

    .line 71
    .line 72
    .line 73
    :cond_2
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 74
    .line 75
    return-object v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lc8/f1;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lf9/k;

    .line 79
    .line 80
    iget-object v1, p0, Lc8/f1;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Lc8/h1;

    .line 83
    .line 84
    iget-object v2, p0, Lc8/f1;->d:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Lf1/b1;

    .line 87
    .line 88
    iget-object v3, p0, Lc8/f1;->e:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Lf1/b1;

    .line 91
    .line 92
    iget-object v4, p0, Lc8/f1;->f:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v4, Lf1/b1;

    .line 95
    .line 96
    iget-object v5, p0, Lc8/f1;->g:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v5, Lf1/b1;

    .line 99
    .line 100
    new-instance v6, Lz7/a2;

    .line 101
    .line 102
    iget-object v7, v1, Lc8/h1;->a:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v1, v1, Lc8/h1;->b:Ljava/lang/String;

    .line 105
    .line 106
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_3

    .line 117
    .line 118
    const-string v8, "\u65e5\u51fa\u81f3\u65e5\u843d"

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    const-string v8, "\u65e5\u843d\u81f3\u65e5\u51fa"

    .line 122
    .line 123
    :goto_2
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Ljava/lang/String;

    .line 134
    .line 135
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v3}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v3}, Ls8/p;->D0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    const/4 v13, 0x0

    .line 152
    const/16 v14, 0x3e

    .line 153
    .line 154
    const-string v10, ""

    .line 155
    .line 156
    const/4 v11, 0x0

    .line 157
    const/4 v12, 0x0

    .line 158
    invoke-static/range {v9 .. v14}, Ls8/p;->i0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v8, " "

    .line 171
    .line 172
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    new-instance v8, Lz7/d1;

    .line 183
    .line 184
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lr8/j;

    .line 199
    .line 200
    iget-object v2, v2, Lr8/j;->a:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v2, Ljava/lang/Number;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 205
    .line 206
    .line 207
    move-result-wide v10

    .line 208
    invoke-interface {v5}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lr8/j;

    .line 213
    .line 214
    iget-object v2, v2, Lr8/j;->b:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v2, Ljava/lang/Number;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 219
    .line 220
    .line 221
    move-result-wide v12

    .line 222
    invoke-direct/range {v8 .. v13}, Lz7/d1;-><init>(ZDD)V

    .line 223
    .line 224
    .line 225
    invoke-direct {v6, v7, v1, v3, v8}, Lz7/a2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz7/q1;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, v6}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 232
    .line 233
    return-object v0

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
