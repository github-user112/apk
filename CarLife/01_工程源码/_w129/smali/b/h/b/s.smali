.class public Lb/h/b/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lb/h/b/m;

.field public final synthetic d:Lb/h/b/r0$a;

.field public final synthetic e:Lb/e/f/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lb/h/b/m;Lb/h/b/r0$a;Lb/e/f/a;)V
    .locals 0

    iput-object p1, p0, Lb/h/b/s;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lb/h/b/s;->b:Landroid/view/View;

    iput-object p3, p0, Lb/h/b/s;->c:Lb/h/b/m;

    iput-object p4, p0, Lb/h/b/s;->d:Lb/h/b/r0$a;

    iput-object p5, p0, Lb/h/b/s;->e:Lb/e/f/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb/h/b/s;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/h/b/s;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Lb/h/b/s;->c:Lb/h/b/m;

    .line 1
    iget-object v0, p1, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb/h/b/m$a;->b:Landroid/animation/Animator;

    .line 2
    :goto_0
    invoke-virtual {p1, v1}, Lb/h/b/m;->u0(Landroid/animation/Animator;)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lb/h/b/s;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/h/b/s;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lb/h/b/s;->d:Lb/h/b/r0$a;

    iget-object v0, p0, Lb/h/b/s;->c:Lb/h/b/m;

    iget-object v1, p0, Lb/h/b/s;->e:Lb/e/f/a;

    check-cast p1, Lb/h/b/c0$d;

    invoke-virtual {p1, v0, v1}, Lb/h/b/c0$d;->a(Lb/h/b/m;Lb/e/f/a;)V

    :cond_1
    return-void
.end method
