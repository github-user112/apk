.class public final Lf1/f2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lac/w;
.implements Lf1/c2;


# static fields
.field public static final d:Lf1/g;


# instance fields
.field public final a:Lw8/h;

.field public final b:Lf1/f2;

.field public volatile c:Lw8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf1/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf1/f2;->d:Lf1/g;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lw8/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/f2;->a:Lw8/h;

    .line 5
    .line 6
    iput-object p0, p0, Lf1/f2;->b:Lf1/f2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/f2;->b:Lf1/f2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lf1/f2;->c:Lw8/h;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lf1/f2;->d:Lf1/g;

    .line 9
    .line 10
    iput-object v1, p0, Lf1/f2;->c:Lw8/h;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v2, Lf1/k0;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3}, Lf1/k0;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lac/t;->b:Lac/t;

    .line 22
    .line 23
    invoke-interface {v1, v3}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lac/v0;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v1, v2}, Lac/v0;->a(Ljava/util/concurrent/CancellationException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    throw v1
.end method

.method public final d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf1/f2;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf1/f2;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    return-void
.end method

.method public final q()Lw8/h;
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/f2;->c:Lw8/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lf1/f2;->d:Lf1/g;

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lf1/f2;->a:Lw8/h;

    .line 10
    .line 11
    sget-object v1, Lq1/b;->b:Ln6/a;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lq1/b;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v1, Lf1/e2;

    .line 22
    .line 23
    invoke-direct {v1, v0, p0}, Lf1/e2;-><init>(Lq1/b;Lf1/f2;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object v1, Lw8/i;->a:Lw8/i;

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lf1/f2;->b:Lf1/f2;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v2, p0, Lf1/f2;->c:Lw8/h;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lf1/f2;->a:Lw8/h;

    .line 37
    .line 38
    sget-object v3, Lac/t;->b:Lac/t;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lac/v0;

    .line 45
    .line 46
    new-instance v4, Lac/x0;

    .line 47
    .line 48
    invoke-direct {v4, v3}, Lac/x0;-><init>(Lac/v0;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v4}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v3, Lw8/i;->a:Lw8/i;

    .line 56
    .line 57
    invoke-interface {v2, v3}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2, v1}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    sget-object v3, Lf1/f2;->d:Lf1/g;

    .line 69
    .line 70
    if-ne v2, v3, :cond_3

    .line 71
    .line 72
    iget-object v2, p0, Lf1/f2;->a:Lw8/h;

    .line 73
    .line 74
    sget-object v3, Lac/t;->b:Lac/t;

    .line 75
    .line 76
    invoke-interface {v2, v3}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lac/v0;

    .line 81
    .line 82
    new-instance v4, Lac/x0;

    .line 83
    .line 84
    invoke-direct {v4, v3}, Lac/x0;-><init>(Lac/v0;)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Lf1/k0;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-direct {v3, v5}, Lf1/k0;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v3}, Lac/c1;->D(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v4}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    sget-object v3, Lw8/i;->a:Lw8/i;

    .line 101
    .line 102
    invoke-interface {v2, v3}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v2, v1}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move-object v1, v2

    .line 112
    :goto_1
    iput-object v1, p0, Lf1/f2;->c:Lw8/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    monitor-exit v0

    .line 115
    move-object v0, v1

    .line 116
    :cond_4
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-object v0

    .line 120
    :goto_2
    monitor-exit v0

    .line 121
    throw v1
.end method
