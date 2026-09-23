.class public final synthetic Lk7/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lk7/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk7/g;->b:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lk7/g;->a:I

    .line 2
    .line 3
    const-string v1, "\u60ac\u6d6e\u7a97"

    .line 4
    .line 5
    iget-object v2, p0, Lk7/g;->b:Landroid/app/Activity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lu7/j;->a:Lr8/o;

    .line 11
    .line 12
    invoke-static {}, Lw6/a;->h()Ly6/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v2, v1, v0}, Lu7/j;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :pswitch_0
    sget-object v0, Lu7/j;->a:Lr8/o;

    .line 30
    .line 31
    invoke-static {}, Lw6/a;->h()Ly6/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v1, v0}, Lu7/j;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v0, Lu7/j;->a:Lr8/o;

    .line 45
    .line 46
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 47
    .line 48
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ly6/a;

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    new-instance v3, Lz6/h;

    .line 60
    .line 61
    const/16 v4, 0x17

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-direct {v3, v1, v5, v4}, Lz6/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lz6/h;->n()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1, v3}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-static {v3}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "\u9ea6\u514b\u98ce"

    .line 79
    .line 80
    invoke-static {v2, v1, v0}, Lu7/j;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
