.class public final Lf1/b2;
.super Lf1/v;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final y:Ldc/l0;

.field public static final z:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final a:Lf1/f;

.field public final b:Ljava/lang/Object;

.field public c:Lac/v0;

.field public d:Ljava/lang/Throwable;

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/lang/Object;

.field public g:Ls/i0;

.field public final h:Lh1/e;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ls/h0;

.field public final l:Lu0/j;

.field public final m:Ls/h0;

.field public final n:Ls/h0;

.field public o:Ljava/util/ArrayList;

.field public p:Ljava/util/LinkedHashSet;

.field public q:Lac/i;

.field public r:La2/d;

.field public s:Z

.field public final t:Ldc/l0;

.field public final u:La2/b;

.field public final v:Lac/x0;

.field public final w:Lw8/h;

.field public final x:Lf1/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ll1/b;->d:Ll1/b;

    .line 2
    .line 3
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lf1/b2;->y:Ldc/l0;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lf1/b2;->z:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lw8/h;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf1/f;

    .line 5
    .line 6
    new-instance v1, La5/e;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    invoke-direct {v1, v2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lf1/f;-><init>(La5/e;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lf1/b2;->a:Lf1/f;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lf1/b2;->e:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Ls/i0;

    .line 32
    .line 33
    invoke-direct {v1}, Ls/i0;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lf1/b2;->g:Ls/i0;

    .line 37
    .line 38
    new-instance v1, Lh1/e;

    .line 39
    .line 40
    const/16 v2, 0x10

    .line 41
    .line 42
    new-array v2, v2, [Lf1/y;

    .line 43
    .line 44
    invoke-direct {v1, v2}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 48
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lf1/b2;->i:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lf1/b2;->j:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v1, Ls/h0;

    .line 64
    .line 65
    invoke-direct {v1}, Ls/h0;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lf1/b2;->k:Ls/h0;

    .line 69
    .line 70
    new-instance v1, Lu0/j;

    .line 71
    .line 72
    const/4 v2, 0x7

    .line 73
    invoke-direct {v1, v2}, Lu0/j;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lf1/b2;->l:Lu0/j;

    .line 77
    .line 78
    new-instance v1, Ls/h0;

    .line 79
    .line 80
    invoke-direct {v1}, Ls/h0;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lf1/b2;->m:Ls/h0;

    .line 84
    .line 85
    new-instance v1, Ls/h0;

    .line 86
    .line 87
    invoke-direct {v1}, Ls/h0;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lf1/b2;->n:Ls/h0;

    .line 91
    .line 92
    sget-object v1, Lf1/x1;->c:Lf1/x1;

    .line 93
    .line 94
    invoke-static {v1}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, p0, Lf1/b2;->t:Ldc/l0;

    .line 99
    .line 100
    new-instance v1, La2/b;

    .line 101
    .line 102
    const/16 v2, 0x11

    .line 103
    .line 104
    invoke-direct {v1, v2}, La2/b;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lf1/b2;->u:La2/b;

    .line 108
    .line 109
    sget-object v1, Lac/t;->b:Lac/t;

    .line 110
    .line 111
    invoke-interface {p1, v1}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lac/v0;

    .line 116
    .line 117
    new-instance v2, Lac/x0;

    .line 118
    .line 119
    invoke-direct {v2, v1}, Lac/x0;-><init>(Lac/v0;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, La8/q;

    .line 123
    .line 124
    const/4 v3, 0x7

    .line 125
    invoke-direct {v1, v3, p0}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v1}, Lac/c1;->y(Lf9/k;)Lac/h0;

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lf1/b2;->v:Lac/x0;

    .line 132
    .line 133
    invoke-interface {p1, v0}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1, v2}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Lf1/b2;->w:Lw8/h;

    .line 142
    .line 143
    new-instance p1, Lf1/w0;

    .line 144
    .line 145
    const/16 v0, 0x8

    .line 146
    .line 147
    invoke-direct {p1, v0}, Lf1/w0;-><init>(I)V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Lf1/b2;->x:Lf1/w0;

    .line 151
    .line 152
    return-void
.end method

.method public static final H(Ljava/util/ArrayList;Lf1/b2;Lf1/y;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lf1/b2;->b:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, p1, Lf1/b2;->j:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lf1/a1;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1
.end method

.method public static final u(Lf1/b2;Lf1/a2;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/b2;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Lac/i;

    .line 8
    .line 9
    invoke-static {p1}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1, p1}, Lac/i;-><init>(ILw8/c;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lac/i;->q()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lf1/b2;->D()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move-object p0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-object v0, p0, Lf1/b2;->q:Lac/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    :goto_0
    monitor-exit p1

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lac/i;->f(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Lac/i;->p()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 47
    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_2
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 52
    .line 53
    return-object p0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit p1

    .line 56
    throw p0

    .line 57
    :cond_3
    sget-object p0, Lr8/z;->a:Lr8/z;

    .line 58
    .line 59
    return-object p0
.end method

.method public static final v(Lf1/b2;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->k:Ls/h0;

    .line 5
    .line 6
    invoke-virtual {v1}, Ls/h0;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lf1/b2;->k:Ls/h0;

    .line 14
    .line 15
    invoke-static {v1}, Lh1/a;->b(Ls/h0;)Ls/d0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v3, p0, Lf1/b2;->k:Ls/h0;

    .line 20
    .line 21
    invoke-virtual {v3}, Ls/h0;->a()V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lf1/b2;->l:Lu0/j;

    .line 25
    .line 26
    iget-object v4, v3, Lu0/j;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v4, Ls/h0;

    .line 29
    .line 30
    invoke-virtual {v4}, Ls/h0;->a()V

    .line 31
    .line 32
    .line 33
    iget-object v3, v3, Lu0/j;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ls/h0;

    .line 36
    .line 37
    invoke-virtual {v3}, Ls/h0;->a()V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lf1/b2;->n:Ls/h0;

    .line 41
    .line 42
    invoke-virtual {v3}, Ls/h0;->a()V

    .line 43
    .line 44
    .line 45
    new-instance v3, Ls/d0;

    .line 46
    .line 47
    iget v4, v1, Ls/d0;->b:I

    .line 48
    .line 49
    invoke-direct {v3, v4}, Ls/d0;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iget-object v4, v1, Ls/d0;->a:[Ljava/lang/Object;

    .line 53
    .line 54
    iget v1, v1, Ls/d0;->b:I

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    :goto_0
    if-ge v5, v1, :cond_0

    .line 58
    .line 59
    aget-object v6, v4, v5

    .line 60
    .line 61
    check-cast v6, Lf1/a1;

    .line 62
    .line 63
    iget-object v7, p0, Lf1/b2;->m:Ls/h0;

    .line 64
    .line 65
    invoke-virtual {v7, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    new-instance v8, Lr8/j;

    .line 70
    .line 71
    invoke-direct {v8, v6, v7}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v8}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_0
    iget-object p0, p0, Lf1/b2;->m:Ls/h0;

    .line 83
    .line 84
    invoke-virtual {p0}, Ls/h0;->a()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    sget-object v3, Ls/m0;->b:Ls/d0;

    .line 89
    .line 90
    const-string p0, "null cannot be cast to non-null type androidx.collection.ObjectList<E of androidx.collection.ObjectListKt.emptyObjectList>"

    .line 91
    .line 92
    invoke-static {v3, p0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    :goto_1
    monitor-exit v0

    .line 96
    iget-object p0, v3, Ls/d0;->a:[Ljava/lang/Object;

    .line 97
    .line 98
    iget v0, v3, Ls/d0;->b:I

    .line 99
    .line 100
    :goto_2
    if-ge v2, v0, :cond_2

    .line 101
    .line 102
    aget-object v1, p0, v2

    .line 103
    .line 104
    check-cast v1, Lr8/j;

    .line 105
    .line 106
    iget-object v3, v1, Lr8/j;->a:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Lf1/a1;

    .line 109
    .line 110
    iget-object v1, v1, Lr8/j;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lf1/z0;

    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    return-void

    .line 118
    :goto_3
    monitor-exit v0

    .line 119
    throw p0
.end method

.method public static final w(Lf1/b2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lf1/b2;->C()Z

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0
.end method

.method public static final x(Lf1/b2;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lf1/b2;->E()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0
.end method

.method public static final y(Lf1/b2;Lac/v0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->d:Ljava/lang/Throwable;

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lf1/b2;->t:Ldc/l0;

    .line 9
    .line 10
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lf1/x1;

    .line 15
    .line 16
    sget-object v2, Lf1/x1;->b:Lf1/x1;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lf1/b2;->c:Lac/v0;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iput-object p1, p0, Lf1/b2;->c:Lac/v0;

    .line 29
    .line 30
    invoke-virtual {p0}, Lf1/b2;->B()Lac/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p1, "Recomposer already running"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "Recomposer shut down"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    monitor-exit v0

    .line 55
    throw p0
.end method

.method public static z(Lp1/b;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lp1/b;->w()Lp1/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lp1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lp1/b;->c()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {p0}, Lp1/b;->c()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->t:Ldc/l0;

    .line 5
    .line 6
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lf1/x1;

    .line 11
    .line 12
    sget-object v2, Lf1/x1;->e:Lf1/x1;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lf1/b2;->t:Ldc/l0;

    .line 22
    .line 23
    sget-object v3, Lf1/x1;->b:Lf1/x1;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    iget-object v0, p0, Lf1/b2;->v:Lac/x0;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw v1
.end method

.method public final B()Lac/g;
    .locals 8

    .line 1
    iget-object v0, p0, Lf1/b2;->t:Ldc/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lf1/x1;

    .line 8
    .line 9
    sget-object v2, Lf1/x1;->b:Lf1/x1;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lf1/b2;->j:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v3, p0, Lf1/b2;->i:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v4, p0, Lf1/b2;->h:Lh1/e;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-gtz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lf1/b2;->E()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lf1/y;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lf1/b2;->e:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    .line 49
    .line 50
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 51
    .line 52
    iput-object v0, p0, Lf1/b2;->f:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v0, Ls/i0;

    .line 55
    .line 56
    invoke-direct {v0}, Ls/i0;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lf1/b2;->g:Ls/i0;

    .line 60
    .line 61
    invoke-virtual {v4}, Lh1/e;->h()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    .line 69
    .line 70
    iput-object v5, p0, Lf1/b2;->o:Ljava/util/ArrayList;

    .line 71
    .line 72
    iget-object v0, p0, Lf1/b2;->q:Lac/i;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Lac/i;->u(Ljava/lang/Throwable;)Z

    .line 77
    .line 78
    .line 79
    :cond_1
    iput-object v5, p0, Lf1/b2;->q:Lac/i;

    .line 80
    .line 81
    iput-object v5, p0, Lf1/b2;->r:La2/d;

    .line 82
    .line 83
    return-object v5

    .line 84
    :cond_2
    iget-object v1, p0, Lf1/b2;->r:La2/d;

    .line 85
    .line 86
    sget-object v6, Lf1/x1;->f:Lf1/x1;

    .line 87
    .line 88
    sget-object v7, Lf1/x1;->c:Lf1/x1;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-object v1, p0, Lf1/b2;->c:Lac/v0;

    .line 94
    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    new-instance v1, Ls/i0;

    .line 98
    .line 99
    invoke-direct {v1}, Ls/i0;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lf1/b2;->g:Ls/i0;

    .line 103
    .line 104
    invoke-virtual {v4}, Lh1/e;->h()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lf1/b2;->C()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    sget-object v7, Lf1/x1;->d:Lf1/x1;

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    iget v1, v4, Lh1/e;->c:I

    .line 117
    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    iget-object v1, p0, Lf1/b2;->g:Ls/i0;

    .line 122
    .line 123
    invoke-virtual {v1}, Ls/i0;->h()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_7

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    invoke-virtual {p0}, Lf1/b2;->C()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    iget-object v1, p0, Lf1/b2;->k:Ls/h0;

    .line 148
    .line 149
    invoke-virtual {v1}, Ls/h0;->j()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    sget-object v7, Lf1/x1;->e:Lf1/x1;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    :goto_1
    move-object v7, v6

    .line 160
    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v5, v7}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    if-ne v7, v6, :cond_9

    .line 167
    .line 168
    iget-object v0, p0, Lf1/b2;->q:Lac/i;

    .line 169
    .line 170
    iput-object v5, p0, Lf1/b2;->q:Lac/i;

    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_9
    return-object v5
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf1/b2;->s:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lf1/b2;->a:Lf1/f;

    .line 6
    .line 7
    iget-object v0, v0, Lf1/f;->d:Ln1/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const v1, 0x7ffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->g:Ls/i0;

    .line 5
    .line 6
    invoke-virtual {v1}, Ls/i0;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 13
    .line 14
    iget v1, v1, Lh1/e;->c:I

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lf1/b2;->C()Z

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 31
    :goto_1
    monitor-exit v0

    .line 32
    return v1

    .line 33
    :goto_2
    monitor-exit v0

    .line 34
    throw v1
.end method

.method public final E()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->f:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lf1/b2;->e:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :goto_0
    iput-object v0, p0, Lf1/b2;->f:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lf1/b2;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method public final G(Lf1/y;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lf1/b2;->j:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-gtz v1, :cond_0

    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lf1/a1;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p1

    .line 28
    throw v0
.end method

.method public final I(Ljava/util/List;Ls/i0;)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v4, v2, :cond_1

    .line 18
    .line 19
    move-object/from16 v5, p1

    .line 20
    .line 21
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    move-object v7, v6

    .line 26
    check-cast v7, Lf1/a1;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    if-nez v8, :cond_0

    .line 37
    .line 38
    new-instance v8, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_0
    check-cast v8, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_11

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/util/Map$Entry;

    .line 73
    .line 74
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lf1/y;

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/util/List;

    .line 85
    .line 86
    iget-object v6, v5, Lf1/y;->v:Lf1/s;

    .line 87
    .line 88
    iget-boolean v6, v6, Lf1/s;->F:Z

    .line 89
    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    const-string v6, "Check failed"

    .line 93
    .line 94
    invoke-static {v6}, Lf1/t;->c(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    new-instance v6, La8/q;

    .line 98
    .line 99
    const/4 v7, 0x6

    .line 100
    invoke-direct {v6, v7, v5}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance v7, La8/v;

    .line 104
    .line 105
    const/4 v8, 0x7

    .line 106
    move-object/from16 v9, p2

    .line 107
    .line 108
    invoke-direct {v7, v8, v5, v9}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    instance-of v10, v8, Lp1/b;

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    if-eqz v10, :cond_3

    .line 119
    .line 120
    check-cast v8, Lp1/b;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move-object v8, v11

    .line 124
    :goto_2
    if-eqz v8, :cond_10

    .line 125
    .line 126
    invoke-virtual {v8, v6, v7}, Lp1/b;->D(Lf9/k;Lf9/k;)Lp1/b;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-eqz v6, :cond_10

    .line 131
    .line 132
    :try_start_0
    invoke-virtual {v6}, Lp1/f;->j()Lp1/f;

    .line 133
    .line 134
    .line 135
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 136
    :try_start_1
    iget-object v8, v1, Lf1/b2;->b:Ljava/lang/Object;

    .line 137
    .line 138
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    const/4 v13, 0x0

    .line 153
    :goto_3
    if-ge v13, v12, :cond_4

    .line 154
    .line 155
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    check-cast v14, Lf1/a1;

    .line 160
    .line 161
    iget-object v15, v1, Lf1/b2;->k:Ls/h0;

    .line 162
    .line 163
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-static {v15}, Lh1/a;->a(Ls/h0;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    move-object/from16 v16, v15

    .line 171
    .line 172
    check-cast v16, Lf1/a1;

    .line 173
    .line 174
    new-instance v3, Lr8/j;

    .line 175
    .line 176
    invoke-direct {v3, v14, v15}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto/16 :goto_d

    .line 187
    .line 188
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    const/4 v4, 0x0

    .line 193
    :goto_4
    if-ge v4, v3, :cond_8

    .line 194
    .line 195
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    check-cast v12, Lr8/j;

    .line 200
    .line 201
    iget-object v13, v12, Lr8/j;->b:Ljava/lang/Object;

    .line 202
    .line 203
    if-nez v13, :cond_7

    .line 204
    .line 205
    iget-object v13, v1, Lf1/b2;->l:Lu0/j;

    .line 206
    .line 207
    iget-object v12, v12, Lr8/j;->a:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v12, Lf1/a1;

    .line 210
    .line 211
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    iget-object v12, v13, Lu0/j;->b:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v12, Ls/h0;

    .line 217
    .line 218
    invoke-virtual {v12, v11}, Ls/h0;->b(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-eqz v12, :cond_7

    .line 223
    .line 224
    new-instance v3, Ljava/util/ArrayList;

    .line 225
    .line 226
    const/16 v4, 0xa

    .line 227
    .line 228
    invoke-static {v10, v4}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-eqz v10, :cond_6

    .line 244
    .line 245
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    check-cast v10, Lr8/j;

    .line 250
    .line 251
    iget-object v11, v10, Lr8/j;->b:Ljava/lang/Object;

    .line 252
    .line 253
    if-nez v11, :cond_5

    .line 254
    .line 255
    iget-object v11, v1, Lf1/b2;->l:Lu0/j;

    .line 256
    .line 257
    iget-object v12, v10, Lr8/j;->a:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v12, Lf1/a1;

    .line 260
    .line 261
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    iget-object v12, v11, Lu0/j;->b:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v12, Ls/h0;

    .line 267
    .line 268
    invoke-static {v12}, Lh1/a;->a(Ls/h0;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    check-cast v13, Lf1/c1;

    .line 273
    .line 274
    invoke-virtual {v12}, Ls/h0;->i()Z

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    if-eqz v12, :cond_5

    .line 279
    .line 280
    iget-object v11, v11, Lu0/j;->c:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v11, Ls/h0;

    .line 283
    .line 284
    invoke-virtual {v11}, Ls/h0;->a()V

    .line 285
    .line 286
    .line 287
    :cond_5
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_6
    move-object v10, v3

    .line 292
    goto :goto_6

    .line 293
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_8
    :goto_6
    :try_start_3
    monitor-exit v8

    .line 297
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    const/4 v4, 0x0

    .line 302
    :goto_7
    if-ge v4, v3, :cond_f

    .line 303
    .line 304
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    check-cast v8, Lr8/j;

    .line 309
    .line 310
    iget-object v8, v8, Lr8/j;->b:Ljava/lang/Object;

    .line 311
    .line 312
    if-nez v8, :cond_9

    .line 313
    .line 314
    add-int/lit8 v4, v4, 0x1

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_9
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    const/4 v4, 0x0

    .line 322
    :goto_8
    if-ge v4, v3, :cond_f

    .line 323
    .line 324
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    check-cast v8, Lr8/j;

    .line 329
    .line 330
    iget-object v8, v8, Lr8/j;->b:Ljava/lang/Object;

    .line 331
    .line 332
    if-eqz v8, :cond_a

    .line 333
    .line 334
    add-int/lit8 v4, v4, 0x1

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    const/4 v8, 0x0

    .line 351
    :goto_9
    if-ge v8, v4, :cond_c

    .line 352
    .line 353
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    check-cast v11, Lr8/j;

    .line 358
    .line 359
    iget-object v12, v11, Lr8/j;->b:Ljava/lang/Object;

    .line 360
    .line 361
    if-nez v12, :cond_b

    .line 362
    .line 363
    iget-object v11, v11, Lr8/j;->a:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v11, Lf1/a1;

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :catchall_1
    move-exception v0

    .line 369
    goto :goto_e

    .line 370
    :cond_b
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_c
    iget-object v4, v1, Lf1/b2;->b:Ljava/lang/Object;

    .line 374
    .line 375
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    :try_start_4
    iget-object v8, v1, Lf1/b2;->j:Ljava/util/ArrayList;

    .line 377
    .line 378
    invoke-static {v3, v8}, Ls8/u;->U(Ljava/lang/Iterable;Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 379
    .line 380
    .line 381
    :try_start_5
    monitor-exit v4

    .line 382
    new-instance v3, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .line 390
    .line 391
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    const/4 v8, 0x0

    .line 396
    :goto_b
    if-ge v8, v4, :cond_e

    .line 397
    .line 398
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    move-object v12, v11

    .line 403
    check-cast v12, Lr8/j;

    .line 404
    .line 405
    iget-object v12, v12, Lr8/j;->b:Ljava/lang/Object;

    .line 406
    .line 407
    if-eqz v12, :cond_d

    .line 408
    .line 409
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_e
    move-object v10, v3

    .line 416
    goto :goto_c

    .line 417
    :catchall_2
    move-exception v0

    .line 418
    monitor-exit v4

    .line 419
    throw v0

    .line 420
    :cond_f
    :goto_c
    invoke-virtual {v5, v10}, Lf1/y;->r(Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 421
    .line 422
    .line 423
    :try_start_6
    invoke-static {v7}, Lp1/f;->q(Lp1/f;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 424
    .line 425
    .line 426
    invoke-static {v6}, Lf1/b2;->z(Lp1/b;)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_1

    .line 430
    .line 431
    :catchall_3
    move-exception v0

    .line 432
    goto :goto_f

    .line 433
    :goto_d
    :try_start_7
    monitor-exit v8

    .line 434
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 435
    :goto_e
    :try_start_8
    invoke-static {v7}, Lp1/f;->q(Lp1/f;)V

    .line 436
    .line 437
    .line 438
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 439
    :goto_f
    invoke-static {v6}, Lf1/b2;->z(Lp1/b;)V

    .line 440
    .line 441
    .line 442
    throw v0

    .line 443
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 444
    .line 445
    const-string v2, "Cannot create a mutable snapshot of an read-only snapshot"

    .line 446
    .line 447
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v0

    .line 451
    :cond_11
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Ljava/lang/Iterable;

    .line 456
    .line 457
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    return-object v0
.end method

.method public final J(Lf1/y;Ls/i0;)Lf1/y;
    .locals 6

    .line 1
    iget-object v0, p1, Lf1/y;->v:Lf1/s;

    .line 2
    .line 3
    iget-boolean v0, v0, Lf1/s;->F:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    iget v0, p1, Lf1/y;->w:I

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-object v0, p0, Lf1/b2;->p:Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_1
    new-instance v0, La8/q;

    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    invoke-direct {v0, v3, p1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, La8/v;

    .line 33
    .line 34
    const/4 v4, 0x7

    .line 35
    invoke-direct {v3, v4, p1, p2}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    instance-of v5, v4, Lp1/b;

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    check-cast v4, Lp1/b;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v4, v1

    .line 50
    :goto_0
    if-eqz v4, :cond_5

    .line 51
    .line 52
    invoke-virtual {v4, v0, v3}, Lp1/b;->D(Lf9/k;Lf9/k;)Lp1/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {v0}, Lp1/f;->j()Lp1/f;

    .line 59
    .line 60
    .line 61
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {p2}, Ls/i0;->h()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-ne v4, v2, :cond_4

    .line 69
    .line 70
    new-instance v4, La8/n0;

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    invoke-direct {v4, v5, p2, p1}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p1, Lf1/y;->v:Lf1/s;

    .line 77
    .line 78
    iget-boolean v5, p2, Lf1/s;->F:Z

    .line 79
    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    const-string v5, "Preparing a composition while composing is not supported"

    .line 83
    .line 84
    invoke-static {v5}, Lf1/t;->c(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iput-boolean v2, p2, Lf1/s;->F:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    :try_start_2
    invoke-virtual {v4}, La8/n0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    :try_start_3
    iput-boolean v2, p2, Lf1/s;->F:Z

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    iput-boolean v2, p2, Lf1/s;->F:Z

    .line 98
    .line 99
    throw p1

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lf1/y;->x()Z

    .line 103
    .line 104
    .line 105
    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :try_start_4
    invoke-static {v3}, Lp1/f;->q(Lp1/f;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lf1/b2;->z(Lp1/b;)V

    .line 110
    .line 111
    .line 112
    if-eqz p2, :cond_6

    .line 113
    .line 114
    return-object p1

    .line 115
    :catchall_2
    move-exception p1

    .line 116
    goto :goto_3

    .line 117
    :goto_2
    :try_start_5
    invoke-static {v3}, Lp1/f;->q(Lp1/f;)V

    .line 118
    .line 119
    .line 120
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 121
    :goto_3
    invoke-static {v0}, Lf1/b2;->z(Lp1/b;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string p2, "Cannot create a mutable snapshot of an read-only snapshot"

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_6
    :goto_4
    return-object v1
.end method

.method public final K(Ljava/lang/Throwable;Lf1/y;)V
    .locals 3

    .line 1
    sget-object v0, Lf1/b2;->z:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, Lf1/m;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    const-string v1, "Error was captured in composition while live edit was enabled."

    .line 23
    .line 24
    const-string v2, "ComposeInternal"

    .line 25
    .line 26
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lf1/b2;->i:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 35
    .line 36
    invoke-virtual {v1}, Lh1/e;->h()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Ls/i0;

    .line 40
    .line 41
    invoke-direct {v1}, Ls/i0;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lf1/b2;->g:Ls/i0;

    .line 45
    .line 46
    iget-object v1, p0, Lf1/b2;->j:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lf1/b2;->k:Ls/h0;

    .line 52
    .line 53
    invoke-virtual {v1}, Ls/h0;->a()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lf1/b2;->m:Ls/h0;

    .line 57
    .line 58
    invoke-virtual {v1}, Ls/h0;->a()V

    .line 59
    .line 60
    .line 61
    new-instance v1, La2/d;

    .line 62
    .line 63
    const/16 v2, 0x11

    .line 64
    .line 65
    invoke-direct {v1, v2, p1}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lf1/b2;->r:La2/d;

    .line 69
    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Lf1/b2;->M(Lf1/y;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lf1/b2;->B()Lac/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v0

    .line 84
    throw p1

    .line 85
    :cond_1
    iget-object p2, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter p2

    .line 88
    :try_start_1
    iget-object v0, p0, Lf1/b2;->r:La2/d;

    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    new-instance v0, La2/d;

    .line 93
    .line 94
    const/16 v1, 0x11

    .line 95
    .line 96
    invoke-direct {v0, v1, p1}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lf1/b2;->r:La2/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .line 101
    monitor-exit p2

    .line 102
    throw p1

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    :try_start_2
    iget-object p1, v0, La2/d;->b:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Ljava/lang/Throwable;

    .line 108
    .line 109
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :goto_2
    monitor-exit p2

    .line 111
    throw p1
.end method

.method public final L()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->g:Ls/i0;

    .line 5
    .line 6
    invoke-virtual {v1}, Ls/i0;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 15
    .line 16
    iget v1, v1, Lh1/e;->c:I

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lf1/b2;->C()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lf1/b2;->k:Ls/h0;

    .line 28
    .line 29
    invoke-virtual {v1}, Ls/h0;->j()Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :cond_2
    :goto_0
    monitor-exit v0

    .line 38
    return v2

    .line 39
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lf1/b2;->E()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v4, p0, Lf1/b2;->g:Ls/i0;

    .line 44
    .line 45
    new-instance v5, Lh1/h;

    .line 46
    .line 47
    invoke-direct {v5, v4}, Lh1/h;-><init>(Ls/i0;)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Ls/i0;

    .line 51
    .line 52
    invoke-direct {v4}, Ls/i0;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Lf1/b2;->g:Ls/i0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 56
    .line 57
    monitor-exit v0

    .line 58
    :try_start_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v4, 0x0

    .line 63
    :goto_1
    if-ge v4, v0, :cond_4

    .line 64
    .line 65
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Lf1/y;

    .line 70
    .line 71
    invoke-virtual {v6, v5}, Lf1/y;->y(Lh1/h;)V

    .line 72
    .line 73
    .line 74
    iget-object v6, p0, Lf1/b2;->t:Ldc/l0;

    .line 75
    .line 76
    invoke-virtual {v6}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lf1/x1;

    .line 81
    .line 82
    sget-object v7, Lf1/x1;->b:Lf1/x1;

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 85
    .line 86
    .line 87
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    if-lez v6, :cond_4

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 96
    .line 97
    monitor-enter v0

    .line 98
    :try_start_3
    invoke-virtual {p0}, Lf1/b2;->B()Lac/g;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    iget-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 105
    .line 106
    iget v1, v1, Lh1/e;->c:I

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    invoke-virtual {p0}, Lf1/b2;->C()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    iget-object v1, p0, Lf1/b2;->k:Ls/h0;

    .line 118
    .line 119
    invoke-virtual {v1}, Ls/h0;->j()Z

    .line 120
    .line 121
    .line 122
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    const/4 v2, 0x0

    .line 127
    :cond_7
    :goto_2
    monitor-exit v0

    .line 128
    return v2

    .line 129
    :cond_8
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string v2, "called outside of runRecomposeAndApplyChanges"

    .line 132
    .line 133
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 137
    :catchall_1
    move-exception v1

    .line 138
    monitor-exit v0

    .line 139
    throw v1

    .line 140
    :goto_3
    iget-object v1, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 141
    .line 142
    monitor-enter v1

    .line 143
    :try_start_5
    iget-object v2, p0, Lf1/b2;->g:Ls/i0;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_9

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v2, v4}, Ls/i0;->j(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    monitor-exit v1

    .line 167
    throw v0

    .line 168
    :catchall_2
    move-exception v0

    .line 169
    monitor-exit v1

    .line 170
    throw v0

    .line 171
    :catchall_3
    move-exception v1

    .line 172
    monitor-exit v0

    .line 173
    throw v1
.end method

.method public final M(Lf1/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lf1/b2;->o:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lf1/b2;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lf1/b2;->f:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lf1/b2;->s:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lf1/b2;->s:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lf1/b2;->B()Lac/g;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 23
    .line 24
    check-cast v1, Lac/i;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lac/i;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    throw v1
.end method

.method public final a(Lf1/y;Lf9/n;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lf1/y;->v:Lf1/s;

    .line 2
    .line 3
    iget-boolean v0, v0, Lf1/s;->F:Z

    .line 4
    .line 5
    iget-object v1, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lf1/b2;->t:Ldc/l0;

    .line 9
    .line 10
    invoke-virtual {v2}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lf1/x1;

    .line 15
    .line 16
    sget-object v3, Lf1/x1;->b:Lf1/x1;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x1

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lf1/b2;->E()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    xor-int/2addr v4, v2

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    :goto_0
    monitor-exit v1

    .line 39
    :try_start_1
    new-instance v1, La8/q;

    .line 40
    .line 41
    const/4 v2, 0x6

    .line 42
    invoke-direct {v1, v2, p1}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, La8/v;

    .line 46
    .line 47
    const/4 v5, 0x7

    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-direct {v2, v5, p1, v6}, La8/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    instance-of v7, v5, Lp1/b;

    .line 57
    .line 58
    if-eqz v7, :cond_1

    .line 59
    .line 60
    check-cast v5, Lp1/b;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object v5, v6

    .line 64
    :goto_1
    if-eqz v5, :cond_5

    .line 65
    .line 66
    invoke-virtual {v5, v1, v2}, Lp1/b;->D(Lf9/k;Lf9/k;)Lp1/b;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v1}, Lp1/f;->j()Lp1/f;

    .line 73
    .line 74
    .line 75
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 76
    :try_start_3
    invoke-virtual {p1, p2}, Lf1/y;->j(Lf9/n;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 77
    .line 78
    .line 79
    :try_start_4
    invoke-static {v2}, Lp1/f;->q(Lp1/f;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 80
    .line 81
    .line 82
    :try_start_5
    invoke-static {v1}, Lf1/b2;->z(Lp1/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter p2

    .line 88
    :try_start_6
    iget-object v1, p0, Lf1/b2;->t:Ldc/l0;

    .line 89
    .line 90
    invoke-virtual {v1}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lf1/x1;

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-lez v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lf1/b2;->E()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    iget-object v1, p0, Lf1/b2;->e:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iput-object v6, p0, Lf1/b2;->f:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    goto :goto_3

    .line 122
    :cond_2
    :goto_2
    monitor-exit p2

    .line 123
    if-nez v0, :cond_3

    .line 124
    .line 125
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p2}, Lp1/f;->m()V

    .line 130
    .line 131
    .line 132
    :cond_3
    :try_start_7
    invoke-virtual {p0, p1}, Lf1/b2;->G(Lf1/y;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 133
    .line 134
    .line 135
    :try_start_8
    invoke-virtual {p1}, Lf1/y;->d()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lf1/y;->f()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 139
    .line 140
    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lp1/f;->m()V

    .line 148
    .line 149
    .line 150
    :cond_4
    return-void

    .line 151
    :catchall_2
    move-exception p1

    .line 152
    invoke-virtual {p0, p1, v6}, Lf1/b2;->K(Ljava/lang/Throwable;Lf1/y;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :catchall_3
    move-exception p2

    .line 157
    invoke-virtual {p0, p2, p1}, Lf1/b2;->K(Ljava/lang/Throwable;Lf1/y;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_3
    monitor-exit p2

    .line 162
    throw p1

    .line 163
    :catchall_4
    move-exception p2

    .line 164
    goto :goto_5

    .line 165
    :catchall_5
    move-exception p2

    .line 166
    goto :goto_4

    .line 167
    :catchall_6
    move-exception p2

    .line 168
    :try_start_9
    invoke-static {v2}, Lp1/f;->q(Lp1/f;)V

    .line 169
    .line 170
    .line 171
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 172
    :goto_4
    :try_start_a
    invoke-static {v1}, Lf1/b2;->z(Lp1/b;)V

    .line 173
    .line 174
    .line 175
    throw p2

    .line 176
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string v0, "Cannot create a mutable snapshot of an read-only snapshot"

    .line 179
    .line 180
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 184
    :goto_5
    if-eqz v4, :cond_6

    .line 185
    .line 186
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 187
    .line 188
    monitor-enter v0

    .line 189
    monitor-exit v0

    .line 190
    :cond_6
    invoke-virtual {p0, p2, p1}, Lf1/b2;->K(Ljava/lang/Throwable;Lf1/y;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :goto_6
    monitor-exit v1

    .line 195
    throw p1
.end method

.method public final b(Lf1/y;Lb3/i0;Lf9/n;)Ls/i0;
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b2;->u:La2/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p1, Lf1/y;->p:Lb3/i0;

    .line 5
    .line 6
    iput-object p2, p1, Lf1/y;->p:Lb3/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lf1/b2;->a(Lf1/y;Lf9/n;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, La2/b;->y()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Ls/i0;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p2, Ls/p0;->a:Ls/i0;

    .line 21
    .line 22
    const-string p3, "null cannot be cast to non-null type androidx.collection.ScatterSet<E of androidx.collection.ScatterSetKt.emptyScatterSet>"

    .line 23
    .line 24
    invoke-static {p2, p3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_2
    iput-object v2, p1, Lf1/y;->p:Lb3/i0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, La2/b;->Y(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :catchall_1
    move-exception p2

    .line 36
    :try_start_3
    iput-object v2, p1, Lf1/y;->p:Lb3/i0;

    .line 37
    .line 38
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :goto_1
    invoke-virtual {v0, v1}, La2/b;->Y(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final d()Z
    .locals 1

    .line 1
    sget-object v0, Lf1/b2;->z:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final g()J
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public final h()Lf1/u;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final j()Lw8/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/b2;->w:Lw8/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lf1/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lh1/e;->i(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lf1/b2;->B()Lac/g;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    check-cast p1, Lac/i;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lac/i;->f(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    throw p1
.end method

.method public final l(Lf1/a1;)Lf1/z0;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->m:Ls/h0;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ls/h0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lf1/z0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0

    .line 16
    throw p1
.end method

.method public final m(Lf1/y;Lb3/i0;Ls/i0;)Ls/i0;
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/b2;->u:La2/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lf1/b2;->L()Z

    .line 5
    .line 6
    .line 7
    new-instance v2, Lh1/h;

    .line 8
    .line 9
    invoke-direct {v2, p3}, Lh1/h;-><init>(Ls/i0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v2}, Lf1/y;->y(Lh1/h;)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p1, Lf1/y;->p:Lb3/i0;

    .line 16
    .line 17
    iput-object p2, p1, Lf1/y;->p:Lb3/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lf1/b2;->J(Lf1/y;Ls/i0;)Lf1/y;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lf1/b2;->G(Lf1/y;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lf1/y;->d()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lf1/y;->f()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p2

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {v0}, La2/b;->y()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Ls/i0;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object p2, Ls/p0;->a:Ls/i0;

    .line 47
    .line 48
    const-string v2, "null cannot be cast to non-null type androidx.collection.ScatterSet<E of androidx.collection.ScatterSetKt.emptyScatterSet>"

    .line 49
    .line 50
    invoke-static {p2, v2}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_1
    :try_start_2
    iput-object p3, p1, Lf1/y;->p:Lb3/i0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, La2/b;->Y(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object p2

    .line 59
    :catchall_1
    move-exception p1

    .line 60
    goto :goto_3

    .line 61
    :goto_2
    :try_start_3
    iput-object p3, p1, Lf1/y;->p:Lb3/i0;

    .line 62
    .line 63
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :goto_3
    invoke-virtual {v0, v1}, La2/b;->Y(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final n(Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p(Lf1/w1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->u:La2/b;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/b;->y()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ls/i0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Ls/p0;->a:Ls/i0;

    .line 12
    .line 13
    new-instance v1, Ls/i0;

    .line 14
    .line 15
    invoke-direct {v1}, Ls/i0;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, La2/b;->Y(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v1, p1}, Ls/i0;->a(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final q(Lf1/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->p:Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lf1/b2;->p:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    throw p1
.end method

.method public final t(Lf1/y;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/b2;->e:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lf1/b2;->f:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lf1/b2;->h:Lh1/e;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lh1/e;->k(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lf1/b2;->i:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0

    .line 29
    throw p1
.end method
