.class public final synthetic Lf/a/k/l0/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lf/a/k/l0/g3;

.field public final synthetic b:Landroid/view/WindowManager;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/l0/g3;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/c;->a:Lf/a/k/l0/g3;

    iput-object p2, p0, Lf/a/k/l0/c;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lf/a/k/l0/c;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/c;->a:Lf/a/k/l0/g3;

    iget-object v1, p0, Lf/a/k/l0/c;->b:Landroid/view/WindowManager;

    iget-object v2, p0, Lf/a/k/l0/c;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lf/a/k/l0/g3;->Q(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
