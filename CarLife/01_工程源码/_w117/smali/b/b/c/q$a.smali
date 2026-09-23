.class public Lb/b/c/q$a;
.super Lb/e/j/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/c/q;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/c/q;


# direct methods
.method public constructor <init>(Lb/b/c/q;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/q$a;->a:Lb/b/c/q;

    invoke-direct {p0}, Lb/e/j/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/c/q$a;->a:Lb/b/c/q;

    iget-object p1, p1, Lb/b/c/q;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lb/b/c/q$a;->a:Lb/b/c/q;

    iget-object p1, p1, Lb/b/c/q;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->y:Lb/e/j/w;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/e/j/w;->d(Lb/e/j/x;)Lb/e/j/w;

    iget-object p1, p0, Lb/b/c/q$a;->a:Lb/b/c/q;

    iget-object p1, p1, Lb/b/c/q;->b:Lb/b/c/m;

    iput-object v0, p1, Lb/b/c/m;->y:Lb/e/j/w;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/c/q$a;->a:Lb/b/c/q;

    iget-object p1, p1, Lb/b/c/q;->b:Lb/b/c/m;

    iget-object p1, p1, Lb/b/c/m;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
