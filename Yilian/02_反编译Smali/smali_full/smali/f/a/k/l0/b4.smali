.class public Lf/a/k/l0/b4;
.super Lf/a/k/l0/a4;
.source ""


# instance fields
.field public J:Landroid/widget/RelativeLayout;

.field public K:Landroid/view/View;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/RelativeLayout;

.field public N:Landroid/view/View;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/RelativeLayout;

.field public Q:Landroid/view/View;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/RelativeLayout;

.field public T:Landroid/view/View;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/LinearLayout;

.field public W:Landroid/widget/ImageView;

.field public X:Landroid/widget/LinearLayout;

.field public Y:Landroid/widget/ImageView;

.field public Z:Landroid/widget/LinearLayout;

.field public a0:Landroid/widget/ImageView;

.field public b0:Landroid/widget/RelativeLayout;

.field public c0:Landroid/widget/ImageView;

.field public d0:Landroid/widget/LinearLayout;

.field public e0:Landroid/widget/RelativeLayout;

.field public f0:Landroid/widget/LinearLayout;

.field public g0:Landroid/widget/RelativeLayout;

.field public h0:Landroid/widget/TextView;

.field public i0:Landroid/graphics/Bitmap;

.field public j0:Z

.field public k0:Landroid/widget/RelativeLayout;

.field public l0:Landroid/widget/ImageView;

.field public m0:Landroid/widget/RelativeLayout;

.field public n0:Landroid/widget/TextView;

.field public o0:Landroid/widget/TextView;

.field public p0:Landroid/widget/RelativeLayout;

.field public q0:Landroidx/appcompat/widget/AppCompatImageView;

.field public r0:Landroidx/appcompat/widget/AppCompatImageView;

.field public s0:Landroid/net/wifi/WifiManager;

.field public t0:Landroid/os/Handler;

.field public u0:I

.field public volatile v0:Z

.field public final w0:Lf/a/k/d0;

.field public x0:Ljava/lang/Runnable;

.field public y0:Ljava/lang/String;

.field public z0:Lf/a/k/n0/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf/a/k/l0/a4;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/b4;->j0:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    iput v0, p0, Lf/a/k/l0/b4;->u0:I

    iput-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    new-instance v0, Lf/a/k/l0/b4$a;

    invoke-direct {v0, p0}, Lf/a/k/l0/b4$a;-><init>(Lf/a/k/l0/b4;)V

    iput-object v0, p0, Lf/a/k/l0/b4;->w0:Lf/a/k/d0;

    new-instance v0, Lf/a/k/l0/n2;

    invoke-direct {v0, p0}, Lf/a/k/l0/n2;-><init>(Lf/a/k/l0/b4;)V

    iput-object v0, p0, Lf/a/k/l0/b4;->x0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    return-void
.end method

.method public static synthetic A0(Landroid/view/View;ILandroid/view/View;)V
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
.method public synthetic B0()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/b4;->c0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->l0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lf/a/k/l0/b4;->l0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->k0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic C0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->R0()V

    return-void
.end method

.method public synthetic D0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->S0()V

    return-void
.end method

.method public synthetic E0()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->q0()V

    return-void
.end method

.method public synthetic F0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->T0()V

    return-void
.end method

.method public synthetic G0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lf/a/k/e0;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/e0;

    invoke-interface {p1}, Lf/a/k/e0;->e()V

    :cond_0
    return-void
.end method

.method public synthetic H0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->l0()V

    return-void
.end method

.method public I()V
    .locals 3

    const-string v0, "TabStatusTipFragment onConnectTimeout"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "TabStatusTipFragment onConnectTimeout, fragment hidden, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v0, :cond_1

    const-string v0, "TabStatusTipFragment onConnectTimeout, at background, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lf/a/k/l0/a4;->z:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "TabStatusTipFragment onConnectTimeout, no needShowTimeout, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lf/a/k/l0/a4;->z:Z

    return-void

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

    invoke-interface {v0}, Lf/a/k/k0/i;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TabStatusTipFragment Phone not Connected, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v2, 0x7f0d007c

    invoke-virtual {v0, v2, v1}, Lnet/easyconn/EcApplication;->showToastCustom(II)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->q()V

    return-void
