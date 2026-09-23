.class public final synthetic Lb8/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lb8/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb8/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lb8/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lb8/a;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lb8/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb8/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lq0/f;

    .line 9
    .line 10
    iget-object v1, p0, Lb8/a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lq0/d;

    .line 13
    .line 14
    iget-object v2, p0, Lb8/a;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lq0/e;

    .line 17
    .line 18
    iget-object v3, v0, Lq0/f;->a:Landroid/view/View;

    .line 19
    .line 20
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v5, 0x17

    .line 23
    .line 24
    if-lt v4, v5, :cond_0

    .line 25
    .line 26
    new-instance v4, Lq0/l;

    .line 27
    .line 28
    invoke-direct {v4, v1}, Lq0/l;-><init>(Lq0/d;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Li7/a;->k(Landroid/view/View;Lq0/l;)Landroid/view/ActionMode;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v4, Lq0/n;

    .line 37
    .line 38
    invoke-direct {v4, v1}, Lq0/n;-><init>(Lq0/d;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    iget-object v0, v0, Lq0/f;->h:Landroid/view/ActionMode;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Lq0/e;->close()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lb8/a;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lkb/a;

    .line 59
    .line 60
    iget-object v1, p0, Lb8/a;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lg5/a;

    .line 63
    .line 64
    iget-object v2, p0, Lb8/a;->d:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 67
    .line 68
    :try_start_0
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v0}, Lc7/a;->m(Landroid/content/Context;)Ll4/r;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v3, v0, Ll4/r;->a:Ll4/i;

    .line 79
    .line 80
    check-cast v3, Ll4/q;

    .line 81
    .line 82
    iget-object v4, v3, Ll4/q;->d:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    iput-object v2, v3, Ll4/q;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 86
    .line 87
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    iget-object v0, v0, Ll4/r;->a:Ll4/i;

    .line 89
    .line 90
    new-instance v3, Ll4/l;

    .line 91
    .line 92
    invoke-direct {v3, v1, v2}, Ll4/l;-><init>(Lg5/a;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v3}, Ll4/i;->i(Lg5/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    :try_start_4
    throw v0

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    const-string v3, "EmojiCompat font provider not available on this device."

    .line 107
    .line 108
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    :goto_1
    invoke-virtual {v1, v0}, Lg5/a;->R(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 116
    .line 117
    .line 118
    :goto_2
    return-void

    .line 119
    :pswitch_1
    iget-object v0, p0, Lb8/a;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Landroid/view/KeyEvent;

    .line 122
    .line 123
    iget-object v1, p0, Lb8/a;->c:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v1, Ljava/util/ArrayList;

    .line 126
    .line 127
    iget-object v2, p0, Lb8/a;->d:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, Lg9/t;

    .line 130
    .line 131
    sget v3, Lb8/b;->b:I

    .line 132
    .line 133
    const/4 v4, 0x1

    .line 134
    if-ne v3, v4, :cond_3

    .line 135
    .line 136
    sget-boolean v3, Lb8/b;->d:Z

    .line 137
    .line 138
    if-nez v3, :cond_3

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    invoke-static {v1, v2, v0, v3}, Lb8/b;->a(Ljava/util/ArrayList;Lg9/t;Landroid/view/KeyEvent;I)V

    .line 142
    .line 143
    .line 144
    sput v3, Lb8/b;->b:I

    .line 145
    .line 146
    :cond_3
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
