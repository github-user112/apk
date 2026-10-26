.class public final synthetic Lf/a/k/l0/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/l0/g3;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/view/WindowManager;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/l0/g3;Landroid/widget/TextView;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/m;->a:Lf/a/k/l0/g3;

    iput-object p2, p0, Lf/a/k/l0/m;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lf/a/k/l0/m;->c:Landroid/view/WindowManager;

    iput-object p4, p0, Lf/a/k/l0/m;->d:Landroid/view/View;

    iput-object p5, p0, Lf/a/k/l0/m;->e:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lf/a/k/l0/m;->a:Lf/a/k/l0/g3;

    iget-object v1, p0, Lf/a/k/l0/m;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/m;->c:Landroid/view/WindowManager;

    iget-object v3, p0, Lf/a/k/l0/m;->d:Landroid/view/View;

    iget-object v4, p0, Lf/a/k/l0/m;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/a/k/l0/g3;->O(Landroid/widget/TextView;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
