.class public final Ll8/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements La5/g;
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic a:I

.field public final b:Landroidx/lifecycle/v;

.field public final c:Landroid/support/v4/media/session/t;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    iput p1, p0, Ll8/m;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/lifecycle/v;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ll8/m;->b:Landroidx/lifecycle/v;

    .line 16
    .line 17
    new-instance v0, Lc5/a;

    .line 18
    .line 19
    new-instance v1, La5/e;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, v2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lc5/a;-><init>(La5/g;La5/e;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, La5/f;

    .line 29
    .line 30
    invoke-direct {v1, v0}, La5/f;-><init>(Lc5/a;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, La5/f;->b:Landroid/support/v4/media/session/t;

    .line 34
    .line 35
    iput-object v0, p0, Ll8/m;->c:Landroid/support/v4/media/session/t;

    .line 36
    .line 37
    invoke-virtual {v1}, La5/f;->a()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {v1, v0}, La5/f;->b(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "setCurrentState"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->c(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Landroidx/lifecycle/o;->e:Landroidx/lifecycle/o;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/o;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroidx/lifecycle/v;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;Z)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Ll8/m;->b:Landroidx/lifecycle/v;

    .line 65
    .line 66
    new-instance v0, Lc5/a;

    .line 67
    .line 68
    new-instance v1, La5/e;

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-direct {v1, v2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0, v1}, Lc5/a;-><init>(La5/g;La5/e;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, La5/f;

    .line 78
    .line 79
    invoke-direct {v1, v0}, La5/f;-><init>(Lc5/a;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v1, La5/f;->b:Landroid/support/v4/media/session/t;

    .line 83
    .line 84
    iput-object v0, p0, Ll8/m;->c:Landroid/support/v4/media/session/t;

    .line 85
    .line 86
    invoke-virtual {v1}, La5/f;->a()V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x0

    .line 90
    invoke-virtual {v1, v0}, La5/f;->b(Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "setCurrentState"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->c(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Landroidx/lifecycle/o;->e:Landroidx/lifecycle/o;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/o;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final d()Landroid/support/v4/media/session/t;
    .locals 1

    .line 1
    iget v0, p0, Ll8/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll8/m;->c:Landroid/support/v4/media/session/t;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v0, p0, Ll8/m;->c:Landroid/support/v4/media/session/t;

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Landroidx/lifecycle/v;
    .locals 1

    .line 1
    iget v0, p0, Ll8/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll8/m;->b:Landroidx/lifecycle/v;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    iget-object v0, p0, Ll8/m;->b:Landroidx/lifecycle/v;

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
