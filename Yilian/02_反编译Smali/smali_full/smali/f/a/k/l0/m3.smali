.class public Lf/a/k/l0/m3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lf/a/k/l0/p3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/p3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/m3;->a:Lf/a/k/l0/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lf/a/k/l0/m3;->a:Lf/a/k/l0/p3;

    iget-object v1, v1, Lf/a/k/l0/p3;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v1, "MirrorFragment visibleHeight = "

    invoke-static {v1, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object v1, p0, Lf/a/k/l0/m3;->a:Lf/a/k/l0/p3;

    iget v2, v1, Lf/a/k/l0/p3;->u:I

    if-nez v2, :cond_0

    iput v0, v1, Lf/a/k/l0/p3;->u:I

    return-void

    :cond_0
    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    sub-int v3, v2, v0

    const/4 v4, 0x0

    const/16 v5, 0xc8

    if-le v3, v5, :cond_3

    sub-int/2addr v2, v0

    if-eqz v1, :cond_2

    const-string v1, "MirrorFragment keyBoardShow height = "

    .line 1
    invoke-static {v1, v2}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    .line 2
    iget-object v1, p0, Lf/a/k/l0/m3;->a:Lf/a/k/l0/p3;

    iput v0, v1, Lf/a/k/l0/p3;->u:I

    return-void

    .line 3
    :cond_2
    throw v4

    :cond_3
    sub-int v3, v0, v2

    if-le v3, v5, :cond_8

    sub-int v2, v0, v2

    if-eqz v1, :cond_7

    const-string v3, "MirrorFragment keyBoardHide height = "

    const-string v4, ", hideBecauseKeycodeEnter = "

    .line 4
    invoke-static {v3, v2, v4}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lf/a/k/l0/p3;->v:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " presenter\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Le/a/c/a/a;->C(Ljava/lang/StringBuilder;Z)V

    iget-object v2, v1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    :cond_5
    iget-boolean v2, v1, Lf/a/k/l0/p3;->v:Z

    if-nez v2, :cond_6

    iget-object v1, v1, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    const/4 v2, 0x4

    invoke-interface {v1, v4, v2}, Lf/a/k/k0/c;->o0(II)V

    goto :goto_1

    :cond_6
    iput-boolean v4, v1, Lf/a/k/l0/p3;->v:Z

    .line 5
    :goto_1
    iget-object v1, p0, Lf/a/k/l0/m3;->a:Lf/a/k/l0/p3;

    iput v0, v1, Lf/a/k/l0/p3;->u:I

    goto :goto_2

    .line 6
    :cond_7
    throw v4

    :cond_8
    :goto_2
    return-void
.end method
