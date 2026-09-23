.class public final Lna/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field public static final d:Lra/e;

.field public static final e:Lra/e;


# instance fields
.field public a:Lhb/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Loa/a;->e:Loa/a;

    .line 2
    .line 3
    invoke-static {v0}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lna/f;->b:Ljava/util/Set;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v1, v0, [Loa/a;

    .line 11
    .line 12
    sget-object v2, Loa/a;->f:Loa/a;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 16
    .line 17
    sget-object v2, Loa/a;->i:Loa/a;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v1, v4

    .line 21
    .line 22
    invoke-static {v1}, Ls8/l;->k0([Ljava/lang/Object;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sput-object v1, Lna/f;->c:Ljava/util/Set;

    .line 27
    .line 28
    new-instance v1, Lra/e;

    .line 29
    .line 30
    filled-new-array {v4, v4, v0}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0, v3}, Lra/e;-><init>([IZ)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lra/e;

    .line 38
    .line 39
    const/16 v1, 0xb

    .line 40
    .line 41
    filled-new-array {v4, v4, v1}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1, v3}, Lra/e;-><init>([IZ)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lna/f;->d:Lra/e;

    .line 49
    .line 50
    new-instance v0, Lra/e;

    .line 51
    .line 52
    const/16 v1, 0xd

    .line 53
    .line 54
    filled-new-array {v4, v4, v1}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1, v3}, Lra/e;-><init>([IZ)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lna/f;->e:Lra/e;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a(Lv9/d0;Laa/c;)Ljb/r;
    .locals 13

    .line 1
    const-string v1, "Could not read data from "

    .line 2
    .line 3
    const-string v0, "kotlinClass"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p2, Laa/c;->b:Loa/b;

    .line 9
    .line 10
    iget-object v2, v0, Loa/b;->c:[Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Loa/b;->d:[Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v4, v0, Loa/b;->a:Loa/a;

    .line 20
    .line 21
    sget-object v5, Lna/f;->c:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v2, v3

    .line 31
    :goto_0
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    iget-object v8, v0, Loa/b;->b:Lra/e;

    .line 35
    .line 36
    iget-object v0, v0, Loa/b;->e:[Ljava/lang/String;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    :try_start_0
    invoke-static {v2, v0}, Lta/g;->h([Ljava/lang/String;[Ljava/lang/String;)Lr8/j;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Laa/c;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_1
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v1, v1, Lhb/i;->c:Lhb/j;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lna/f;->e()Lra/e;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v8, v1}, Lra/e;->b(Lra/e;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    move-object v0, v3

    .line 91
    :goto_2
    if-nez v0, :cond_4

    .line 92
    .line 93
    :goto_3
    return-object v3

    .line 94
    :cond_4
    iget-object v1, v0, Lr8/j;->a:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v7, v1

    .line 97
    check-cast v7, Lta/f;

    .line 98
    .line 99
    iget-object v0, v0, Lr8/j;->b:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v6, v0

    .line 102
    check-cast v6, Lpa/e0;

    .line 103
    .line 104
    new-instance v9, Lna/h;

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Lna/f;->d(Laa/c;)Lhb/o;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p2}, Lna/f;->f(Laa/c;)Z

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p2}, Lna/f;->b(Laa/c;)Ljb/j;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {v9, p2, v6, v7, v0}, Lna/h;-><init>(Laa/c;Lpa/e0;Lta/f;Ljb/j;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Ljb/r;

    .line 120
    .line 121
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v0, "scope for "

    .line 128
    .line 129
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, " in "

    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    sget-object v12, Lna/e;->a:Lna/e;

    .line 148
    .line 149
    move-object v5, p1

    .line 150
    invoke-direct/range {v4 .. v12}, Ljb/r;-><init>(Lv9/d0;Lpa/e0;Lra/f;Lra/a;Lna/h;Lhb/i;Ljava/lang/String;Lf9/a;)V

    .line 151
    .line 152
    .line 153
    return-object v4

    .line 154
    :cond_5
    throw v0
.end method

.method public final b(Laa/c;)Ljb/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lhb/i;->c:Lhb/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Laa/c;->b:Loa/b;

    .line 11
    .line 12
    iget p1, p1, Loa/b;->g:I

    .line 13
    .line 14
    and-int/lit8 v0, p1, 0x10

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    and-int/lit8 p1, p1, 0x20

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Ljb/j;->b:Ljb/j;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    :goto_0
    sget-object p1, Ljb/j;->a:Ljb/j;

    .line 27
    .line 28
    return-object p1
.end method

.method public final c()Lhb/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lna/f;->a:Lhb/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "components"

    .line 7
    .line 8
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final d(Laa/c;)Lhb/o;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lhb/i;->c:Lhb/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Laa/c;->b:Loa/b;

    .line 11
    .line 12
    iget-object v0, v0, Loa/b;->b:Lra/e;

    .line 13
    .line 14
    invoke-virtual {p0}, Lna/f;->e()Lra/e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lra/e;->b(Lra/e;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance v0, Lhb/o;

    .line 27
    .line 28
    iget-object v1, p1, Laa/c;->b:Loa/b;

    .line 29
    .line 30
    iget-object v1, v1, Loa/b;->b:Lra/e;

    .line 31
    .line 32
    sget-object v2, Lra/e;->g:Lra/e;

    .line 33
    .line 34
    invoke-virtual {p0}, Lna/f;->e()Lra/e;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0}, Lna/f;->e()Lra/e;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-boolean v5, v1, Lra/e;->f:Z

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    move-object v5, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v5, Lra/e;->h:Lra/e;

    .line 52
    .line 53
    :goto_0
    iget v6, v5, Lra/a;->b:I

    .line 54
    .line 55
    iget v7, v4, Lra/a;->b:I

    .line 56
    .line 57
    if-le v6, v7, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    if-ge v6, v7, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget v6, v5, Lra/a;->c:I

    .line 64
    .line 65
    iget v7, v4, Lra/a;->c:I

    .line 66
    .line 67
    if-le v6, v7, :cond_4

    .line 68
    .line 69
    :goto_1
    move-object v4, v5

    .line 70
    :cond_4
    :goto_2
    invoke-virtual {p1}, Laa/c;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object p1, p1, Laa/c;->a:Ljava/lang/Class;

    .line 75
    .line 76
    invoke-static {p1}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-direct/range {v0 .. v6}, Lhb/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lra/e;Lra/e;Ljava/lang/String;Lua/b;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public final e()Lra/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lhb/i;->c:Lhb/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lra/e;->g:Lra/e;

    .line 11
    .line 12
    return-object v0
.end method

.method public final f(Laa/c;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lhb/i;->c:Lhb/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lhb/i;->c:Lhb/j;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Laa/c;->b:Loa/b;

    .line 20
    .line 21
    iget v0, p1, Loa/b;->g:I

    .line 22
    .line 23
    and-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Loa/b;->b:Lra/e;

    .line 29
    .line 30
    sget-object v0, Lna/f;->d:Lra/e;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lra/a;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_0
    return v1
.end method

.method public final g(Laa/c;)Lhb/d;
    .locals 6

    .line 1
    const-string v0, "Could not read data from "

    .line 2
    .line 3
    iget-object v1, p1, Laa/c;->b:Loa/b;

    .line 4
    .line 5
    iget-object v2, v1, Loa/b;->c:[Ljava/lang/String;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, v1, Loa/b;->d:[Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v4, v1, Loa/b;->a:Loa/a;

    .line 15
    .line 16
    sget-object v5, Lna/f;->b:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v2, v3

    .line 26
    :goto_0
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_2
    iget-object v4, v1, Loa/b;->b:Lra/e;

    .line 30
    .line 31
    iget-object v1, v1, Loa/b;->e:[Ljava/lang/String;

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :try_start_0
    invoke-static {v2, v1}, Lta/g;->f([Ljava/lang/String;[Ljava/lang/String;)Lr8/j;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Lva/q; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Laa/c;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :goto_1
    invoke-virtual {p0}, Lna/f;->c()Lhb/i;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v1, v1, Lhb/i;->c:Lhb/j;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lna/f;->e()Lra/e;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v4, v1}, Lra/e;->b(Lra/e;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    move-object v0, v3

    .line 86
    :goto_2
    if-nez v0, :cond_4

    .line 87
    .line 88
    :goto_3
    return-object v3

    .line 89
    :cond_4
    iget-object v1, v0, Lr8/j;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lta/f;

    .line 92
    .line 93
    iget-object v0, v0, Lr8/j;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lpa/k;

    .line 96
    .line 97
    new-instance v2, Lna/p;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lna/f;->d(Laa/c;)Lhb/o;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lna/f;->f(Laa/c;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lna/f;->b(Laa/c;)Ljb/j;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v2, p1, v3}, Lna/p;-><init>(Laa/c;Ljb/j;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lhb/d;

    .line 113
    .line 114
    invoke-direct {p1, v1, v0, v4, v2}, Lhb/d;-><init>(Lra/f;Lpa/k;Lra/a;Lv9/m0;)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_5
    throw v0
.end method
