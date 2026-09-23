.class public final Lc8/z0;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc8/z0;->a:I

    iput-object p2, p0, Lc8/z0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc8/b1;Lf1/b1;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lc8/z0;->a:I

    iput-object p2, p0, Lc8/z0;->b:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lc8/z0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p1, "plugged"

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-gtz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object p2, p0, Lc8/z0;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p2, Lq5/f;

    .line 33
    .line 34
    iget-object p2, p2, Lq5/f;->d:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v0, Le7/e;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-direct {v0, p0, v1, p1}, Le7/e;-><init>(Ljava/lang/Object;IZ)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :pswitch_0
    iget-object p1, p0, Lc8/z0;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Ld6/f;

    .line 49
    .line 50
    invoke-virtual {p1}, Ld6/f;->l()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    iget-object p1, p0, Lc8/z0;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lf1/b1;

    .line 57
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v1, 0x21

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    if-lt v0, v1, :cond_2

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    invoke-static {p2}, Lc/p;->p(Landroid/content/Intent;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    move-object v2, p2

    .line 72
    check-cast v2, Landroid/view/KeyEvent;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-eqz p2, :cond_3

    .line 76
    .line 77
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    move-object v2, p2

    .line 84
    check-cast v2, Landroid/view/KeyEvent;

    .line 85
    .line 86
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p1, p2}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
