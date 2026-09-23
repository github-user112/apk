.class public final Ld0/u0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/h0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld0/u0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ld0/u0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ld0/u0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget v0, p0, Ld0/u0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Ld0/u0;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Ld0/u0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Lv/s0;

    .line 12
    .line 13
    check-cast v2, Lv/p0;

    .line 14
    .line 15
    iget-object v0, v3, Lv/s0;->g:Lp1/p;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast v3, Landroidx/lifecycle/v;

    .line 22
    .line 23
    check-cast v2, Lc/h;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast v3, Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v2, Lr2/m0;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_2
    check-cast v3, Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v2, Lr2/l0;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_3
    check-cast v3, Landroid/content/Context;

    .line 54
    .line 55
    check-cast v2, Lm7/v;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_4
    check-cast v3, Lf1/b1;

    .line 62
    .line 63
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lb0/m;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    new-instance v4, Lb0/l;

    .line 72
    .line 73
    invoke-direct {v4, v0}, Lb0/l;-><init>(Lb0/m;)V

    .line 74
    .line 75
    .line 76
    check-cast v2, Lb0/k;

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Lb0/k;->b(Lb0/j;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-interface {v3, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void

    .line 87
    :pswitch_5
    check-cast v3, Lh0/o0;

    .line 88
    .line 89
    iget-object v0, v3, Lh0/o0;->c:Ls/i0;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ls/i0;->j(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_6
    check-cast v3, Ld0/v0;

    .line 96
    .line 97
    check-cast v2, Landroid/view/View;

    .line 98
    .line 99
    iget v0, v3, Ld0/v0;->s:I

    .line 100
    .line 101
    add-int/lit8 v0, v0, -0x1

    .line 102
    .line 103
    iput v0, v3, Ld0/v0;->s:I

    .line 104
    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    sget-object v0, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 108
    .line 109
    invoke-static {v2, v1}, Le4/d0;->i(Landroid/view/View;Le4/n;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v1}, Le4/k0;->l(Landroid/view/View;Le4/s0;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v3, Ld0/v0;->t:Ld0/y;

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
