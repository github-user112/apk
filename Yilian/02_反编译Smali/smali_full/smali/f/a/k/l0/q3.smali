.class public Lf/a/k/l0/q3;
.super Lf/a/k/l0/a4;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/k/l0/q3$c;
    }
.end annotation


# instance fields
.field public J:Z

.field public K:Landroidx/appcompat/widget/AppCompatImageView;

.field public L:Landroidx/appcompat/widget/AppCompatImageView;

.field public M:Z

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/LinearLayout;

.field public P:Landroid/widget/RelativeLayout;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/RelativeLayout;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/os/Handler;

.field public U:Landroid/net/wifi/WifiManager;

.field public volatile V:Z

.field public W:I

.field public X:Z

.field public Y:Landroid/widget/RelativeLayout;

.field public Z:Landroid/widget/ImageView;

.field public volatile a0:Z

.field public b0:Landroid/widget/RelativeLayout;

.field public c0:Landroid/widget/TextView;

.field public d0:Landroid/widget/TextView;

.field public e0:Lf/a/k/l0/q3$c;

.field public f0:Ljava/lang/Runnable;

.field public g0:Ljava/lang/String;

.field public h0:Lf/a/k/n0/j;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lf/a/k/l0/a4;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/q3;->J:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lf/a/k/l0/q3;->M:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    iput-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    iput v0, p0, Lf/a/k/l0/q3;->W:I

    iput-boolean v0, p0, Lf/a/k/l0/q3;->X:Z

    iput-boolean v1, p0, Lf/a/k/l0/q3;->a0:Z

    new-instance v0, Lf/a/k/l0/i1;

    invoke-direct {v0, p0}, Lf/a/k/l0/i1;-><init>(Lf/a/k/l0/q3;)V

    iput-object v0, p0, Lf/a/k/l0/q3;->f0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 1

    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/q3;->X:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/q3;->E0()V

    const-string v0, "NewStatusTipFragment openAp"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public B0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/q3;->P:Landroid/widget/RelativeLayout;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lf/a/k/l0/q3;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0600cf

    invoke-static {v1, v2}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lf/a/k/l0/q3;->R:Landroid/widget/RelativeLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lf/a/k/l0/q3;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0600d6

    invoke-static {v1, v2}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lf/a/k/l0/q3;->F0(Z)V

    return-void
.end method

.method public C0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/q3;->P:Landroid/widget/RelativeLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lf/a/k/l0/q3;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0600d6

    invoke-static {v1, v2}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lf/a/k/l0/q3;->R:Landroid/widget/RelativeLayout;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lf/a/k/l0/q3;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f0600cf

    invoke-static {v1, v2}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lf/a/k/l0/q3;->F0(Z)V

    return-void
.end method

