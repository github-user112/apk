.class public Lf/a/k/l0/z3;
.super Lf/a/k/l0/i3;
.source ""

# interfaces
.implements Lf/a/k/k0/h;


# instance fields
.field public A:Lf/a/k/k0/g;

.field public B:Landroid/view/animation/Animation;

.field public C:Lf/a/k/n0/j;

.field public D:Lf/a/k/n0/j;

.field public F:Lf/a/k/n0/j;

.field public s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/RelativeLayout;

.field public y:Landroid/net/ConnectivityManager$NetworkCallback;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf/a/k/l0/i3;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lf/a/k/l0/z3;->y:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf/a/k/l0/z3;->z:Z

    iput-object v0, p0, Lf/a/k/l0/z3;->B:Landroid/view/animation/Animation;

    return-void
.end method

.method public static synthetic a0(Lf/a/k/l0/z3;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/l0/z3;->n0(Z)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf/a/k/k0/g;

    .line 1
    iput-object p1, p0, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    return-void
.end method

.method public G()V
    .locals 2

    const-string v0, "QrRegisterFragment onQuickCheckLicenseSuccess"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/z3;->z:Z

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lf/a/k/l0/a2;

    invoke-direct {v1, p0}, Lf/a/k/l0/a2;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public J()V
    .locals 2

    const-string v0, "QrRegisterFragment onQuickCheckLicenseStarted"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/z3;->z:Z

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lf/a/k/l0/x1;

    invoke-direct {v1, p0}, Lf/a/k/l0/x1;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public L(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lf/a/k/l0/i3;->L(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    const-string p1, "QrRegisterFragment dealConnectivityAction"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/l0/z3;->b0()V

    :cond_0
    return-void
.end method

.method public final b0()V
    .locals 3

    const-string v0, "QrRegisterFragment checkNetwork"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "connectivity"

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "QrRegisterFragment checkNetwork connected"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf/a/k/l0/z3;->n0(Z)V

    goto :goto_1

    :cond_1
    const-string v0, "QrRegisterFragment checkNetwork lost"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lf/a/k/l0/z3;->n0(Z)V

    :goto_1
    return-void
.end method

.method public final c0()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iget-object v1, p0, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    invoke-interface {v1}, Lf/a/k/k0/g;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    invoke-interface {v1}, Lf/a/k/k0/g;->V()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pd"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "md"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lf/a/i/m/g;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pc"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrRegisterFragment generateQrString jsonString = "

    invoke-static {v1, v0}, Le/a/c/a/a;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic d0(Landroid/view/View;)V
    .locals 0

    const-string p1, "QrRegisterFragment back btn clicked"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->K()V

    return-void
.end method

.method public synthetic e0(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lf/a/k/l0/z3;->z:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    invoke-interface {p1}, Lf/a/k/k0/g;->s()V

    :cond_0
    return-void
.end method

.method public synthetic f0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/z3;->D:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    iget-object p1, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->K()V

    return-void
.end method

.method public synthetic g0(ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v1

    const-string v2, "key_ec_sdk_auth_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lf/a/i/g/a;->c(Ljava/lang/String;I)V

    new-instance v1, Lf/a/k/n0/j$a;

    iget-object v2, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lf/a/k/n0/j$a;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f0c0064

    invoke-virtual {v1, v2}, Lf/a/k/n0/j$a;->f(I)Lf/a/k/n0/j$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lf/a/k/n0/j$a;->b(Z)Lf/a/k/n0/j$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ld/s/y;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/k/n0/j$a;->d(Ljava/lang/String;)Lf/a/k/n0/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/k/n0/j$a;->g()Lf/a/k/n0/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object v1

    iput-object v1, p0, Lf/a/k/l0/z3;->D:Lf/a/k/n0/j;

    invoke-virtual {v1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iget-object v1, p0, Lf/a/k/l0/z3;->D:Lf/a/k/n0/j;

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/a/k/l0/e2;

    invoke-direct {v2, p0}, Lf/a/k/l0/e2;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lf/a/k/l0/z3;->D:Lf/a/k/n0/j;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/a/k/l0/y3;

    invoke-direct {v2, p0, p1, v0, p2}, Lf/a/k/l0/y3;-><init>(Lf/a/k/l0/z3;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "QrRegisterFragment onDefaultCheckLicenseError, errCode = %d, errMsg = %s"

    invoke-static {p1, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic h0(Z)V
    .locals 2

    const v0, 0x7f0d0077

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/z3;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0076

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/z3;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0075

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic i0()V
    .locals 3

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v1, 0x7f0d0074

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/easyconn/EcApplication;->showToast(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lf/a/k/l0/z3;->o0()V

    return-void
.end method

.method public synthetic j0()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/z3;->B:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f01001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/z3;->B:Landroid/view/animation/Animation;

    iget-object v1, p0, Lf/a/k/l0/z3;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lf/a/k/l0/z3;->u:Landroid/widget/ImageView;

    iget-object v1, p0, Lf/a/k/l0/z3;->B:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lf/a/k/l0/z3;->x:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public k(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lf/a/k/l0/w1;

    invoke-direct {v1, p0, p1, p2}, Lf/a/k/l0/w1;-><init>(Lf/a/k/l0/z3;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic k0()V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/k/e0;

    invoke-interface {v0}, Lf/a/k/e0;->g()V

    return-void
.end method

.method public synthetic l0()V
    .locals 2

    invoke-virtual {p0}, Lf/a/k/l0/z3;->c0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/z3;->t:Landroid/widget/ImageView;

    invoke-static {v0}, Lf/a/i/m/h;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic m0()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/z3;->B:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/z3;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/z3;->B:Landroid/view/animation/Animation;

    iget-object v0, p0, Lf/a/k/l0/z3;->x:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final n0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrRegisterFragment onNetWorkStateChange connected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDetached = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "QrRegisterFragment onNetWorkStateChange is detached, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lf/a/k/l0/z1;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/z1;-><init>(Lf/a/k/l0/z3;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o0()V
    .locals 2

    const-string v0, "QrRegisterFragment updateUiOnCheckLicenseStop"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lf/a/k/l0/y1;

    invoke-direct {v1, p0}, Lf/a/k/l0/y1;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "onAttach parameter is activity"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string v0, "onAttachToContext"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "onAttach"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "onAttachToContext"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0049

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1
    invoke-super {p0, p1}, Lf/a/k/l0/i3;->O(Landroid/view/View;)V

    const p2, 0x7f0900ff

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/z3;->t:Landroid/widget/ImageView;

    new-instance p3, Lf/a/k/l0/w3;

    invoke-direct {p3, p0}, Lf/a/k/l0/w3;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090100

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/z3;->u:Landroid/widget/ImageView;

    const p2, 0x7f090070

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/z3;->v:Landroid/widget/ImageView;

    new-instance p3, Lf/a/k/l0/b2;

    invoke-direct {p3, p0}, Lf/a/k/l0/b2;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/z3;->w:Landroid/widget/TextView;

    const p2, 0x7f09007d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lf/a/k/l0/z3;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object p2, p0, Lf/a/k/l0/z3;->x:Landroid/widget/RelativeLayout;

    new-instance p3, Lf/a/k/l0/d2;

    invoke-direct {p3, p0}, Lf/a/k/l0/d2;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "QrRegisterFragment showQr"

    .line 2
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    new-instance p3, Lf/a/k/l0/c2;

    invoke-direct {p3, p0}, Lf/a/k/l0/c2;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_1

    const-string p2, "QrRegisterFragment registerNetworkCallback"

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object p3, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    new-instance v1, Lf/a/k/l0/x3;

    invoke-direct {v1, p0}, Lf/a/k/l0/x3;-><init>(Lf/a/k/l0/z3;)V

    iput-object v1, p0, Lf/a/k/l0/z3;->y:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez p3, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "QrRegisterFragment registerNetworkCallback connectivityManager is null"

    invoke-static {p3, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lf/a/k/l0/z3;->b0()V

    iget-boolean p2, p0, Lf/a/k/l0/z3;->z:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    invoke-interface {p2}, Lf/a/k/k0/g;->s()V

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lf/a/k/l0/i3;->onDestroy()V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    const-string v0, "QrRegisterFragment unRegisterNetworkCallback"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/z3;->y:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QrRegisterFragment unRegisterNetworkCallback connectivityManager is null"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf/a/k/l0/z3;->y:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lf/a/k/l0/z3;->C:Lf/a/k/n0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/z3;->C:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/z3;->C:Lf/a/k/n0/j;

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/z3;->D:Lf/a/k/n0/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/z3;->D:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/z3;->D:Lf/a/k/n0/j;

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/z3;->F:Lf/a/k/n0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/z3;->F:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/z3;->F:Lf/a/k/n0/j;

    :cond_2
    return-void
.end method

.method public onDetach()V
    .locals 1

    const-string v0, "onDetach"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public r(ILjava/lang/String;)V
    .locals 0

    const-string p1, "QrRegisterFragment onQuickCheckLicenseStarted"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "QrRegisterFragment onQuickCheckLicenseStarted is detached, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/a/k/l0/z3;->z:Z

    iget-object p1, p0, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lf/a/k/l0/v1;

    invoke-direct {p2, p0}, Lf/a/k/l0/v1;-><init>(Lf/a/k/l0/z3;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
