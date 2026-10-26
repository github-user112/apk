.class public Lf/a/k/l0/a4;
.super Lf/a/k/l0/i3;
.source ""

# interfaces
.implements Lf/a/k/k0/j;


# instance fields
.field public A:Landroid/text/SpannableStringBuilder;

.field public B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public C:Lf/a/k/n0/j;

.field public D:Lf/a/k/n0/j;

.field public F:Lf/a/k/n0/j;

.field public G:Lf/a/k/n0/j;

.field public H:Lf/a/k/n0/j;

.field public I:Z

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/ImageView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/view/View;

.field public x:Lf/a/k/k0/i;

.field public y:Lf/a/k/f0;

.field public volatile z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf/a/k/l0/i3;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/a4;->z:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    iput-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf/a/k/k0/i;

    .line 1
    iput-object p1, p0, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

    return-void
.end method

.method public I()V
    .locals 3

    const-string v0, "StatusTipFragment onConnectTimeout"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusTipFragment onConnectTimeout, fragment hidden, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lnet/easyconn/EcApplication;->isForeground:Z

    if-nez v0, :cond_1

    const-string v0, "StatusTipFragment onConnectTimeout, at background, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lf/a/k/l0/a4;->z:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "StatusTipFragment onConnectTimeout, no needShowTimeout, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lf/a/k/l0/a4;->z:Z

    return-void

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

    invoke-interface {v0}, Lf/a/k/k0/i;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "StatusTipFragment Phone not Connected, ignore"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v2, 0x7f0d007c

    invoke-virtual {v0, v2, v1}, Lnet/easyconn/EcApplication;->showToastCustom(II)V

    invoke-virtual {p0}, Lf/a/k/l0/a4;->q()V

    return-void
.end method

