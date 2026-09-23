.class public abstract Lb/p/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    move-object p3, p0

    check-cast p3, La/a/b/n/u$b;

    .line 1
    check-cast p1, Lb/p/a/b;

    iget-object p3, p3, La/a/b/n/u$b;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lb/p/a/b;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public abstract b()I
.end method
