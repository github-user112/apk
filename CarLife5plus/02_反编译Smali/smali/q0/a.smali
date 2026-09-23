.class public final synthetic Lq0/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq0/f;


# direct methods
.method public synthetic constructor <init>(Lq0/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq0/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq0/a;->b:Lq0/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lq0/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/i0;

    .line 7
    .line 8
    iget-object p1, p0, Lq0/a;->b:Lq0/f;

    .line 9
    .line 10
    iget-object v0, p1, Lq0/f;->e:Lp1/u;

    .line 11
    .line 12
    invoke-virtual {v0}, Lp1/u;->d()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lc8/p;

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    invoke-direct {v0, v1, p1}, Lc8/p;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_0
    iget-object p1, p0, Lq0/a;->b:Lq0/f;

    .line 23
    .line 24
    iget-object p1, p1, Lq0/f;->h:Landroid/view/ActionMode;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v1, 0x17

    .line 31
    .line 32
    if-lt v0, v1, :cond_0

    .line 33
    .line 34
    invoke-static {p1}, Li7/a;->r(Landroid/view/ActionMode;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 38
    .line 39
    return-object p1

    .line 40
    :pswitch_1
    iget-object p1, p0, Lq0/a;->b:Lq0/f;

    .line 41
    .line 42
    iget-object p1, p1, Lq0/f;->h:Landroid/view/ActionMode;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 47
    .line 48
    .line 49
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_2
    check-cast p1, Lf9/a;

    .line 53
    .line 54
    iget-object v0, p0, Lq0/a;->b:Lq0/f;

    .line 55
    .line 56
    iget-object v0, v0, Lq0/f;->a:Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-ne v1, v2, :cond_3

    .line 75
    .line 76
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    new-instance v1, Lcom/baidu/carlife/sdk/internal/a;

    .line 87
    .line 88
    const/4 v2, 0x2

    .line 89
    invoke-direct {v1, p1, v2}, Lcom/baidu/carlife/sdk/internal/a;-><init>(Lf9/a;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 96
    .line 97
    return-object p1

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
