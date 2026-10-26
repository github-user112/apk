.class public Ld/g/m/z$d;
.super Ld/g/m/z$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/g/m/z$f;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Ld/g/m/z$d;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Ld/g/m/z;)V
    .locals 1

    invoke-direct {p0, p1}, Ld/g/m/z$f;-><init>(Ld/g/m/z;)V

    invoke-virtual {p1}, Ld/g/m/z;->e()Landroid/view/WindowInsets;

    move-result-object p1

    new-instance v0, Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Ld/g/m/z$d;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public a()Ld/g/m/z;
    .locals 3

    iget-object v0, p0, Ld/g/m/z$d;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ld/g/m/z;->f(Landroid/view/WindowInsets;)Ld/g/m/z;

    move-result-object v0

    .line 1
    iget-object v1, v0, Ld/g/m/z;->a:Ld/g/m/z$l;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ld/g/m/z$l;->j([Ld/g/g/b;)V

    return-object v0
.end method

.method public b(Ld/g/g/b;)V
    .locals 1

    iget-object v0, p0, Ld/g/m/z$d;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ld/g/g/b;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public c(Ld/g/g/b;)V
    .locals 1

    iget-object v0, p0, Ld/g/m/z$d;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Ld/g/g/b;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
