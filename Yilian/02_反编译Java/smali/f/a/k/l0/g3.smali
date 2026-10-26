.class public Lf/a/k/l0/g3;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lf/a/k/k0/b;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/TextView;

.field public f:Lf/a/k/n0/j;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/TextView;

.field public k:Lf/a/k/k0/a;

.field public l:Z

.field public m:Lf/a/k/n0/j;

.field public n:Lf/a/k/n0/j;

.field public o:Lf/a/k/n0/j;

.field public p:Lf/a/k/n0/j;

.field public q:Lf/a/k/n0/j;

.field public r:Lf/a/k/n0/j;

.field public s:Lf/a/k/n0/j;

.field public t:Lf/a/k/n0/j;

.field public u:Ljava/lang/StringBuffer;

.field public v:Landroid/widget/TextView;

.field public w:Lf/a/k/n0/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/g3;->l:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lf/a/k/l0/g3;->u:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static synthetic N(Landroid/view/View;ILandroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance p1, Landroid/view/TouchDelegate;

    invoke-direct {p1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf/a/k/k0/a;

    .line 1
    iput-object p1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    return-void
.end method

.method public L()V
    .locals 0

    return-void
.end method

.method public synthetic M()V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    :cond_0
    return-void
.end method

.method public synthetic O(Landroid/widget/TextView;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/g3;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p2, p3, p4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic P(Landroid/widget/TextView;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lf/a/k/l0/g3;->u:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p5, p0, Lf/a/k/l0/g3;->u:Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p5

    new-instance v6, Lf/a/k/l0/m;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lf/a/k/l0/m;-><init>(Lf/a/k/l0/g3;Landroid/widget/TextView;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Q(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 p3, 0x0

    iput-object p3, p0, Lf/a/k/l0/g3;->v:Landroid/widget/TextView;

    sget-object v0, Lf/a/i/f/a;->b:Lf/a/i/f/a;

    .line 1
    iput-object p3, v0, Lf/a/i/f/a;->a:Lf/a/i/f/a$a;

    .line 2
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public R(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result p1

    const/16 v0, 0xca

    const/4 v1, 0x1

    const/16 v2, 0x69

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    .line 2
    new-instance v3, Lf/a/k/n0/j;

    invoke-direct {v3, p1}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0c006a

    .line 3
    iput v2, v3, Lf/a/k/n0/j;->a:I

    .line 4
    iput p1, v3, Lf/a/k/n0/j;->F:I

    .line 5
    iput-boolean v1, v3, Lf/a/k/n0/j;->J:Z

    .line 6
    iput v0, v3, Lf/a/k/n0/j;->b:I

    .line 7
    iput-object v3, p0, Lf/a/k/l0/g3;->n:Lf/a/k/n0/j;

    const p1, 0x7f090129

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    const v1, 0x7f0600bd

    invoke-static {v0, v1}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lf/a/k/l0/g3;->n:Lf/a/k/n0/j;

    const v0, 0x7f090111

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    const v1, 0x106000d

    invoke-static {v0, v1}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    .line 8
    new-instance v3, Lf/a/k/n0/j;

    invoke-direct {v3, p1}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const p1, 0x7f080115

    .line 9
    iput p1, v3, Lf/a/k/n0/j;->N:I

    const p1, 0x7f0c006b

    .line 10
    iput v2, v3, Lf/a/k/n0/j;->a:I

    .line 11
    iput p1, v3, Lf/a/k/n0/j;->F:I

    .line 12
    iput-boolean v1, v3, Lf/a/k/n0/j;->J:Z

    .line 13
    iput v0, v3, Lf/a/k/n0/j;->b:I

    .line 14
    iput-object v3, p0, Lf/a/k/l0/g3;->n:Lf/a/k/n0/j;

    :goto_0
    iget-object p1, p0, Lf/a/k/l0/g3;->n:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iget-object p1, p0, Lf/a/k/l0/g3;->n:Lf/a/k/n0/j;

    const v0, 0x7f090159

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf/a/k/l0/n;

    invoke-direct {v0, p0}, Lf/a/k/l0/n;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public S(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result p1

    const v0, 0x7f090159

    const/16 v1, 0xca

    const/4 v2, 0x1

    const/16 v3, 0x69

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    .line 2
    new-instance v4, Lf/a/k/n0/j;

    invoke-direct {v4, p1}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0c0062

    .line 3
    iput v3, v4, Lf/a/k/n0/j;->a:I

    .line 4
    iput p1, v4, Lf/a/k/n0/j;->F:I

    .line 5
    iput-boolean v2, v4, Lf/a/k/n0/j;->J:Z

    .line 6
    iput v1, v4, Lf/a/k/n0/j;->b:I

    .line 7
    iput-object v4, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    const p1, 0x7f090129

    invoke-virtual {v4, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    const v2, 0x7f0600bd

    invoke-static {v1, v2}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    const v1, 0x7f090111

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iget-object p1, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf/a/k/l0/v;

    invoke-direct {v0, p0}, Lf/a/k/l0/v;-><init>(Lf/a/k/l0/g3;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    .line 8
    new-instance v4, Lf/a/k/n0/j;

    invoke-direct {v4, p1}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const p1, 0x7f080115

    .line 9
    iput p1, v4, Lf/a/k/n0/j;->N:I

    const p1, 0x7f0c0061

    .line 10
    iput v3, v4, Lf/a/k/n0/j;->a:I

    .line 11
    iput p1, v4, Lf/a/k/n0/j;->F:I

    .line 12
    iput-boolean v2, v4, Lf/a/k/n0/j;->J:Z

    .line 13
    iput v1, v4, Lf/a/k/n0/j;->b:I

    .line 14
    invoke-virtual {v4}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iput-object v4, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf/a/k/l0/j;

    invoke-direct {v0, p0}, Lf/a/k/l0/j;-><init>(Lf/a/k/l0/g3;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic T(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {p1}, Lf/a/k/k0/a;->O()V

    return-void
.end method

.method public U(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lf/a/k/l0/g3;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/g3;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lf/a/k/l0/g3;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/g3;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lf/a/k/l0/g3;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lf/a/k/l0/g3;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    instance-of p1, p1, Lf/a/k/e0;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    check-cast p1, Lf/a/k/e0;

    invoke-interface {p1}, Lf/a/k/e0;->i()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic V(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lf/a/k/l0/g3;->l:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    const v0, 0x13880

    const/16 v1, 0x29

    const-string v2, "EC_ABOUT_OTA_BTN"

    invoke-interface {p1, v0, v1, v2}, Lf/a/k/k0/a;->a(IILjava/lang/String;)V

    iget-object p1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {p1}, Lf/a/k/k0/a;->Y()V

    return-void
.end method

.method public synthetic W(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    return-void
.end method

.method public synthetic X(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    return-void
.end method

.method public synthetic Y(FLjava/lang/String;)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d%%"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    if-nez v1, :cond_0

    new-instance v1, Lf/a/k/n0/j$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/a/k/n0/j$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Lf/a/k/n0/j$a;->b(Z)Lf/a/k/n0/j$a;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lf/a/k/n0/j$a;->e(I)Lf/a/k/n0/j$a;

    move-result-object v1

    const v2, 0x7f0d00bd

    invoke-virtual {v1, v2}, Lf/a/k/n0/j$a;->j(I)Lf/a/k/n0/j$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lf/a/k/n0/j$a;->l(Ljava/lang/String;)Lf/a/k/n0/j$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lf/a/k/n0/j$a;->i(Ljava/lang/String;)Lf/a/k/n0/j$a;

    move-result-object p2

    const v1, 0x7f0d0029

    new-instance v2, Lf/a/k/l0/e3;

    invoke-direct {v2, p0}, Lf/a/k/l0/e3;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p2, v1, v2}, Lf/a/k/n0/j$a;->h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;

    move-result-object p2

    invoke-virtual {p2}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object p2

    iput-object p2, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    invoke-virtual {p2}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    :cond_0
    iget-object p2, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    invoke-virtual {p2, v0}, Lf/a/k/n0/j;->setPercentText(Ljava/lang/String;)V

    float-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    iget-object p1, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    :cond_1
    return-void
.end method

.method public synthetic Z(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/g3;->n:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    return-void
.end method

.method public a()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/y;

    invoke-direct {v1, p0}, Lf/a/k/l0/y;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic a0(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x4

    const v1, 0x13880

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_1

    :cond_0
    const p1, 0x7f0d002c

    goto :goto_0

    :cond_1
    const p1, 0x7f0d0089

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lf/a/k/n0/j$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v2

    invoke-direct {v0, v2}, Lf/a/k/n0/j$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lf/a/k/n0/j$a;->d(Ljava/lang/String;)Lf/a/k/n0/j$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf/a/k/n0/j$a;->b(Z)Lf/a/k/n0/j$a;

    move-result-object p1

    const v0, 0x7f0d002f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lf/a/k/n0/j$a;->h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object p1

    iput-object p1, p0, Lf/a/k/l0/g3;->q:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iget-object p1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    const/16 v0, 0x2c

    const-string v2, "EC_ABOUT_OTA_STORAGE_NOT_ENOUGH"

    invoke-interface {p1, v1, v0, v2}, Lf/a/k/k0/a;->a(IILjava/lang/String;)V

    return-void

    :cond_2
    const p1, 0x7f0d005b

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const p1, 0x7f0d003c

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    const/16 v2, 0x2b

    const-string v3, "EC_ABOUT_OTA_DOWNLOAD_FAILED"

    invoke-interface {v0, v1, v2, v3}, Lf/a/k/k0/a;->a(IILjava/lang/String;)V

    :goto_1
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/easyconn/EcApplication;->showToast(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public synthetic b0()V
    .locals 3

    new-instance v0, Lf/a/k/n0/j$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/a/k/n0/j$a;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/k/n0/j$a;->b(Z)Lf/a/k/n0/j$a;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lf/a/k/n0/j$a;->e(I)Lf/a/k/n0/j$a;

    move-result-object v0

    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Lf/a/k/n0/j$a;->c(I)Lf/a/k/n0/j$a;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/f3;

    invoke-direct {v1, p0}, Lf/a/k/l0/f3;-><init>(Lf/a/k/l0/g3;)V

    const v2, 0x7f0d002f

    invoke-virtual {v0, v2, v1}, Lf/a/k/n0/j$a;->h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/g3;->r:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    return-void
.end method

.method public synthetic c0()V
    .locals 3

    new-instance v0, Lf/a/k/n0/j$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/a/k/n0/j$a;-><init>(Landroid/app/Activity;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lf/a/k/n0/j$a;->e(I)Lf/a/k/n0/j$a;

    move-result-object v0

    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Lf/a/k/n0/j$a;->c(I)Lf/a/k/n0/j$a;

    move-result-object v0

    const v1, 0x7f0d002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lf/a/k/n0/j$a;->h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/g3;->w:Lf/a/k/n0/j;

    return-void
.end method

.method public synthetic d0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    return-void
.end method

.method public synthetic e0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {p1, p2}, Lf/a/k/k0/a;->z(Z)V

    return-void
.end method

.method public f(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/b;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/b;-><init>(Lf/a/k/l0/g3;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "package:"

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/g3;->n0()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lf/a/k/l0/g3;->v:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->callOnClick()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public g0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_ec_show_fps_state"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public h0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_ec_save_h264_state"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public i0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_ec_save_pcm_state"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public j0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_ec_save_record_pcm_state"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public k0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    sput-boolean p2, Lf/a/i/n/b;->I:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "key_ec_print_decode_logcat_state"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public synthetic l0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/g3;->l:Z

    return-void
.end method

.method public m(Ljava/lang/String;F)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/u;

    invoke-direct {v1, p0, p2, p1}, Lf/a/k/l0/u;-><init>(Lf/a/k/l0/g3;FLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic m0(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x4

    if-eq p1, v0, :cond_4

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_1

    :cond_0
    const p1, 0x7f0d002c

    goto :goto_0

    :cond_1
    const p1, 0x7f0d005b

    goto :goto_0

    :cond_2
    const-string p1, "\u68c0\u6d4b\u5931\u8d25"

    goto :goto_1

    :cond_3
    const p1, 0x7f0d0089

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lf/a/k/n0/j$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/a/k/n0/j$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lf/a/k/n0/j$a;->d(Ljava/lang/String;)Lf/a/k/n0/j$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf/a/k/n0/j$a;->b(Z)Lf/a/k/n0/j$a;

    move-result-object p1

    const v0, 0x7f0d002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lf/a/k/n0/j$a;->h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object p1

    iput-object p1, p0, Lf/a/k/l0/g3;->p:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    return-void

    :cond_4
    const p1, 0x7f0d003c

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/easyconn/EcApplication;->showToast(Ljava/lang/String;I)V

    iput-boolean v1, p0, Lf/a/k/l0/g3;->l:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lnet/easyconn/EcApplication;

    new-instance v0, Lf/a/k/l0/x;

    invoke-direct {v0, p0}, Lf/a/k/l0/x;-><init>(Lf/a/k/l0/g3;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lnet/easyconn/EcApplication;->executeTaskDelay(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method

.method public n0()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x40020

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d5

    :goto_0
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0087

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v1, 0x7f0901d3

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v0, v8, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v9, Lf/a/i/f/a;->b:Lf/a/i/f/a;

    new-instance v10, Lf/a/k/l0/h;

    move-object v1, v10

    move-object v2, p0

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lf/a/k/l0/h;-><init>(Lf/a/k/l0/g3;Landroid/widget/TextView;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1
    iput-object v10, v9, Lf/a/i/f/a;->a:Lf/a/i/f/a$a;

    const v1, 0x7f09008b

    .line 2
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lf/a/k/l0/g3;->v:Landroid/widget/TextView;

    new-instance v2, Lf/a/k/l0/c;

    invoke-direct {v2, p0, v0, v8}, Lf/a/k/l0/c;-><init>(Lf/a/k/l0/g3;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lf/a/k/l0/g3$a;

    invoke-direct {v1, p0, v7, v0, v8}, Lf/a/k/l0/g3$a;-><init>(Lf/a/k/l0/g3;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public o(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    .line 1
    new-instance v1, Lf/a/k/n0/j;

    invoke-direct {v1, v0}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c006d

    const/16 v2, 0x69

    .line 2
    iput v2, v1, Lf/a/k/n0/j;->a:I

    .line 3
    iput v0, v1, Lf/a/k/n0/j;->F:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, v1, Lf/a/k/n0/j;->J:Z

    const/16 v2, 0xca

    .line 5
    iput v2, v1, Lf/a/k/n0/j;->b:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 7
    iget-object v3, v1, Lf/a/k/n0/j;->c:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 9
    iput-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    invoke-virtual {v1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f090070

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/a/k/l0/p;

    invoke-direct {v2, p0}, Lf/a/k/l0/p;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    new-instance v1, Lf/a/k/l0/a0;

    invoke-direct {v1, p0}, Lf/a/k/l0/a0;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v1, 0x7f0901fb

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f090139

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    new-instance v2, Lf/a/k/l0/w;

    invoke-direct {v2, p0}, Lf/a/k/l0/w;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f090193

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "key_ec_show_fps_state"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v2, Lf/a/k/l0/f;

    invoke-direct {v2, p0}, Lf/a/k/l0/f;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f09016a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "key_ec_save_h264_state"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v2, Lf/a/k/l0/e;

    invoke-direct {v2, p0}, Lf/a/k/l0/e;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "key_ec_save_pcm_state"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v2, Lf/a/k/l0/o;

    invoke-direct {v2, p0}, Lf/a/k/l0/o;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v2

    .line 16
    iget-object v2, v2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "key_ec_save_record_pcm_state"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v2, Lf/a/k/l0/d;

    invoke-direct {v2, p0}, Lf/a/k/l0/d;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v2

    .line 18
    iget-object v2, v2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "key_ec_print_decode_logcat_state"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v0, Lf/a/k/l0/q;

    invoke-direct {v0, p0}, Lf/a/k/l0/q;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {v1}, Lf/a/k/k0/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    const p2, 0x7f0901fd

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "false"

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "ENABLE_SHOW_AUTH_STATE"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "key_ec_sdk_auth_state"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lf/a/k/l0/g3;->a:Landroid/widget/TextView;

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/g3;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0c003a

    goto :goto_0

    :cond_0
    const p3, 0x7f0c0039

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900c9

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/g3;->a:Landroid/widget/TextView;

    const p2, 0x7f0900d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/g3;->b:Landroid/widget/TextView;

    const p2, 0x7f0900d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/g3;->c:Landroid/widget/TextView;

    const p2, 0x7f0900d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lf/a/k/l0/g3;->d:Landroid/widget/LinearLayout;

    const p2, 0x7f0900ce

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/g3;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p2, 0x7f090215

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/a/k/l0/g3;->g:Landroid/view/View;

    const p2, 0x7f0900cf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/g3;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p2

    const p3, 0x7f090203

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/a/k/l0/g3;->h:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lf/a/k/l0/g3;->j:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Lf/a/k/l0/r;

    invoke-direct {v3, p2, v1, v2}, Lf/a/k/l0/r;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_1
    iget-object p2, p0, Lf/a/k/l0/g3;->j:Landroid/widget/TextView;

    new-instance v1, Lf/a/k/l0/g;

    invoke-direct {v1, p0}, Lf/a/k/l0/g;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result p2

    const/4 v1, 0x3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result p2

    if-ne p2, v1, :cond_4

    :cond_3
    const p2, 0x7f0900cd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Lf/a/k/l0/s;

    invoke-direct {v2, p0}, Lf/a/k/l0/s;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object p2, p0, Lf/a/k/l0/g3;->c:Landroid/widget/TextView;

    new-instance v2, Lf/a/k/l0/i;

    invoke-direct {v2, p0}, Lf/a/k/l0/i;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ld/b/q/k;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lf/a/k/l0/t;

    invoke-direct {v2, p0}, Lf/a/k/l0/t;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lf/a/k/l0/g3;->i:Landroid/widget/Button;

    new-instance v2, Lf/a/k/l0/k;

    invoke-direct {v2, p0}, Lf/a/k/l0/k;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 6
    invoke-static {p2}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p2

    const-string v2, "false"

    if-nez p2, :cond_5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    :cond_5
    sget-object p2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "HIDE_CHECK_UPDATE_BUTTON"

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 7
    iget-object p2, p0, Lf/a/k/l0/g3;->i:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    const-string p2, "7.0.1-9011d330b-202404121051"

    const p3, 0x7f0d00c1

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "-"

    .line 8
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lf/a/k/l0/g3;->b:Landroid/widget/TextView;

    const-string v7, "%s%s[%d].%s-%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, "tocfree"

    aput-object v9, v8, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    aget-object v5, v4, v0

    aput-object v5, v8, v1

    const/4 v1, 0x4

    aget-object v4, v4, v3

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object v1, p0, Lf/a/k/l0/g3;->b:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v0

    aput-object p2, v2, v3

    const-string p2, "%s%s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_2
    iget-object p2, p0, Lf/a/k/l0/g3;->c:Landroid/widget/TextView;

    const p3, 0x7f0d0039

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {v2}, Lf/a/k/k0/a;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lf/a/k/l0/g3;->o0()V

    invoke-virtual {p0}, Lf/a/k/l0/g3;->L()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {v0}, Lf/a/c;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lf/a/k/l0/g3;->o:Lf/a/k/n0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/g3;->o:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->o:Lf/a/k/n0/j;

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->f:Lf/a/k/n0/j;

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/g3;->s:Lf/a/k/n0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/g3;->s:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->s:Lf/a/k/n0/j;

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/g3;->w:Lf/a/k/n0/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/g3;->w:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->w:Lf/a/k/n0/j;

    :cond_3
    iget-object v0, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->t:Lf/a/k/n0/j;

    :cond_4
    iget-object v0, p0, Lf/a/k/l0/g3;->r:Lf/a/k/n0/j;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lf/a/k/l0/g3;->r:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->r:Lf/a/k/n0/j;

    :cond_5
    iget-object v0, p0, Lf/a/k/l0/g3;->q:Lf/a/k/n0/j;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lf/a/k/l0/g3;->q:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->q:Lf/a/k/n0/j;

    :cond_6
    iget-object v0, p0, Lf/a/k/l0/g3;->p:Lf/a/k/n0/j;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lf/a/k/l0/g3;->p:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->p:Lf/a/k/n0/j;

    :cond_7
    iget-object v0, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/g3;->m:Lf/a/k/n0/j;

    :cond_8
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/g3;->o0()V

    iget-object p1, p0, Lf/a/k/l0/g3;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {p1}, Lf/a/k/k0/a;->E()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {v0}, Lf/a/c;->onStart()V

    return-void
.end method

.method public s(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/z;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/z;-><init>(Lf/a/k/l0/g3;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/l;

    invoke-direct {v1, p0}, Lf/a/k/l0/l;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/a;

    invoke-direct {v1, p0}, Lf/a/k/l0/a;-><init>(Lf/a/k/l0/g3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