.end method

.method public synthetic I0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->V0()V

    return-void
.end method

.method public synthetic J0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->U0()V

    return-void
.end method

.method public synthetic K0()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->q0()V

    return-void
.end method

.method public synthetic L0()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/b4;->k0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->l0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->c0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->l0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public synthetic M0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a/k/l0/b4;->b1(Z)V

    return-void
.end method

.method public synthetic N0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a/k/l0/b4;->i0(Z)V

    return-void
.end method

.method public O(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lf/a/k/l0/a4;->O(Landroid/view/View;)V

    const v0, 0x7f0901f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/b4;->h0:Landroid/widget/TextView;

    const v0, 0x7f09006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lf/a/k/l0/b4;->q0:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lf/a/k/l0/w2;

    invoke-direct {v1, p0}, Lf/a/k/l0/w2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lf/a/k/l0/b4;->r0:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lf/a/k/l0/u2;

    invoke-direct {v1, p0}, Lf/a/k/l0/u2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->w0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "TabStatusTipFragment initUsbConnectView"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const v0, 0x7f0901bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->J:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/b4;->K:Landroid/view/View;

    const v0, 0x7f0901be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/b4;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/l0/b4;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->J:Landroid/widget/RelativeLayout;

    new-instance v2, Lf/a/k/l0/x2;

    invoke-direct {v2, p0}, Lf/a/k/l0/x2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->V:Landroid/widget/LinearLayout;

    const v0, 0x7f09020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/b4;->W:Landroid/widget/ImageView;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TabStatusTipFragment initApConnectView"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const v0, 0x7f0901b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->S:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/b4;->T:Landroid/view/View;

    const v0, 0x7f0901b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/b4;->U:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/l0/b4;->S:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->S:Landroid/widget/RelativeLayout;

    new-instance v2, Lf/a/k/l0/j2;

    invoke-direct {v2, p0}, Lf/a/k/l0/j2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->X:Landroid/widget/LinearLayout;

    const v0, 0x7f09004b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/b4;->Y:Landroid/widget/ImageView;

    .line 5
    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TabStatusTipFragment initBleConnectView"

    .line 6
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const v0, 0x7f0901b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->P:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/b4;->Q:Landroid/view/View;

    const v0, 0x7f0901bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/b4;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/l0/b4;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->P:Landroid/widget/RelativeLayout;

    new-instance v2, Lf/a/k/l0/m2;

    invoke-direct {v2, p0}, Lf/a/k/l0/m2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->Z:Landroid/widget/LinearLayout;

    const v0, 0x7f090061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/b4;->a0:Landroid/widget/ImageView;

    .line 7
    :cond_2
    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "TabStatusTipFragment initWlanQrConnectView"

    .line 8
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const v0, 0x7f0901bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->M:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/b4;->N:Landroid/view/View;

    const v0, 0x7f0901c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/b4;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/l0/b4;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->M:Landroid/widget/RelativeLayout;

    new-instance v2, Lf/a/k/l0/o2;

    invoke-direct {v2, p0}, Lf/a/k/l0/o2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->b0:Landroid/widget/RelativeLayout;

    const v0, 0x7f09023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/b4;->c0:Landroid/widget/ImageView;

    const v0, 0x7f090072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->d0:Landroid/widget/LinearLayout;

    const v0, 0x7f090074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->f0:Landroid/widget/LinearLayout;

    const v0, 0x7f09006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->g0:Landroid/widget/RelativeLayout;

    const v0, 0x7f090076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->e0:Landroid/widget/RelativeLayout;

    const v0, 0x7f090219

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->k0:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/b4;->l0:Landroid/widget/ImageView;

    const v0, 0x7f090234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/b4;->m0:Landroid/widget/RelativeLayout;

    const v0, 0x7f090235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/b4;->o0:Landroid/widget/TextView;

    const v0, 0x7f090236

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/b4;->n0:Landroid/widget/TextView;

    const v0, 0x7f090232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lf/a/k/l0/b4;->p0:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lf/a/k/l0/b4;->g0:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    new-instance v4, Lf/a/k/l0/t2;

    invoke-direct {v4, p1, v0, v3}, Lf/a/k/l0/t2;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_3
    iget-object p1, p0, Lf/a/k/l0/b4;->e0:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Lf/a/k/l0/t2;

    invoke-direct {v3, p1, v0, v2}, Lf/a/k/l0/t2;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_4
    iget-object p1, p0, Lf/a/k/l0/b4;->g0:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lf/a/k/l0/b4;->w0:Lf/a/k/d0;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lf/a/k/l0/b4;->e0:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lf/a/k/l0/b4;->w0:Lf/a/k/d0;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lf/a/k/l0/b4;->p0:Landroid/widget/RelativeLayout;

    new-instance v0, Lf/a/k/l0/r2;

    invoke-direct {v0, p0}, Lf/a/k/l0/r2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Lf/a/k/l0/b4;->n0()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lf/a/k/l0/b4;->T0()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lf/a/k/l0/b4;->S0()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lf/a/k/l0/b4;->V0()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lf/a/k/l0/b4;->R0()V

    .line 14
    :goto_0
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 v1, 0x10

    :cond_a
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->r(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    or-int/lit8 v1, v1, 0x20

    :cond_b
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    or-int/lit8 v1, v1, 0x8

    :cond_c
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->D(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->E(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_d
    or-int/lit8 p1, v1, 0x4

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    or-int/lit8 v1, p1, 0x2

    goto :goto_1

    :cond_e
    or-int/lit8 v1, p1, 0x1

    :cond_f
    :goto_1
    const-string p1, "generateQrAction action = "

    invoke-static {p1, v1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    .line 15
    iput v1, p0, Lf/a/k/l0/b4;->u0:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08015f

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lf/a/k/l0/b4;->i0:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic O0()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->r0()V

    return-void
.end method

.method public P()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/b4;->j0:Z

    return-void
.end method

.method public synthetic P0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/l0/b4;->b1(Z)V

    return-void
.end method

.method public Q()V
    .locals 2

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/g0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/a/k/g0;->o0(Z)V

    :cond_0
    return-void
.end method

.method public Q0()V
    .locals 1

    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/b4;->j0:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->Y0()V

    const-string v0, "TabStatusTipFragment openAp"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public R()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/b4;->j0:Z

    invoke-virtual {p0}, Lf/a/k/l0/b4;->o0()V

    return-void
.end method

.method public R0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/b4;->X:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->U:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->T:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->W0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/b4;->b0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->O:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->N:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->Z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->R:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->Q:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->V:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->K:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_ec_tab_status_tip"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public S()V
    .locals 2

    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/g0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/a/k/g0;->o0(Z)V

    :cond_0
    return-void
.end method

.method public S0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/b4;->Z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->R:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->Q:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->W0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/b4;->b0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->O:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->N:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->X:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->U:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->T:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->V:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->K:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const/4 v1, 0x2

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_ec_tab_status_tip"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public T()V
    .locals 4

    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TabStatusTipFragment onApStateFail openAp return npt supportQrScan"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/b4;->j0:Z

    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lf/a/k/l0/d3;

    invoke-direct {v1, p0}, Lf/a/k/l0/d3;-><init>(Lf/a/k/l0/b4;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public T0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/b4;->V:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->K:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->W0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/b4;->b0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->O:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->N:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->Z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->R:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->Q:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->X:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->U:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->T:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const/4 v1, 0x3

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_ec_tab_status_tip"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public U()V
    .locals 0

    return-void
.end method

.method public U0()V
    .locals 4

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/g0;

    .line 1
    iget-object v0, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    .line 2
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->d:Lnet/easyconn/framework/sdkservice/EcWifiManager;

    .line 3
    iget-object v1, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->h:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_0

    const-string v0, "EcWifiManager removeGroup mP2pManager==null"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lnet/easyconn/framework/sdkservice/EcWifiManager;->j:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lf/a/i/i/c;

    invoke-direct {v3, v0}, Lf/a/i/i/c;-><init>(Lnet/easyconn/framework/sdkservice/EcWifiManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lf/a/k/l0/b4;->m0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const-string v0, "TabStatusTipFragment hideWlanDevice"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/b4;->m0:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public V()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->o0()V

    return-void
.end method

.method public V0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/b4;->b0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->O:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->N:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->W0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/b4;->Z:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->R:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->Q:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->X:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->U:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->T:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->V:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lf/a/k/l0/b4;->K:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lf/a/k/l0/b4;->X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "key_ec_qr_code_mode_android"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "EC_QR_CODE_MODE_ANDROID = "

    .line 2
    invoke-static {v2, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    const-string v0, "TabStatusTipFragment performAndroidBtnClick"

    .line 3
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lf/a/k/l0/b4;->Z0(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "TabStatusTipFragment performIosBtnClick"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/a/k/l0/b4;->Z0(Z)V

    .line 5
    :goto_0
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_ec_tab_status_tip"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public W0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3

    const-string v0, "TabStatusTipFragment setTabChosen content = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , titleText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , titleChosen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->c0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p3, 0x7f06003b

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p3, 0x7f06003a

    :goto_0
    invoke-static {p1, p3}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07027b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public X0(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3

    const-string v0, "TabStatusTipFragment setTabUnChosen content = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , titleText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , titleChosen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->u(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->c0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p3, 0x7f06003d

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p3, 0x7f06003c

    :goto_0
    invoke-static {p1, p3}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070277

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public Y0()V
    .locals 2

    const-string v0, "showLoadingMask"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/b4;->k0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->c0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lf/a/k/l0/v2;

    invoke-direct {v1, p0}, Lf/a/k/l0/v2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "showLoadingMask view null !! return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public Z0(Z)V
    .locals 4

    const-string v0, "showSwitchBtn isAndroid="

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lf/a/k/l0/b4;->g0:Landroid/widget/RelativeLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lf/a/k/l0/b4;->e0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lf/a/k/l0/b4;->d0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/b4;->f0:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ec_qr_code_mode_android"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put EC_QR_CODE_MODE_ANDROID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lf/a/k/l0/b4;->i0(Z)V

    iget-boolean p1, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz p1, :cond_3

    new-instance v2, Lf/a/k/l0/l2;

    invoke-direct {v2, p0}, Lf/a/k/l0/l2;-><init>(Lf/a/k/l0/b4;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lf/a/k/l0/b4;->b1(Z)V

    iget-boolean p1, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz p1, :cond_3

    new-instance v2, Lf/a/k/l0/y2;

    invoke-direct {v2, p0}, Lf/a/k/l0/y2;-><init>(Lf/a/k/l0/b4;)V

    :goto_2
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public a1()V
    .locals 3

    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TabStatusTipFragment updateAndroidUrl return npt supportQrScan"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "key_ec_qr_code_mode_android"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf/a/k/l0/b4;->k0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStatusTipFragment setDeviceTag updateAndroidUrl ==>** androidUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lf/a/k/l0/z2;

    invoke-direct {v1, p0}, Lf/a/k/l0/z2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public b1(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiEnabled enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDestroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/k/l0/b4;->v0:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lf/a/k/l0/b4;->s0:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf/a/k/l0/b4;->Y0()V

    .line 1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->Y0()V

    iget-object v0, p0, Lf/a/k/l0/b4;->s0:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "TabStatusTipFragment openWifi"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->o0()V

    :goto_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->k0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "==>** androidUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lf/a/k/l0/b4;->r0()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_4

    new-instance v1, Lf/a/k/l0/q2;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/q2;-><init>(Lf/a/k/l0/b4;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lf/a/k/l0/b4;->s0:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lf/a/k/l0/b4;->s0:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string p1, "TabStatusTipFragment closeWifi"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TabStatusTipFragment setDeviceTag tag is "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/k/l0/b4;->h0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "TabStatusTipFragment setDeviceTag lastTag is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/b4;->y0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->y0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TabStatusTipFragment setDeviceTag TextUtils.isEmpty(lastTag)"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/b4;->y0:Ljava/lang/String;

    const-string v1, "Carbit-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TabStatusTipFragment setDeviceTag contains Carbit"

    :goto_0
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->a1()V

    :cond_2
    iput-object p1, p0, Lf/a/k/l0/b4;->y0:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "TabStatusTipFragment onReadVersionTimeout"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v1, 0x7f0d007c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/easyconn/EcApplication;->showToastCustom(II)V

    return-void
.end method

.method public h0()V
    .locals 3

    const-string v0, "TabStatusTipFragment showReconnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "TabStatusTipFragment showReconnecting, fragment hidden, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v1, 0x7f0d0042

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/easyconn/EcApplication;->showToastCustom(II)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/a4;->z:Z

    return-void
.end method

.method public i0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apEnabled enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDestroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/k/l0/b4;->v0:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "open ap"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    new-instance v1, Lf/a/k/l0/p2;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/p2;-><init>(Lf/a/k/l0/b4;Z)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p1, "close ap"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->t0()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TabStatusTipFragment closeAp"

    .line 1
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j0()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lf/a/k/l0/b4;->n0()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->T0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->S0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lf/a/k/l0/b4;->V0()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lf/a/k/l0/b4;->R0()V

    :cond_4
    :goto_0
    return-void
.end method

.method public k0()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/a/i/m/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v3, "-"

    invoke-static {v0, v3}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lf/a/k/l0/b4;->l0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "EC_DEVICE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==>** deviceName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    const/16 v8, 0x8

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v7, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/k/g0;

    invoke-virtual {v1, v0}, Lf/a/k/g0;->B(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    const-string v1, "Carbit-"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m0()Ljava/lang/String;
    .locals 9

    new-instance v8, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v7, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v7, 0x1

    :goto_0
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/g0;

    invoke-virtual {v0, v8}, Lf/a/k/g0;->B(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n0()I
    .locals 7

    const-string v0, "TabStatusTipFragment getLastTab"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_tab_status_tip"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "TabStatusTipFragment getLastTab rememberTab = "

    .line 2
    invoke-static {v3, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lf/a/k/l0/b4;->w0()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-ne v0, v4, :cond_4

    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    return v0

    :cond_4
    const-string v0, "TabStatusTipFragment getLastTab rememberTab illegal"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_5
    const-string v0, "TabStatusTipFragment getLastTab rememberTab == -1"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lf/a/k/l0/b4;->w0()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move v3, v2

    :goto_2
    const-string v0, "TabStatusTipFragment getLastTab getDefaultTab defaultTab = "

    invoke-static {v0, v3}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    return v3
.end method

.method public o0()V
    .locals 2

    const-string v0, "hideLoadingMask"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/b4;->k0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->l0:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->c0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lf/a/k/l0/i2;

    invoke-direct {v1, p0}, Lf/a/k/l0/i2;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "hideLoadingMask view null !! return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->j0()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "TabStatusTipFragment onCreateView"

    invoke-static {p3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lf/a/k/l0/b4;->v0:Z

    iput-boolean p3, p0, Lf/a/k/l0/a4;->I:Z

    const v0, 0x7f0c0050

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "wifi"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lf/a/k/l0/b4;->s0:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Lf/a/k/l0/b4;->O(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/l0/b4;->x0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    invoke-super {p0}, Lf/a/k/l0/a4;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lf/a/k/l0/a4;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->q()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lf/a/k/l0/a4;->onResume()V

    const-string v0, "TabStatusTipFragment onResume"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/g0;

    invoke-virtual {v0}, Lf/a/k/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TabStatusTipFragment onResume isLaunchByUSBAttached initQrCode return "

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/g0;

    .line 1
    iget-object v0, v0, Lf/a/k/g0;->r:Landroidx/fragment/app/Fragment;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "TabStatusTipFragment onResume initQrCode return because is not this Fragment resume"

    .line 2
    :goto_1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz v0, :cond_3

    new-instance v2, Lf/a/k/l0/s2;

    invoke-direct {v2, p0}, Lf/a/k/l0/s2;-><init>(Lf/a/k/l0/b4;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public p0(Landroid/widget/ImageView;)V
    .locals 9

    const-string v0, "TabStatusTipFragment initDownloadQrCode"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    iget v8, p0, Lf/a/k/l0/b4;->u0:I

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/k/g0;

    invoke-virtual {v1, v0}, Lf/a/k/g0;->B(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStatusTipFragment initQrCode url = "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p1, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lf/a/k/l0/b4;->x0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1
    invoke-static {v4}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "URI"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    :goto_0
    invoke-static {v3, v4, v0}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TabStatusTipFragment initQrCode flavor = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " url = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700e4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0701f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lf/a/k/l0/b4;->i0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070100

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v4, v0, v1, v2}, Lf/a/i/m/h;->c(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_5

    :cond_4
    :goto_1
    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v0}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v6

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v7

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sget-object v1, Le/c/c/b;->b:Le/c/c/b;

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Le/c/c/b;->a:Le/c/c/b;

    sget-object v2, Le/c/c/e/b/a;->e:Le/c/c/e/b/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Le/c/c/b;->f:Le/c/c/b;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Le/c/c/e/a;

    invoke-direct {v3}, Le/c/c/e/a;-><init>()V

    sget-object v5, Le/c/c/a;->l:Le/c/c/a;

    const/4 v8, 0x0

    .line 4
    invoke-virtual/range {v3 .. v8}, Le/c/c/e/a;->a(Ljava/lang/String;Le/c/c/a;IILjava/util/Map;)Le/c/c/d/b;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lf/a/i/m/h;->d(Le/c/c/d/b;)Le/c/c/d/b;

    move-result-object v0

    .line 6
    iget v7, v0, Le/c/c/d/b;->a:I

    .line 7
    iget v8, v0, Le/c/c/d/b;->b:I

    mul-int v1, v7, v8

    .line 8
    new-array v2, v1, [I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_7

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_6

    invoke-virtual {v0, v3, v1}, Le/c/c/d/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_5

    mul-int v4, v1, v7

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    aput v5, v2, v4

    goto :goto_4

    :cond_5
    mul-int v4, v1, v7

    add-int/2addr v4, v3

    const/4 v5, -0x1

    aput v5, v2, v4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public q()V
    .locals 1

    const-string v0, "TabStatusTipFragment dismissConnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    :cond_0
    return-void
.end method

.method public q0()V
    .locals 11

    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->w0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/b4;->W:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lf/a/k/l0/b4;->p0(Landroid/widget/ImageView;)V

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/b4;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->Y:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lf/a/k/l0/b4;->p0(Landroid/widget/ImageView;)V

    :cond_2
    invoke-virtual {p0}, Lf/a/k/l0/b4;->v0()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "TabStatusTipFragment initBleApQrCode"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Lf/a/k/g0;

    if-eqz v1, :cond_3

    check-cast v0, Lf/a/k/g0;

    .line 3
    iget-object v0, v0, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    if-eqz v0, :cond_3

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 5
    iget-object v0, v0, Lnet/easyconn/framework/sdkservice/EasyConnectService;->r:Lf/a/f/e;

    .line 6
    invoke-virtual {v0}, Lf/a/f/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleTransManager  getMacAdress deviceName = "

    invoke-static {v1, v0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBtMacAdress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    move-object v7, v0

    .line 8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v9, 0x1f4

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    const/16 v8, 0x80

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/k/g0;

    invoke-virtual {v1, v0}, Lf/a/k/g0;->B(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStatusTipFragment initBleApQrCode url = "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/l0/b4;->x0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lf/a/k/l0/b4;->a0:Landroid/widget/ImageView;

    iget-object v3, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v1, v1

    invoke-static {v3, v1}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lf/a/k/l0/b4;->i0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070100

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lf/a/i/m/h;->c(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lf/a/k/l0/b4;->x0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lf/a/k/l0/b4;->n0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "key_ec_qr_code_mode_android"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lf/a/k/l0/b4;->Z0(Z)V

    :cond_7
    return-void
.end method

.method public r0()V
    .locals 7

    invoke-virtual {p0}, Lf/a/k/l0/b4;->k0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStatusTipFragment initWlanApAndroidQrCode  ==>** androidUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lf/a/k/l0/b4;->c0:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lf/a/k/l0/b4;->i0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070100

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lf/a/i/m/h;->c(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TabStatusTipFragment initWlanApAndroidQrCode !!error!! wlanQrIvStatus == null"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s0()V
    .locals 7

    invoke-virtual {p0}, Lf/a/k/l0/b4;->m0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabStatusTipFragment initWlanApAndroidQrCode  ==>** iosUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lf/a/k/l0/b4;->c0:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lf/a/k/l0/b4;->i0:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070100

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lf/a/i/m/h;->c(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TabStatusTipFragment initWlanApIosQrCode !!error!! wlanQrIvStatus == null"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t()V
    .locals 5

    const-string v0, "TabStatusTipFragment showConnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "TabStatusTipFragment showConnecting, fragment hidden, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1
    new-instance v1, Lf/a/k/n0/j;

    invoke-direct {v1, v0}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0058

    const/16 v2, 0x69

    .line 2
    iput v2, v1, Lf/a/k/n0/j;->a:I

    .line 3
    iput v0, v1, Lf/a/k/n0/j;->F:I

    const/16 v0, 0xca

    .line 4
    iput v0, v1, Lf/a/k/n0/j;->b:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, v1, Lf/a/k/n0/j;->J:Z

    .line 6
    iput-object v1, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    const v0, 0x7f090111

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    const v3, 0x7f090129

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f0600bd

    invoke-static {v3, v4}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x106000d

    invoke-static {v1, v2}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->z0:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/a4;->z:Z

    :cond_2
    return-void
.end method

.method public t0()Z
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWifiApState"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    const-string v2, "wifi sharing state -> "

    invoke-static {v2, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final u0()Z
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->Z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "TabStatusTipFragment isShowApContent = "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    return v0
.end method

.method public final v0()Z
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->Z(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TabStatusTipFragment isShowBleQrContent = "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    return v0
.end method

.method public final w0()Z
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "TabStatusTipFragment isShowUsbContent = "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    return v0
.end method

.method public final x0()Z
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lf/a/i/m/g;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "TabStatusTipFragment isShowWlanQrContent = "

    invoke-static {v1, v0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    return v0
.end method

.method public synthetic y0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/l0/b4;->i0(Z)V

    return-void
.end method

.method public synthetic z0(Z)V
    .locals 4

    invoke-virtual {p0}, Lf/a/k/l0/b4;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/b4;->Y0()V

    invoke-virtual {p0}, Lf/a/k/l0/b4;->Q0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->o0()V

    :goto_0
    invoke-virtual {p0}, Lf/a/k/l0/b4;->m0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "==>** iosUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    new-instance v0, Lf/a/k/l0/a3;

    invoke-direct {v0, p0}, Lf/a/k/l0/a3;-><init>(Lf/a/k/l0/b4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lf/a/k/l0/b4;->v0:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/b4;->t0:Landroid/os/Handler;

    new-instance v1, Lf/a/k/l0/k2;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/k2;-><init>(Lf/a/k/l0/b4;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method
