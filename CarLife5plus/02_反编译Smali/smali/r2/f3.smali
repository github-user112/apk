.class public final Lr2/f3;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/u;
.implements Landroidx/lifecycle/r;


# instance fields
.field public final a:Lr2/u;

.field public final b:Lf1/y;

.field public c:Z

.field public d:Landroidx/lifecycle/v;

.field public e:Lf9/n;


# direct methods
.method public constructor <init>(Lr2/u;Lf1/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/f3;->a:Lr2/u;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/f3;->b:Lf1/y;

    .line 7
    .line 8
    sget-object p1, Lr2/g1;->a:Ln1/c;

    .line 9
    .line 10
    iput-object p1, p0, Lr2/f3;->e:Lf9/n;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/n;->ON_DESTROY:Landroidx/lifecycle/n;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lr2/f3;->h()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object p1, Landroidx/lifecycle/n;->ON_CREATE:Landroidx/lifecycle/n;

    .line 10
    .line 11
    if-ne p2, p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lr2/f3;->c:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lr2/f3;->e:Lf9/n;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lr2/f3;->i(Lf9/n;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr2/f3;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lr2/f3;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Lr2/f3;->a:Lr2/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr2/u;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0800c9

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lr2/f3;->d:Landroidx/lifecycle/v;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lr2/f3;->b:Lf1/y;

    .line 29
    .line 30
    invoke-virtual {v0}, Lf1/y;->m()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final i(Lf9/n;)V
    .locals 2

    .line 1
    new-instance v0, Lc1/a1;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lr2/f3;->a:Lr2/u;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lr2/u;->setOnViewTreeOwnersAvailable(Lf9/k;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
