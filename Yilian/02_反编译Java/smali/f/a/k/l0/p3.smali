.class public Lf/a/k/l0/p3;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lf/a/k/k0/d;
.implements Lnet/easyconn/framework/broadcast/BroadcastManager$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/k/l0/p3$a;
    }
.end annotation


# instance fields
.field public A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public B:Landroid/widget/TextView;

.field public C:Lf/a/k/k0/c;

.field public D:Lf/a/k/n0/j;

.field public F:Lf/a/k/n0/j;

.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/view/SurfaceView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Lnet/easyconn/ui/widget/EcEditText;

.field public volatile f:Lf/a/i/o/a;

.field public g:Lnet/easyconn/ui/widget/EcFloatButton;

.field public h:Lnet/easyconn/ui/widget/EcFloatMenu;

.field public i:Z

.field public j:I

.field public k:Ljava/lang/Boolean;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Lf/a/k/n0/j;

.field public q:Z

.field public r:Landroid/app/Activity;

.field public s:I

.field public t:Z

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lf/a/k/l0/p3;->k:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput v1, p0, Lf/a/k/l0/p3;->l:I

    iput v1, p0, Lf/a/k/l0/p3;->m:I

    const/4 v2, -0x1

    iput v2, p0, Lf/a/k/l0/p3;->n:I

    iput v2, p0, Lf/a/k/l0/p3;->o:I

    iput-boolean v1, p0, Lf/a/k/l0/p3;->q:Z

    iput-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    const/4 v0, 0x5

    iput v0, p0, Lf/a/k/l0/p3;->s:I

    iput-boolean v1, p0, Lf/a/k/l0/p3;->t:Z

    iput v1, p0, Lf/a/k/l0/p3;->u:I

    iput-boolean v1, p0, Lf/a/k/l0/p3;->v:Z

    iput-boolean v1, p0, Lf/a/k/l0/p3;->w:Z

    iput-boolean v1, p0, Lf/a/k/l0/p3;->x:Z

    iput-boolean v1, p0, Lf/a/k/l0/p3;->y:Z

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    if-eqz v1, :cond_0

    new-instance v1, Lf/a/k/l0/w0;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/w0;-><init>(Lf/a/k/l0/p3;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    const-string v0, "MirrorFragment hideAssistantButton"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/p3;->i:Z

    invoke-virtual {p0, v0}, Lf/a/k/l0/p3;->i0(Z)V

    invoke-virtual {p0, v0}, Lf/a/k/l0/p3;->j0(Z)V

    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/p3;->B()V

    iget-object v0, p0, Lf/a/k/l0/p3;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public D(Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "showKeyboard callback"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lf/a/k/l0/p3;->z:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf/a/k/k0/c;

    .line 1
    iput-object p1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    return-void
.end method

.method public F([BIIIII)V
    .locals 9

    iget-boolean v0, p0, Lf/a/k/l0/p3;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a/k/k0/c;->k(Landroid/content/Context;)V

    iget-object v2, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lf/a/i/o/a;->c([BIIIII)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "mirrorPlay isMirrorConnectionOpen false ,return"

    invoke-static {p2, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public H([BII)V
    .locals 2

    sget-boolean v0, Lf/a/i/n/b;->I:Z

    if-eqz v0, :cond_0

    const-string v0, "MirrorFragment mirrorPlay mSurfaceAvailable = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lf/a/k/l0/p3;->t:Z

    invoke-static {v0, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    :cond_0
    iget-boolean v0, p0, Lf/a/k/l0/p3;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->y()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/j/d/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a/k/k0/c;->k(Landroid/content/Context;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    invoke-interface {v0, p1, p2, p3}, Lf/a/i/o/a;->b([BII)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "mirrorPlay isMirrorConnectionOpen false ,return. mSurfaceAvailable "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lf/a/k/l0/p3;->t:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isMirrorConnectionOpen + "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {p2}, Lf/a/k/k0/c;->y()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public K()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MirrorFragment showAssistantButton start"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/p3;->i:Z

    iget-boolean v0, p0, Lf/a/k/l0/p3;->x:Z

    if-nez v0, :cond_1

    const-string v0, "showAssistantButton mirrorSizeChangedCalled false, return"

    :goto_0
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/p3;->c:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    .line 1
    iget-boolean v0, v0, Lnet/easyconn/ui/widget/EcFloatButton;->p:Z

    .line 2
    invoke-virtual {p0, v0}, Lf/a/k/l0/p3;->j0(Z)V

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lf/a/k/l0/p3;->i0(Z)V

    .line 3
    iget-object v1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    .line 4
    iget-boolean v1, v1, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MirrorFragment showAssistantButton AoaStyle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " showEcFloatMenu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const v2, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustEcHome(Z)V

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v0, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustSystemHome(Z)V

    :goto_1
    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "MirrorFragment showAssistantButton ecFloatButton2 VISIBLE = true"

    .line 7
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lf/a/k/l0/p3;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lf/a/k/l0/p3;->k:Ljava/lang/Boolean;

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    new-instance v1, Lf/a/k/l0/c3;

    invoke-direct {v1, p0}, Lf/a/k/l0/c3;-><init>(Lf/a/k/l0/p3;)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lf/a/k/l0/p3;->k:Ljava/lang/Boolean;

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    new-instance v1, Lf/a/k/l0/c3;

    invoke-direct {v1, p0}, Lf/a/k/l0/c3;-><init>(Lf/a/k/l0/p3;)V

    goto :goto_3

    :cond_7
    :goto_4
    return-void

    :cond_8
    :goto_5
    const-string v0, "showAssistantButton mAuthPendingTip ing, return"

    goto/16 :goto_0
.end method

.method public L()V
    .locals 9

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {v0}, Lf/a/i/m/g;->L(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lf/a/k/l0/p3;->n:I

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {v0}, Lf/a/i/m/g;->K(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lf/a/k/l0/p3;->o:I

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->N()I

    move-result v0

    iget-object v1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1}, Lf/a/k/k0/c;->l0()I

    move-result v1

    const-string v2, "MirrorFragment surfaceCreated "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf/a/k/l0/p3;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf/a/k/l0/p3;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MirrorFragment surfaceCreated mirrorWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mirrorHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v2, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lf/a/k/l0/p3;->n:I

    int-to-float v4, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    iget v5, p0, Lf/a/k/l0/p3;->o:I

    int-to-float v6, v5

    int-to-float v1, v1

    div-float/2addr v6, v1

    const/4 v7, 0x0

    cmpl-float v8, v4, v6

    if-ltz v8, :cond_1

    mul-float v6, v6, v0

    float-to-int v0, v6

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lf/a/k/l0/p3;->l:I

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    iput v3, p0, Lf/a/k/l0/p3;->l:I

    iput v7, p0, Lf/a/k/l0/p3;->m:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lf/a/k/l0/p3;->o:I

    goto :goto_1

    :cond_1
    mul-float v4, v4, v1

    float-to-int v0, v4

    iput v7, p0, Lf/a/k/l0/p3;->l:I

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lf/a/k/l0/p3;->m:I

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    move v7, v5

    :goto_0
    iput v7, p0, Lf/a/k/l0/p3;->m:I

    iget v1, p0, Lf/a/k/l0/p3;->n:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v0, "MirrorFragment surfaceCreated para.width="

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",para.height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorFragment surfaceCreated offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/a/k/l0/p3;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/a/k/l0/p3;->m:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    new-instance v1, Lf/a/k/l0/o0;

    invoke-direct {v1, p0, v2}, Lf/a/k/l0/o0;-><init>(Lf/a/k/l0/p3;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public M()V
    .locals 3

    iget-boolean v0, p0, Lf/a/k/l0/p3;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-nez v0, :cond_0

    new-instance v0, Lf/a/i/n/a;

    iget-object v1, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    iget-object v2, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lf/a/i/n/a;-><init>(Landroid/view/SurfaceView;Landroid/content/Context;)V

    iput-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-nez v0, :cond_2

    const-string v0, "MirrorFragment new mEcVideoPlayer ."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance v0, Lf/a/i/n/b;

    iget-object v1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1}, Lf/a/k/k0/c;->U()Z

    move-result v1

    invoke-direct {v0, v1}, Lf/a/i/n/b;-><init>(Z)V

    iput-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    goto :goto_0

    :cond_2
    const-string v0, "MirrorFragment  mEcVideoPlayer set ios"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    check-cast v0, Lf/a/i/n/b;

    iget-object v1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1}, Lf/a/k/k0/c;->U()Z

    move-result v1

    .line 1
    iput-boolean v1, v0, Lf/a/i/n/b;->i:Z

    .line 2
    :goto_0
    iget-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    check-cast v0, Lf/a/i/n/b;

    iget-object v1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {v1}, Lf/a/i/m/g;->S(Landroid/content/Context;)Z

    move-result v1

    .line 3
    iput-boolean v1, v0, Lf/a/i/n/b;->k:Z

    return-void
.end method

.method public N(Landroid/app/Activity;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MirrorFragment isSoftShowing screenHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rect.bottom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 1
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    iget p1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MirrorFragment getSoftButtonsBarHeight realHeight:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " usableHeight:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-le p1, v4, :cond_2

    sub-int/2addr p1, v4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v2, p1

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public synthetic O(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic P()V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    :cond_0
    return-void
.end method

.method public synthetic Q(Z)V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {v0, p1}, Lnet/easyconn/ui/widget/EcFloatMenu;->a(Z)V

    return-void
.end method

.method public synthetic R()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a/k/k0/c;->K(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic S()V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->W()V

    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    .line 1
    iget-boolean v0, p1, Lnet/easyconn/ui/widget/EcFloatButton;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->f(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lnet/easyconn/EcApplication;

    new-instance v0, Lf/a/k/l0/l0;

    invoke-direct {v0, p0}, Lf/a/k/l0/l0;-><init>(Lf/a/k/l0/p3;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p1, Lnet/easyconn/ui/widget/EcFloatButton;->o:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->f(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lnet/easyconn/EcApplication;

    new-instance v0, Lf/a/k/l0/x0;

    invoke-direct {v0, p0}, Lf/a/k/l0/x0;-><init>(Lf/a/k/l0/p3;)V

    :goto_0
    const-wide/16 v1, 0x168

    invoke-virtual {p1, v0, v1, v2}, Lnet/easyconn/EcApplication;->executeTaskDelay(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public U(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorFragment onSelectionChanged->start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorFragment setOnSelectChangedListenerCalled->start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0, p1, p2}, Lf/a/k/k0/c;->T(II)V

    return-void
.end method

.method public synthetic V()V
    .locals 1

    iget-boolean v0, p0, Lf/a/k/l0/p3;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/p3;->K()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/p3;->B()V

    :goto_0
    return-void
.end method

.method public synthetic W(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic X(II)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorFragment setSelection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic Y(II)V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v0, p1, p2}, Lnet/easyconn/ui/widget/EcFloatButton;->j(II)V

    return-void
.end method

.method public synthetic Z(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/p3;->K()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/p3;->B()V

    :goto_0
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

    new-instance v1, Lf/a/k/l0/a1;

    invoke-direct {v1, p0}, Lf/a/k/l0/a1;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic a0(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x4

    if-eq p1, v0, :cond_2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const-string p1, ""

    goto :goto_1

    :cond_0
    const p1, 0x7f0d0089

    goto :goto_0

    :cond_1
    const p1, 0x7f0d005b

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnet/easyconn/EcApplication;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_2
    const p1, 0x7f0d00b7

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v0, Lf/a/k/n0/j$a;

    iget-object v1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

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

    iput-object p1, p0, Lf/a/k/l0/p3;->D:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;FIII)V
    .locals 0

    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Lf/a/k/l0/n0;

    invoke-direct {p2, p0, p4, p5, p3}, Lf/a/k/l0/n0;-><init>(Lf/a/k/l0/p3;III)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic b0(III)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x7f0d0065

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d0059

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    div-int/lit8 p3, p3, 0x3c

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    if-nez v0, :cond_0

    new-instance v0, Lf/a/k/n0/j$a;

    iget-object v1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lf/a/k/n0/j$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lf/a/k/n0/j$a;->b(Z)Lf/a/k/n0/j$a;

    const/16 p2, 0x66

    invoke-virtual {v0, p2}, Lf/a/k/n0/j$a;->e(I)Lf/a/k/n0/j$a;

    invoke-virtual {v0, p1}, Lf/a/k/n0/j$a;->k(Ljava/lang/String;)Lf/a/k/n0/j$a;

    const p1, 0x7f0d0063

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/a/k/n0/j$a;->l(Ljava/lang/String;)Lf/a/k/n0/j$a;

    invoke-virtual {v0, p3}, Lf/a/k/n0/j$a;->i(Ljava/lang/String;)Lf/a/k/n0/j$a;

    const p1, 0x7f0d0029

    new-instance p2, Lf/a/k/l0/o3;

    invoke-direct {p2, p0}, Lf/a/k/l0/o3;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {v0, p1, p2}, Lf/a/k/n0/j$a;->h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;

    invoke-virtual {v0}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object p1

    iput-object p1, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    invoke-virtual {p1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    invoke-virtual {p1, p3}, Lf/a/k/n0/j;->setPercentText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lf/a/k/l0/v0;

    invoke-direct {v1, p0, p1}, Lf/a/k/l0/v0;-><init>(Lf/a/k/l0/p3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public synthetic c0(Z)V
    .locals 0

    invoke-virtual {p0}, Lf/a/k/l0/p3;->l0()V

    return-void
.end method

.method public synthetic d0()V
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

    new-instance v1, Lf/a/k/l0/y0;

    invoke-direct {v1, p0}, Lf/a/k/l0/y0;-><init>(Lf/a/k/l0/p3;)V

    const v2, 0x7f0d002f

    invoke-virtual {v0, v2, v1}, Lf/a/k/n0/j$a;->h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/k/n0/j$a;->a()Lf/a/k/n0/j;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    move-result-object v0

    iput-object v0, p0, Lf/a/k/l0/p3;->F:Lf/a/k/n0/j;

    return-void
.end method

.method public synthetic e0()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const-string v1, "MirrorFragment open."

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1}, Lf/a/k/k0/c;->y()Z

    move-result v1

    const-string v2, "MirrorFragment open. isMirrorConnectionOpen = "

    invoke-static {v2, v1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    const-wide/16 v2, 0x190

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    iget-object v4, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v4}, Lf/a/k/k0/c;->N()I

    move-result v4

    iget-object v5, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v5}, Lf/a/k/k0/c;->l0()I

    move-result v5

    iget-object v6, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lf/a/i/o/a;->a(IILandroid/view/Surface;)Z

    move-result v1

    const-string v4, "MirrorFragment open. openResult = "

    invoke-static {v4, v1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->i0()V

    goto :goto_4

    :cond_0
    const-string v1, "MirrorFragment open wait start"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const-string v1, "MirrorFragment open wait end"

    goto :goto_3

    :cond_1
    const-string v1, "MirrorFragment open wait start1"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    const-string v1, "MirrorFragment open wait end1"

    :goto_3
    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_4
    return-void
.end method

.method public f0()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lf/a/k/l0/z0;

    invoke-direct {v1, p0}, Lf/a/k/l0/z0;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    const-string p1, "MirrorFragment onHidden SurfaceView set GONE"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    const-string p1, "MirrorFragment onHidden SurfaceView set VISIBLE"

    :goto_0
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lf/a/k/l0/q0;

    invoke-direct {v0, p0, p1}, Lf/a/k/l0/q0;-><init>(Lf/a/k/l0/p3;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h0()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/a/k/l0/p3;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lf/a/k/l0/p3;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/p3;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public i0(Z)V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    if-eqz v0, :cond_1

    const-string v0, "MirrorFragment set EcFloatButton Visible = "

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public j(ZI)V
    .locals 0

    return-void
.end method

.method public j0(Z)V
    .locals 1

    iget-object v0, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    if-eqz v0, :cond_1

    const-string v0, "MirrorFragment set EcFloatMenu Visible = "

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iget-object v0, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lnet/easyconn/ui/widget/EcFloatMenu;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public k0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "key_ec_float_button_left"

    const/16 v2, -0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "key_ec_float_button_top"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 4
    iget v0, p0, Lf/a/k/l0/p3;->j:I

    iget-object v1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFloatButtonDefaultPosition finalLeft = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " finalTop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    if-eqz v2, :cond_2

    new-instance v3, Lf/a/k/l0/p0;

    invoke-direct {v3, p0, v0, v1}, Lf/a/k/l0/p0;-><init>(Lf/a/k/l0/p3;II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public l(III)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/p3;->x:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1}, Lf/a/k/k0/c;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "MirrorFragment mirrorSizeChanged width is isIosStream, return"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorFragment mirrorSizeChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p3}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    iget-object p3, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getWidth()I

    move-result p3

    iget-object v1, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {v2}, Lf/a/i/m/g;->L(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {v3}, Lf/a/i/m/g;->K(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v4}, Lf/a/k/k0/c;->N()I

    move-result v4

    iget-object v5, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v5}, Lf/a/k/k0/c;->l0()I

    move-result v5

    sub-int/2addr p3, v4

    int-to-float p3, p3

    int-to-float v4, v4

    div-float/2addr p3, v4

    sub-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v4, v5

    div-float/2addr v1, v4

    int-to-float p1, p1

    mul-float p3, p3, p1

    add-float/2addr p3, p1

    float-to-int p3, p3

    int-to-float p2, p2

    mul-float p1, p1, v1

    add-float/2addr p1, p2

    float-to-int p1, p1

    sub-int p2, v2, p3

    sub-int/2addr v3, p1

    const/4 p1, 0x0

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-le p2, v3, :cond_4

    div-int/lit8 p3, p2, 0x2

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    div-int/lit8 p3, v3, 0x2

    const/4 v1, 0x0

    :goto_2
    const/16 v4, 0x50

    iget-object v5, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    int-to-float v4, v4

    invoke-static {v5, v4}, Ld/s/y;->u(Landroid/content/Context;F)I

    move-result v4

    if-ne v1, v0, :cond_5

    mul-int/lit8 v2, v2, 0xc

    div-int/lit8 v4, v2, 0x64

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MirrorFragment mirrorSizeChanged blackWidth = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " blackHeight = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " blackMargin = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " threshold = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 1
    invoke-static {p2}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p2

    const-string v2, "false"

    if-nez p2, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_3

    :cond_6
    sget-object p2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "SHOW_FLOAT_BUTTON_ONLY"

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v2, "MirrorFragment mirrorSizeChanged onlyShowFloatButton = "

    .line 2
    invoke-static {v2, p2}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    if-lt p3, v4, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_9

    const/4 v1, 0x0

    :cond_9
    iget-object p2, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p2, v1}, Lnet/easyconn/ui/widget/EcFloatMenu;->setMenuOrientation(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MirrorFragment showMenu = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lf/a/k/l0/p3;->w:Z

    iget-object p2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p2, v0}, Lnet/easyconn/ui/widget/EcFloatButton;->l(Z)V

    iget-boolean p2, p0, Lf/a/k/l0/p3;->y:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p2, p1}, Lnet/easyconn/ui/widget/EcFloatButton;->l(Z)V

    :cond_a
    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    new-instance p2, Lf/a/k/l0/r0;

    invoke-direct {p2, p0}, Lf/a/k/l0/r0;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l0()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/easyconn/EcApplication;

    new-instance v1, Lf/a/k/l0/f0;

    invoke-direct {v1, p0}, Lf/a/k/l0/f0;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {v0, v1}, Lnet/easyconn/EcApplication;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "MirrorFragment onAttach parameter is activity"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string v0, "MirrorFragment onAttachToContext"

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "MirrorFragment onAttach"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "MirrorFragment onAttachToContext"

    .line 2
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1
    new-instance v0, Lf/a/k/l0/p3$a;

    invoke-direct {v0, p1}, Lf/a/k/l0/p3$a;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 2
    iput-object v0, p0, Lf/a/k/l0/p3;->z:Landroid/os/Handler;

    const-string p1, "MirrorFragment onCreate mHandler = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/l0/p3;->z:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c0046

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "MirrorFragment initKeyBoardStateListener"

    .line 1
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const p2, 0x7f0901ae

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lf/a/k/l0/p3;->a:Landroid/widget/FrameLayout;

    new-instance p2, Lf/a/k/l0/m3;

    invoke-direct {p2, p0}, Lf/a/k/l0/m3;-><init>(Lf/a/k/l0/p3;)V

    iput-object p2, p0, Lf/a/k/l0/p3;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object p2, p0, Lf/a/k/l0/p3;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p0, Lf/a/k/l0/p3;->A:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iput-boolean v0, p0, Lf/a/k/l0/p3;->q:Z

    const-string p2, "MirrorFragment enableSoftDecode = "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lf/a/k/l0/p3;->q:Z

    invoke-static {p2, p3}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-boolean p2, p0, Lf/a/k/l0/p3;->q:Z

    const p3, 0x7f090218

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090199

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    check-cast p2, Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-virtual {p2, p0}, Lnet/easyconn/framework/video/SoftSurfaceView;->setCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p2, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    check-cast p2, Lnet/easyconn/framework/video/SoftSurfaceView;

    invoke-virtual {p2, v1}, Lnet/easyconn/framework/video/SoftSurfaceView;->setRenderer(I)V

    iget-object p2, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    iput-object p2, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_0
    iget-object p2, p0, Lf/a/k/l0/p3;->b:Landroid/view/SurfaceView;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f090205

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lnet/easyconn/ui/widget/EcEditText;

    iput-object p2, p0, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    new-instance p3, Lf/a/k/l0/k3;

    invoke-direct {p3, p0}, Lf/a/k/l0/k3;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    new-instance p3, Lf/a/k/l0/l3;

    invoke-direct {p3, p0}, Lf/a/k/l0/l3;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p2, p0, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    new-instance p3, Lf/a/k/l0/u0;

    invoke-direct {p3, p0}, Lf/a/k/l0/u0;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {p2, p3}, Lnet/easyconn/ui/widget/EcEditText;->setOnSelectChangedListener(Lnet/easyconn/ui/widget/EcEditText$a;)V

    const p2, 0x7f090045

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/a/k/l0/p3;->c:Landroid/view/View;

    const p2, 0x7f09022d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lf/a/k/l0/p3;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/m/g;->S(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "MirrorFragment addFpsTextView"

    .line 4
    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x5

    invoke-virtual {p2, v0, p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 p3, 0x51

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lf/a/k/l0/p3;->B:Landroid/widget/TextView;

    const/high16 v2, -0x10000

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lf/a/k/l0/p3;->B:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lf/a/k/l0/p3;->B:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lf/a/k/l0/p3;->B:Landroid/widget/TextView;

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lf/a/k/l0/p3;->a:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lf/a/k/l0/p3;->B:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lf/a/k/l0/p3;->z:Landroid/os/Handler;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {p2}, Lf/a/i/m/g;->L(Landroid/content/Context;)I

    move-result p2

    iget-object p3, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {p3}, Lf/a/i/m/g;->K(Landroid/content/Context;)I

    move-result p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MirrorFragment AreaView: width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const v2, 0x7f0900b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/easyconn/ui/widget/EcFloatButton;

    iput-object v2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    const v2, 0x7f0900b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/easyconn/ui/widget/EcFloatMenu;

    iput-object v2, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    iget-object v2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v2, p2}, Lnet/easyconn/ui/widget/EcFloatButton;->setScreenWidth(I)V

    iget-object v2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v2, p3}, Lnet/easyconn/ui/widget/EcFloatButton;->setScreenHeight(I)V

    iput p2, p0, Lf/a/k/l0/p3;->j:I

    iget-object p2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    new-instance p3, Lf/a/k/l0/b1;

    invoke-direct {p3, p0}, Lf/a/k/l0/b1;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    iget-object p3, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p2, p3}, Lnet/easyconn/ui/widget/EcFloatButton;->setEcFloatMenu(Lnet/easyconn/ui/widget/EcFloatMenu;)V

    iget-object p2, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {p2}, Lf/a/k/k0/c;->I()Z

    move-result p2

    iget-object p3, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {p3}, Lf/a/k/k0/c;->l()Z

    move-result p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MirrorFragment initFloatButton isShowSystemHomeButton = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isShowYiJiaButton = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lf/a/k/l0/p3;->B()V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    iget-object p2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p2, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustEcHome(Z)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    if-nez p3, :cond_5

    invoke-virtual {p2, v1}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustSystemHome(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v0}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustEcHome(Z)V

    iget-object p2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p2, v0}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustSystemHome(Z)V

    iget-object p2, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p2, v1}, Lnet/easyconn/ui/widget/EcFloatMenu;->h(Z)V

    iget-object p2, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p2, v1}, Lnet/easyconn/ui/widget/EcFloatMenu;->g(Z)V

    :goto_1
    iget-object p2, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    new-instance p3, Lf/a/k/l0/n3;

    invoke-direct {p3, p0}, Lf/a/k/l0/n3;-><init>(Lf/a/k/l0/p3;)V

    invoke-virtual {p2, p3}, Lnet/easyconn/ui/widget/EcFloatMenu;->setMenuButtonClickListener(Lnet/easyconn/ui/widget/EcFloatMenu$b;)V

    :goto_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lf/a/k/l0/p3;->h0()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "MirrorFragment onDestroy."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/c;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "MirrorFragment onDestroyView"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->B()V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->onDestroyView()V

    iget-object v0, p0, Lf/a/k/l0/p3;->F:Lf/a/k/n0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->F:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/p3;->F:Lf/a/k/n0/j;

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/p3;->p:Lf/a/k/n0/j;

    :cond_1
    iget-object v0, p0, Lf/a/k/l0/p3;->D:Lf/a/k/n0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf/a/k/n0/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf/a/k/l0/p3;->D:Lf/a/k/n0/j;

    invoke-virtual {v0}, Lf/a/k/n0/j;->a()V

    iput-object v1, p0, Lf/a/k/l0/p3;->D:Lf/a/k/n0/j;

    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const-string v0, "MirrorFragment onDetach"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    const-string v0, "MirrorFragment onHiddenChanged hidden="

    invoke-static {v0, p1}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0, p1}, Lf/a/k/l0/p3;->g0(Z)V

    return-void
.end method

.method public onMirrorRequestReconnect()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 1
    invoke-virtual {p0}, Lf/a/k/l0/p3;->p()V

    const-string v0, "MirrorFragment onPause."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lf/a/k/k0/c;->w(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v0}, Lnet/easyconn/ui/widget/EcFloatButton;->c()V

    invoke-virtual {p0}, Lf/a/k/l0/p3;->B()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "MirrorFragment onResume."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "MirrorFragment onResumeImpl."

    .line 1
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lf/a/k/k0/c;->w(Z)V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/c;->onStart()V

    invoke-virtual {p0}, Lf/a/k/l0/p3;->M()V

    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v0}, Lf/a/k/k0/c;->p()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const-string v0, "MirrorFragment onStop."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p1, Lnet/easyconn/ui/widget/EcFloatButton;->J:Z

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    iget-object v2, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {v2}, Lnet/easyconn/ui/widget/EcFloatMenu;->getMenuCount()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lnet/easyconn/ui/widget/EcFloatButton;->f(Z)V

    :cond_1
    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {p1}, Lf/a/i/m/g;->T(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    .line 3
    iget-boolean p1, p1, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    .line 5
    iget-boolean p1, p1, Lnet/easyconn/ui/widget/EcFloatButton;->p:Z

    if-nez p1, :cond_4

    :cond_3
    return v1

    .line 6
    :cond_4
    :goto_1
    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    invoke-static {p1}, Lf/a/i/m/g;->P(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v3, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    new-instance v4, Lf/a/i/i/x;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    mul-float v5, v5, p1

    float-to-int v5, v5

    iget v6, p0, Lf/a/k/l0/p3;->l:I

    sub-int/2addr v5, v6

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iget v0, p0, Lf/a/k/l0/p3;->m:I

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    invoke-direct {v4, v5, p1, p2, v2}, Lf/a/i/i/x;-><init>(IIII)V

    invoke-interface {v3, v4}, Lf/a/k/k0/c;->d0(Lf/a/i/i/x;)V

    return v1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_7

    iget v3, p0, Lf/a/k/l0/p3;->s:I

    if-ge v0, v3, :cond_6

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    new-instance v5, Lf/a/i/i/x;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    mul-float v6, v6, p1

    float-to-int v6, v6

    iget v7, p0, Lf/a/k/l0/p3;->l:I

    sub-int/2addr v6, v7

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    mul-float v7, v7, p1

    float-to-int v7, v7

    iget v8, p0, Lf/a/k/l0/p3;->m:I

    sub-int/2addr v7, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    invoke-direct {v5, v6, v7, v8, v3}, Lf/a/i/i/x;-><init>(IIII)V

    invoke-interface {v4, v5}, Lf/a/k/k0/c;->d0(Lf/a/i/i/x;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "hideKeyboard callback"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/k/l0/p3;->z:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf/a/k/l0/p3;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p2, "MirrorFragment surfaceChanged "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lf/a/k/l0/p3;->L()V

    invoke-virtual {p0}, Lf/a/k/l0/p3;->M()V

    invoke-virtual {p0}, Lf/a/k/l0/p3;->l0()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "MirrorFragment  surfaceCreated ."

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/k/l0/p3;->t:Z

    invoke-virtual {p0}, Lf/a/k/l0/p3;->L()V

    invoke-virtual {p0}, Lf/a/k/l0/p3;->M()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lf/a/k/l0/p3;->l0()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string p1, "MirrorFragment surfaceDestroyed "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/a/k/l0/p3;->t:Z

    .line 1
    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lf/a/k/l0/p3;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, p1}, Lnet/easyconn/ui/widget/EcFloatButton;->i(IIZ)V

    .line 2
    :cond_0
    iget-object p1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {p1}, Lf/a/k/k0/c;->p0()V

    .line 3
    iget-object p1, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    invoke-interface {p1}, Lf/a/i/o/a;->close()V

    :cond_1
    return-void
.end method

.method public u(Z)V
    .locals 6

    iput-boolean p1, p0, Lf/a/k/l0/p3;->y:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a/i/m/g;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lf/a/k/k0/c;->I()Z

    move-result v0

    iget-object v1, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v1}, Lf/a/k/k0/c;->l()Z

    move-result v1

    iget-object v2, p0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-interface {v2}, Lf/a/k/k0/c;->k0()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MirrorFragment setFloatMenuHomeVisibility visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isShowSystemHomeButton = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isShowYiJiaButton = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v3, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    .line 1
    iget-boolean v3, v3, Lnet/easyconn/ui/widget/EcFloatMenu;->i:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 2
    :goto_0
    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v4}, Lnet/easyconn/ui/widget/EcFloatMenu;->h(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v0}, Lnet/easyconn/ui/widget/EcFloatMenu;->g(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v2}, Lnet/easyconn/ui/widget/EcFloatMenu;->i(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    iget-boolean v0, p0, Lf/a/k/l0/p3;->w:Z

    invoke-virtual {p1, v0}, Lnet/easyconn/ui/widget/EcFloatButton;->l(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    new-instance v0, Lf/a/k/l0/e0;

    invoke-direct {v0, p0}, Lf/a/k/l0/e0;-><init>(Lf/a/k/l0/p3;)V

    goto/16 :goto_4

    :cond_3
    const-string v3, "MirrorFragment setFloatMenuHomeVisibility isShowSystemHomeButton = true"

    if-eqz p1, :cond_7

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    const-string p1, "MirrorFragment setFloatMenuHomeVisibility isShowYiJiaButton = true"

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v4}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustEcHome(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v5}, Lnet/easyconn/ui/widget/EcFloatMenu;->g(Z)V

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v4}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustSystemHome(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v5}, Lnet/easyconn/ui/widget/EcFloatMenu;->h(Z)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v5}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustEcHome(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v5}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustSystemHome(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v4}, Lnet/easyconn/ui/widget/EcFloatMenu;->h(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v4}, Lnet/easyconn/ui/widget/EcFloatMenu;->g(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v2}, Lnet/easyconn/ui/widget/EcFloatMenu;->i(Z)V

    :goto_1
    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    iget-boolean v0, p0, Lf/a/k/l0/p3;->w:Z

    invoke-virtual {p1, v0}, Lnet/easyconn/ui/widget/EcFloatButton;->l(Z)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v4}, Lnet/easyconn/ui/widget/EcFloatButton;->setJustSystemHome(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v5}, Lnet/easyconn/ui/widget/EcFloatMenu;->h(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->h:Lnet/easyconn/ui/widget/EcFloatMenu;

    invoke-virtual {p1, v5}, Lnet/easyconn/ui/widget/EcFloatMenu;->i(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    invoke-virtual {p1, v5}, Lnet/easyconn/ui/widget/EcFloatButton;->l(Z)V

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v4, 0x0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MirrorFragment setFloatMenuHomeVisibility showAssistantButton = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isShowMenu = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/a/k/l0/p3;->g:Lnet/easyconn/ui/widget/EcFloatButton;

    .line 3
    iget-boolean v0, v0, Lnet/easyconn/ui/widget/EcFloatButton;->p:Z

    .line 4
    invoke-static {p1, v0}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    new-instance v0, Lf/a/k/l0/t0;

    invoke-direct {v0, p0, v4}, Lf/a/k/l0/t0;-><init>(Lf/a/k/l0/p3;Z)V

    :goto_4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/p3;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/easyconn/EcApplication;->getInstance()Lnet/easyconn/EcApplication;

    move-result-object v0

    const v1, 0x7f0d00c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/easyconn/EcApplication;->showToast(II)V

    :cond_1
    return-void
.end method

.method public y(II)V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lf/a/k/l0/m0;

    invoke-direct {v1, p0, p1, p2}, Lf/a/k/l0/m0;-><init>(Lf/a/k/l0/p3;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
