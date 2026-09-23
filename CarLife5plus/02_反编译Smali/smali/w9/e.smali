.class public abstract Lw9/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lua/e;

.field public static final b:Lua/e;

.field public static final c:Lua/e;

.field public static final d:Lua/e;

.field public static final e:Lua/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lw9/e;->a:Lua/e;

    .line 8
    .line 9
    const-string v0, "replaceWith"

    .line 10
    .line 11
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lw9/e;->b:Lua/e;

    .line 16
    .line 17
    const-string v0, "level"

    .line 18
    .line 19
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lw9/e;->c:Lua/e;

    .line 24
    .line 25
    const-string v0, "expression"

    .line 26
    .line 27
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lw9/e;->d:Lua/e;

    .line 32
    .line 33
    const-string v0, "imports"

    .line 34
    .line 35
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lw9/e;->e:Lua/e;

    .line 40
    .line 41
    return-void
.end method

.method public static final a(Ls9/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lw9/j;
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "replaceWith"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lw9/j;

    .line 17
    .line 18
    sget-object v1, Ls9/o;->o:Lua/c;

    .line 19
    .line 20
    new-instance v2, Lza/w;

    .line 21
    .line 22
    invoke-direct {v2, p2}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lr8/j;

    .line 26
    .line 27
    sget-object v3, Lw9/e;->d:Lua/e;

    .line 28
    .line 29
    invoke-direct {p2, v3, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lza/b;

    .line 33
    .line 34
    new-instance v3, Ls9/g;

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-direct {v3, p0, v4}, Ls9/g;-><init>(Ls9/i;I)V

    .line 38
    .line 39
    .line 40
    sget-object v5, Ls8/w;->a:Ls8/w;

    .line 41
    .line 42
    invoke-direct {v2, v5, v3}, Lza/b;-><init>(Ljava/util/List;Lf9/k;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lr8/j;

    .line 46
    .line 47
    sget-object v5, Lw9/e;->e:Lua/e;

    .line 48
    .line 49
    invoke-direct {v3, v5, v2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    new-array v5, v2, [Lr8/j;

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    aput-object p2, v5, v6

    .line 57
    .line 58
    aput-object v3, v5, v4

    .line 59
    .line 60
    invoke-static {v5}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-direct {v0, p0, v1, p2}, Lw9/j;-><init>(Ls9/i;Lua/c;Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lw9/j;

    .line 68
    .line 69
    sget-object v1, Ls9/o;->m:Lua/c;

    .line 70
    .line 71
    new-instance v3, Lza/w;

    .line 72
    .line 73
    invoke-direct {v3, p1}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lr8/j;

    .line 77
    .line 78
    sget-object v5, Lw9/e;->a:Lua/e;

    .line 79
    .line 80
    invoke-direct {p1, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lza/a;

    .line 84
    .line 85
    invoke-direct {v3, v0}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lr8/j;

    .line 89
    .line 90
    sget-object v5, Lw9/e;->b:Lua/e;

    .line 91
    .line 92
    invoke-direct {v0, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lza/i;

    .line 96
    .line 97
    sget-object v5, Ls9/o;->n:Lua/c;

    .line 98
    .line 99
    const-string v7, "topLevelFqName"

    .line 100
    .line 101
    invoke-static {v5, v7}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v7, Lua/b;

    .line 105
    .line 106
    invoke-virtual {v5}, Lua/c;->b()Lua/c;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    iget-object v5, v5, Lua/c;->a:Lua/d;

    .line 111
    .line 112
    invoke-virtual {v5}, Lua/d;->f()Lua/e;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-direct {v7, v8, v5}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p3}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-direct {v3, v7, p3}, Lza/i;-><init>(Lua/b;Lua/e;)V

    .line 124
    .line 125
    .line 126
    new-instance p3, Lr8/j;

    .line 127
    .line 128
    sget-object v5, Lw9/e;->c:Lua/e;

    .line 129
    .line 130
    invoke-direct {p3, v5, v3}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    const/4 v3, 0x3

    .line 134
    new-array v3, v3, [Lr8/j;

    .line 135
    .line 136
    aput-object p1, v3, v6

    .line 137
    .line 138
    aput-object v0, v3, v4

    .line 139
    .line 140
    aput-object p3, v3, v2

    .line 141
    .line 142
    invoke-static {v3}, Ls8/b0;->L([Lr8/j;)Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p2, p0, v1, p1}, Lw9/j;-><init>(Ls9/i;Lua/c;Ljava/util/Map;)V

    .line 147
    .line 148
    .line 149
    return-object p2
.end method
