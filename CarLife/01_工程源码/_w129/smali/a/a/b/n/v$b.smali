.class public La/a/b/n/v$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/v;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:La/a/b/n/v;


# direct methods
.method public constructor <init>(La/a/b/n/v;[I)V
    .locals 0

    iput-object p1, p0, La/a/b/n/v$b;->c:La/a/b/n/v;

    iput-object p2, p0, La/a/b/n/v$b;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    const-string p2, "VIDEO_SURFACE_MS"

    invoke-virtual {p1, p2, p3}, La/a/a/a/l/a;->g(Ljava/lang/String;I)Z

    iget-object p1, p0, La/a/b/n/v$b;->b:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    if-eq p3, p1, :cond_0

    iget-object p1, p0, La/a/b/n/v$b;->c:La/a/b/n/v;

    invoke-virtual {p1}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p1

    const-string p4, "\u9000\u51fa\u5e94\u7528\u91cd\u65b0\u6253\u5f00\u540e\u751f\u6548!"

    invoke-static {p1, p4, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object p1, p0, La/a/b/n/v$b;->b:[I

    aput p3, p1, p2

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
