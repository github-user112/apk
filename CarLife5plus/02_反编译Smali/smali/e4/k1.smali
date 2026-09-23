.class public Le4/k1;
.super Le4/j1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public o:Lx3/b;

.field public p:Lx3/b;

.field public q:Lx3/b;


# direct methods
.method public constructor <init>(Le4/r1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le4/j1;-><init>(Le4/r1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le4/k1;->o:Lx3/b;

    .line 3
    iput-object p1, p0, Le4/k1;->p:Lx3/b;

    .line 4
    iput-object p1, p0, Le4/k1;->q:Lx3/b;

    return-void
.end method

.method public constructor <init>(Le4/r1;Le4/k1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Le4/j1;-><init>(Le4/r1;Le4/j1;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Le4/k1;->o:Lx3/b;

    .line 7
    iput-object p1, p0, Le4/k1;->p:Lx3/b;

    .line 8
    iput-object p1, p0, Le4/k1;->q:Lx3/b;

    return-void
.end method


# virtual methods
.method public i()Lx3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le4/k1;->p:Lx3/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le4/h1;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lc/w;->u(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lx3/b;->c(Landroid/graphics/Insets;)Lx3/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Le4/k1;->p:Lx3/b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Le4/k1;->p:Lx3/b;

    .line 18
    .line 19
    return-object v0
.end method

.method public k()Lx3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le4/k1;->o:Lx3/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le4/h1;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lc/w;->y(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lx3/b;->c(Landroid/graphics/Insets;)Lx3/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Le4/k1;->o:Lx3/b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Le4/k1;->o:Lx3/b;

    .line 18
    .line 19
    return-object v0
.end method

.method public m()Lx3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le4/k1;->q:Lx3/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Le4/h1;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Lc/w;->c(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lx3/b;->c(Landroid/graphics/Insets;)Lx3/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Le4/k1;->q:Lx3/b;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Le4/k1;->q:Lx3/b;

    .line 18
    .line 19
    return-object v0
.end method

.method public n(IIII)Le4/r1;
    .locals 1

    .line 1
    iget-object v0, p0, Le4/h1;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lc/w;->g(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p2, p1}, Le4/r1;->c(Landroid/view/View;Landroid/view/WindowInsets;)Le4/r1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public u(Lx3/b;)V
    .locals 0

    .line 1
    return-void
.end method
