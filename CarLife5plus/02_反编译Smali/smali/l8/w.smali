.class public final Ll8/w;
.super Landroid/app/Presentation;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/t;
.implements La5/g;


# instance fields
.field public final a:Landroid/view/SurfaceView;

.field public final b:Landroid/view/WindowManager$LayoutParams;

.field public final c:Lf9/n;

.field public final d:Landroidx/lifecycle/v;

.field public final e:Lr8/o;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceView;Landroid/view/WindowManager$LayoutParams;Ln1/c;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v1

    .line 12
    :cond_1
    const-string p5, "display"

    .line 13
    .line 14
    invoke-static {p1, p5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    invoke-direct {p0, p5, p1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Ll8/w;->a:Landroid/view/SurfaceView;

    .line 25
    .line 26
    iput-object p3, p0, Ll8/w;->b:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    iput-object p4, p0, Ll8/w;->c:Lf9/n;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/v;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;Z)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Ll8/w;->d:Landroidx/lifecycle/v;

    .line 37
    .line 38
    new-instance p1, La5/e;

    .line 39
    .line 40
    const/16 p2, 0xe

    .line 41
    .line 42
    invoke-direct {p1, p2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Ll8/w;->e:Lr8/o;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final d()Landroid/support/v4/media/session/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ll8/w;->e:Lr8/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, La5/f;

    .line 8
    .line 9
    iget-object v0, v0, La5/f;->b:Landroid/support/v4/media/session/t;

    .line 10
    .line 11
    return-object v0
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll8/w;->d:Landroidx/lifecycle/v;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->g(Landroidx/lifecycle/o;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Presentation;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g()Landroidx/lifecycle/v;
    .locals 1

    .line 1
    iget-object v0, p0, Ll8/w;->d:Landroidx/lifecycle/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll8/w;->e:Lr8/o;

    .line 5
    .line 6
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, La5/f;

    .line 11
    .line 12
    invoke-virtual {v1}, La5/f;->a()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, La5/f;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, La5/f;->b(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "setCurrentState"

    .line 25
    .line 26
    iget-object v0, p0, Ll8/w;->d:Landroidx/lifecycle/v;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Landroidx/lifecycle/o;->c:Landroidx/lifecycle/o;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/o;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Ll8/w;->a:Landroid/view/SurfaceView;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Ll8/w;->c:Lf9/n;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance v0, Lr2/h1;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "getContext(...)"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lr2/h1;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p0}, Landroidx/lifecycle/i0;->h(Landroid/view/View;Landroidx/lifecycle/t;)V

    .line 62
    .line 63
    .line 64
    const v1, 0x7f0800c4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Ll8/v;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-direct {v1, v2, p1}, Ll8/v;-><init>(ILf9/n;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ln1/c;

    .line 77
    .line 78
    const v2, 0x7749c38f

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    invoke-direct {p1, v1, v2, v3}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lr2/h1;->setContent(Lf9/n;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Ll8/w;->b:Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 106
    .line 107
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    .line 109
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 110
    .line 111
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 112
    .line 113
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 114
    .line 115
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 116
    .line 117
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 118
    .line 119
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method

.method public final onDisplayRemoved()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll8/w;->d:Landroidx/lifecycle/v;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/o;->a:Landroidx/lifecycle/o;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->g(Landroidx/lifecycle/o;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Presentation;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll8/w;->d:Landroidx/lifecycle/v;

    .line 5
    .line 6
    sget-object v1, Landroidx/lifecycle/o;->d:Landroidx/lifecycle/o;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->g(Landroidx/lifecycle/o;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
