.class public Ld/g/m/z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/g/m/z$a;,
        Ld/g/m/z$e;,
        Ld/g/m/z$d;,
        Ld/g/m/z$c;,
        Ld/g/m/z$f;,
        Ld/g/m/z$b;,
        Ld/g/m/z$k;,
        Ld/g/m/z$j;,
        Ld/g/m/z$i;,
        Ld/g/m/z$h;,
        Ld/g/m/z$g;,
        Ld/g/m/z$l;
    }
.end annotation


# instance fields
.field public final a:Ld/g/m/z$l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Ld/g/m/z$k;->r:Ld/g/m/z;

    goto :goto_0

    :cond_0
    sget-object v0, Ld/g/m/z$l;->b:Ld/g/m/z;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/g/m/z$k;

    invoke-direct {v0, p0, p1}, Ld/g/m/z$k;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/g/m/z$j;

    invoke-direct {v0, p0, p1}, Ld/g/m/z$j;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Ld/g/m/z$i;

    invoke-direct {v0, p0, p1}, Ld/g/m/z$i;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Ld/g/m/z$h;

    invoke-direct {v0, p0, p1}, Ld/g/m/z$h;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    new-instance v0, Ld/g/m/z$g;

    invoke-direct {v0, p0, p1}, Ld/g/m/z$g;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    goto :goto_1

    :cond_4
    new-instance p1, Ld/g/m/z$l;

    invoke-direct {p1, p0}, Ld/g/m/z$l;-><init>(Ld/g/m/z;)V

    iput-object p1, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ld/g/m/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ld/g/m/z$l;

    invoke-direct {p1, p0}, Ld/g/m/z$l;-><init>(Ld/g/m/z;)V

    iput-object p1, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    return-void
.end method

.method public static f(Landroid/view/WindowInsets;)Ld/g/m/z;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ld/g/m/z;->g(Landroid/view/WindowInsets;Landroid/view/View;)Ld/g/m/z;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/WindowInsets;Landroid/view/View;)Ld/g/m/z;
    .locals 2

    new-instance v0, Ld/g/m/z;

    if-eqz p0, :cond_1

    invoke-direct {v0, p0}, Ld/g/m/z;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ld/g/m/s;->t(Landroid/view/View;)Ld/g/m/z;

    move-result-object p0

    .line 1
    iget-object v1, v0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v1, p0}, Ld/g/m/z$l;->k(Ld/g/m/z;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 3
    iget-object p1, v0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {p1, p0}, Ld/g/m/z$l;->d(Landroid/view/View;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    .line 4
    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v0}, Ld/g/m/z$l;->g()Ld/g/g/b;

    move-result-object v0

    iget v0, v0, Ld/g/g/b;->d:I

    return v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v0}, Ld/g/m/z$l;->g()Ld/g/g/b;

    move-result-object v0

    iget v0, v0, Ld/g/g/b;->a:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v0}, Ld/g/m/z$l;->g()Ld/g/g/b;

    move-result-object v0

    iget v0, v0, Ld/g/g/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v0}, Ld/g/m/z$l;->g()Ld/g/g/b;

    move-result-object v0

    iget v0, v0, Ld/g/g/b;->b:I

    return v0
.end method

.method public e()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    instance-of v1, v0, Ld/g/m/z$g;

    if-eqz v1, :cond_0

    check-cast v0, Ld/g/m/z$g;

    iget-object v0, v0, Ld/g/m/z$g;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ld/g/m/z;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Ld/g/m/z;

    iget-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    iget-object p1, p1, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-static {v0, p1}, Ld/b/k/r;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ld/g/m/z;->a:Ld/g/m/z$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld/g/m/z$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
