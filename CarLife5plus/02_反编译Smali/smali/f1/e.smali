.class public Lf1/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lf1/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf1/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lf1/e;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lf1/e;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(I)V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    if-eq p0, v1, :cond_0

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    .line 11
    .line 12
    :goto_0
    const/4 v3, 0x2

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v4, 0x2

    .line 20
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v5, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction"

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    if-eq p0, v7, :cond_4

    .line 27
    .line 28
    if-eq p0, v3, :cond_3

    .line 29
    .line 30
    if-eq p0, v1, :cond_2

    .line 31
    .line 32
    if-eq p0, v0, :cond_2

    .line 33
    .line 34
    const-string v8, "storageManager"

    .line 35
    .line 36
    aput-object v8, v4, v6

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    aput-object v5, v4, v6

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const-string v8, "compute"

    .line 43
    .line 44
    aput-object v8, v4, v6

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const-string v8, "map"

    .line 48
    .line 49
    aput-object v8, v4, v6

    .line 50
    .line 51
    :goto_2
    if-eq p0, v1, :cond_6

    .line 52
    .line 53
    if-eq p0, v0, :cond_5

    .line 54
    .line 55
    aput-object v5, v4, v7

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_5
    const-string v5, "raceCondition"

    .line 59
    .line 60
    aput-object v5, v4, v7

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_6
    const-string v5, "recursionDetected"

    .line 64
    .line 65
    aput-object v5, v4, v7

    .line 66
    .line 67
    :goto_3
    if-eq p0, v1, :cond_7

    .line 68
    .line 69
    if-eq p0, v0, :cond_7

    .line 70
    .line 71
    const-string v5, "<init>"

    .line 72
    .line 73
    aput-object v5, v4, v3

    .line 74
    .line 75
    :cond_7
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eq p0, v1, :cond_8

    .line 80
    .line 81
    if-eq p0, v0, :cond_8

    .line 82
    .line 83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_4
    throw p0
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Inconsistent key detected. "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lkb/k;->b:Lkb/k;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " is expected, was: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, ", most probably race condition detected on input "

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " under "

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lf1/e;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lkb/l;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkb/l;->e(Ljava/lang/AssertionError;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Race condition detected on input "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ". Old value is "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " under "

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lf1/e;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lkb/l;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkb/l;->e(Ljava/lang/AssertionError;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/AssertionError;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Unable to remove "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, " under "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lf1/e;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lkb/l;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lkb/l;->e(Ljava/lang/AssertionError;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lf1/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf1/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lkb/l;

    .line 9
    .line 10
    iget-object v1, v0, Lkb/l;->b:Lkb/b;

    .line 11
    .line 12
    iget-object v2, v0, Lkb/l;->a:Lkb/n;

    .line 13
    .line 14
    iget-object v3, p0, Lf1/e;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object v5, Lub/k;->a:Lub/i;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    sget-object v7, Lkb/k;->b:Lkb/k;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    if-eq v4, v7, :cond_0

    .line 30
    .line 31
    invoke-static {v4}, Lub/k;->k(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    if-ne v4, v5, :cond_9

    .line 35
    .line 36
    move-object v4, v6

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    invoke-interface {v2}, Lkb/n;->lock()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v8, 0x3

    .line 46
    const-string v9, ""

    .line 47
    .line 48
    sget-object v10, Lkb/k;->c:Lkb/k;

    .line 49
    .line 50
    if-ne v4, v7, :cond_4

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {v0, p1, v9}, Lkb/l;->d(Ljava/lang/Object;Ljava/lang/String;)Ld6/h;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    iget-boolean v11, v4, Ld6/h;->b:Z

    .line 59
    .line 60
    if-nez v11, :cond_2

    .line 61
    .line 62
    iget-object v4, v4, Ld6/h;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    :cond_1
    :goto_0
    invoke-interface {v2}, Lkb/n;->unlock()V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_2
    move-object v4, v10

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :try_start_2
    invoke-static {v8}, Lf1/e;->a(I)V

    .line 74
    .line 75
    .line 76
    throw v6

    .line 77
    :cond_4
    :goto_1
    if-ne v4, v10, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0, p1, v9}, Lkb/l;->d(Ljava/lang/Object;Ljava/lang/String;)Ld6/h;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-boolean v8, v0, Ld6/h;->b:Z

    .line 86
    .line 87
    if-nez v8, :cond_6

    .line 88
    .line 89
    iget-object v4, v0, Ld6/h;->c:Ljava/lang/Object;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    invoke-static {v8}, Lf1/e;->a(I)V

    .line 93
    .line 94
    .line 95
    throw v6

    .line 96
    :cond_6
    if-eqz v4, :cond_7

    .line 97
    .line 98
    invoke-static {v4}, Lub/k;->k(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    if-ne v4, v5, :cond_1

    .line 102
    .line 103
    move-object v4, v6

    .line 104
    goto :goto_0

    .line 105
    :cond_7
    :try_start_3
    invoke-virtual {v3, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lf1/e;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lf9/k;

    .line 111
    .line 112
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-nez v4, :cond_8

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_8
    move-object v5, v4

    .line 120
    :goto_2
    invoke-virtual {v3, p1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-ne v0, v7, :cond_a

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_9
    :goto_3
    return-object v4

    .line 128
    :cond_a
    invoke-virtual {p0, p1, v0}, Lf1/e;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    :try_start_4
    invoke-static {v0}, Lub/k;->i(Ljava/lang/Throwable;)Z

    .line 135
    .line 136
    .line 137
    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    if-eqz v4, :cond_c

    .line 139
    .line 140
    :try_start_5
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 144
    if-eq v1, v7, :cond_b

    .line 145
    .line 146
    :try_start_6
    invoke-virtual {p0, p1, v1}, Lf1/e;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    throw p1

    .line 151
    :cond_b
    check-cast v0, Ljava/lang/RuntimeException;

    .line 152
    .line 153
    throw v0

    .line 154
    :catchall_2
    move-exception v0

    .line 155
    invoke-virtual {p0, p1, v0}, Lf1/e;->i(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    throw p1

    .line 160
    :cond_c
    if-eq v0, v6, :cond_e

    .line 161
    .line 162
    new-instance v4, Lub/j;

    .line 163
    .line 164
    invoke-direct {v4, v0}, Lub/j;-><init>(Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-eq v3, v7, :cond_d

    .line 172
    .line 173
    invoke-virtual {p0, p1, v3}, Lf1/e;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    throw p1

    .line 178
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    :cond_e
    :try_start_7
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 183
    .line 184
    .line 185
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :catchall_3
    move-exception v0

    .line 190
    invoke-virtual {p0, p1, v0}, Lf1/e;->i(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 195
    :goto_4
    invoke-interface {v2}, Lkb/n;->unlock()V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 200
    .line 201
    iget-object p1, p0, Lf1/e;->b:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p1, Lf1/d;

    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    iput-object v0, p1, Lf1/d;->a:Lf9/k;

    .line 207
    .line 208
    iput-object v0, p1, Lf1/d;->b:Lac/i;

    .line 209
    .line 210
    iget-object p1, p0, Lf1/e;->c:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p1, Lf1/f;

    .line 213
    .line 214
    iget-object p1, p1, Lf1/f;->d:Ln1/a;

    .line 215
    .line 216
    iget-object v0, p0, Lf1/e;->d:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Lg9/v;

    .line 219
    .line 220
    iget v0, v0, Lg9/v;->a:I

    .line 221
    .line 222
    :cond_f
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    ushr-int/lit8 v2, v1, 0x1b

    .line 227
    .line 228
    and-int/lit8 v2, v2, 0xf

    .line 229
    .line 230
    if-ne v2, v0, :cond_10

    .line 231
    .line 232
    add-int/lit8 v2, v1, -0x1

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_10
    move v2, v1

    .line 236
    :goto_5
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_f

    .line 241
    .line 242
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 243
    .line 244
    return-object p1

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
