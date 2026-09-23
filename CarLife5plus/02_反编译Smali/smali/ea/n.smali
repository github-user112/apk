.class public abstract Lea/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lea/a;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lea/a;->d:Lea/a;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    sget-object v3, Lea/a;->b:Lea/a;

    .line 11
    .line 12
    aput-object v3, v0, v2

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    sget-object v4, Lea/a;->c:Lea/a;

    .line 16
    .line 17
    aput-object v4, v0, v3

    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    sget-object v6, Lea/a;->f:Lea/a;

    .line 21
    .line 22
    aput-object v6, v0, v5

    .line 23
    .line 24
    sget-object v6, Lea/a;->e:Lea/a;

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    aput-object v6, v0, v7

    .line 28
    .line 29
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v4}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget-object v6, Lea/z;->a:Lua/c;

    .line 38
    .line 39
    new-instance v7, Lea/m;

    .line 40
    .line 41
    new-instance v8, Lma/i;

    .line 42
    .line 43
    sget-object v9, Lma/h;->c:Lma/h;

    .line 44
    .line 45
    invoke-direct {v8, v9}, Lma/i;-><init>(Lma/h;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v8, v0, v1}, Lea/m;-><init>(Lma/i;Ljava/util/Collection;Z)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Lr8/j;

    .line 52
    .line 53
    invoke-direct {v8, v6, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v6, Lea/z;->b:Lua/c;

    .line 57
    .line 58
    new-instance v7, Lea/m;

    .line 59
    .line 60
    new-instance v10, Lma/i;

    .line 61
    .line 62
    invoke-direct {v10, v9}, Lma/i;-><init>(Lma/h;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v7, v10, v0, v1}, Lea/m;-><init>(Lma/i;Ljava/util/Collection;Z)V

    .line 66
    .line 67
    .line 68
    new-instance v10, Lr8/j;

    .line 69
    .line 70
    invoke-direct {v10, v6, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object v6, Lea/z;->c:Lua/c;

    .line 74
    .line 75
    new-instance v7, Lea/m;

    .line 76
    .line 77
    new-instance v11, Lma/i;

    .line 78
    .line 79
    sget-object v12, Lma/h;->a:Lma/h;

    .line 80
    .line 81
    invoke-direct {v11, v12}, Lma/i;-><init>(Lma/h;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v7, v11, v0}, Lea/m;-><init>(Lma/i;Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lr8/j;

    .line 88
    .line 89
    invoke-direct {v0, v6, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-array v5, v5, [Lr8/j;

    .line 93
    .line 94
    aput-object v8, v5, v1

    .line 95
    .line 96
    aput-object v10, v5, v2

    .line 97
    .line 98
    aput-object v0, v5, v3

    .line 99
    .line 100
    invoke-static {v5}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lea/n;->a:Ljava/lang/Object;

    .line 105
    .line 106
    sget-object v5, Lea/z;->h:Lua/c;

    .line 107
    .line 108
    new-instance v6, Lea/m;

    .line 109
    .line 110
    new-instance v7, Lma/i;

    .line 111
    .line 112
    invoke-direct {v7, v9}, Lma/i;-><init>(Lma/h;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v6, v7, v4}, Lea/m;-><init>(Lma/i;Ljava/util/Collection;)V

    .line 116
    .line 117
    .line 118
    new-instance v7, Lr8/j;

    .line 119
    .line 120
    invoke-direct {v7, v5, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v5, Lea/z;->i:Lua/c;

    .line 124
    .line 125
    new-instance v6, Lea/m;

    .line 126
    .line 127
    new-instance v8, Lma/i;

    .line 128
    .line 129
    sget-object v9, Lma/h;->b:Lma/h;

    .line 130
    .line 131
    invoke-direct {v8, v9}, Lma/i;-><init>(Lma/h;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v6, v8, v4}, Lea/m;-><init>(Lma/i;Ljava/util/Collection;)V

    .line 135
    .line 136
    .line 137
    new-instance v4, Lr8/j;

    .line 138
    .line 139
    invoke-direct {v4, v5, v6}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-array v3, v3, [Lr8/j;

    .line 143
    .line 144
    aput-object v7, v3, v1

    .line 145
    .line 146
    aput-object v4, v3, v2

    .line 147
    .line 148
    invoke-static {v3}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 158
    .line 159
    .line 160
    sput-object v2, Lea/n;->c:Ljava/util/LinkedHashMap;

    .line 161
    .line 162
    return-void
.end method
