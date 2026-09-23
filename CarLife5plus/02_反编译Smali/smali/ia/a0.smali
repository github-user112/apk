.class public abstract Lia/a0;
.super Leb/p;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic m:[Lm9/u;


# instance fields
.field public final b:Lba/a;

.field public final c:Lia/a0;

.field public final d:Lkb/d;

.field public final e:Lkb/j;

.field public final f:Lkb/f;

.field public final g:Lf1/e;

.field public final h:Lkb/f;

.field public final i:Lkb/j;

.field public final j:Lkb/j;

.field public final k:Lkb/j;

.field public final l:Lkb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lia/a0;

    .line 4
    .line 5
    const-string v2, "functionNamesLazy"

    .line 6
    .line 7
    const-string v3, "getFunctionNamesLazy()Ljava/util/Set;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "propertyNamesLazy"

    .line 20
    .line 21
    const-string v5, "getPropertyNamesLazy()Ljava/util/Set;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v5, "classNamesLazy"

    .line 28
    .line 29
    const-string v6, "getClassNamesLazy()Ljava/util/Set;"

    .line 30
    .line 31
    invoke-static {v1, v5, v6, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x3

    .line 36
    new-array v2, v2, [Lm9/u;

    .line 37
    .line 38
    aput-object v0, v2, v4

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object v3, v2, v0

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    sput-object v2, Lia/a0;->m:[Lm9/u;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Lba/a;Lia/o;)V
    .locals 2

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lia/a0;->b:Lba/a;

    .line 10
    .line 11
    iput-object p2, p0, Lia/a0;->c:Lia/a0;

    .line 12
    .line 13
    iget-object p1, p1, Lba/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Lha/a;

    .line 16
    .line 17
    iget-object p1, p1, Lha/a;->a:Lkb/o;

    .line 18
    .line 19
    new-instance p2, Lia/w;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p2, p0, v0}, Lia/w;-><init>(Lia/a0;I)V

    .line 23
    .line 24
    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lkb/l;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lkb/d;

    .line 32
    .line 33
    invoke-direct {v1, v0, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lia/a0;->d:Lkb/d;

    .line 37
    .line 38
    new-instance p2, Lia/w;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-direct {p2, p0, v0}, Lia/w;-><init>(Lia/a0;I)V

    .line 42
    .line 43
    .line 44
    move-object v0, p1

    .line 45
    check-cast v0, Lkb/l;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lkb/j;

    .line 51
    .line 52
    invoke-direct {v1, v0, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lia/a0;->e:Lkb/j;

    .line 56
    .line 57
    new-instance p2, Lia/y;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p2, p0, v0}, Lia/y;-><init>(Lia/a0;I)V

    .line 61
    .line 62
    .line 63
    move-object v0, p1

    .line 64
    check-cast v0, Lkb/l;

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Lkb/l;->b(Lf9/k;)Lkb/f;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Lia/a0;->f:Lkb/f;

    .line 71
    .line 72
    new-instance p2, Lia/y;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-direct {p2, p0, v0}, Lia/y;-><init>(Lia/a0;I)V

    .line 76
    .line 77
    .line 78
    move-object v0, p1

    .line 79
    check-cast v0, Lkb/l;

    .line 80
    .line 81
    invoke-virtual {v0, p2}, Lkb/l;->c(Lf9/k;)Lf1/e;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    iput-object p2, p0, Lia/a0;->g:Lf1/e;

    .line 86
    .line 87
    new-instance p2, Lia/y;

    .line 88
    .line 89
    const/4 v0, 0x2

    .line 90
    invoke-direct {p2, p0, v0}, Lia/y;-><init>(Lia/a0;I)V

    .line 91
    .line 92
    .line 93
    move-object v0, p1

    .line 94
    check-cast v0, Lkb/l;

    .line 95
    .line 96
    invoke-virtual {v0, p2}, Lkb/l;->b(Lf9/k;)Lkb/f;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p2, p0, Lia/a0;->h:Lkb/f;

    .line 101
    .line 102
    new-instance p2, Lia/w;

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    invoke-direct {p2, p0, v0}, Lia/w;-><init>(Lia/a0;I)V

    .line 106
    .line 107
    .line 108
    move-object v0, p1

    .line 109
    check-cast v0, Lkb/l;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v1, Lkb/j;

    .line 115
    .line 116
    invoke-direct {v1, v0, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lia/a0;->i:Lkb/j;

    .line 120
    .line 121
    new-instance p2, Lia/w;

    .line 122
    .line 123
    const/4 v0, 0x3

    .line 124
    invoke-direct {p2, p0, v0}, Lia/w;-><init>(Lia/a0;I)V

    .line 125
    .line 126
    .line 127
    move-object v0, p1

    .line 128
    check-cast v0, Lkb/l;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    new-instance v1, Lkb/j;

    .line 134
    .line 135
    invoke-direct {v1, v0, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, p0, Lia/a0;->j:Lkb/j;

    .line 139
    .line 140
    new-instance p2, Lia/w;

    .line 141
    .line 142
    const/4 v0, 0x4

    .line 143
    invoke-direct {p2, p0, v0}, Lia/w;-><init>(Lia/a0;I)V

    .line 144
    .line 145
    .line 146
    move-object v0, p1

    .line 147
    check-cast v0, Lkb/l;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    new-instance v1, Lkb/j;

    .line 153
    .line 154
    invoke-direct {v1, v0, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 155
    .line 156
    .line 157
    iput-object v1, p0, Lia/a0;->k:Lkb/j;

    .line 158
    .line 159
    new-instance p2, Lia/y;

    .line 160
    .line 161
    const/4 v0, 0x3

    .line 162
    invoke-direct {p2, p0, v0}, Lia/y;-><init>(Lia/a0;I)V

    .line 163
    .line 164
    .line 165
    check-cast p1, Lkb/l;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Lkb/l;->b(Lf9/k;)Lkb/f;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p0, Lia/a0;->l:Lkb/f;

    .line 172
    .line 173
    return-void
.end method

.method public static l(Lba/y;Lba/a;)Llb/w;
    .locals 4

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lba/y;->b()Ljava/lang/reflect/Member;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/reflect/Method;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getDeclaringClass(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x6

    .line 27
    sget-object v3, Llb/t0;->b:Llb/t0;

    .line 28
    .line 29
    invoke-static {v3, v0, v1, v2}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p1, p1, Lba/a;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, La2/b;

    .line 36
    .line 37
    invoke-virtual {p0}, Lba/y;->f()Lba/c0;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0, v0}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static u(Lba/a;Ly9/u;Ljava/util/List;)Ld6/h;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lba/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, La2/b;

    .line 6
    .line 7
    iget-object v2, v0, Lba/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lha/a;

    .line 10
    .line 11
    iget-object v3, v2, Lha/a;->o:Lv9/y;

    .line 12
    .line 13
    invoke-static/range {p2 .. p2}, Ls8/p;->F0(Ljava/util/List;)Ls8/n;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v6, 0xa

    .line 20
    .line 21
    invoke-static {v4, v6}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ls8/n;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    :goto_0
    move-object v8, v4

    .line 35
    check-cast v8, Ls8/a0;

    .line 36
    .line 37
    iget-object v9, v8, Ls8/a0;->b:Ljava/util/Iterator;

    .line 38
    .line 39
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_7

    .line 44
    .line 45
    invoke-virtual {v8}, Ls8/a0;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Ls8/z;

    .line 50
    .line 51
    iget v12, v8, Ls8/z;->a:I

    .line 52
    .line 53
    iget-object v8, v8, Ls8/z;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v8, Lba/e0;

    .line 56
    .line 57
    invoke-static {v0, v8}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    sget-object v9, Llb/t0;->b:Llb/t0;

    .line 62
    .line 63
    const/4 v10, 0x7

    .line 64
    const/4 v11, 0x0

    .line 65
    invoke-static {v9, v6, v11, v10}, Li9/a;->X(Llb/t0;ZLia/f0;I)Lja/a;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    iget-boolean v10, v8, Lba/e0;->d:Z

    .line 70
    .line 71
    iget-object v14, v8, Lba/e0;->a:Lba/c0;

    .line 72
    .line 73
    const/4 v15, 0x1

    .line 74
    if-eqz v10, :cond_2

    .line 75
    .line 76
    instance-of v10, v14, Lba/i;

    .line 77
    .line 78
    if-eqz v10, :cond_0

    .line 79
    .line 80
    check-cast v14, Lba/i;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move-object v14, v11

    .line 84
    :goto_1
    if-eqz v14, :cond_1

    .line 85
    .line 86
    invoke-virtual {v1, v14, v9, v15}, La2/b;->d0(Lba/i;Lja/a;Z)Llb/x0;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-interface {v3}, Lv9/y;->j()Ls9/i;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-virtual {v10, v9}, Ls9/i;->f(Llb/w;)Llb/w;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    new-instance v14, Lr8/j;

    .line 99
    .line 100
    invoke-direct {v14, v9, v10}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "Vararg parameter should be an array: "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_2
    invoke-virtual {v1, v14, v9}, La2/b;->e0(Lla/d;Lja/a;)Llb/w;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    new-instance v14, Lr8/j;

    .line 129
    .line 130
    invoke-direct {v14, v9, v11}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_2
    iget-object v9, v14, Lr8/j;->a:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v9, Llb/w;

    .line 136
    .line 137
    iget-object v10, v14, Lr8/j;->b:Ljava/lang/Object;

    .line 138
    .line 139
    move-object/from16 v19, v10

    .line 140
    .line 141
    check-cast v19, Llb/w;

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Ly9/m;->getName()Lua/e;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v10}, Lua/e;->b()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    const-string v14, "equals"

    .line 152
    .line 153
    invoke-static {v10, v14}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-eqz v10, :cond_3

    .line 158
    .line 159
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-ne v10, v15, :cond_3

    .line 164
    .line 165
    invoke-interface {v3}, Lv9/y;->j()Ls9/i;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v10}, Ls9/i;->p()Llb/a0;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-virtual {v10, v9}, Llb/w;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-eqz v10, :cond_3

    .line 178
    .line 179
    const-string v10, "other"

    .line 180
    .line 181
    invoke-static {v10}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    :goto_3
    move-object v15, v9

    .line 186
    move-object v14, v10

    .line 187
    goto :goto_4

    .line 188
    :cond_3
    iget-object v10, v8, Lba/e0;->c:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v10, :cond_4

    .line 191
    .line 192
    invoke-static {v10}, Lua/e;->d(Ljava/lang/String;)Lua/e;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    :cond_4
    if-nez v11, :cond_5

    .line 197
    .line 198
    const/4 v7, 0x1

    .line 199
    :cond_5
    if-nez v11, :cond_6

    .line 200
    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v11, "p"

    .line 204
    .line 205
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-static {v10}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    goto :goto_3

    .line 220
    :cond_6
    move-object v15, v9

    .line 221
    move-object v14, v11

    .line 222
    :goto_4
    new-instance v9, Ly9/r0;

    .line 223
    .line 224
    iget-object v10, v2, Lha/a;->j:Laa/e;

    .line 225
    .line 226
    invoke-virtual {v10, v8}, Laa/e;->a(Lla/c;)Laa/g;

    .line 227
    .line 228
    .line 229
    move-result-object v20

    .line 230
    const/4 v11, 0x0

    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    const/16 v17, 0x0

    .line 234
    .line 235
    const/16 v18, 0x0

    .line 236
    .line 237
    move-object/from16 v10, p1

    .line 238
    .line 239
    invoke-direct/range {v9 .. v20}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_7
    invoke-static {v5}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    new-instance v1, Ld6/h;

    .line 252
    .line 253
    const/4 v2, 0x1

    .line 254
    invoke-direct {v1, v0, v2, v7}, Ld6/h;-><init>(Ljava/lang/Object;IZ)V

    .line 255
    .line 256
    .line 257
    return-object v1
.end method


# virtual methods
.method public a(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "location"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lia/a0;->b()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object p2, p0, Lia/a0;->h:Lkb/f;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/util/Collection;

    .line 31
    .line 32
    return-object p1
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lia/a0;->m:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lia/a0;->i:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Set;

    .line 13
    .line 14
    return-object v0
.end method

.method public c(Leb/f;Lf9/k;)Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p2, "kindFilter"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lia/a0;->d:Lkb/d;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/Collection;

    .line 13
    .line 14
    return-object p1
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lia/a0;->m:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lia/a0;->k:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Set;

    .line 13
    .line 14
    return-object v0
.end method

.method public f(Lua/e;Lda/b;)Ljava/util/Collection;
    .locals 0

    .line 1
    const-string p2, "name"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lia/a0;->g()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-object p2, p0, Lia/a0;->l:Lkb/f;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/util/Collection;

    .line 26
    .line 27
    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lia/a0;->m:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lia/a0;->j:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Set;

    .line 13
    .line 14
    return-object v0
.end method

.method public abstract h(Leb/f;Lf9/k;)Ljava/util/Set;
.end method

.method public abstract i(Leb/f;Leb/l;)Ljava/util/Set;
.end method

.method public j(Ljava/util/ArrayList;Lua/e;)V
    .locals 0

    .line 1
    const-string p1, "name"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract k()Lia/c;
.end method

.method public abstract m(Ljava/util/LinkedHashSet;Lua/e;)V
.end method

.method public abstract n(Ljava/util/ArrayList;Lua/e;)V
.end method

.method public abstract o(Leb/f;)Ljava/util/Set;
.end method

.method public abstract p()Ly9/v;
.end method

.method public abstract q()Lv9/k;
.end method

.method public r(Lga/e;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public abstract s(Lba/y;Ljava/util/ArrayList;Llb/w;Ljava/util/List;)Lia/z;
.end method

.method public final t(Lba/y;)Lga/e;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "method"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lia/a0;->b:Lba/a;

    .line 11
    .line 12
    invoke-static {v2, v1}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0}, Lia/a0;->q()Lv9/k;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v1}, Lba/x;->c()Lua/e;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v6, v2, Lba/a;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Lha/a;

    .line 27
    .line 28
    iget-object v6, v6, Lha/a;->j:Laa/e;

    .line 29
    .line 30
    invoke-virtual {v6, v1}, Laa/e;->a(Lla/c;)Laa/g;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v7, v0, Lia/a0;->e:Lkb/j;

    .line 35
    .line 36
    invoke-virtual {v7}, Lkb/j;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Lia/c;

    .line 41
    .line 42
    invoke-virtual {v1}, Lba/x;->c()Lua/e;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-interface {v7, v8}, Lia/c;->e(Lua/e;)Lba/b0;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const/4 v8, 0x0

    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    invoke-virtual {v1}, Lba/y;->g()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 v7, 0x0

    .line 68
    :goto_0
    invoke-static {v4, v3, v5, v6, v7}, Lga/e;->R0(Lv9/k;Lha/c;Lua/e;Laa/g;Z)Lga/e;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    const-string v3, "<this>"

    .line 73
    .line 74
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v2, Lba/a;->d:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v4, v2, Lba/a;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lha/a;

    .line 82
    .line 83
    new-instance v5, Lha/e;

    .line 84
    .line 85
    invoke-direct {v5, v2, v9, v1, v8}, Lha/e;-><init>(Lba/a;Lv9/l;Lla/e;I)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lba/a;

    .line 89
    .line 90
    invoke-direct {v2, v4, v5, v3}, Lba/a;-><init>(Lha/a;Lha/f;Lr8/h;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lba/y;->getTypeParameters()Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    .line 98
    .line 99
    const/16 v5, 0xa

    .line 100
    .line 101
    invoke-static {v3, v5}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_1

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lba/d0;

    .line 123
    .line 124
    iget-object v6, v2, Lba/a;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v6, Lha/f;

    .line 127
    .line 128
    invoke-interface {v6, v5}, Lha/f;->a(Lba/d0;)Lv9/q0;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v1}, Lba/y;->g()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v2, v9, v3}, Lia/a0;->u(Lba/a;Ly9/u;Ljava/util/List;)Ld6/h;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v1, v2}, Lia/a0;->l(Lba/y;Lba/a;)Llb/w;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    iget-object v6, v3, Ld6/h;->c:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v6, Ljava/util/List;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v4, v5, v6}, Lia/a0;->s(Lba/y;Ljava/util/ArrayList;Llb/w;Ljava/util/List;)Lia/z;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    iget-object v5, v4, Lia/z;->d:Ljava/util/List;

    .line 160
    .line 161
    invoke-virtual {v0}, Lia/a0;->p()Ly9/v;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    iget-object v13, v4, Lia/z;->c:Ljava/util/ArrayList;

    .line 166
    .line 167
    iget-object v14, v4, Lia/z;->b:Ljava/util/List;

    .line 168
    .line 169
    iget-object v15, v4, Lia/z;->a:Llb/w;

    .line 170
    .line 171
    invoke-virtual {v1}, Lba/y;->b()Ljava/lang/reflect/Member;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Ljava/lang/reflect/Method;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {v1}, Lba/y;->b()Ljava/lang/reflect/Member;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Ljava/lang/reflect/Method;

    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    sget-object v7, Lv9/x;->a:Lv9/n0;

    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    if-eqz v4, :cond_2

    .line 205
    .line 206
    sget-object v4, Lv9/x;->e:Lv9/x;

    .line 207
    .line 208
    :goto_2
    move-object/from16 v16, v4

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_2
    if-nez v6, :cond_3

    .line 212
    .line 213
    sget-object v4, Lv9/x;->d:Lv9/x;

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_3
    sget-object v4, Lv9/x;->b:Lv9/x;

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :goto_3
    invoke-virtual {v1}, Lba/x;->e()Ln/a;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-static {v1}, Lg5/a;->Z(Ln/a;)Lea/o;

    .line 224
    .line 225
    .line 226
    move-result-object v17

    .line 227
    sget-object v18, Ls8/x;->a:Ls8/x;

    .line 228
    .line 229
    const/4 v10, 0x0

    .line 230
    sget-object v12, Ls8/w;->a:Ls8/w;

    .line 231
    .line 232
    invoke-virtual/range {v9 .. v18}, Lga/e;->Q0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;Ljava/util/Map;)Ly9/l0;

    .line 233
    .line 234
    .line 235
    iget-boolean v1, v3, Ld6/h;->b:Z

    .line 236
    .line 237
    invoke-virtual {v9, v8, v1}, Lga/e;->S0(ZZ)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_4

    .line 245
    .line 246
    return-object v9

    .line 247
    :cond_4
    iget-object v1, v2, Lba/a;->b:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v1, Lha/a;

    .line 250
    .line 251
    iget-object v1, v1, Lha/a;->e:Lfa/h;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 257
    .line 258
    const-string v2, "Should not be called"

    .line 259
    .line 260
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Lazy scope for "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lia/a0;->q()Lv9/k;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
