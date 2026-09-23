.class public Lcom/huawei/hms/scankit/p/ob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/huawei/hms/scankit/p/ob;",
        ">;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Lcom/huawei/hms/scankit/p/_a;

.field public m:[F

.field public n:F

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:F


# direct methods
.method public constructor <init>(ZFFFFFFFFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ob;->m:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->n:F

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->o:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->p:I

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->q:I

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->r:I

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->s:I

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->t:I

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->u:I

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->v:F

    iput p2, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    iput p3, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    iput p4, p0, Lcom/huawei/hms/scankit/p/ob;->c:F

    iput p5, p0, Lcom/huawei/hms/scankit/p/ob;->d:F

    iput p6, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    iput p7, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    iput p11, p0, Lcom/huawei/hms/scankit/p/ob;->k:F

    if-eqz p1, :cond_0

    iput p8, p0, Lcom/huawei/hms/scankit/p/ob;->g:F

    iput p9, p0, Lcom/huawei/hms/scankit/p/ob;->h:F

    iput p10, p0, Lcom/huawei/hms/scankit/p/ob;->j:F

    goto :goto_0

    :cond_0
    iput p10, p0, Lcom/huawei/hms/scankit/p/ob;->i:F

    iput p9, p0, Lcom/huawei/hms/scankit/p/ob;->j:F

    :goto_0
    return-void
.end method

.method private a(FII)F
    .locals 1

    int-to-float p2, p2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    add-int/lit8 p3, p3, -0x1

    int-to-float p2, p3

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    return p1
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->o:F

    return v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/ob;)I
    .locals 2

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result p1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ob;->h()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public a(FF)V
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    iget p1, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    return-void
.end method

.method public a(IIFF)V
    .locals 3

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    iget v1, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    add-float/2addr v1, p4

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/huawei/hms/scankit/p/ob;->c:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/huawei/hms/scankit/p/ob;->c:F

    :cond_0
    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/huawei/hms/scankit/p/ob;->d:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->d:F

    :cond_1
    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/hms/scankit/p/ob;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/hms/scankit/p/ob;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    invoke-direct {p0, v0, v1, p2}, Lcom/huawei/hms/scankit/p/ob;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    invoke-direct {p0, v0, v1, p2}, Lcom/huawei/hms/scankit/p/ob;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    iget v1, p0, Lcom/huawei/hms/scankit/p/ob;->c:F

    add-float/2addr v1, v0

    int-to-float p1, p1

    sub-float/2addr p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, p1

    if-ltz v1, :cond_2

    sub-float/2addr p1, p3

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/huawei/hms/scankit/p/ob;->c:F

    :cond_2
    iget p1, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->d:F

    add-float/2addr v0, p1

    int-to-float p2, p2

    sub-float/2addr p2, p4

    cmpl-float p4, v0, p2

    if-ltz p4, :cond_3

    sub-float/2addr p2, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/huawei/hms/scankit/p/ob;->d:F

    :cond_3
    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->n:F

    return v0
.end method

.method public b(FF)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    iput p1, p0, Lcom/huawei/hms/scankit/p/ob;->c:F

    iput p2, p0, Lcom/huawei/hms/scankit/p/ob;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p1, v1

    iput v2, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    div-float v1, p2, v1

    iput v1, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    iput p1, p0, Lcom/huawei/hms/scankit/p/ob;->g:F

    iput p2, p0, Lcom/huawei/hms/scankit/p/ob;->h:F

    iput v0, p0, Lcom/huawei/hms/scankit/p/ob;->j:F

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->d:F

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/huawei/hms/scankit/p/ob;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/ob;->a(Lcom/huawei/hms/scankit/p/ob;)I

    move-result p1

    return p1
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->a:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->b:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->c:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->k:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->i:F

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->j:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->e:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->f:F

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->h:F

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->g:F

    return v0
.end method

.method public n()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/ob;->v:F

    return v0
.end method
