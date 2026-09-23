.class public final synthetic Lf/a/k/l0/g2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lf/a/k/l0/a4;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/l0/a4;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/g2;->a:Lf/a/k/l0/a4;

    iput p2, p0, Lf/a/k/l0/g2;->b:I

    iput-object p3, p0, Lf/a/k/l0/g2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/g2;->a:Lf/a/k/l0/a4;

    iget v1, p0, Lf/a/k/l0/g2;->b:I

    iget-object v2, p0, Lf/a/k/l0/g2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lf/a/k/l0/a4;->b0(ILjava/lang/String;Landroid/view/View;)V

    return-void
.end method
