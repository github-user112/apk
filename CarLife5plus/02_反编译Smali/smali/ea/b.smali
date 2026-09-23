.class public final Lea/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Ljava/util/LinkedHashMap;


# instance fields
.field public final a:Lea/u;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lea/a;->values()[Lea/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    iget-object v5, v4, Lea/a;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sput-object v0, Lea/b;->c:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lea/u;)V
    .locals 1

    .line 1
    const-string v0, "javaTypeEnhancementState"

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
    iput-object p1, p0, Lea/b;->a:Lea/u;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lea/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    check-cast p0, Lw9/b;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lw9/b;->b()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lua/e;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lza/g;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    sget-object v3, Lea/y;->b:Lua/e;

    .line 52
    .line 53
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    sget-object v1, Ls8/w;->a:Ls8/w;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_1
    invoke-static {v1}, Lea/b;->j(Lza/g;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_2
    invoke-static {v1, v0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-object v0
.end method

.method public static c(Ljava/lang/Object;Lua/c;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0}, Lea/b;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Lua/c;
    .locals 1

    .line 1
    check-cast p0, Lw9/b;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lw9/b;->a()Lua/c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    check-cast p0, Lw9/b;

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lbb/e;->d(Lw9/b;)Lv9/e;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Lw9/a;->getAnnotations()Lw9/h;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 22
    .line 23
    return-object p0
.end method

.method public static f(Ljava/lang/Object;Lua/c;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lea/b;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public static j(Lza/g;)Ljava/util/List;
    .locals 2

    .line 1
    instance-of v0, p0, Lza/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lza/b;

    .line 6
    .line 7
    iget-object p0, p0, Lza/g;->a:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lza/g;

    .line 31
    .line 32
    invoke-static {v1}, Lea/b;->j(Lza/g;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1, v0}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0

    .line 41
    :cond_1
    instance-of v0, p0, Lza/i;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    check-cast p0, Lza/i;

    .line 46
    .line 47
    iget-object p0, p0, Lza/i;->c:Lua/e;

    .line 48
    .line 49
    invoke-virtual {p0}, Lua/e;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_2
    sget-object p0, Ls8/w;->a:Ls8/w;

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public final b(Lea/v;Lw9/h;)Lea/v;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "annotations"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-static {v3, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lea/b;->a:Lea/u;

    .line 13
    .line 14
    iget-boolean v4, v2, Lea/u;->b:Z

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_18

    .line 19
    .line 20
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v5, :cond_21

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-boolean v8, v2, Lea/u;->b:Z

    .line 41
    .line 42
    sget-object v9, Lea/c0;->b:Lea/c0;

    .line 43
    .line 44
    sget-object v10, Lea/c0;->c:Lea/c0;

    .line 45
    .line 46
    const/4 v11, 0x0

    .line 47
    if-eqz v8, :cond_3

    .line 48
    .line 49
    :cond_2
    :goto_1
    move-object v14, v11

    .line 50
    goto :goto_5

    .line 51
    :cond_3
    sget-object v8, Lea/n;->c:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-static {v5}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-virtual {v8, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Lea/m;

    .line 62
    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    invoke-static {v5}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    if-eqz v12, :cond_4

    .line 70
    .line 71
    sget-object v13, Lea/n;->a:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    if-eqz v13, :cond_4

    .line 78
    .line 79
    sget-object v13, Lea/t;->i:Lea/t;

    .line 80
    .line 81
    invoke-virtual {v13, v12}, Lea/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Lea/c0;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {v0, v5}, Lea/b;->h(Ljava/lang/Object;)Lea/c0;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    if-eqz v12, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object v12, v2, Lea/u;->a:Lea/w;

    .line 96
    .line 97
    iget-object v12, v12, Lea/w;->a:Lea/c0;

    .line 98
    .line 99
    :goto_2
    if-eq v12, v9, :cond_6

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_6
    move-object v12, v11

    .line 103
    :goto_3
    if-nez v12, :cond_7

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    iget-object v13, v8, Lea/m;->a:Lma/i;

    .line 107
    .line 108
    if-ne v12, v10, :cond_8

    .line 109
    .line 110
    const/4 v12, 0x1

    .line 111
    goto :goto_4

    .line 112
    :cond_8
    const/4 v12, 0x0

    .line 113
    :goto_4
    invoke-static {v13, v11, v12, v6}, Lma/i;->a(Lma/i;Lma/h;ZI)Lma/i;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    iget-object v13, v8, Lea/m;->b:Ljava/util/Collection;

    .line 118
    .line 119
    iget-boolean v8, v8, Lea/m;->c:Z

    .line 120
    .line 121
    const-string v14, "qualifierApplicabilityTypes"

    .line 122
    .line 123
    invoke-static {v13, v14}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v14, Lea/m;

    .line 127
    .line 128
    invoke-direct {v14, v12, v13, v8}, Lea/m;-><init>(Lma/i;Ljava/util/Collection;Z)V

    .line 129
    .line 130
    .line 131
    :goto_5
    if-eqz v14, :cond_9

    .line 132
    .line 133
    move-object v11, v14

    .line 134
    goto/16 :goto_14

    .line 135
    .line 136
    :cond_9
    iget-object v8, v2, Lea/u;->a:Lea/w;

    .line 137
    .line 138
    iget-boolean v8, v8, Lea/w;->d:Z

    .line 139
    .line 140
    if-eqz v8, :cond_a

    .line 141
    .line 142
    :goto_6
    move-object v8, v11

    .line 143
    goto/16 :goto_b

    .line 144
    .line 145
    :cond_a
    sget-object v8, Lea/z;->f:Lua/c;

    .line 146
    .line 147
    invoke-static {v5, v8}, Lea/b;->c(Ljava/lang/Object;Lua/c;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-nez v8, :cond_b

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_b
    invoke-static {v5}, Lea/b;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eqz v13, :cond_d

    .line 167
    .line 168
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-virtual {v0, v13}, Lea/b;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    if-eqz v14, :cond_c

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_d
    move-object v13, v11

    .line 180
    :goto_7
    if-nez v13, :cond_e

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_e
    invoke-static {v8, v6}, Lea/b;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 188
    .line 189
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    :cond_f
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_10

    .line 201
    .line 202
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    check-cast v14, Ljava/lang/String;

    .line 207
    .line 208
    sget-object v15, Lea/b;->c:Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    invoke-virtual {v15, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    check-cast v14, Lea/a;

    .line 215
    .line 216
    if-eqz v14, :cond_f

    .line 217
    .line 218
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_10
    new-instance v8, Lr8/j;

    .line 223
    .line 224
    sget-object v14, Lea/a;->e:Lea/a;

    .line 225
    .line 226
    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-eqz v14, :cond_14

    .line 231
    .line 232
    invoke-static {}, Lea/a;->values()[Lea/a;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    invoke-static {v14}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object v14

    .line 240
    new-instance v15, Ljava/util/LinkedHashSet;

    .line 241
    .line 242
    invoke-interface {v14}, Ljava/util/Set;->size()I

    .line 243
    .line 244
    .line 245
    move-result v16

    .line 246
    invoke-static/range {v16 .. v16}, Ls8/c0;->H(I)I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    invoke-direct {v15, v6}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 251
    .line 252
    .line 253
    check-cast v14, Ljava/lang/Iterable;

    .line 254
    .line 255
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const/4 v14, 0x0

    .line 260
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v16

    .line 264
    if-eqz v16, :cond_13

    .line 265
    .line 266
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    if-nez v14, :cond_11

    .line 271
    .line 272
    sget-object v7, Lea/a;->f:Lea/a;

    .line 273
    .line 274
    invoke-static {v11, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-eqz v7, :cond_11

    .line 279
    .line 280
    const/4 v7, 0x0

    .line 281
    const/4 v14, 0x1

    .line 282
    goto :goto_a

    .line 283
    :cond_11
    const/4 v7, 0x1

    .line 284
    :goto_a
    if-eqz v7, :cond_12

    .line 285
    .line 286
    invoke-interface {v15, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    :cond_12
    const/4 v11, 0x0

    .line 290
    goto :goto_9

    .line 291
    :cond_13
    invoke-static {v15, v12}, Ls8/f0;->e0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    :cond_14
    invoke-direct {v8, v13, v12}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :goto_b
    if-nez v8, :cond_15

    .line 299
    .line 300
    :goto_c
    const/4 v11, 0x0

    .line 301
    goto/16 :goto_14

    .line 302
    .line 303
    :cond_15
    iget-object v6, v8, Lr8/j;->a:Ljava/lang/Object;

    .line 304
    .line 305
    iget-object v7, v8, Lr8/j;->b:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v7, Ljava/util/Set;

    .line 308
    .line 309
    invoke-virtual {v0, v5}, Lea/b;->h(Ljava/lang/Object;)Lea/c0;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    if-nez v5, :cond_17

    .line 314
    .line 315
    invoke-virtual {v0, v6}, Lea/b;->h(Ljava/lang/Object;)Lea/c0;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    if-eqz v5, :cond_16

    .line 320
    .line 321
    goto :goto_d

    .line 322
    :cond_16
    iget-object v5, v2, Lea/u;->a:Lea/w;

    .line 323
    .line 324
    iget-object v5, v5, Lea/w;->a:Lea/c0;

    .line 325
    .line 326
    :cond_17
    :goto_d
    if-ne v5, v9, :cond_18

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_18
    const-string v8, "$this$extractNullability"

    .line 330
    .line 331
    invoke-static {v6, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/4 v8, 0x0

    .line 335
    invoke-virtual {v0, v6, v8}, Lea/b;->g(Ljava/lang/Object;Z)Lma/i;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    if-eqz v11, :cond_19

    .line 340
    .line 341
    move-object v6, v11

    .line 342
    :goto_e
    const/4 v9, 0x0

    .line 343
    const/4 v11, 0x0

    .line 344
    const/4 v12, 0x1

    .line 345
    goto :goto_13

    .line 346
    :cond_19
    invoke-virtual {v0, v6}, Lea/b;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v8

    .line 350
    if-nez v8, :cond_1a

    .line 351
    .line 352
    :goto_f
    const/4 v6, 0x0

    .line 353
    goto :goto_e

    .line 354
    :cond_1a
    invoke-virtual {v0, v6}, Lea/b;->h(Ljava/lang/Object;)Lea/c0;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    if-eqz v6, :cond_1b

    .line 359
    .line 360
    goto :goto_10

    .line 361
    :cond_1b
    iget-object v6, v2, Lea/u;->a:Lea/w;

    .line 362
    .line 363
    iget-object v6, v6, Lea/w;->a:Lea/c0;

    .line 364
    .line 365
    :goto_10
    if-ne v6, v9, :cond_1c

    .line 366
    .line 367
    goto :goto_f

    .line 368
    :cond_1c
    const/4 v9, 0x0

    .line 369
    invoke-virtual {v0, v8, v9}, Lea/b;->g(Ljava/lang/Object;Z)Lma/i;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    if-eqz v8, :cond_1e

    .line 374
    .line 375
    if-ne v6, v10, :cond_1d

    .line 376
    .line 377
    const/4 v6, 0x1

    .line 378
    :goto_11
    const/4 v11, 0x0

    .line 379
    const/4 v12, 0x1

    .line 380
    goto :goto_12

    .line 381
    :cond_1d
    const/4 v6, 0x0

    .line 382
    goto :goto_11

    .line 383
    :goto_12
    invoke-static {v8, v11, v6, v12}, Lma/i;->a(Lma/i;Lma/h;ZI)Lma/i;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    goto :goto_13

    .line 388
    :cond_1e
    const/4 v11, 0x0

    .line 389
    const/4 v12, 0x1

    .line 390
    move-object v6, v11

    .line 391
    :goto_13
    if-nez v6, :cond_1f

    .line 392
    .line 393
    goto :goto_14

    .line 394
    :cond_1f
    new-instance v8, Lea/m;

    .line 395
    .line 396
    if-ne v5, v10, :cond_20

    .line 397
    .line 398
    const/4 v9, 0x1

    .line 399
    :cond_20
    invoke-static {v6, v11, v9, v12}, Lma/i;->a(Lma/i;Lma/h;ZI)Lma/i;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    check-cast v7, Ljava/util/Collection;

    .line 404
    .line 405
    invoke-direct {v8, v5, v7}, Lea/m;-><init>(Lma/i;Ljava/util/Collection;)V

    .line 406
    .line 407
    .line 408
    move-object v11, v8

    .line 409
    :goto_14
    if-eqz v11, :cond_1

    .line 410
    .line 411
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    goto/16 :goto_0

    .line 415
    .line 416
    :cond_21
    const/4 v9, 0x0

    .line 417
    const/4 v12, 0x1

    .line 418
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_22

    .line 423
    .line 424
    goto :goto_18

    .line 425
    :cond_22
    new-instance v2, Ljava/util/EnumMap;

    .line 426
    .line 427
    const-class v3, Lea/a;

    .line 428
    .line 429
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-eqz v5, :cond_24

    .line 441
    .line 442
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    check-cast v5, Lea/m;

    .line 447
    .line 448
    iget-object v6, v5, Lea/m;->b:Ljava/util/Collection;

    .line 449
    .line 450
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    if-eqz v7, :cond_23

    .line 459
    .line 460
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    check-cast v7, Lea/a;

    .line 465
    .line 466
    invoke-virtual {v2, v7}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2, v7, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    goto :goto_15

    .line 473
    :cond_24
    if-eqz v1, :cond_25

    .line 474
    .line 475
    iget-object v3, v1, Lea/v;->a:Ljava/util/EnumMap;

    .line 476
    .line 477
    new-instance v4, Ljava/util/EnumMap;

    .line 478
    .line 479
    invoke-direct {v4, v3}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    .line 480
    .line 481
    .line 482
    goto :goto_16

    .line 483
    :cond_25
    new-instance v4, Ljava/util/EnumMap;

    .line 484
    .line 485
    invoke-direct {v4, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 486
    .line 487
    .line 488
    :goto_16
    invoke-virtual {v2}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    const/4 v7, 0x0

    .line 497
    :cond_26
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    if-eqz v3, :cond_27

    .line 502
    .line 503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    check-cast v3, Ljava/util/Map$Entry;

    .line 508
    .line 509
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    check-cast v5, Lea/a;

    .line 514
    .line 515
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    check-cast v3, Lea/m;

    .line 520
    .line 521
    if-eqz v3, :cond_26

    .line 522
    .line 523
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const/4 v7, 0x1

    .line 527
    goto :goto_17

    .line 528
    :cond_27
    if-nez v7, :cond_28

    .line 529
    .line 530
    :goto_18
    return-object v1

    .line 531
    :cond_28
    new-instance v1, Lea/v;

    .line 532
    .line 533
    invoke-direct {v1, v4}, Lea/v;-><init>(Ljava/util/EnumMap;)V

    .line 534
    .line 535
    .line 536
    return-object v1
.end method

.method public final g(Ljava/lang/Object;Z)Lma/i;
    .locals 8

    .line 1
    invoke-static {p1}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Lea/b;->a:Lea/u;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v2, Lea/t;->i:Lea/t;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Lea/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lea/c0;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v3, Lea/c0;->b:Lea/c0;

    .line 27
    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    sget-object v3, Lea/z;->k:Ljava/util/Set;

    .line 32
    .line 33
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v4, Lma/h;->c:Lma/h;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v3, Lea/z;->l:Ljava/util/Set;

    .line 44
    .line 45
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sget-object v6, Lma/h;->b:Lma/h;

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    :cond_3
    move-object v4, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    sget-object v3, Lea/z;->m:Ljava/util/Set;

    .line 56
    .line 57
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    sget-object v7, Lma/h;->a:Lma/h;

    .line 62
    .line 63
    if-eqz v3, :cond_6

    .line 64
    .line 65
    :cond_5
    move-object v4, v7

    .line 66
    goto :goto_0

    .line 67
    :cond_6
    sget-object v3, Lea/z;->g:Lua/c;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lua/c;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_a

    .line 74
    .line 75
    invoke-static {p1, v5}, Lea/b;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Ls8/p;->d0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Ljava/lang/String;

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    sparse-switch v0, :sswitch_data_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :sswitch_0
    const-string v0, "ALWAYS"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_a

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :sswitch_1
    const-string v0, "UNKNOWN"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :sswitch_2
    const-string v0, "NEVER"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_3

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :sswitch_3
    const-string v0, "MAYBE"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    :goto_0
    new-instance p1, Lma/i;

    .line 132
    .line 133
    sget-object v0, Lea/c0;->c:Lea/c0;

    .line 134
    .line 135
    if-ne v2, v0, :cond_8

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    if-eqz p2, :cond_9

    .line 139
    .line 140
    :goto_1
    const/4 v5, 0x1

    .line 141
    :cond_9
    invoke-direct {p1, v4, v5}, Lma/i;-><init>(Lma/h;Z)V

    .line 142
    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_a
    :goto_2
    return-object v1

    .line 146
    nop

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x45bf448 -> :sswitch_3
        0x46bd26c -> :sswitch_2
        0x19d1382a -> :sswitch_1
        0x7342860f -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(Ljava/lang/Object;)Lea/c0;
    .locals 3

    .line 1
    iget-object v0, p0, Lea/b;->a:Lea/u;

    .line 2
    .line 3
    iget-object v1, v0, Lea/u;->a:Lea/w;

    .line 4
    .line 5
    iget-object v1, v1, Lea/w;->c:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lea/c0;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    sget-object v1, Lea/z;->p:Lua/c;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lea/b;->c(Ljava/lang/Object;Lua/c;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_9

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p1, v1}, Lea/b;->a(Ljava/lang/Object;Z)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Ls8/p;->d0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, v0, Lea/u;->a:Lea/w;

    .line 43
    .line 44
    iget-object v0, v0, Lea/w;->b:Lea/c0;

    .line 45
    .line 46
    if-nez v0, :cond_8

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const v1, -0x7f610e2e

    .line 53
    .line 54
    .line 55
    if-eq v0, v1, :cond_6

    .line 56
    .line 57
    const v1, -0x6d97ad37

    .line 58
    .line 59
    .line 60
    if-eq v0, v1, :cond_4

    .line 61
    .line 62
    const v1, 0x288a86

    .line 63
    .line 64
    .line 65
    if-eq v0, v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "WARN"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    sget-object p1, Lea/c0;->c:Lea/c0;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_4
    const-string v0, "STRICT"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    sget-object p1, Lea/c0;->d:Lea/c0;

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_6
    const-string v0, "IGNORE"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_7

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    sget-object p1, Lea/c0;->b:Lea/c0;

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_8
    return-object v0

    .line 105
    :cond_9
    :goto_0
    const/4 p1, 0x0

    .line 106
    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "annotation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lea/b;->a:Lea/u;

    .line 7
    .line 8
    iget-object v0, v0, Lea/u;->a:Lea/w;

    .line 9
    .line 10
    iget-boolean v0, v0, Lea/w;->d:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lea/z;->j:Ljava/util/Set;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-static {p1}, Lea/b;->d(Ljava/lang/Object;)Lua/c;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Ls8/p;->Y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_8

    .line 29
    .line 30
    sget-object v0, Lea/z;->d:Lua/c;

    .line 31
    .line 32
    invoke-static {p1, v0}, Lea/b;->f(Ljava/lang/Object;Lua/c;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    sget-object v0, Lea/z;->e:Lua/c;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lea/b;->f(Ljava/lang/Object;Lua/c;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v0, p1

    .line 49
    check-cast v0, Lw9/b;

    .line 50
    .line 51
    invoke-static {v0}, Lbb/e;->d(Lw9/b;)Lv9/e;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lea/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-nez v3, :cond_7

    .line 65
    .line 66
    invoke-static {p1}, Lea/b;->e(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p0, v3}, Lea/b;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move-object v3, v1

    .line 92
    :goto_0
    if-nez v3, :cond_5

    .line 93
    .line 94
    :goto_1
    return-object v1

    .line 95
    :cond_5
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    return-object v3

    .line 102
    :cond_6
    return-object p1

    .line 103
    :cond_7
    return-object v3

    .line 104
    :cond_8
    :goto_2
    return-object p1
.end method
