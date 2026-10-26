.class public Lf/a/i/m/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/i/m/j;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/i/m/j;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/i/m/k;->a:Ljava/util/List;

    iput-object p2, p0, Lf/a/i/m/k;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 9

    invoke-static {p1}, Lf/a/i/m/g;->c0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "theme daynight ResReplaceView themeIsLight = "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object v1, p0, Lf/a/i/m/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/a/i/m/j;

    if-eqz v0, :cond_1

    .line 1
    iget v3, v2, Lf/a/i/m/j;->d:I

    goto :goto_1

    .line 2
    :cond_1
    iget v3, v2, Lf/a/i/m/j;->c:I

    .line 3
    :goto_1
    iget-object v4, v2, Lf/a/i/m/j;->a:Ljava/lang/String;

    const-string v5, "background"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "mipmap"

    const-string v6, "drawable"

    const-string v7, "color"

    if-eqz v4, :cond_4

    .line 5
    iget-object v4, v2, Lf/a/i/m/j;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lf/a/i/m/k;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lf/a/i/m/k;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v4, v2, Lf/a/i/m/j;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 9
    iget-object v2, v2, Lf/a/i/m/j;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lf/a/i/m/k;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lf/a/i/m/k;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v4, v2, Lf/a/i/m/j;->a:Ljava/lang/String;

    const-string v8, "src"

    .line 12
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lf/a/i/m/k;->b:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 13
    iget-object v4, v2, Lf/a/i/m/j;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 15
    iget-object v4, v2, Lf/a/i/m/j;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    iget-object v2, v2, Lf/a/i/m/j;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/a/i/m/k;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1, v3}, Lf/a/i/m/k;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    :goto_2
    iget-object v2, p0, Lf/a/i/m/k;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v3}, Lf/a/i/m/k;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 19
    :cond_7
    iget-object v2, v2, Lf/a/i/m/j;->a:Ljava/lang/String;

    const-string v4, "textColor"

    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/a/i/m/k;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, v3}, Lf/a/i/m/k;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public b(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
