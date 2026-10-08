.class public La/a/b/n/u;
.super La/a/b/n/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/n/u$b;
    }
.end annotation


# static fields
.field public static Z:La/a/b/n/u;


# instance fields
.field public a0:Lcom/baidu/carlifevehicle/view/DirectionViewPager;

.field public b0:[I

.field public c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Landroid/widget/RelativeLayout$LayoutParams;

.field public e0:La/a/b/n/u$b;

.field public f0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La/a/b/n/g;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, La/a/b/n/u;->b0:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/b/n/u;->c0:Ljava/util/List;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, La/a/b/n/u;->d0:Landroid/widget/RelativeLayout$LayoutParams;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08007c
        0x7f08007d
        0x7f08007e
    .end array-data
.end method


# virtual methods
.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0033

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const p2, 0x7f090079

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlifevehicle/view/DirectionViewPager;

    iput-object p1, p0, La/a/b/n/u;->a0:Lcom/baidu/carlifevehicle/view/DirectionViewPager;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, La/a/b/n/u;->b0:[I

    array-length p2, p2

    if-ge p1, p2, :cond_0

    new-instance p2, Landroid/widget/ImageView;

    sget-object v0, La/a/b/n/g;->W:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, La/a/b/n/u;->b0:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, La/a/b/n/u;->d0:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, La/a/b/n/u;->c0:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, La/a/b/n/u$b;

    iget-object p2, p0, La/a/b/n/u;->c0:Ljava/util/List;

    invoke-direct {p1, p0, p2}, La/a/b/n/u$b;-><init>(La/a/b/n/u;Ljava/util/List;)V

    iput-object p1, p0, La/a/b/n/u;->e0:La/a/b/n/u$b;

    iget-object p2, p0, La/a/b/n/u;->a0:Lcom/baidu/carlifevehicle/view/DirectionViewPager;

    invoke-virtual {p2, p1}, Lb/p/a/b;->setAdapter(Lb/p/a/a;)V

    iget-object p1, p0, La/a/b/n/u;->a0:Lcom/baidu/carlifevehicle/view/DirectionViewPager;

    new-instance p2, La/a/b/n/u$a;

    invoke-direct {p2, p0}, La/a/b/n/u$a;-><init>(La/a/b/n/u;)V

    invoke-virtual {p1, p2}, Lb/p/a/b;->setOnPageChangeListener(Lb/p/a/b$h;)V

    return-void
.end method
