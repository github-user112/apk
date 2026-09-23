.class public Le4/d1;
.super Le4/g1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le4/g1;-><init>()V

    .line 2
    invoke-static {}, Lc/w;->d()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Le4/r1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Le4/g1;-><init>(Le4/r1;)V

    .line 4
    invoke-virtual {p1}, Le4/r1;->b()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lc/w;->e(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lc/w;->d()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Le4/r1;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le4/g1;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    .line 5
    .line 6
    invoke-static {v0}, Lc/w;->f(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Le4/r1;->c(Landroid/view/View;Landroid/view/WindowInsets;)Le4/r1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Le4/g1;->b:[Lx3/b;

    .line 16
    .line 17
    iget-object v2, v0, Le4/r1;->a:Le4/n1;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Le4/n1;->r([Lx3/b;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public d(Lx3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lx3/b;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/w;->C(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public e(Lx3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lx3/b;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/w;->x(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(Lx3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lx3/b;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/w;->A(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(Lx3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lx3/b;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/w;->q(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h(Lx3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lx3/b;->d()Landroid/graphics/Insets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lc/w;->D(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
