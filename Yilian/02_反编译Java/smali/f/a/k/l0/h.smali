.class public final synthetic Lf/a/k/l0/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lf/a/i/f/a$a;


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

    iput-object p1, p0, Lf/a/k/l0/h;->a:Lf/a/k/l0/g3;

    iput-object p2, p0, Lf/a/k/l0/h;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lf/a/k/l0/h;->c:Landroid/view/WindowManager;

    iput-object p4, p0, Lf/a/k/l0/h;->d:Landroid/view/View;

    iput-object p5, p0, Lf/a/k/l0/h;->e:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lf/a/k/l0/h;->a:Lf/a/k/l0/g3;

    iget-object v1, p0, Lf/a/k/l0/h;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/h;->c:Landroid/view/WindowManager;

    iget-object v3, p0, Lf/a/k/l0/h;->d:Landroid/view/View;

    iget-object v4, p0, Lf/a/k/l0/h;->e:Landroid/view/WindowManager$LayoutParams;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lf/a/k/l0/g3;->P(Landroid/widget/TextView;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    return-void
.end method
