.class public Lf/a/k/l0/v3;
.super Lf/a/k/l0/i3;
.source ""

# interfaces
.implements Lf/a/k/k0/f;


# static fields
.field public static Q:Ljava/lang/String;

.field public static R:Landroid/graphics/Bitmap;

.field public static S:Ljava/lang/String;

.field public static T:Landroid/graphics/Bitmap;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/content/Context;

.field public D:Landroid/content/SharedPreferences;

.field public F:Landroid/net/wifi/WifiManager;

.field public G:Landroid/os/Handler;

.field public H:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lf/a/k/k0/e;

.field public volatile J:Z

.field public K:Lf/a/k/n0/j;

.field public L:Lf/a/k/n0/j;

.field public M:Lf/a/k/n0/j;

.field public N:Lf/a/k/n0/j;

.field public O:Lf/a/k/n0/j;

.field public P:Ljava/lang/String;

.field public s:Landroid/widget/RelativeLayout;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/widget/RelativeLayout;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf/a/k/l0/i3;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lf/a/k/l0/v3;->G:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/v3;->J:Z

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf/a/k/k0/e;

    .line 1
    iput-object p1, p0, Lf/a/k/l0/v3;->I:Lf/a/k/k0/e;

    return-void
.end method

.method public a0(Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDestroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf/a/k/l0/v3;->J:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    if-eqz p1, :cond_1

    const-string v0, "open ap"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    const/4 v8, 0x1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/k/g0;

    invoke-virtual {v1, v0}, Lf/a/k/g0;->B(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/a/k/l0/v3;->S:Ljava/lang/String;

    .line 2
    sput-object v0, Lf/a/k/l0/v3;->S:Ljava/lang/String;

    const-string v0, "==>** iosUrl is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lf/a/k/l0/v3;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lf/a/k/l0/v3;->S:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lf/a/k/l0/v3;->S:Ljava/lang/String;

    const/16 v0, 0x12c

    invoke-static {p1, v0}, Lf/a/i/m/h;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lf/a/k/l0/v3;->T:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lf/a/k/l0/v3;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/v3;->J:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/v3;->G:Landroid/os/Handler;

    new-instance v1, Lf/a/k/l0/q1;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/q1;-><init>(Lf/a/k/l0/v3;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p1, "close ap"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b0()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/a/i/m/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/m/g;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    move-object v8, v1

    goto :goto_2

    :cond_3
    const-string v4, "-"

    invoke-static {v0, v4}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lf/a/k/l0/v3;->c0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lf/a/k/l0/v3;->D:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lf/a/k/l0/v3;->c0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EC_DEVICE_NAME"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    .line 2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==>** deviceName is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;

    const/16 v10, 0x8

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v9, ""

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/k/g0;

    invoke-virtual {v3, v0}, Lf/a/k/g0;->B(Lnet/easyconn/ecsdk/ECTypes$ECQRInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sn="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "&sn="

    invoke-static {v0, v3}, Le/a/c/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/a/k/g0;

    .line 3
    iget-object v3, v3, Lf/a/k/g0;->t:Lnet/easyconn/framework/sdkservice/EasyConnectService;

    const/4 v4, 0x0

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lnet/easyconn/framework/sdkservice/EasyConnectService;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "UTF-8"

    .line 4
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "MD5"

    invoke-static {v3, v4}, Ld/s/y;->N([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v4

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_9

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v4, v1

    .line 5
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    sput-object v0, Lf/a/k/l0/v3;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final c0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

.method public synthetic d0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/l0/v3;->a0(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const-string v0, "==> show QrCodeFragment !"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic e0(ILjava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object p3, p0, Lf/a/k/l0/v3;->I:Lf/a/k/k0/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x13880

    const/16 v0, 0x16

    invoke-interface {p3, p2, v0, p1}, Lf/a/k/k0/e;->a(IILjava/lang/String;)V

    iget-object p1, p0, Lf/a/k/l0/v3;->K:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    iget-object p1, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->K()V

    return-void
.end method

.method public synthetic f0(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a/k/l0/v3;->l0(Z)V

    return-void
.end method

.method public synthetic g0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/v3;->y:Landroid/widget/ImageView;

    const/16 v1, 0x12c

    invoke-static {p1, v1}, Lf/a/i/m/h;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "QrCodeFragment not attached to a context"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "QrCodeFragment not added, return"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/v3;->B:Landroid/widget/TextView;

    const v2, 0x7f0d003a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QrCodeFragment setDeviceTag lastTag is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/k/l0/v3;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/v3;->P:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "QrCodeFragment setDeviceTag TextUtils.isEmpty(lastTag)"

    :goto_0
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lf/a/k/l0/v3;->m0()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/v3;->P:Ljava/lang/String;

    const-string v1, "Carbit-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "QrCodeFragment setDeviceTag contains Carbit"

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lf/a/k/l0/v3;->P:Ljava/lang/String;

    return-void
.end method

.method public i0(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_ec_sdk_auth_state"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    iget-object v1, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 3
    new-instance v2, Lf/a/k/n0/j;

    invoke-direct {v2, v1}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0064

    const/16 v4, 0x69

    .line 4
    iput v4, v2, Lf/a/k/n0/j;->a:I

    .line 5
    iput v1, v2, Lf/a/k/n0/j;->F:I

    .line 6
    iput-boolean v3, v2, Lf/a/k/n0/j;->J:Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ld/s/y;->m:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, v2, Lf/a/k/n0/j;->x:Ljava/lang/String;

    const/16 v1, 0xca

    .line 9
    iput v1, v2, Lf/a/k/n0/j;->b:I

    .line 10
    iput-object v2, p0, Lf/a/k/l0/v3;->K:Lf/a/k/n0/j;

    invoke-virtual {v2}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iget-object v1, p0, Lf/a/k/l0/v3;->K:Lf/a/k/n0/j;

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/a/k/l0/p1;

    invoke-direct {v2, p0, p1, p2}, Lf/a/k/l0/p1;-><init>(Lf/a/k/l0/v3;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lf/a/k/l0/v3;->K:Lf/a/k/n0/j;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/a/k/l0/v3$a;

    invoke-direct {v2, p0, p1, v0, p2}, Lf/a/k/l0/v3$a;-><init>(Lf/a/k/l0/v3;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "errCode = %d, errMsg = %s"

    invoke-static {p1, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public j0(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ec_sdk_auth_state"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2020

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne p1, v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v6, v1

    sub-int/2addr v6, v2

    if-ne v6, v2, :cond_1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    iget-object v6, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 3
    new-instance v7, Lf/a/k/n0/j;

    invoke-direct {v7, v6}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x67

    .line 4
    iput v6, v7, Lf/a/k/n0/j;->a:I

    const-string v6, "Registration Successful!"

    .line 5
    iput-object v6, v7, Lf/a/k/n0/j;->w:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    sget-object v8, Ld/s/y;->m:Ljava/lang/String;

    aput-object v8, v6, v4

    sget-object v8, Ld/s/y;->u:Ljava/lang/String;

    aput-object v8, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    const-string v0, "UUID:%s\nPhone\'s IMEI:%s\nChannel:%s\nAuthorization remaining:%s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, v7, Lf/a/k/n0/j;->x:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 8
    iput v1, v7, Lf/a/k/n0/j;->b:I

    const-string v1, "OK"

    .line 9
    iput-object v1, v7, Lf/a/k/n0/j;->B:Ljava/lang/String;

    .line 10
    iput-object v0, v7, Lf/a/k/n0/j;->u:Lf/a/k/n0/j$c;

    .line 11
    invoke-virtual {v7}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iput-object v7, p0, Lf/a/k/l0/v3;->M:Lf/a/k/n0/j;

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    aput-object p2, v0, v2

    sget-object p1, Ld/s/y;->u:Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, "authCode = %d, authMsg = %s, phoneimei = %s"

    invoke-static {p1, v0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public k0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1
    new-instance v1, Lf/a/k/n0/j;

    invoke-direct {v1, v0}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x67

    .line 2
    iput v0, v1, Lf/a/k/n0/j;->a:I

    const v0, 0x7f0d0053

    .line 3
    iget-object v2, v1, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, v1, Lf/a/k/n0/j;->w:Ljava/lang/String;

    .line 6
    iput-object p2, v1, Lf/a/k/n0/j;->x:Ljava/lang/String;

    const p2, 0x7f0d00be

    const v0, 0x7f0d0029

    .line 7
    new-instance v2, Lf/a/k/l0/v3$b;

    invoke-direct {v2, p0, p1}, Lf/a/k/l0/v3$b;-><init>(Lf/a/k/l0/v3;Ljava/lang/String;)V

    const/16 p1, 0xc9

    .line 8
    iput p1, v1, Lf/a/k/n0/j;->b:I

    .line 9
    iget-object p1, v1, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, v1, Lf/a/k/n0/j;->C:Ljava/lang/String;

    .line 12
    iget-object p1, v1, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, v1, Lf/a/k/n0/j;->D:Ljava/lang/String;

    .line 15
    iput-object v2, v1, Lf/a/k/n0/j;->t:Lf/a/k/n0/j$d;

    .line 16
    iput-object v1, p0, Lf/a/k/l0/v3;->N:Lf/a/k/n0/j;

    invoke-virtual {v1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    return-void
.end method

.method public l0(Z)V
    .locals 7

    iget-boolean v0, p0, Lf/a/k/l0/v3;->J:Z

    if-eqz v0, :cond_0

    const-string p1, "showSwitchBtn isDestroy return it."

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "isAndroid="

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lf/a/k/l0/v3;->s:Landroid/widget/RelativeLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lf/a/k/l0/v3;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_ec_qr_code_mode_android"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    const v1, 0x7f080127

    const-string v2, "#ffffffff"

    const-string v3, "#4dffffff"

    const v4, 0x7f080128

    const/4 v5, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object v6, p0, Lf/a/k/l0/v3;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lf/a/k/l0/v3;->t:Landroid/widget/ImageView;

    const v6, 0x7f080061

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lf/a/k/l0/v3;->z:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lf/a/k/l0/v3;->A:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lf/a/k/l0/v3;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lf/a/k/l0/v3;->v:Landroid/widget/ImageView;

    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {p0, v0}, Lf/a/k/l0/v3;->a0(Z)V

    iget-object v0, p0, Lf/a/k/l0/v3;->F:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {p0}, Lf/a/k/l0/v3;->b0()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/a/k/l0/v3;->Q:Ljava/lang/String;

    const-string v0, "==>** androidUrl is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lf/a/k/l0/v3;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lf/a/k/l0/v3;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lf/a/k/l0/v3;->Q:Ljava/lang/String;

    const/16 v0, 0x12c

    invoke-static {p1, v0}, Lf/a/i/m/h;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lf/a/k/l0/v3;->R:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lf/a/k/l0/v3;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/v3;->G:Landroid/os/Handler;

    new-instance v1, Lf/a/k/l0/s1;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/s1;-><init>(Lf/a/k/l0/v3;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lf/a/k/l0/v3;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Lf/a/k/l0/v3;->t:Landroid/widget/ImageView;

    const v4, 0x7f080060

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lf/a/k/l0/v3;->z:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lf/a/k/l0/v3;->A:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lf/a/k/l0/v3;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Lf/a/k/l0/v3;->v:Landroid/widget/ImageView;

    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lf/a/k/l0/v3;->F:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {p0, v5}, Lf/a/k/l0/v3;->a0(Z)V

    :goto_0
    return-void
.end method

.method public final m0()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_qr_code_mode_android"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/a/k/l0/v3;->b0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrCodeFragment setDeviceTag updateAndroidUrl ==>** androidUrl is "

    invoke-static {v1, v0, v0}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lf/a/k/l0/v3;->G:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lf/a/k/l0/v3;->y:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    new-instance v2, Lf/a/k/l0/r1;

    invoke-direct {v2, p0, v0}, Lf/a/k/l0/r1;-><init>(Lf/a/k/l0/v3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
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

    iput-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

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

    iput-object v0, p0, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    iput-boolean p3, p0, Lf/a/k/l0/v3;->J:Z

    const v0, 0x7f0c004a

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    const-string v0, "EC_DEVICE_NAME"

    invoke-virtual {p2, v0, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lf/a/k/l0/v3;->D:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "wifi"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lf/a/k/l0/v3;->F:Landroid/net/wifi/WifiManager;

    .line 1
    invoke-super {p0, p1}, Lf/a/k/l0/i3;->O(Landroid/view/View;)V

    const p2, 0x7f09015d

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lf/a/k/l0/v3;->s:Landroid/widget/RelativeLayout;

    const p2, 0x7f09015e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/v3;->t:Landroid/widget/ImageView;

    const p2, 0x7f090160

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lf/a/k/l0/v3;->u:Landroid/widget/RelativeLayout;

    const p2, 0x7f090161

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/v3;->v:Landroid/widget/ImageView;

    const p2, 0x7f09015f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/v3;->z:Landroid/widget/TextView;

    const p2, 0x7f090162

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/v3;->A:Landroid/widget/TextView;

    const p2, 0x7f0900e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    sget-object p3, Lf/a/i/m/g;->h:Ljava/lang/Boolean;

    const-string v0, "true"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0

    :cond_0
    sget-object p3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_APP_IOS_USB"

    invoke-static {p3, v1, v0}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lf/a/i/m/g;->h:Ljava/lang/Boolean;

    const-string v1, "get ios is usb = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lf/a/i/m/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    if-nez p3, :cond_2

    .line 4
    sget-object p3, Lf/a/i/m/g;->g:Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_1

    :cond_1
    sget-object p3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_APP_ANDROID_USB"

    invoke-static {p3, v1, v0}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lf/a/i/m/g;->g:Ljava/lang/Boolean;

    const-string v0, "get android is usb = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lf/a/i/m/g;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_1
    if-nez p3, :cond_2

    const/16 p3, 0x8

    .line 5
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const p2, 0x7f0900e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/v3;->y:Landroid/widget/ImageView;

    const p2, 0x7f09007c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/v3;->x:Landroid/widget/ImageView;

    const p2, 0x7f09007b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lf/a/k/l0/v3;->w:Landroid/widget/ImageView;

    const p2, 0x7f0901f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lf/a/k/l0/v3;->B:Landroid/widget/TextView;

    iget-object p2, p0, Lf/a/k/l0/v3;->x:Landroid/widget/ImageView;

    new-instance p3, Lf/a/k/l0/r3;

    invoke-direct {p3, p0}, Lf/a/k/l0/r3;-><init>(Lf/a/k/l0/v3;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lf/a/k/l0/v3;->w:Landroid/widget/ImageView;

    new-instance p3, Lf/a/k/l0/s3;

    invoke-direct {p3, p0}, Lf/a/k/l0/s3;-><init>(Lf/a/k/l0/v3;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lf/a/k/l0/v3;->s:Landroid/widget/RelativeLayout;

    new-instance p3, Lf/a/k/l0/t3;

    invoke-direct {p3, p0}, Lf/a/k/l0/t3;-><init>(Lf/a/k/l0/v3;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lf/a/k/l0/v3;->u:Landroid/widget/RelativeLayout;

    new-instance p3, Lf/a/k/l0/u3;

    invoke-direct {p3, p0}, Lf/a/k/l0/u3;-><init>(Lf/a/k/l0/v3;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p0, Lf/a/k/l0/v3;->C:Landroid/content/Context;

    invoke-static {p2}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p2

    .line 7
    iget-object p2, p2, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const/4 p3, 0x1

    const-string v0, "key_ec_qr_code_mode_android"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 8
    invoke-virtual {p0, p2}, Lf/a/k/l0/v3;->l0(Z)V

    const-string p2, "==> show QrCodeFragment !"

    .line 9
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/v3;->J:Z

    iget-object v0, p0, Lf/a/k/l0/v3;->K:Lf/a/k/n0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/v3;->K:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/v3;->K:Lf/a/k/n0/j;

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/v3;->L:Lf/a/k/n0/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/v3;->L:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/v3;->L:Lf/a/k/n0/j;

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/v3;->M:Lf/a/k/n0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/v3;->M:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/v3;->M:Lf/a/k/n0/j;

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/v3;->N:Lf/a/k/n0/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/v3;->N:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/v3;->N:Lf/a/k/n0/j;

    :cond_3
    iget-object v0, p0, Lf/a/k/l0/v3;->O:Lf/a/k/n0/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/l0/v3;->N:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/l0/v3;->O:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/v3;->O:Lf/a/k/n0/j;

    :cond_4
    return-void
.end method

.method public onDetach()V
    .locals 1

    const-string v0, "onDetach"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method
