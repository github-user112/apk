.class public Le/c/a/b/p/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le/c/a/b/p/e$d;

.field public final synthetic c:Le/c/a/b/p/e;


# direct methods
.method public constructor <init>(Le/c/a/b/p/e;ZLe/c/a/b/p/e$d;)V
    .locals 0

    iput-object p1, p0, Le/c/a/b/p/c;->c:Le/c/a/b/p/e;

    iput-boolean p2, p0, Le/c/a/b/p/c;->a:Z

    iput-object p3, p0, Le/c/a/b/p/c;->b:Le/c/a/b/p/e$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Le/c/a/b/p/c;->c:Le/c/a/b/p/e;

    const/4 v0, 0x0

    iput v0, p1, Le/c/a/b/p/e;->a:I

    const/4 v0, 0x0

    iput-object v0, p1, Le/c/a/b/p/e;->b:Landroid/animation/Animator;

    iget-object p1, p0, Le/c/a/b/p/c;->b:Le/c/a/b/p/e$d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Le/c/a/b/p/a;

    .line 1
    throw v0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Le/c/a/b/p/c;->c:Le/c/a/b/p/e;

    iget-object v0, v0, Le/c/a/b/p/e;->o:Le/c/a/b/q/f;

    iget-boolean v1, p0, Le/c/a/b/p/c;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le/c/a/b/q/f;->b(IZ)V

    iget-object v0, p0, Le/c/a/b/p/c;->c:Le/c/a/b/p/e;

    const/4 v1, 0x2

    iput v1, v0, Le/c/a/b/p/e;->a:I

    iput-object p1, v0, Le/c/a/b/p/e;->b:Landroid/animation/Animator;

    return-void
.end method
