.class public final La/a/a/a/m/l/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/m/h;
.implements La/a/a/a/i;


# instance fields
.field public final b:La/a/a/a/c;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:Landroid/graphics/Point;

.field public final i:Landroid/view/MotionEvent$PointerCoords;


# direct methods
.method public constructor <init>(La/a/a/a/c;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/l/a;->b:La/a/a/a/c;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, La/a/a/a/m/l/a;->h:Landroid/graphics/Point;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput-object v0, p0, La/a/a/a/m/l/a;->i:Landroid/view/MotionEvent$PointerCoords;

    check-cast p1, La/a/a/a/a/e;

    invoke-virtual {p1, p0}, La/a/a/a/a/e;->j(La/a/a/a/i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, La/a/a/a/m/l/a;->b:La/a/a/a/c;

    const-string v1, "MULTI_TOUCH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, La/a/a/a/c;->B0(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, La/a/a/a/m/l/a;->g:I

    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, La/a/a/a/m/l/a;->c:I

    iput p2, p0, La/a/a/a/m/l/a;->d:I

    return-void
.end method

.method public final c(I)I
    .locals 3

    iget v0, p0, La/a/a/a/m/l/a;->c:I

    if-eqz v0, :cond_1

    iget v1, p0, La/a/a/a/m/l/a;->d:I

    if-eqz v1, :cond_1

    iget v1, p0, La/a/a/a/m/l/a;->e:I

    if-eqz v1, :cond_1

    iget v2, p0, La/a/a/a/m/l/a;->f:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int p1, p1, v0

    div-int/2addr p1, v1

    :cond_1
    :goto_0
    return p1
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, La/a/a/a/m/l/a;->c:I

    if-eqz v0, :cond_1

    iget v0, p0, La/a/a/a/m/l/a;->d:I

    if-eqz v0, :cond_1

    iget v1, p0, La/a/a/a/m/l/a;->e:I

    if-eqz v1, :cond_1

    iget v1, p0, La/a/a/a/m/l/a;->f:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int p1, p1, v0

    div-int/2addr p1, v1

    :cond_1
    :goto_0
    return p1
.end method
