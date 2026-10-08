.class public Lb/b/h/x$d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/h/x$d;->d(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/h/x$d;


# direct methods
.method public constructor <init>(Lb/b/h/x$d;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/x$d$b;->b:Lb/b/h/x$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lb/b/h/x$d$b;->b:Lb/b/h/x$d;

    iget-object v1, v0, Lb/b/h/x$d;->I:Lb/b/h/x;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lb/e/j/q;->h(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lb/b/h/x$d;->G:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/b/h/x$d$b;->b:Lb/b/h/x$d;

    invoke-virtual {v0}, Lb/b/h/m0;->dismiss()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/b/h/x$d$b;->b:Lb/b/h/x$d;

    invoke-virtual {v0}, Lb/b/h/x$d;->t()V

    iget-object v0, p0, Lb/b/h/x$d$b;->b:Lb/b/h/x$d;

    .line 3
    invoke-virtual {v0}, Lb/b/h/m0;->f()V

    :goto_1
    return-void
.end method
