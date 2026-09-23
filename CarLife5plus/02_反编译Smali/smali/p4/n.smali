.class public abstract Lp4/n;
.super Lc/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lu3/b;
.implements Lu3/c;


# instance fields
.field public final s:Lkb/a;

.field public final t:Landroidx/lifecycle/v;

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lc/o;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp4/m;

    .line 5
    .line 6
    move-object v1, p0

    .line 7
    check-cast v1, Lj/j;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lp4/m;-><init>(Lj/j;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lkb/a;

    .line 13
    .line 14
    const/16 v3, 0xf

    .line 15
    .line 16
    invoke-direct {v2, v3, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lp4/n;->s:Lkb/a;

    .line 20
    .line 21
    new-instance v0, Landroidx/lifecycle/v;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v0, p0, v2}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;Z)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 28
    .line 29
    iput-boolean v2, p0, Lp4/n;->w:Z

    .line 30
    .line 31
    iget-object v0, p0, Lc/o;->d:La5/f;

    .line 32
    .line 33
    iget-object v0, v0, La5/f;->b:Landroid/support/v4/media/session/t;

    .line 34
    .line 35
    new-instance v2, Lc/f;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v2, v3, v1}, Lc/f;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "android:support:lifecycle"

    .line 42
    .line 43
    invoke-virtual {v0, v3, v2}, Landroid/support/v4/media/session/t;->h1(Ljava/lang/String;La5/d;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lp4/l;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v0, v1, v2}, Lp4/l;-><init>(Lj/j;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lc/o;->f(Ld4/a;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lp4/l;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-direct {v0, v1, v2}, Lp4/l;-><init>(Lj/j;I)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lc/o;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v0, Lc/g;

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-direct {v0, v1, v2}, Lc/g;-><init>(Lp4/n;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lc/o;->h(Le/b;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static k(Lp4/x;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lp4/x;->c:Lba/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lba/a;->y()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lp4/k;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, v1, Lp4/k;->s:Lp4/m;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v2, v2, Lp4/m;->f:Lj/j;

    .line 34
    .line 35
    :goto_1
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Lp4/k;->h()Lp4/x;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lp4/n;->k(Lp4/x;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    or-int/2addr v0, v2

    .line 46
    :cond_3
    iget-object v2, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 47
    .line 48
    iget-object v2, v2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/o;

    .line 49
    .line 50
    sget-object v3, Landroidx/lifecycle/o;->d:Landroidx/lifecycle/o;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ltz v2, :cond_0

    .line 57
    .line 58
    iget-object v0, v1, Lp4/k;->M:Landroidx/lifecycle/v;

    .line 59
    .line 60
    const-string v1, "setCurrentState"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->c(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Landroidx/lifecycle/o;->c:Landroidx/lifecycle/o;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/o;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    return v0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p4, :cond_5

    .line 6
    .line 7
    array-length v1, p4

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    aget-object v1, p4, v0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sparse-switch v2, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :sswitch_0
    const-string v2, "--autofill"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x1a

    .line 33
    .line 34
    if-lt v1, v2, :cond_5

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    const-string v2, "--contentcapture"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v2, 0x1d

    .line 49
    .line 50
    if-lt v1, v2, :cond_5

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :sswitch_2
    const-string v2, "--list-dumpables"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :sswitch_3
    const-string v2, "--dump-dumpable"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v2, 0x21

    .line 74
    .line 75
    if-lt v1, v2, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :sswitch_4
    const-string v2, "--translation"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v2, 0x1f

    .line 90
    .line 91
    if-lt v1, v2, :cond_5

    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    :cond_5
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "Local FragmentActivity "

    .line 98
    .line 99
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v1, " State:"

    .line 114
    .line 115
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, "  "

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v2, "mCreated="

    .line 139
    .line 140
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-boolean v2, p0, Lp4/n;->u:Z

    .line 144
    .line 145
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 146
    .line 147
    .line 148
    const-string v2, " mResumed="

    .line 149
    .line 150
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v2, p0, Lp4/n;->v:Z

    .line 154
    .line 155
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 156
    .line 157
    .line 158
    const-string v2, " mStopped="

    .line 159
    .line 160
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-boolean v2, p0, Lp4/n;->w:Z

    .line 164
    .line 165
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    invoke-interface {p0}, Landroidx/lifecycle/s0;->b()Landroidx/lifecycle/r0;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v3, "store"

    .line 179
    .line 180
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sget-object v3, Lu4/a;->b:Lu4/a;

    .line 184
    .line 185
    const-string v4, "defaultCreationExtras"

    .line 186
    .line 187
    invoke-static {v3, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v4, Lba/a;

    .line 191
    .line 192
    sget-object v5, Lw4/a;->c:Ln6/a;

    .line 193
    .line 194
    invoke-direct {v4, v2, v5, v3}, Lba/a;-><init>(Landroidx/lifecycle/r0;Landroidx/lifecycle/q0;Lu4/b;)V

    .line 195
    .line 196
    .line 197
    const-class v2, Lw4/a;

    .line 198
    .line 199
    invoke-static {v2}, Lc7/a;->z(Ljava/lang/Class;)Lm9/c;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-interface {v2}, Lm9/c;->j()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    if-eqz v3, :cond_8

    .line 208
    .line 209
    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 210
    .line 211
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v4, v3, v2}, Lba/a;->A(Ljava/lang/String;Lm9/c;)Landroidx/lifecycle/o0;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Lw4/a;

    .line 220
    .line 221
    iget-object v2, v2, Lw4/a;->b:Ls/r0;

    .line 222
    .line 223
    iget v3, v2, Ls/r0;->c:I

    .line 224
    .line 225
    if-lez v3, :cond_9

    .line 226
    .line 227
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v3, "Loaders:"

    .line 231
    .line 232
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget v3, v2, Ls/r0;->c:I

    .line 236
    .line 237
    if-gtz v3, :cond_6

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    invoke-virtual {v2, v0}, Ls/r0;->f(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-nez p1, :cond_7

    .line 245
    .line 246
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    const-string p1, "  #"

    .line 250
    .line 251
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, v2, Ls/r0;->a:[I

    .line 255
    .line 256
    aget p1, p1, v0

    .line 257
    .line 258
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 259
    .line 260
    .line 261
    const-string p1, ": "

    .line 262
    .line 263
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const/4 p1, 0x0

    .line 267
    throw p1

    .line 268
    :cond_7
    new-instance p1, Ljava/lang/ClassCastException;

    .line 269
    .line 270
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 271
    .line 272
    .line 273
    throw p1

    .line 274
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    const-string p2, "Local and anonymous classes can not be ViewModels"

    .line 277
    .line 278
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    :cond_9
    :goto_2
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 283
    .line 284
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Lp4/m;

    .line 287
    .line 288
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 289
    .line 290
    invoke-virtual {v0, p1, p2, p3, p4}, Lp4/x;->u(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    nop

    .line 295
    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/a;->T()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lc/o;->onActivityResult(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lp4/n;->s:Lkb/a;

    .line 12
    .line 13
    iget-object p1, p1, Lkb/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lp4/m;

    .line 16
    .line 17
    iget-object p1, p1, Lp4/m;->e:Lp4/x;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p1, Lp4/x;->E:Z

    .line 21
    .line 22
    iput-boolean v0, p1, Lp4/x;->F:Z

    .line 23
    .line 24
    iget-object v1, p1, Lp4/x;->L:Lp4/z;

    .line 25
    .line 26
    iput-boolean v0, v1, Lp4/z;->g:Z

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Lp4/x;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 2
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    check-cast v0, Lp4/m;

    .line 3
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 4
    iget-object v0, v0, Lp4/x;->f:Lp4/q;

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lp4/q;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 7
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 8
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    check-cast v0, Lp4/m;

    .line 9
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 10
    iget-object v0, v0, Lp4/x;->f:Lp4/q;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p1, p2, p3}, Lp4/q;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 5
    .line 6
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp4/m;

    .line 9
    .line 10
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 11
    .line 12
    invoke-virtual {v0}, Lp4/x;->k()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 16
    .line 17
    sget-object v1, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lc/o;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p2, 0x6

    .line 10
    if-ne p1, p2, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lp4/n;->s:Lkb/a;

    .line 13
    .line 14
    iget-object p1, p1, Lkb/a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lp4/m;

    .line 17
    .line 18
    iget-object p1, p1, Lp4/m;->e:Lp4/x;

    .line 19
    .line 20
    invoke-virtual {p1}, Lp4/x;->i()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lp4/n;->v:Z

    .line 6
    .line 7
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 8
    .line 9
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lp4/m;

    .line 12
    .line 13
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Lp4/x;->t(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 20
    .line 21
    sget-object v1, Landroidx/lifecycle/n;->ON_PAUSE:Landroidx/lifecycle/n;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onPostResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/n;->ON_RESUME:Landroidx/lifecycle/n;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 12
    .line 13
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lp4/m;

    .line 16
    .line 17
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lp4/x;->E:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lp4/x;->F:Z

    .line 23
    .line 24
    iget-object v2, v0, Lp4/x;->L:Lp4/z;

    .line 25
    .line 26
    iput-boolean v1, v2, Lp4/z;->g:Z

    .line 27
    .line 28
    const/4 v1, 0x7

    .line 29
    invoke-virtual {v0, v1}, Lp4/x;->t(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/a;->T()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lc/o;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/a;->T()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lp4/n;->v:Z

    .line 11
    .line 12
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lp4/m;

    .line 15
    .line 16
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lp4/x;->w(Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/a;->T()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp4/m;

    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lp4/n;->w:Z

    .line 15
    .line 16
    iget-boolean v2, p0, Lp4/n;->u:Z

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iput-boolean v3, p0, Lp4/n;->u:Z

    .line 22
    .line 23
    iget-object v2, v0, Lp4/m;->e:Lp4/x;

    .line 24
    .line 25
    iput-boolean v1, v2, Lp4/x;->E:Z

    .line 26
    .line 27
    iput-boolean v1, v2, Lp4/x;->F:Z

    .line 28
    .line 29
    iget-object v4, v2, Lp4/x;->L:Lp4/z;

    .line 30
    .line 31
    iput-boolean v1, v4, Lp4/z;->g:Z

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {v2, v4}, Lp4/x;->t(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v2, v0, Lp4/m;->e:Lp4/x;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lp4/x;->w(Z)Z

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 43
    .line 44
    sget-object v3, Landroidx/lifecycle/n;->ON_START:Landroidx/lifecycle/n;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lp4/m;->e:Lp4/x;

    .line 50
    .line 51
    iput-boolean v1, v0, Lp4/x;->E:Z

    .line 52
    .line 53
    iput-boolean v1, v0, Lp4/x;->F:Z

    .line 54
    .line 55
    iget-object v2, v0, Lp4/x;->L:Lp4/z;

    .line 56
    .line 57
    iput-boolean v1, v2, Lp4/z;->g:Z

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    invoke-virtual {v0, v1}, Lp4/x;->t(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/n;->s:Lkb/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkb/a;->T()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lp4/n;->w:Z

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lp4/n;->s:Lkb/a;

    .line 8
    .line 9
    iget-object v2, v1, Lkb/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lp4/m;

    .line 12
    .line 13
    iget-object v2, v2, Lp4/m;->e:Lp4/x;

    .line 14
    .line 15
    invoke-static {v2}, Lp4/n;->k(Lp4/x;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Lkb/a;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lp4/m;

    .line 24
    .line 25
    iget-object v1, v1, Lp4/m;->e:Lp4/x;

    .line 26
    .line 27
    iput-boolean v0, v1, Lp4/x;->F:Z

    .line 28
    .line 29
    iget-object v2, v1, Lp4/x;->L:Lp4/z;

    .line 30
    .line 31
    iput-boolean v0, v2, Lp4/z;->g:Z

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {v1, v0}, Lp4/x;->t(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 38
    .line 39
    sget-object v1, Landroidx/lifecycle/n;->ON_STOP:Landroidx/lifecycle/n;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->d(Landroidx/lifecycle/n;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
