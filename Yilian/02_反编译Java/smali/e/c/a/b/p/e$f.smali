.class public abstract Le/c/a/b/p/e$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/b/p/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Le/c/a/b/p/e;


# direct methods
.method public constructor <init>(Le/c/a/b/p/e;Le/c/a/b/p/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/p/e$f;->b:Le/c/a/b/p/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-boolean v0, p0, Le/c/a/b/p/e$f;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    throw v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 3
    throw v1
.end method
