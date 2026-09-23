.class public La/a/b/n/q;
.super La/a/b/n/g;
.source ""


# static fields
.field public static Z:La/a/b/n/q;


# instance fields
.field public a0:Landroid/widget/ImageButton;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/n/g;-><init>()V

    return-void
.end method

.method public static C0()La/a/b/n/q;
    .locals 1

    sget-object v0, La/a/b/n/q;->Z:La/a/b/n/q;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/q;

    invoke-direct {v0}, La/a/b/n/q;-><init>()V

    sput-object v0, La/a/b/n/q;->Z:La/a/b/n/q;

    :cond_0
    sget-object v0, La/a/b/n/q;->Z:La/a/b/n/q;

    return-object v0
.end method


# virtual methods
.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, La/a/b/n/g;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "onCreateView"

    aput-object p3, p1, p2

    const-string p2, "HelpMainFragment"

    invoke-static {p2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c002a

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f09007c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, La/a/b/n/q;->a0:Landroid/widget/ImageButton;

    new-instance p2, La/a/b/n/q$a;

    invoke-direct {p2, p0}, La/a/b/n/q$a;-><init>(La/a/b/n/q;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f090128

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, La/a/b/n/q;->b0:Landroid/widget/TextView;

    const p2, 0x7f0e007d

    invoke-virtual {p0, p2}, Lb/h/b/m;->z(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f090041

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f090042

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f090076

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, La/a/b/n/q;->c0:Landroid/view/View;

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f090077

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, La/a/b/n/q;->d0:Landroid/view/View;

    iget-object p1, p0, La/a/b/n/q;->c0:Landroid/view/View;

    new-instance p2, La/a/b/n/q$b;

    invoke-direct {p2, p0}, La/a/b/n/q$b;-><init>(La/a/b/n/q;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/b/n/q;->d0:Landroid/view/View;

    new-instance p2, La/a/b/n/q$c;

    invoke-direct {p2, p0}, La/a/b/n/q$c;-><init>(La/a/b/n/q;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    const p2, 0x7f090139

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, La/a/b/n/q;->e0:Landroid/view/View;

    new-instance p2, La/a/b/n/q$d;

    invoke-direct {p2, p0}, La/a/b/n/q$d;-><init>(La/a/b/n/q;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/b/n/g;->Y:Landroid/view/View;

    return-object p1
.end method

.method public Q()V
    .locals 3

    invoke-super {p0}, La/a/b/n/g;->Q()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onDestroyView"

    aput-object v2, v0, v1

    const-string v1, "HelpMainFragment"

    invoke-static {v1, v0}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
