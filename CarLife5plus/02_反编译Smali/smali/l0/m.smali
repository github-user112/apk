.class public final synthetic Ll0/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Ll0/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll0/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ll0/m;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ll0/m;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Ll0/m;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Ll0/m;->f:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Ll0/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll0/m;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo6/e;

    .line 9
    .line 10
    iget-object v1, p0, Ll0/m;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/app/Activity;

    .line 13
    .line 14
    iget-object v2, p0, Ll0/m;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/List;

    .line 17
    .line 18
    iget-object v3, p0, Ll0/m;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ld6/f;

    .line 21
    .line 22
    iget-object v4, p0, Ll0/m;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Lib/d;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2, v3, v4, v0}, Lb3/q;->q(Landroid/app/Activity;Ljava/util/List;Ld6/f;Lib/d;Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Ll0/m;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lb3/o0;

    .line 36
    .line 37
    iget-object v1, p0, Ll0/m;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ln3/m;

    .line 40
    .line 41
    iget-object v2, p0, Ll0/m;->d:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v4, v2

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, p0, Ll0/m;->e:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v9, v2

    .line 49
    check-cast v9, Ln3/c;

    .line 50
    .line 51
    iget-object v2, p0, Ll0/m;->f:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v8, v2

    .line 54
    check-cast v8, Lf3/d;

    .line 55
    .line 56
    const-string v2, "BackgroundTextMeasurement"

    .line 57
    .line 58
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    instance-of v3, v2, Lp1/b;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    check-cast v2, Lp1/b;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v2, v5

    .line 74
    :goto_0
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v2, v5, v5}, Lp1/b;->D(Lf9/k;Lf9/k;)Lp1/b;

    .line 77
    .line 78
    .line 79
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    :try_start_1
    invoke-virtual {v2}, Lp1/f;->j()Lp1/f;

    .line 83
    .line 84
    .line 85
    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-static {v0, v1}, Lb3/d0;->h(Lb3/o0;Ln3/m;)Lb3/o0;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    sget-object v6, Ls8/w;->a:Ls8/w;

    .line 91
    .line 92
    new-instance v3, Lj3/d;

    .line 93
    .line 94
    move-object v7, v6

    .line 95
    invoke-direct/range {v3 .. v9}, Lj3/d;-><init>(Ljava/lang/String;Lb3/o0;Ljava/util/List;Ljava/util/List;Lf3/d;Ln3/c;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lj3/d;->h()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    .line 100
    .line 101
    :try_start_3
    invoke-static {v10}, Lp1/f;->q(Lp1/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    .line 103
    .line 104
    :try_start_4
    invoke-virtual {v2}, Lp1/b;->w()Lp1/q;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lp1/q;->d()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Lp1/b;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception v0

    .line 121
    goto :goto_1

    .line 122
    :catchall_2
    move-exception v0

    .line 123
    :try_start_5
    invoke-static {v10}, Lp1/f;->q(Lp1/f;)V

    .line 124
    .line 125
    .line 126
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 127
    :goto_1
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 128
    :catchall_3
    move-exception v0

    .line 129
    :try_start_7
    invoke-virtual {v2}, Lp1/b;->c()V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string v1, "Cannot create a mutable snapshot of an read-only snapshot"

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 141
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
