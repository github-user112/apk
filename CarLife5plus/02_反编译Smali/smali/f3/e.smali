.class public final Lf3/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf3/d;


# instance fields
.field public final a:Lib/d;

.field public final b:Lf3/a;

.field public final c:Landroid/support/v4/media/session/t;

.field public final d:Lf3/h;

.field public final e:La2/d;


# direct methods
.method public constructor <init>(Lib/d;Lf3/a;)V
    .locals 5

    .line 1
    sget-object v0, Lf3/f;->a:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    new-instance v1, Lf3/h;

    .line 4
    .line 5
    sget-object v2, Lf3/f;->a:Landroid/support/v4/media/session/t;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lf3/h;->a:Lf3/g;

    .line 11
    .line 12
    sget-object v3, Lj3/i;->a:Lbc/d;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lw8/i;->a:Lw8/i;

    .line 22
    .line 23
    invoke-interface {v2, v3}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lac/l1;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-direct {v3, v4}, Lac/x0;-><init>(Lac/v0;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v3}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 38
    .line 39
    .line 40
    new-instance v2, La2/d;

    .line 41
    .line 42
    const/16 v3, 0x12

    .line 43
    .line 44
    invoke-direct {v2, v3}, La2/d;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lf3/e;->a:Lib/d;

    .line 51
    .line 52
    iput-object p2, p0, Lf3/e;->b:Lf3/a;

    .line 53
    .line 54
    iput-object v0, p0, Lf3/e;->c:Landroid/support/v4/media/session/t;

    .line 55
    .line 56
    iput-object v1, p0, Lf3/e;->d:Lf3/h;

    .line 57
    .line 58
    iput-object v2, p0, Lf3/e;->e:La2/d;

    .line 59
    .line 60
    new-instance p1, La8/q;

    .line 61
    .line 62
    const/16 p2, 0x9

    .line 63
    .line 64
    invoke-direct {p1, p2, p0}, La8/q;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lf3/o;)Lf3/p;
    .locals 6

    .line 1
    iget-object v0, p0, Lf3/e;->c:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lib/d;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ls/s;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lf3/p;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-boolean v3, v2, Lf3/p;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    return-object v2

    .line 26
    :cond_0
    :try_start_1
    iget-object v2, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Ls/s;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ls/s;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lf3/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_1
    :goto_0
    monitor-exit v1

    .line 41
    :try_start_2
    iget-object v1, p0, Lf3/e;->d:Lf3/h;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v1, p1, Lf3/o;->a:Lf3/n;

    .line 47
    .line 48
    iget-object v2, p0, Lf3/e;->e:La2/d;

    .line 49
    .line 50
    iget-object v2, v2, La2/d;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lib/d;

    .line 53
    .line 54
    iget v3, p1, Lf3/o;->c:I

    .line 55
    .line 56
    iget-object v4, p1, Lf3/o;->b:Lf3/k;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    instance-of v5, v1, Lf3/b;

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    instance-of v5, v1, Lf3/m;

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    check-cast v1, Lf3/m;

    .line 70
    .line 71
    invoke-virtual {v2, v1, v4, v3}, Lib/d;->g(Lf3/m;Lf3/k;I)Landroid/graphics/Typeface;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v1, 0x0

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    :goto_1
    iget v1, v2, Lib/d;->a:I

    .line 79
    .line 80
    packed-switch v1, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-static {v1, v4, v3}, Lib/d;->e(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_2

    .line 89
    :pswitch_0
    const/4 v1, 0x0

    .line 90
    invoke-static {v1, v4, v3}, Lib/d;->d(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_2
    new-instance v2, Lf3/p;

    .line 95
    .line 96
    invoke-direct {v2, v1}, Lf3/p;-><init>(Landroid/graphics/Typeface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .line 98
    .line 99
    move-object v1, v2

    .line 100
    :goto_3
    if-eqz v1, :cond_6

    .line 101
    .line 102
    iget-object v2, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Lib/d;

    .line 105
    .line 106
    monitor-enter v2

    .line 107
    :try_start_3
    iget-object v3, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v3, Ls/s;

    .line 110
    .line 111
    invoke-virtual {v3, p1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_5

    .line 116
    .line 117
    iget-boolean v3, v1, Lf3/p;->b:Z

    .line 118
    .line 119
    if-eqz v3, :cond_5

    .line 120
    .line 121
    iget-object v0, v0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Ls/s;

    .line 124
    .line 125
    invoke-virtual {v0, p1, v1}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    goto :goto_5

    .line 131
    :cond_5
    :goto_4
    monitor-exit v2

    .line 132
    return-object v1

    .line 133
    :goto_5
    monitor-exit v2

    .line 134
    throw p1

    .line 135
    :cond_6
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string v0, "Could not load font"

    .line 138
    .line 139
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    :catch_0
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 145
    .line 146
    const-string v1, "Could not load font"

    .line 147
    .line 148
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :goto_6
    monitor-exit v1

    .line 153
    throw p1

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lf3/n;Lf3/k;II)Lf3/p;
    .locals 6

    .line 1
    new-instance v0, Lf3/o;

    .line 2
    .line 3
    iget-object v1, p0, Lf3/e;->b:Lf3/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v1, v1, Lf3/a;->a:I

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const v2, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p2, p2, Lf3/k;->a:I

    .line 19
    .line 20
    add-int/2addr p2, v1

    .line 21
    const/4 v1, 0x1

    .line 22
    const/16 v2, 0x3e8

    .line 23
    .line 24
    invoke-static {p2, v1, v2}, Li9/a;->n(III)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    new-instance v1, Lf3/k;

    .line 29
    .line 30
    invoke-direct {v1, p2}, Lf3/k;-><init>(I)V

    .line 31
    .line 32
    .line 33
    move-object v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move-object v2, p2

    .line 36
    :goto_1
    iget-object p2, p0, Lf3/e;->a:Lib/d;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v1, p1

    .line 43
    move v3, p3

    .line 44
    move v4, p4

    .line 45
    invoke-direct/range {v0 .. v5}, Lf3/o;-><init>(Lf3/n;Lf3/k;IILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lf3/e;->a(Lf3/o;)Lf3/p;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method
