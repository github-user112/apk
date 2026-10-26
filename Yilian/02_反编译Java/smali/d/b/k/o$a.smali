.class public Ld/b/k/o$a;
.super Ld/g/m/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/k/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/o;


# direct methods
.method public constructor <init>(Ld/b/k/o;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/o$a;->a:Ld/b/k/o;

    invoke-direct {p0}, Ld/g/m/x;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/o$a;->a:Ld/b/k/o;

    iget-object p1, p1, Ld/b/k/o;->a:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Ld/b/k/o$a;->a:Ld/b/k/o;

    iget-object p1, p1, Ld/b/k/o;->a:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->r:Ld/g/m/v;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/g/m/v;->d(Ld/g/m/w;)Ld/g/m/v;

    iget-object p1, p0, Ld/b/k/o$a;->a:Ld/b/k/o;

    iget-object p1, p1, Ld/b/k/o;->a:Ld/b/k/k;

    iput-object v0, p1, Ld/b/k/k;->r:Ld/g/m/v;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/b/k/o$a;->a:Ld/b/k/o;

    iget-object p1, p1, Ld/b/k/o;->a:Ld/b/k/k;

    iget-object p1, p1, Ld/b/k/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
