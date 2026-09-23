.class public final synthetic Ll8/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ll8/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILd3/e;)V
    .locals 0

    .line 2
    const/4 p1, 0x2

    iput p1, p0, Ll8/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Ll8/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    sget-object v0, Lr2/u;->R0:Ls/d0;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1e

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Ls/d0;->a:[Ljava/lang/Object;

    .line 18
    .line 19
    iget v2, v0, Ls/d0;->b:I

    .line 20
    .line 21
    :goto_0
    if-ge v3, v2, :cond_2

    .line 22
    .line 23
    aget-object v4, v1, v3

    .line 24
    .line 25
    check-cast v4, Lr2/u;

    .line 26
    .line 27
    invoke-virtual {v4}, Lr2/u;->getShowLayoutBounds()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    sget-object v6, Lr2/u;->O0:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-static {}, Lr2/j0;->n()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-virtual {v4, v6}, Lr2/u;->setShowLayoutBounds(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lr2/u;->getShowLayoutBounds()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eq v5, v6, :cond_0

    .line 45
    .line 46
    invoke-virtual {v4}, Lr2/u;->getRoot()Lq2/h0;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4}, Lr2/u;->r(Lq2/h0;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    iget-object v1, v0, Ls/d0;->a:[Ljava/lang/Object;

    .line 59
    .line 60
    iget v2, v0, Ls/d0;->b:I

    .line 61
    .line 62
    :goto_1
    if-ge v3, v2, :cond_2

    .line 63
    .line 64
    aget-object v4, v1, v3

    .line 65
    .line 66
    check-cast v4, Lr2/u;

    .line 67
    .line 68
    invoke-virtual {v4}, Lr2/u;->getRoot()Lq2/h0;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v4}, Lr2/u;->r(Lq2/h0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_2
    monitor-exit v0

    .line 81
    throw v1

    .line 82
    :pswitch_1
    const-string v0, "FLOAT_ICON_SWITCH"

    .line 83
    .line 84
    sget-object v1, Ll8/n;->c:Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lr2/h1;

    .line 91
    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    const/16 v1, 0x8

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_3
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
