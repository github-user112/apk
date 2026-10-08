.class public Lb/e/j/w$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/j/w;->f(Lb/e/j/z;)Lb/e/j/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/e/j/z;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/e/j/w;Lb/e/j/z;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/e/j/w$b;->a:Lb/e/j/z;

    iput-object p3, p0, Lb/e/j/w$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lb/e/j/w$b;->a:Lb/e/j/z;

    check-cast p1, Lb/b/c/x$c;

    .line 1
    iget-object p1, p1, Lb/b/c/x$c;->a:Lb/b/c/x;

    iget-object p1, p1, Lb/b/c/x;->f:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
