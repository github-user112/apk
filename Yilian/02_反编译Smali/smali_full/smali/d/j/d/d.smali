.class public Ld/j/d/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Ld/j/d/u0$d;

.field public final synthetic e:Ld/j/d/c$b;


# direct methods
.method public constructor <init>(Ld/j/d/c;Landroid/view/ViewGroup;Landroid/view/View;ZLd/j/d/u0$d;Ld/j/d/c$b;)V
    .locals 0

    iput-object p2, p0, Ld/j/d/d;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Ld/j/d/d;->b:Landroid/view/View;

    iput-boolean p4, p0, Ld/j/d/d;->c:Z

    iput-object p5, p0, Ld/j/d/d;->d:Ld/j/d/u0$d;

    iput-object p6, p0, Ld/j/d/d;->e:Ld/j/d/c$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ld/j/d/d;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Ld/j/d/d;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Ld/j/d/d;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/j/d/d;->d:Ld/j/d/u0$d;

    .line 1
    iget-object p1, p1, Ld/j/d/u0$d;->a:Ld/j/d/u0$d$c;

    .line 2
    iget-object v0, p0, Ld/j/d/d;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Ld/j/d/u0$d$c;->a(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Ld/j/d/d;->e:Ld/j/d/c$b;

    invoke-virtual {p1}, Ld/j/d/c$c;->a()V

    return-void
.end method
