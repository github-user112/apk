.class public Lf/a/k/l0/s3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lf/a/k/l0/v3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/v3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/s3;->a:Lf/a/k/l0/v3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/s3;->a:Lf/a/k/l0/v3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->K()V

    return-void
.end method
