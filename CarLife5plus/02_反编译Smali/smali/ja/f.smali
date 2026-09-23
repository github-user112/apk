.class public final Lja/f;
.super Llb/q0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lja/a;

.field public static final d:Lja/a;


# instance fields
.field public final b:Landroid/support/v4/media/session/t;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    sget-object v0, Llb/t0;->b:Llb/t0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x5

    .line 6
    invoke-static {v0, v1, v2, v3}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const/4 v8, 0x0

    .line 11
    const/16 v9, 0x3d

    .line 12
    .line 13
    sget-object v5, Lja/b;->c:Lja/b;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-static/range {v4 .. v9}, Lja/a;->a(Lja/a;Lja/b;ZLjava/util/Set;Llb/a0;I)Lja/a;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sput-object v4, Lja/f;->c:Lja/a;

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v9, 0x0

    .line 28
    const/16 v10, 0x3d

    .line 29
    .line 30
    sget-object v6, Lja/b;->b:Lja/b;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-static/range {v5 .. v10}, Lja/a;->a(Lja/a;Lja/b;ZLjava/util/Set;Llb/a0;I)Lja/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lja/f;->d:Lja/a;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lja/e;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/support/v4/media/session/t;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/t;-><init>(Lja/e;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lja/f;->b:Landroid/support/v4/media/session/t;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final d(Llb/w;)Llb/n0;
    .locals 7

    .line 1
    new-instance v0, Llb/f0;

    .line 2
    .line 3
    new-instance v1, Lja/a;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/16 v6, 0x3e

    .line 7
    .line 8
    sget-object v2, Llb/t0;->b:Llb/t0;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct/range {v1 .. v6}, Lja/a;-><init>(Llb/t0;ZZLjava/util/Set;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Lja/f;->h(Llb/w;Lja/a;)Llb/w;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Llb/f0;-><init>(Llb/w;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final g(Llb/a0;Lv9/e;Lja/a;)Lr8/j;
    .locals 8

    .line 1
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Llb/k0;->m()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    new-instance p3, Lr8/j;

    .line 18
    .line 19
    invoke-direct {p3, p1, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-object p3

    .line 23
    :cond_0
    invoke-static {p1}, Ls9/i;->z(Llb/w;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Llb/w;->B0()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Llb/n0;

    .line 39
    .line 40
    new-instance v0, Llb/f0;

    .line 41
    .line 42
    invoke-virtual {p2}, Llb/n0;->a()Llb/y0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p2}, Llb/n0;->b()Llb/w;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v2, "getType(...)"

    .line 51
    .line 52
    invoke-static {p2, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2, p3}, Lja/f;->h(Llb/w;Lja/a;)Llb/w;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {v0, p2, v1}, Llb/f0;-><init>(Llb/w;Llb/y0;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1}, Llb/w;->C0()Llb/h0;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Llb/w;->E0()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p2, p3, v0, p1}, Llb/c;->t(Ljava/util/List;Llb/h0;Llb/k0;Z)Llb/a0;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    .line 84
    new-instance p3, Lr8/j;

    .line 85
    .line 86
    invoke-direct {p3, p1, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object p3

    .line 90
    :cond_1
    invoke-static {p1}, Llb/c;->j(Llb/w;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    filled-new-array {p1}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object p2, Lnb/k;->n:Lnb/k;

    .line 109
    .line 110
    invoke-static {p2, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    new-instance p3, Lr8/j;

    .line 117
    .line 118
    invoke-direct {p3, p1, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object p3

    .line 122
    :cond_2
    invoke-interface {p2, p0}, Lv9/e;->c0(Llb/q0;)Leb/o;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const-string v0, "getMemberScope(...)"

    .line 127
    .line 128
    invoke-static {v4, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Llb/w;->C0()Llb/h0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {p2}, Lv9/h;->t()Llb/k0;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "getTypeConstructor(...)"

    .line 140
    .line 141
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p2}, Lv9/h;->t()Llb/k0;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {v2}, Llb/k0;->m()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v3, "getParameters(...)"

    .line 153
    .line 154
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    move-object v3, v2

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    .line 159
    .line 160
    const/16 v5, 0xa

    .line 161
    .line 162
    invoke-static {v3, v5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_3

    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Lv9/q0;

    .line 184
    .line 185
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v6, p0, Lja/f;->b:Landroid/support/v4/media/session/t;

    .line 189
    .line 190
    invoke-virtual {v6, v5, p3}, Landroid/support/v4/media/session/t;->b1(Lv9/q0;Lja/a;)Llb/w;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-static {v5, p3, v6, v7}, Lja/e;->a(Lv9/q0;Lja/a;Landroid/support/v4/media/session/t;Llb/w;)Llb/n0;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p1}, Llb/w;->E0()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    new-instance v5, Lba/j;

    .line 207
    .line 208
    invoke-direct {v5, p2, p0, p1, p3}, Lba/j;-><init>(Lv9/e;Lja/f;Llb/a0;Lja/a;)V

    .line 209
    .line 210
    .line 211
    invoke-static/range {v0 .. v5}, Llb/c;->v(Llb/h0;Llb/k0;Ljava/util/List;ZLeb/o;Lf9/k;)Llb/a0;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 216
    .line 217
    new-instance p3, Lr8/j;

    .line 218
    .line 219
    invoke-direct {p3, p1, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    return-object p3
.end method

.method public final h(Llb/w;Lja/a;)Llb/w;
    .locals 7

    .line 1
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lv9/q0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lv9/q0;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x3b

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p2

    .line 25
    invoke-static/range {v1 .. v6}, Lja/a;->a(Lja/a;Lja/b;ZLjava/util/Set;Llb/a0;I)Lja/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lja/f;->b:Landroid/support/v4/media/session/t;

    .line 30
    .line 31
    invoke-virtual {p2, v0, p1}, Landroid/support/v4/media/session/t;->b1(Lv9/q0;Lja/a;)Llb/w;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, v1}, Lja/f;->h(Llb/w;Lja/a;)Llb/w;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    instance-of p2, v0, Lv9/e;

    .line 41
    .line 42
    if-eqz p2, :cond_4

    .line 43
    .line 44
    invoke-static {p1}, Llb/c;->D(Llb/w;)Llb/a0;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Llb/w;->D0()Llb/k0;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p2}, Llb/k0;->k()Lv9/h;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    instance-of v1, p2, Lv9/e;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-static {p1}, Llb/c;->l(Llb/w;)Llb/a0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v0, Lv9/e;

    .line 65
    .line 66
    sget-object v2, Lja/f;->c:Lja/a;

    .line 67
    .line 68
    invoke-virtual {p0, v1, v0, v2}, Lja/f;->g(Llb/a0;Lv9/e;Lja/a;)Lr8/j;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, v0, Lr8/j;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Llb/a0;

    .line 75
    .line 76
    iget-object v0, v0, Lr8/j;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p1}, Llb/c;->D(Llb/w;)Llb/a0;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p2, Lv9/e;

    .line 89
    .line 90
    sget-object v2, Lja/f;->d:Lja/a;

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2}, Lja/f;->g(Llb/a0;Lv9/e;Lja/a;)Lr8/j;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p2, p1, Lr8/j;->a:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p2, Llb/a0;

    .line 99
    .line 100
    iget-object p1, p1, Lr8/j;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez v0, :cond_2

    .line 109
    .line 110
    if-eqz p1, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v1, p2}, Llb/c;->e(Llb/a0;Llb/a0;)Llb/x0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_2
    :goto_0
    new-instance p1, Lja/h;

    .line 119
    .line 120
    invoke-direct {p1, v1, p2}, Lja/h;-><init>(Llb/a0;Llb/a0;)V

    .line 121
    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "For some reason declaration for upper bound is not a class but \""

    .line 127
    .line 128
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p2, "\" while for lower it\'s \""

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const/16 p2, 0x22

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p2

    .line 161
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v1, "Unexpected declaration kind: "

    .line 166
    .line 167
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1
.end method