.method public D0(Landroid/widget/RelativeLayout;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v2

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-double v5, v3

    const-wide v7, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-int v3, v5

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x0

    if-le v1, v2, :cond_0

    int-to-float v1, v1

    div-float/2addr v1, v4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v7

    double-to-int v1, v1

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xd

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x14

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public E0()V
    .locals 2

    const-string v0, "showLoadingMask"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/q3;->Y:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const-string v0, "showLoadingMask viewLoadingMask is null!!"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lf/a/k/l0/q3$a;

    invoke-direct {v1, p0}, Lf/a/k/l0/q3$a;-><init>(Lf/a/k/l0/q3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public F0(Z)V
    .locals 3

    const-string v0, "isAndroid="

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lf/a/k/l0/q3;->P:Landroid/widget/RelativeLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lf/a/k/l0/q3;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

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

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Lf/a/k/l0/q3;->i0(Z)V

    iget-boolean p1, p0, Lf/a/k/l0/q3;->V:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz p1, :cond_1

    new-instance v2, Lf/a/k/l0/j1;

    invoke-direct {v2, p0}, Lf/a/k/l0/j1;-><init>(Lf/a/k/l0/q3;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lf/a/k/l0/q3;->H0(Z)V

    iget-boolean p1, p0, Lf/a/k/l0/q3;->V:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz p1, :cond_1

    new-instance v2, Lf/a/k/l0/n1;

    invoke-direct {v2, p0}, Lf/a/k/l0/n1;-><init>(Lf/a/k/l0/q3;)V

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public G0()V
    .locals 3

    iget-boolean v0, p0, Lf/a/k/l0/q3;->J:Z

    if-nez v0, :cond_0

    const-string v0, "NewStatusTipFragment updateAndroidUrl return npt supportQrScan"

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
    invoke-virtual {p0}, Lf/a/k/l0/q3;->j0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewStatusTipFragment setDeviceTag updateAndroidUrl ==>** androidUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v1, :cond_1

    new-instance v2, Lf/a/k/l0/e1;

    invoke-direct {v2, p0, v0}, Lf/a/k/l0/e1;-><init>(Lf/a/k/l0/q3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public H0(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiEnabled enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDestroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/k/l0/q3;->V:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lf/a/k/l0/q3;->U:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf/a/k/l0/q3;->E0()V

    .line 1
    invoke-virtual {p0}, Lf/a/k/l0/q3;->E0()V

    iget-object v0, p0, Lf/a/k/l0/q3;->U:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v0, "NewStatusTipFragment openWifi"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lf/a/k/l0/q3;->l0()V

    :goto_0
    invoke-virtual {p0}, Lf/a/k/l0/q3;->j0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "==>** androidUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lf/a/k/l0/a4;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ld/s/y;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v0, :cond_4

    new-instance v1, Lf/a/k/l0/c1;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/c1;-><init>(Lf/a/k/l0/q3;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lf/a/k/l0/q3;->U:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lf/a/k/l0/q3;->U:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string p1, "NewStatusTipFragment closeWifi"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public I()V
    .locals 3

    const-string v0, "NewStatusTipFragment onConnectTimeout"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "NewStatusTipFragment onConnectTimeout, fragment hidden, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v0, :cond_1

    const-string v0, "NewStatusTipFragment onConnectTimeout, at background, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lf/a/k/l0/q3;->a0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "NewStatusTipFragment onConnectTimeout, no needShowTimeout, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lf/a/k/l0/q3;->a0:Z

    return-void

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

    invoke-interface {v0}, Lf/a/k/k0/i;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "NewStatusTipFragment Phone not Connected, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v2, 0x7f0d007c

    invoke-virtual {v0, v2, v1}, Lnet/easyconn/EcApplication;->showToastCustom(II)V

    invoke-virtual {p0}, Lf/a/k/l0/q3;->q()V

    return-void
.end method

.method public O(Landroid/view/View;)V
    .locals 11

    invoke-super {p0, p1}, Lf/a/k/l0/a4;->O(Landroid/view/View;)V

    const v0, 0x7f09021d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/q3;->Y:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/q3;->Z:Landroid/widget/ImageView;

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lf/a/k/l0/q3;->J:Z

    const-string v0, "NewStatusTipFragment supportQrScan = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/k/l0/q3;->J:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/k/l0/q3;->M:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "NewStatusTipFragment !supportTouch initView"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const v0, 0x7f090128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/q3;->b0:Landroid/widget/RelativeLayout;

    const v0, 0x7f090118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/q3;->c0:Landroid/widget/TextView;

    const v0, 0x7f090117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/q3;->d0:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/k/l0/q3;->b0:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lf/a/k/l0/q3;->D0(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lf/a/k/l0/q3;->c0:Landroid/widget/TextView;

    const-string v4, "7.0.1-9011d330b-202404121051"

    const v5, 0x7f0d00c1

    :try_start_0
    const-string v6, "-"

    .line 1
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v7

    const-string v8, "%s%s[%d].%s-%s"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    const-string v10, "tocfree"

    aput-object v10, v9, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v1

    const/4 v7, 0x3

    aget-object v10, v6, v3

    aput-object v10, v9, v7

    aget-object v6, v6, v2

    const/4 v7, 0x4

    aput-object v6, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    aput-object v4, v6, v2

    const-string v4, "%s%s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lf/a/k/l0/q3;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    const v0, 0x7f09006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lf/a/k/l0/q3;->K:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Lf/a/k/l0/l1;

    invoke-direct {v4, p0}, Lf/a/k/l0/l1;-><init>(Lf/a/k/l0/q3;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lf/a/k/l0/q3;->L:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Lf/a/k/l0/m1;

    invoke-direct {v4, p0}, Lf/a/k/l0/m1;-><init>(Lf/a/k/l0/q3;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/q3;->N:Landroid/widget/TextView;

    const v0, 0x7f09011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/k/l0/q3;->O:Landroid/widget/LinearLayout;

    iget-boolean v4, p0, Lf/a/k/l0/q3;->J:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    const v4, 0x800003

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    const v4, 0x7f0d0088

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v0, 0x7f09011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/q3;->P:Landroid/widget/RelativeLayout;

    new-instance v4, Lf/a/k/l0/k1;

    invoke-direct {v4, p0}, Lf/a/k/l0/k1;-><init>(Lf/a/k/l0/q3;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/q3;->Q:Landroid/widget/TextView;

    const v0, 0x7f09011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lf/a/k/l0/q3;->R:Landroid/widget/RelativeLayout;

    new-instance v4, Lf/a/k/l0/g1;

    invoke-direct {v4, p0}, Lf/a/k/l0/g1;-><init>(Lf/a/k/l0/q3;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lf/a/k/l0/q3;->S:Landroid/widget/TextView;

    .line 3
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lf/a/i/m/g;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 p1, p1, 0x20

    :cond_3
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit8 p1, p1, 0x8

    :cond_4
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    or-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/2addr p1, v1

    goto :goto_2

    :cond_6
    or-int/2addr p1, v2

    :cond_7
    :goto_2
    const-string v0, "generateQrAction action = "

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    .line 4
    iput p1, p0, Lf/a/k/l0/q3;->W:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "mAction is %x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public P()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/q3;->X:Z

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

.method public R()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/q3;->X:Z

    invoke-virtual {p0}, Lf/a/k/l0/q3;->l0()V

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

.method public T()V
    .locals 4

    iget-boolean v0, p0, Lf/a/k/l0/q3;->J:Z

    if-nez v0, :cond_0

    const-string v0, "NewStatusTipFragment onApStateFail openAp return npt supportQrScan"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/q3;->X:Z

    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lf/a/k/l0/h1;

    invoke-direct {v1, p0}, Lf/a/k/l0/h1;-><init>(Lf/a/k/l0/q3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public U()V
    .locals 0

    return-void
.end method

.method public V()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/q3;->l0()V

    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NewStatusTipFragment setDeviceTag tag is "

    invoke-static {v0, p1}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lf/a/k/l0/q3;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "NewStatusTipFragment setDeviceTag lastTag is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/q3;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/q3;->g0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NewStatusTipFragment setDeviceTag TextUtils.isEmpty(lastTag)"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/q3;->g0:Ljava/lang/String;

    const-string v1, "Carbit-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NewStatusTipFragment setDeviceTag contains Carbit"

    :goto_0
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/l0/q3;->G0()V

    :cond_2
    iput-object p1, p0, Lf/a/k/l0/q3;->g0:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "NewStatusTipFragment onReadVersionTimeout"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v1, 0x7f0d007c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/easyconn/EcApplication;->showToastCustom(II)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "NewStatusTipFragment showInitView, isHide is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/k/l0/a4;->I:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf/a/k/f0;->o()V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    invoke-interface {v0}, Lf/a/k/f0;->a()V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    invoke-interface {v0}, Lf/a/k/f0;->q()V

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lf/a/k/l0/q3;->J:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0d0088

    goto :goto_0

    :cond_2
    const v1, 0x7f0d0087

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public h0()V
    .locals 3

    const-string v0, "NewStatusTipFragment showReconnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "NewStatusTipFragment showReconnecting, fragment hidden, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v1, 0x7f0d0042

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/easyconn/EcApplication;->showToastCustom(II)V

    invoke-virtual {p0}, Lf/a/k/l0/q3;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/q3;->a0:Z

    return-void
.end method

.method public i0(Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apEnabled enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDestroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/k/l0/q3;->V:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    const-string v0, "open ap"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/l0/q3;->n0()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lf/a/k/l0/q3;->E0()V

    .line 1
    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lf/a/k/l0/q3;->X:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lf/a/k/l0/q3;->E0()V

    const-string v0, "NewStatusTipFragment openAp"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_3
    invoke-virtual {p0}, Lf/a/k/l0/q3;->l0()V

    .line 3
    :goto_0
    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    const/4 v8, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    const/4 v8, 0x1

    :goto_1
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

    const-string v1, "==>** iosUrl is "

    .line 4
    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p0, Lf/a/k/l0/a4;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Ld/s/y;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v0, :cond_7

    new-instance v1, Lf/a/k/l0/f1;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/f1;-><init>(Lf/a/k/l0/q3;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_6
    const-string p1, "close ap"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/l0/q3;->n0()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "NewStatusTipFragment closeAp"

    .line 5
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public j0()Ljava/lang/String;
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
    invoke-virtual {p0}, Lf/a/k/l0/q3;->k0()Ljava/lang/String;

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

    invoke-virtual {p0}, Lf/a/k/l0/q3;->k0()Ljava/lang/String;

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

.method public final k0()Ljava/lang/String;
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

.method public l0()V
    .locals 2

    const-string v0, "hideLoadingMask"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/q3;->Y:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const-string v0, "hideLoadingMask viewLoadingMask is null!!"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lf/a/k/l0/q3$b;

    invoke-direct {v1, p0}, Lf/a/k/l0/q3$b;-><init>(Lf/a/k/l0/q3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public m0()V
    .locals 9

    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/q3;->J:Z

    if-eqz v0, :cond_3

    .line 1
    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "key_ec_qr_code_mode_android"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lf/a/k/l0/q3;->B0()V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lf/a/k/l0/q3;->C0()V

    goto/16 :goto_2

    :cond_3
    const-string v0, "initQrCode not support qr link"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    iget v8, p0, Lf/a/k/l0/q3;->W:I

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

    const-string v1, "initQrCode url = "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lf/a/k/l0/q3;->f0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_4
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

    if-ne v1, v2, :cond_6

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ""

    goto :goto_0

    :cond_5
    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "URI"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    :goto_0
    invoke-static {v2, v4, v0}, Le/a/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initQrCode flavor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " url = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701f6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lf/a/k/l0/a4;->s:Landroid/widget/ImageView;

    iget-object v4, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    int-to-float v1, v1

    invoke-static {v5, v1}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v1

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createQRCode, text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v5, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    invoke-direct {v5}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;-><init>()V

    const v6, 0x106000c

    invoke-static {v4, v6}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v5

    const v6, 0x106000b

    invoke-static {v4, v6}, Ld/g/f/a;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapBackgroundColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapMargin(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->create()Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;

    move-result-object v4

    :try_start_0
    sget v5, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    invoke-static {v0, v5, v1, v1, v4}, Lcom/huawei/hms/hmsscankit/ScanUtil;->buildBitmap(Ljava/lang/String;IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/hms/hmsscankit/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HmsScanUtils createQRCode e = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public n0()Z
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

.method public synthetic o0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/l0/q3;->i0(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lf/a/k/l0/q3;->M:Z

    if-nez p1, :cond_0

    new-instance p1, Lf/a/k/l0/q3$c;

    invoke-direct {p1, p0}, Lf/a/k/l0/q3$c;-><init>(Lf/a/k/l0/q3;)V

    iput-object p1, p0, Lf/a/k/l0/q3;->e0:Lf/a/k/l0/q3$c;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "net.easyconn.android.tab"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "net.easyconn.ios.tab"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/q3;->e0:Lf/a/k/l0/q3$c;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    iput-boolean p3, p0, Lf/a/k/l0/q3;->V:Z

    iput-boolean p3, p0, Lf/a/k/l0/a4;->I:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lf/a/k/l0/q3;->M:Z

    const-string v0, "NewStatusTipFragment supportTouch = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/k/l0/q3;->M:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    const v0, 0x7f0c004d

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/k/l0/q3;->M:Z

    if-nez v1, :cond_0

    const v0, 0x7f0c004e

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lf/a/k/l0/q3;->U:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Lf/a/k/l0/q3;->O(Landroid/view/View;)V

    invoke-virtual {p0}, Lf/a/k/l0/q3;->e()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lf/a/k/l0/a4;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    iget-object v1, p0, Lf/a/k/l0/q3;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    iget-object v0, p0, Lf/a/k/l0/q3;->e0:Lf/a/k/l0/q3$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/q3;->e0:Lf/a/k/l0/q3$c;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lf/a/k/l0/a4;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/q3;->q()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lf/a/k/l0/a4;->onResume()V

    const-string v0, "NewStatusTipFragment onResume"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/g0;

    invoke-virtual {v0}, Lf/a/k/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NewStatusTipFragment onResume isLaunchByUSBAttached initQrCode return "

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

    const-string v0, "NewStatusTipFragment onResume initQrCode return because is not this Fragment resume"

    .line 2
    :goto_1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    iget-boolean v0, p0, Lf/a/k/l0/q3;->V:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/q3;->T:Landroid/os/Handler;

    if-eqz v0, :cond_3

    new-instance v2, Lf/a/k/l0/d1;

    invoke-direct {v2, p0}, Lf/a/k/l0/d1;-><init>(Lf/a/k/l0/q3;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public synthetic p0()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/q3;->m0()V

    return-void
.end method

.method public q()V
    .locals 1

    const-string v0, "NewStatusTipFragment dismissConnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    :cond_0
    return-void
.end method

.method public synthetic q0(Landroid/view/View;)V
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

.method public synthetic r0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->l0()V

    return-void
.end method

.method public synthetic s0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/q3;->B0()V

    return-void
.end method

.method public t()V
    .locals 5

    const-string v0, "NewStatusTipFragment showConnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "NewStatusTipFragment showConnecting, fragment hidden, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1
    new-instance v1, Lf/a/k/n0/j;

    invoke-direct {v1, v0}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0057

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
    iput-object v1, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

    const v0, 0x7f090111

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

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
    iget-object v0, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/q3;->h0:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/q3;->a0:Z

    :cond_2
    return-void
.end method

.method public synthetic t0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/q3;->C0()V

    return-void
.end method

.method public synthetic u0()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/q3;->m0()V

    return-void
.end method

.method public synthetic v0()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/q3;->A0()V

    return-void
.end method

.method public synthetic w0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a/k/l0/q3;->H0(Z)V

    return-void
.end method

.method public synthetic x0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a/k/l0/q3;->i0(Z)V

    return-void
.end method

.method public synthetic y0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/a4;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Ld/s/y;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic z0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/l0/q3;->H0(Z)V

    return-void
.end method
