.class public final Landroid/support/v4/media/session/i;
.super Landroid/os/Handler;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/i;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/k;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/session/i;->a:I

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/i;->b:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/session/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, -0x3

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, -0x2

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroid/content/DialogInterface;

    .line 24
    .line 25
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 32
    .line 33
    iget-object v1, p0, Landroid/support/v4/media/session/i;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/content/DialogInterface;

    .line 42
    .line 43
    iget p1, p1, Landroid/os/Message;->what:I

    .line 44
    .line 45
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Landroid/support/v4/media/session/i;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroid/support/v4/media/session/k;

    .line 57
    .line 58
    iget-object v0, v0, Landroid/support/v4/media/session/k;->a:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/i;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Landroid/support/v4/media/session/k;

    .line 64
    .line 65
    iget-object v1, v1, Landroid/support/v4/media/session/k;->d:Ljava/lang/ref/WeakReference;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/support/v4/media/session/m;

    .line 72
    .line 73
    iget-object v2, p0, Landroid/support/v4/media/session/i;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Landroid/support/v4/media/session/k;

    .line 76
    .line 77
    iget-object v3, v2, Landroid/support/v4/media/session/k;->e:Landroid/support/v4/media/session/i;

    .line 78
    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/support/v4/media/session/m;->b()Landroid/support/v4/media/session/k;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-ne v2, v0, :cond_3

    .line 87
    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lx4/a;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Landroid/support/v4/media/session/i;->b:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Landroid/support/v4/media/session/k;

    .line 101
    .line 102
    invoke-virtual {p1, v1, v3}, Landroid/support/v4/media/session/k;->a(Landroid/support/v4/media/session/m;Landroid/os/Handler;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p1

    .line 113
    :cond_3
    :goto_1
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
