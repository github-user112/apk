.class public Lf/a/k/l0/a4$a;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/k/l0/a4;->O(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/k/l0/a4;


# direct methods
.method public constructor <init>(Lf/a/k/l0/a4;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/a4$a;->a:Lf/a/k/l0/a4;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/a4$a;->a:Lf/a/k/l0/a4;

    .line 1
    iget-object v1, v0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lf/a/k/e0;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/e0;

    invoke-interface {v0}, Lf/a/k/e0;->l()V

    :cond_0
    const-wide/16 v0, 0xfa

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    return-void
.end method
