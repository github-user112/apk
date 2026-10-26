.class public Ld/j/d/w$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/w;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/j/d/e0;

.field public final synthetic b:Ld/j/d/w;


# direct methods
.method public constructor <init>(Ld/j/d/w;Ld/j/d/e0;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/w$a;->b:Ld/j/d/w;

    iput-object p2, p0, Ld/j/d/w$a;->a:Ld/j/d/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ld/j/d/w$a;->a:Ld/j/d/e0;

    .line 1
    iget-object v0, p1, Ld/j/d/e0;->c:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {p1}, Ld/j/d/e0;->k()V

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Ld/j/d/w$a;->b:Ld/j/d/w;

    iget-object v0, v0, Ld/j/d/w;->a:Ld/j/d/y;

    invoke-static {p1, v0}, Ld/j/d/u0;->f(Landroid/view/ViewGroup;Ld/j/d/y;)Ld/j/d/u0;

    move-result-object p1

    invoke-virtual {p1}, Ld/j/d/u0;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
