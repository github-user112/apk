.class public final Landroidx/lifecycle/m0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/q0;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/p0;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/v;

.field public final e:Landroid/support/v4/media/session/t;


# direct methods
.method public constructor <init>(Landroid/app/Application;La5/g;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, La5/g;->d()Landroid/support/v4/media/session/t;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/lifecycle/m0;->e:Landroid/support/v4/media/session/t;

    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Landroidx/lifecycle/m0;->d:Landroidx/lifecycle/v;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/lifecycle/m0;->a:Landroid/app/Application;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget-object p2, Landroidx/lifecycle/p0;->g:Landroidx/lifecycle/p0;

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    new-instance p2, Landroidx/lifecycle/p0;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Landroidx/lifecycle/p0;-><init>(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    sput-object p2, Landroidx/lifecycle/p0;->g:Landroidx/lifecycle/p0;

    .line 32
    .line 33
    :cond_0
    sget-object p1, Landroidx/lifecycle/p0;->g:Landroidx/lifecycle/p0;

    .line 34
    .line 35
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Landroidx/lifecycle/p0;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Landroidx/lifecycle/p0;-><init>(Landroid/app/Application;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/m0;->b:Landroidx/lifecycle/p0;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/o0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/m0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/o0;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/m0;->d:Landroidx/lifecycle/v;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    const-class v1, Landroidx/lifecycle/a;

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/lifecycle/m0;->a:Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    sget-object v2, Landroidx/lifecycle/n0;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p2, v2}, Landroidx/lifecycle/n0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Landroidx/lifecycle/n0;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {p2, v2}, Landroidx/lifecycle/n0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    if-nez v2, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/lifecycle/m0;->a:Landroid/app/Application;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Landroidx/lifecycle/m0;->b:Landroidx/lifecycle/p0;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroidx/lifecycle/p0;->a(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_1
    sget-object p1, Lib/d;->b:Lib/d;

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    new-instance p1, Lib/d;

    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    invoke-direct {p1, v0}, Lib/d;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lib/d;->b:Lib/d;

    .line 54
    .line 55
    :cond_2
    sget-object p1, Lib/d;->b:Lib/d;

    .line 56
    .line 57
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lp9/q;->w(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_3
    iget-object v3, p0, Landroidx/lifecycle/m0;->e:Landroid/support/v4/media/session/t;

    .line 66
    .line 67
    invoke-static {v3}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-virtual {v3, p1}, Landroid/support/v4/media/session/t;->L0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v5, v4}, Landroidx/lifecycle/i0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/g0;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-instance v5, Landroidx/lifecycle/h0;

    .line 81
    .line 82
    invoke-direct {v5, p1, v4}, Landroidx/lifecycle/h0;-><init>(Ljava/lang/String;Landroidx/lifecycle/g0;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v3, v0}, Landroidx/lifecycle/h0;->i(Landroid/support/v4/media/session/t;Landroidx/lifecycle/v;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/o;

    .line 89
    .line 90
    sget-object v6, Landroidx/lifecycle/o;->b:Landroidx/lifecycle/o;

    .line 91
    .line 92
    if-eq p1, v6, :cond_5

    .line 93
    .line 94
    sget-object v6, Landroidx/lifecycle/o;->d:Landroidx/lifecycle/o;

    .line 95
    .line 96
    invoke-virtual {p1, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-ltz p1, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    new-instance p1, Landroidx/lifecycle/g;

    .line 104
    .line 105
    invoke-direct {p1, v3, v0}, Landroidx/lifecycle/g;-><init>(Landroid/support/v4/media/session/t;Landroidx/lifecycle/v;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/media/session/t;->i1()V

    .line 113
    .line 114
    .line 115
    :goto_2
    const/4 p1, 0x1

    .line 116
    const/4 v0, 0x0

    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    iget-object v1, p0, Landroidx/lifecycle/m0;->a:Landroid/app/Application;

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    const/4 v3, 0x2

    .line 124
    new-array v3, v3, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v1, v3, v0

    .line 127
    .line 128
    aput-object v4, v3, p1

    .line 129
    .line 130
    invoke-static {p2, v2, v3}, Landroidx/lifecycle/n0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/o0;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    new-array p1, p1, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object v4, p1, v0

    .line 138
    .line 139
    invoke-static {p2, v2, p1}, Landroidx/lifecycle/n0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/o0;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :goto_3
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    iget-object v0, p1, Landroidx/lifecycle/o0;->a:Lv4/a;

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    iget-boolean v1, v0, Lv4/a;->d:Z

    .line 153
    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    invoke-static {v5}, Lv4/a;->a(Ljava/lang/AutoCloseable;)V

    .line 157
    .line 158
    .line 159
    return-object p1

    .line 160
    :cond_7
    iget-object v1, v0, Lv4/a;->a:Ln6/a;

    .line 161
    .line 162
    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, v0, Lv4/a;->b:Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-interface {v0, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .line 171
    monitor-exit v1

    .line 172
    invoke-static {p2}, Lv4/a;->a(Ljava/lang/AutoCloseable;)V

    .line 173
    .line 174
    .line 175
    return-object p1

    .line 176
    :catchall_0
    move-exception p1

    .line 177
    monitor-exit v1

    .line 178
    throw p1

    .line 179
    :cond_8
    return-object p1

    .line 180
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 181
    .line 182
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1
.end method

.method public final c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;
    .locals 5

    .line 1
    sget-object v0, Landroidx/lifecycle/i0;->d:Lib/d;

    .line 2
    .line 3
    iget-object v1, p2, Lu4/b;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    sget-object v2, Landroidx/lifecycle/i0;->a:Lib/d;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    sget-object v2, Landroidx/lifecycle/i0;->b:Lib/d;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    sget-object v0, Landroidx/lifecycle/p0;->h:Lib/d;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/Application;

    .line 36
    .line 37
    const-class v1, Landroidx/lifecycle/a;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    sget-object v2, Landroidx/lifecycle/n0;->a:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {p1, v2}, Landroidx/lifecycle/n0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v2, Landroidx/lifecycle/n0;->b:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {p1, v2}, Landroidx/lifecycle/n0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_0
    if-nez v2, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/lifecycle/m0;->b:Landroidx/lifecycle/p0;

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/p0;->c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_1
    const/4 v3, 0x1

    .line 70
    const/4 v4, 0x0

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-static {p2}, Landroidx/lifecycle/i0;->c(Lu4/c;)Landroidx/lifecycle/g0;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 v1, 0x2

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v0, v1, v4

    .line 83
    .line 84
    aput-object p2, v1, v3

    .line 85
    .line 86
    invoke-static {p1, v2, v1}, Landroidx/lifecycle/n0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/o0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/i0;->c(Lu4/c;)Landroidx/lifecycle/g0;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-array v0, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object p2, v0, v4

    .line 98
    .line 99
    invoke-static {p1, v2, v0}, Landroidx/lifecycle/n0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/o0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/m0;->d:Landroidx/lifecycle/v;

    .line 105
    .line 106
    if-eqz p2, :cond_4

    .line 107
    .line 108
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/m0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public final f(Lm9/c;Lu4/c;)Landroidx/lifecycle/o0;
    .locals 0

    .line 1
    invoke-static {p1}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
