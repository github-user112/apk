.class public Ld/g/m/z$h;
.super Ld/g/m/z$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public n:Ld/g/g/b;


# direct methods
.method public constructor <init>(Ld/g/m/z;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/g/m/z$g;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/g/m/z$h;->n:Ld/g/g/b;

    return-void
.end method


# virtual methods
.method public b()Ld/g/m/z;
    .locals 1

    iget-object v0, p0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld/g/m/z;->f(Landroid/view/WindowInsets;)Ld/g/m/z;

    move-result-object v0

    return-object v0
.end method

.method public c()Ld/g/m/z;
    .locals 1

    iget-object v0, p0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld/g/m/z;->f(Landroid/view/WindowInsets;)Ld/g/m/z;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ld/g/g/b;
    .locals 4

    iget-object v0, p0, Ld/g/m/z$h;->n:Ld/g/g/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ld/g/g/b;->a(IIII)Ld/g/g/b;

    move-result-object v0

    iput-object v0, p0, Ld/g/m/z$h;->n:Ld/g/g/b;

    :cond_0
    iget-object v0, p0, Ld/g/m/z$h;->n:Ld/g/g/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public l(Ld/g/g/b;)V
    .locals 0

    iput-object p1, p0, Ld/g/m/z$h;->n:Ld/g/g/b;

    return-void
.end method
