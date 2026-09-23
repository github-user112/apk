.class public final synthetic Lm7/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lm7/w;->a:I

    .line 2
    .line 3
    iput-boolean p4, p0, Lm7/w;->b:Z

    .line 4
    .line 5
    iput-object p2, p0, Lm7/w;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lm7/w;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lm7/w;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Lm7/w;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lm7/w;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-boolean v4, p0, Lm7/w;->b:Z

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Landroid/content/Context;

    .line 15
    .line 16
    check-cast v2, Landroid/app/Activity;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const-string v5, "android.permission.NEARBY_WIFI_DEVICES"

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    sget-object v2, Lw6/a;->a:Ls/s;

    .line 24
    .line 25
    invoke-virtual {v2, v5}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ly6/a;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v4, Lz6/f;

    .line 36
    .line 37
    invoke-direct {v4, v6}, Ly6/a;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v5, v4}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :goto_0
    new-array v0, v0, [Ly6/a;

    .line 44
    .line 45
    aput-object v4, v0, v6

    .line 46
    .line 47
    invoke-static {v0}, Lm9/e0;->I([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v3, v0}, Li9/a;->V(Landroid/content/Context;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-eqz v2, :cond_2

    .line 56
    .line 57
    filled-new-array {v5}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v2, v3, v0}, Lu3/f;->h(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-object v1

    .line 65
    :pswitch_0
    check-cast v3, Lp1/p;

    .line 66
    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Lp1/p;->remove(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v3, v2}, Lp1/p;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_2
    return-object v1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