.method public O(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lf/a/k/l0/i3;->O(Landroid/view/View;)V

    const v0, 0x7f0900e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0900e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/a4;->w:Landroid/view/View;

    const v0, 0x7f09010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/a4;->s:Landroid/widget/ImageView;

    const v0, 0x7f0901ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    const v0, 0x7f0900e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf/a/k/l0/a4;->u:Landroid/widget/ImageView;

    const v0, 0x7f090204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf/a/k/l0/a4;->v:Landroid/widget/TextView;

    .line 1
    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0d0054

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7f0d0055

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p1, p0, Lf/a/k/l0/a4;->w:Landroid/view/View;

    new-instance v0, Lf/a/k/l0/h2;

    invoke-direct {v0, p0}, Lf/a/k/l0/h2;-><init>(Lf/a/k/l0/a4;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/f0;

    iput-object p1, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/a4;->A:Landroid/text/SpannableStringBuilder;

    .line 3
    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_4

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v0, :cond_3

    const v0, 0x7f0d00b9

    goto :goto_3

    :cond_3
    const v0, 0x7f0d00bb

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v0, :cond_5

    const v0, 0x7f0d00ba

    goto :goto_3

    :cond_5
    const v0, 0x7f0d00bc

    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lf/a/k/l0/a4;->A:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, "Wi-Fi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_6

    return-void

    :cond_6
    add-int/lit8 v0, p1, 0x5

    new-instance v1, Lf/a/k/l0/a4$a;

    invoke-direct {v1, p0}, Lf/a/k/l0/a4$a;-><init>(Lf/a/k/l0/a4;)V

    iget-object v2, p0, Lf/a/k/l0/a4;->A:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x21

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#1EA0FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lf/a/k/l0/a4;->A:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public synthetic a0(Landroid/view/View;)V
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

    invoke-interface {p1}, Lf/a/k/e0;->m()V

    :cond_0
    return-void
.end method

.method public synthetic b0(ILjava/lang/String;Landroid/view/View;)V
    .locals 1

    iget-object p3, p0, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

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

    invoke-interface {p3, p2, v0, p1}, Lf/a/k/k0/i;->a(IILjava/lang/String;)V

    iget-object p1, p0, Lf/a/k/l0/a4;->C:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->a()V

    iget-object p1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->K()V

    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d0()V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/a4;->h0()V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "showInitView, isHide is "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/k/l0/a4;->I:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lf/a/k/l0/a4;->I:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lf/a/k/f0;->j()V

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    invoke-interface {v0}, Lf/a/k/f0;->f()V

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/a4;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lf/a/k/l0/a4;->A:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public e0(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

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
    iget-object v1, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

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
    iput-object v2, p0, Lf/a/k/l0/a4;->C:Lf/a/k/n0/j;

    invoke-virtual {v2}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    iget-object v1, p0, Lf/a/k/l0/a4;->C:Lf/a/k/n0/j;

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/a/k/l0/g2;

    invoke-direct {v2, p0, p1, p2}, Lf/a/k/l0/g2;-><init>(Lf/a/k/l0/a4;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lf/a/k/l0/a4;->C:Lf/a/k/n0/j;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lf/a/k/l0/a4$b;

    invoke-direct {v2, p0, p1, v0, p2}, Lf/a/k/l0/a4$b;-><init>(Lf/a/k/l0/a4;IILjava/lang/String;)V

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

.method public f0(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

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
    iget-object v6, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

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

    iput-object v7, p0, Lf/a/k/l0/a4;->F:Lf/a/k/n0/j;

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

.method public g0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

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
    new-instance v2, Lf/a/k/l0/a4$c;

    invoke-direct {v2, p0, p1}, Lf/a/k/l0/a4$c;-><init>(Lf/a/k/l0/a4;Ljava/lang/String;)V

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
    iput-object v1, p0, Lf/a/k/l0/a4;->G:Lf/a/k/n0/j;

    invoke-virtual {v1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    :cond_1
    :goto_0
    return-void
.end method

.method public h0()V
    .locals 2

    const-string v0, "showReconnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf/a/k/f0;->o()V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    invoke-interface {v0}, Lf/a/k/f0;->f()V

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v0, "showReconnecting please reset"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    const v1, 0x7f0d0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/a4;->u:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->w:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lf/a/k/l0/a4;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/a4;->z:Z

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

    iput-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

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

    iput-object v0, p0, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/a/k/l0/a4;->O(Landroid/view/View;)V

    invoke-virtual {p0}, Lf/a/k/l0/a4;->e()V

    iput-boolean v0, p0, Lf/a/k/l0/a4;->I:Z

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lf/a/k/l0/i3;->onDestroy()V

    const-string v0, "StatusTipFragment onDestroy."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    iget-object v0, p0, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

    invoke-interface {v0}, Lf/a/c;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lf/a/k/l0/a4;->C:Lf/a/k/n0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/a4;->C:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/a4;->C:Lf/a/k/n0/j;

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->D:Lf/a/k/n0/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/a4;->D:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/a4;->D:Lf/a/k/n0/j;

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/a4;->F:Lf/a/k/n0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/a4;->F:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/a4;->F:Lf/a/k/n0/j;

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->G:Lf/a/k/n0/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/a4;->G:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/a4;->G:Lf/a/k/n0/j;

    :cond_3
    iget-object v0, p0, Lf/a/k/l0/a4;->H:Lf/a/k/n0/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lf/a/k/l0/a4;->H:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/a4;->H:Lf/a/k/n0/j;

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

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    const-string v0, "onHiddenChanged hidden="

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lf/a/k/l0/a4;->I:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-string v0, "StatusTipFragment onPause."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lf/a/k/l0/i3;->onResume()V

    const-string v0, "StatusTipFragment onResume."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

    invoke-interface {v0}, Lf/a/c;->onStart()V

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 2

    const-string v0, "showConnecting"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lf/a/k/f0;->o()V

    iget-object v0, p0, Lf/a/k/l0/a4;->y:Lf/a/k/f0;

    invoke-interface {v0}, Lf/a/k/f0;->a()V

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/a4;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/a4;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lf/a/k/l0/a4;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/a4;->w:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
