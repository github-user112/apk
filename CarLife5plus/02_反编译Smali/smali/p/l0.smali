.class public final Lp/l0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lp/n0;


# direct methods
.method public constructor <init>(Lp/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp/l0;->a:Lp/n0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lp/l0;->a:Lp/n0;

    .line 2
    .line 3
    iget-object p4, p1, Lp/n0;->G:Lp/q0;

    .line 4
    .line 5
    invoke-virtual {p4, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p4}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 9
    .line 10
    .line 11
    move-result-object p5

    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    iget-object p5, p1, Lp/n0;->D:Lp/k0;

    .line 15
    .line 16
    invoke-virtual {p5, p3}, Lp/k0;->getItemId(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lp/e2;->dismiss()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
