.class public final synthetic Lf/a/k/l0/t2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/t2;->a:Landroid/view/View;

    iput p2, p0, Lf/a/k/l0/t2;->b:I

    iput-object p3, p0, Lf/a/k/l0/t2;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/t2;->a:Landroid/view/View;

    iget v1, p0, Lf/a/k/l0/t2;->b:I

    iget-object v2, p0, Lf/a/k/l0/t2;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lf/a/k/l0/b4;->A0(Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method
