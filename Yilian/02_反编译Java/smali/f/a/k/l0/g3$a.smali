.class public Lf/a/k/l0/g3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/k/l0/g3;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public final synthetic g:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic h:Landroid/view/WindowManager;

.field public final synthetic i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lf/a/k/l0/g3;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lf/a/k/l0/g3$a;->g:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lf/a/k/l0/g3$a;->h:Landroid/view/WindowManager;

    iput-object p4, p0, Lf/a/k/l0/g3$a;->i:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lf/a/k/l0/g3$a;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lf/a/k/l0/g3$a;->d:F

    iget p2, p0, Lf/a/k/l0/g3$a;->c:F

    iget v0, p0, Lf/a/k/l0/g3$a;->a:F

    sub-float/2addr p2, v0

    iput p2, p0, Lf/a/k/l0/g3$a;->e:F

    iget v0, p0, Lf/a/k/l0/g3$a;->b:F

    sub-float/2addr p1, v0

    iput p1, p0, Lf/a/k/l0/g3$a;->f:F

    iget-object v0, p0, Lf/a/k/l0/g3$a;->g:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lf/a/k/l0/g3$a;->h:Landroid/view/WindowManager;

    iget-object p2, p0, Lf/a/k/l0/g3$a;->i:Landroid/view/View;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lf/a/k/l0/g3$a;->c:F

    iput p1, p0, Lf/a/k/l0/g3$a;->a:F

    iget p1, p0, Lf/a/k/l0/g3$a;->d:F

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lf/a/k/l0/g3$a;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    :goto_0
    iput p1, p0, Lf/a/k/l0/g3$a;->b:F

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
