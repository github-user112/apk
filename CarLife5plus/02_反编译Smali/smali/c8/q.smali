.class public final Lc8/q;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:Lf1/b1;

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public constructor <init>(Lf1/b1;Lf1/b1;Lf1/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc8/q;->a:Lf1/b1;

    .line 2
    .line 3
    iput-object p2, p0, Lc8/q;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p3, p0, Lc8/q;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "intent"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_7

    .line 15
    .line 16
    iget-object v3, v0, Lc8/q;->a:Lf1/b1;

    .line 17
    .line 18
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lj8/k0;

    .line 23
    .line 24
    iget-object v3, v3, Lj8/k0;->b:Lj8/o0;

    .line 25
    .line 26
    invoke-interface {v3}, Lj8/o0;->b()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_0
    const-string v2, "KEY_TYPE"

    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v3, v0, Lc8/q;->b:Lf1/b1;

    .line 46
    .line 47
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lj8/k0;

    .line 52
    .line 53
    iget-object v3, v3, Lj8/k0;->b:Lj8/o0;

    .line 54
    .line 55
    invoke-interface {v3}, Lj8/o0;->a()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    if-eq v2, v3, :cond_1

    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    new-instance v4, Lj8/k0;

    .line 66
    .line 67
    sget-object v3, Lc8/t;->c:Lc8/i;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v3, Lc8/t;->e:Lz8/b;

    .line 73
    .line 74
    invoke-virtual {v3}, Ls8/e;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const/4 v11, 0x0

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move-object v6, v5

    .line 90
    check-cast v6, Lc8/t;

    .line 91
    .line 92
    iget v6, v6, Lc8/t;->b:I

    .line 93
    .line 94
    if-ne v6, v2, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    move-object v5, v11

    .line 98
    :goto_0
    check-cast v5, Lc8/t;

    .line 99
    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    iget-object v3, v5, Lc8/t;->a:Ljava/lang/String;

    .line 103
    .line 104
    :goto_1
    move-object v5, v3

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const-string v3, "\u672a\u77e5\u72b6\u6001"

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    new-instance v6, Lj8/n0;

    .line 110
    .line 111
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-direct {v6, v2}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    const/16 v10, 0x1c

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    invoke-direct/range {v4 .. v10}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 124
    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    new-array v3, v2, [Lj8/k0;

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    aput-object v4, v3, v5

    .line 131
    .line 132
    invoke-static {v3}, Lp9/x1;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_6

    .line 147
    .line 148
    check-cast v4, Ljava/lang/Iterable;

    .line 149
    .line 150
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_6

    .line 159
    .line 160
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    move-object v13, v6

    .line 165
    check-cast v13, Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    if-eqz v6, :cond_5

    .line 172
    .line 173
    invoke-virtual {v6, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-eqz v6, :cond_5

    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    if-eqz v6, :cond_5

    .line 184
    .line 185
    const/16 v7, 0xa

    .line 186
    .line 187
    invoke-static {v7, v6}, Lxb/i;->e0(ILjava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    goto :goto_4

    .line 192
    :cond_5
    move-object v6, v11

    .line 193
    :goto_4
    sget-object v7, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 194
    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v9, "\u3010\u9ad8\u5fb7\u5e7f\u64ad\u3011\u63a5\u6536\u5230: "

    .line 198
    .line 199
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v9, "="

    .line 206
    .line 207
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    new-array v9, v2, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object v8, v9, v5

    .line 220
    .line 221
    const-string v8, "CarLife_Vehicle"

    .line 222
    .line 223
    invoke-virtual {v7, v8, v9}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    new-instance v12, Lj8/k0;

    .line 227
    .line 228
    invoke-static {v13}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    new-instance v14, Lj8/n0;

    .line 232
    .line 233
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-direct {v14, v6}, Lj8/n0;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    const/16 v18, 0x1c

    .line 243
    .line 244
    const/4 v15, 0x0

    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    invoke-direct/range {v12 .. v18}, Lj8/k0;-><init>(Ljava/lang/String;Lj8/o0;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lf9/a;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_6
    iget-object v1, v0, Lc8/q;->c:Lf1/b1;

    .line 255
    .line 256
    invoke-interface {v1, v3}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_7
    :goto_5
    return-void
.end method
