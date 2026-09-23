.class public Lf/a/k/l0/l3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lf/a/k/l0/p3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/p3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/l3;->a:Lf/a/k/l0/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    const-string v0, "MirrorFragment onEditorAction->actionId:"

    const-string v1, ",KeyCode:"

    invoke-static {v0, p2, v1}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/k/l0/l3;->a:Lf/a/k/l0/p3;

    iget-object v0, v0, Lf/a/k/l0/p3;->C:Lf/a/k/k0/c;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lf/a/k/k0/c;->o0(II)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lf/a/k/l0/l3;->a:Lf/a/k/l0/p3;

    const/4 p3, 0x1

    .line 1
    iput-boolean p3, p2, Lf/a/k/l0/p3;->v:Z

    :cond_1
    return p1
.end method
