.class public Le/c/a/b/v/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Le/c/a/b/n/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Le/c/a/b/n/d;)V
    .locals 0

    iput-object p2, p0, Le/c/a/b/v/c;->a:Le/c/a/b/n/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Le/c/a/b/v/c;->a:Le/c/a/b/n/d;

    invoke-interface {p1}, Le/c/a/b/n/d;->getRevealInfo()Le/c/a/b/n/d$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Le/c/a/b/n/d$e;->c:F

    iget-object v0, p0, Le/c/a/b/v/c;->a:Le/c/a/b/n/d;

    invoke-interface {v0, p1}, Le/c/a/b/n/d;->setRevealInfo(Le/c/a/b/n/d$e;)V

    return-void
.end method
