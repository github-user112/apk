.class public final Lp4/m;
.super Lp4/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/s0;
.implements Landroidx/lifecycle/t;
.implements La5/g;
.implements Lp4/a0;


# instance fields
.field public final b:Lj/j;

.field public final c:Lj/j;

.field public final d:Landroid/os/Handler;

.field public final e:Lp4/x;

.field public final synthetic f:Lj/j;


# direct methods
.method public constructor <init>(Lj/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp4/m;->f:Lj/j;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lp4/x;

    .line 12
    .line 13
    invoke-direct {v1}, Lp4/x;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lp4/m;->e:Lp4/x;

    .line 17
    .line 18
    iput-object p1, p0, Lp4/m;->b:Lj/j;

    .line 19
    .line 20
    iput-object p1, p0, Lp4/m;->c:Lj/j;

    .line 21
    .line 22
    iput-object v0, p0, Lp4/m;->d:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final O(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/m;->f:Lj/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj/j;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/m;->f:Lj/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Landroidx/lifecycle/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/m;->f:Lj/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/o;->b()Landroidx/lifecycle/r0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()Landroid/support/v4/media/session/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/m;->f:Lj/j;

    .line 2
    .line 3
    iget-object v0, v0, Lc/o;->d:La5/f;

    .line 4
    .line 5
    iget-object v0, v0, La5/f;->b:Landroid/support/v4/media/session/t;

    .line 6
    .line 7
    return-object v0
.end method

.method public final g()Landroidx/lifecycle/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/m;->f:Lj/j;

    .line 2
    .line 3
    iget-object v0, v0, Lp4/n;->t:Landroidx/lifecycle/v;

    .line 4
    .line 5
    return-object v0
.end method
