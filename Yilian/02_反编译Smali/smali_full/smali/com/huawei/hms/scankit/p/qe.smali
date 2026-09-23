.class public Lcom/huawei/hms/scankit/p/qe;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:F

.field public f:F

.field public g:I

.field public h:J

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:I

.field public o:I

.field public p:J

.field public q:I

.field public r:Lcom/huawei/hms/scankit/p/te;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->a:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->d:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->e:F

    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->f:F

    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->q:I

    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/huawei/hms/scankit/p/qe;->n:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->o:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->a:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->g:I

    return-void
.end method

.method public a(JFFJLcom/huawei/hms/scankit/p/te;)V
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->n:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/huawei/hms/scankit/p/qe;->l:F

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->o:I

    int-to-float v0, v0

    sub-float/2addr p4, v0

    iput p4, p0, Lcom/huawei/hms/scankit/p/qe;->m:F

    iput p3, p0, Lcom/huawei/hms/scankit/p/qe;->i:F

    iput p4, p0, Lcom/huawei/hms/scankit/p/qe;->j:F

    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/qe;->p:J

    iput-wide p5, p0, Lcom/huawei/hms/scankit/p/qe;->h:J

    iput-object p7, p0, Lcom/huawei/hms/scankit/p/qe;->r:Lcom/huawei/hms/scankit/p/te;

    return-void
.end method

.method public a(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/qe;->h:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/qe;->p:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    mul-long v0, p1, p1

    iget v2, p0, Lcom/huawei/hms/scankit/p/qe;->l:F

    iget v3, p0, Lcom/huawei/hms/scankit/p/qe;->e:F

    long-to-float v4, p1

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    iget v2, p0, Lcom/huawei/hms/scankit/p/qe;->b:F

    long-to-float v0, v0

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/huawei/hms/scankit/p/qe;->i:F

    iget v1, p0, Lcom/huawei/hms/scankit/p/qe;->m:F

    iget v2, p0, Lcom/huawei/hms/scankit/p/qe;->f:F

    mul-float v2, v2, v4

    add-float/2addr v2, v1

    iget v1, p0, Lcom/huawei/hms/scankit/p/qe;->c:F

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/huawei/hms/scankit/p/qe;->j:F

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/qe;->r:Lcom/huawei/hms/scankit/p/te;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/te;->a(Lcom/huawei/hms/scankit/p/qe;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->q:I

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/qe;->q:I

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->i:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->j:F

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->d:I

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/qe;->k:F

    return v0
.end method
