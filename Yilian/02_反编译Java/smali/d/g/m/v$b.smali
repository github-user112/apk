.class public Ld/g/m/v$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/m/v;->f(Ld/g/m/y;)Ld/g/m/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/g/m/y;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/g/m/v;Ld/g/m/y;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Ld/g/m/v$b;->a:Ld/g/m/y;

    iput-object p3, p0, Ld/g/m/v$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Ld/g/m/v$b;->a:Ld/g/m/y;

    check-cast p1, Ld/b/k/u$c;

    .line 1
    iget-object p1, p1, Ld/b/k/u$c;->a:Ld/b/k/u;

    iget-object p1, p1, Ld/b/k/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
