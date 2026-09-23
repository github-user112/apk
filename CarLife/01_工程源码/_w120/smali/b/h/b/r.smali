.class public Lb/h/b/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lb/h/b/m;

.field public final synthetic c:Lb/h/b/r0$a;

.field public final synthetic d:Lb/e/f/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lb/h/b/m;Lb/h/b/r0$a;Lb/e/f/a;)V
    .locals 0

    iput-object p1, p0, Lb/h/b/r;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lb/h/b/r;->b:Lb/h/b/m;

    iput-object p3, p0, Lb/h/b/r;->c:Lb/h/b/r0$a;

    iput-object p4, p0, Lb/h/b/r;->d:Lb/e/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lb/h/b/r;->a:Landroid/view/ViewGroup;

    new-instance v0, Lb/h/b/r$a;

    invoke-direct {v0, p0}, Lb/h/b/r$a;-><init>(Lb/h/b/r;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
