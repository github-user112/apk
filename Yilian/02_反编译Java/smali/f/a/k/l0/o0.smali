.class public final synthetic Lf/a/k/l0/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/l0/p3;

.field public final synthetic b:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/l0/p3;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/o0;->a:Lf/a/k/l0/p3;

    iput-object p2, p0, Lf/a/k/l0/o0;->b:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/o0;->a:Lf/a/k/l0/p3;

    iget-object v1, p0, Lf/a/k/l0/o0;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lf/a/k/l0/p3;->O(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
