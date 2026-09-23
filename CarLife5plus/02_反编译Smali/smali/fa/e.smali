.class public abstract Lfa/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-class v0, Lw9/n;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lr8/j;

    .line 8
    .line 9
    const-string v2, "PACKAGE"

    .line 10
    .line 11
    invoke-direct {v1, v2, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lw9/n;->c:Lw9/n;

    .line 15
    .line 16
    sget-object v2, Lw9/n;->o:Lw9/n;

    .line 17
    .line 18
    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Lr8/j;

    .line 23
    .line 24
    const-string v3, "TYPE"

    .line 25
    .line 26
    invoke-direct {v2, v3, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lw9/n;->d:Lw9/n;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v3, Lr8/j;

    .line 36
    .line 37
    const-string v4, "ANNOTATION_TYPE"

    .line 38
    .line 39
    invoke-direct {v3, v4, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lw9/n;->e:Lw9/n;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v4, Lr8/j;

    .line 49
    .line 50
    const-string v5, "TYPE_PARAMETER"

    .line 51
    .line 52
    invoke-direct {v4, v5, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lw9/n;->g:Lw9/n;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v5, Lr8/j;

    .line 62
    .line 63
    const-string v6, "FIELD"

    .line 64
    .line 65
    invoke-direct {v5, v6, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lw9/n;->h:Lw9/n;

    .line 69
    .line 70
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v6, Lr8/j;

    .line 75
    .line 76
    const-string v7, "LOCAL_VARIABLE"

    .line 77
    .line 78
    invoke-direct {v6, v7, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lw9/n;->i:Lw9/n;

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v7, Lr8/j;

    .line 88
    .line 89
    const-string v8, "PARAMETER"

    .line 90
    .line 91
    invoke-direct {v7, v8, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lw9/n;->j:Lw9/n;

    .line 95
    .line 96
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v8, Lr8/j;

    .line 101
    .line 102
    const-string v9, "CONSTRUCTOR"

    .line 103
    .line 104
    invoke-direct {v8, v9, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lw9/n;->k:Lw9/n;

    .line 108
    .line 109
    sget-object v9, Lw9/n;->l:Lw9/n;

    .line 110
    .line 111
    sget-object v10, Lw9/n;->m:Lw9/n;

    .line 112
    .line 113
    invoke-static {v0, v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v9, Lr8/j;

    .line 118
    .line 119
    const-string v10, "METHOD"

    .line 120
    .line 121
    invoke-direct {v9, v10, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lw9/n;->n:Lw9/n;

    .line 125
    .line 126
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v10, Lr8/j;

    .line 131
    .line 132
    const-string v11, "TYPE_USE"

    .line 133
    .line 134
    invoke-direct {v10, v11, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const/16 v0, 0xa

    .line 138
    .line 139
    new-array v0, v0, [Lr8/j;

    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    aput-object v1, v0, v11

    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    aput-object v2, v0, v1

    .line 146
    .line 147
    const/4 v2, 0x2

    .line 148
    aput-object v3, v0, v2

    .line 149
    .line 150
    const/4 v3, 0x3

    .line 151
    aput-object v4, v0, v3

    .line 152
    .line 153
    const/4 v4, 0x4

    .line 154
    aput-object v5, v0, v4

    .line 155
    .line 156
    const/4 v4, 0x5

    .line 157
    aput-object v6, v0, v4

    .line 158
    .line 159
    const/4 v4, 0x6

    .line 160
    aput-object v7, v0, v4

    .line 161
    .line 162
    const/4 v4, 0x7

    .line 163
    aput-object v8, v0, v4

    .line 164
    .line 165
    const/16 v4, 0x8

    .line 166
    .line 167
    aput-object v9, v0, v4

    .line 168
    .line 169
    const/16 v4, 0x9

    .line 170
    .line 171
    aput-object v10, v0, v4

    .line 172
    .line 173
    invoke-static {v0}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sput-object v0, Lfa/e;->a:Ljava/lang/Object;

    .line 178
    .line 179
    new-instance v0, Lr8/j;

    .line 180
    .line 181
    const-string v4, "RUNTIME"

    .line 182
    .line 183
    sget-object v5, Lw9/m;->a:Lw9/m;

    .line 184
    .line 185
    invoke-direct {v0, v4, v5}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    new-instance v4, Lr8/j;

    .line 189
    .line 190
    const-string v5, "CLASS"

    .line 191
    .line 192
    sget-object v6, Lw9/m;->b:Lw9/m;

    .line 193
    .line 194
    invoke-direct {v4, v5, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    new-instance v5, Lr8/j;

    .line 198
    .line 199
    const-string v6, "SOURCE"

    .line 200
    .line 201
    sget-object v7, Lw9/m;->c:Lw9/m;

    .line 202
    .line 203
    invoke-direct {v5, v6, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    new-array v3, v3, [Lr8/j;

    .line 207
    .line 208
    aput-object v0, v3, v11

    .line 209
    .line 210
    aput-object v4, v3, v1

    .line 211
    .line 212
    aput-object v5, v3, v2

    .line 213
    .line 214
    invoke-static {v3}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sput-object v0, Lfa/e;->b:Ljava/lang/Object;

    .line 219
    .line 220
    return-void
.end method

.method public static a(Ljava/util/List;)Lza/b;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lba/u;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lba/u;

    .line 48
    .line 49
    iget-object v1, v1, Lba/u;->b:Ljava/lang/Enum;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lua/e;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v2, Lfa/e;->a:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/util/EnumSet;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    sget-object v1, Ls8/y;->a:Ls8/y;

    .line 75
    .line 76
    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    .line 77
    .line 78
    invoke-static {v1, p0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    const/16 v1, 0xa

    .line 85
    .line 86
    invoke-static {p0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lw9/n;

    .line 108
    .line 109
    new-instance v2, Lza/i;

    .line 110
    .line 111
    sget-object v3, Ls9/o;->u:Lua/c;

    .line 112
    .line 113
    const-string v4, "topLevelFqName"

    .line 114
    .line 115
    invoke-static {v3, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v4, Lua/b;

    .line 119
    .line 120
    invoke-virtual {v3}, Lua/c;->b()Lua/c;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    iget-object v3, v3, Lua/c;->a:Lua/d;

    .line 125
    .line 126
    invoke-virtual {v3}, Lua/d;->f()Lua/e;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-direct {v4, v5, v3}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v2, v4, v1}, Lza/i;-><init>(Lua/b;Lua/e;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    new-instance p0, Lza/b;

    .line 149
    .line 150
    sget-object v1, Lfa/d;->a:Lfa/d;

    .line 151
    .line 152
    invoke-direct {p0, v0, v1}, Lza/b;-><init>(Ljava/util/List;Lf9/k;)V

    .line 153
    .line 154
    .line 155
    return-object p0
.end method
