.class public final Lcom/huawei/hms/scankit/p/rc;
.super Lcom/huawei/hms/scankit/aiscan/common/z;
.source ""


# instance fields
.field public final e:F

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(FFFZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZI)V

    return-void
.end method

.method public constructor <init>(FFFZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FFI)V

    iput p3, p0, Lcom/huawei/hms/scankit/p/rc;->e:F

    iput p5, p0, Lcom/huawei/hms/scankit/p/rc;->f:I

    iput-boolean p4, p0, Lcom/huawei/hms/scankit/p/rc;->g:Z

    return-void
.end method


# virtual methods
.method public a(FFFZ)Lcom/huawei/hms/scankit/p/rc;
    .locals 7

    iget v0, p0, Lcom/huawei/hms/scankit/p/rc;->f:I

    add-int/lit8 v6, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    mul-float v1, v1, v0

    add-float/2addr v1, p2

    int-to-float p2, v6

    div-float v2, v1, p2

    iget v0, p0, Lcom/huawei/hms/scankit/p/rc;->f:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v1

    mul-float v1, v1, v0

    add-float/2addr v1, p1

    div-float v3, v1, p2

    iget p1, p0, Lcom/huawei/hms/scankit/p/rc;->f:I

    int-to-float p1, p1

    iget v0, p0, Lcom/huawei/hms/scankit/p/rc;->e:F

    mul-float p1, p1, v0

    add-float/2addr p1, p3

    div-float v4, p1, p2

    iget-boolean p1, p0, Lcom/huawei/hms/scankit/p/rc;->g:Z

    if-eqz p1, :cond_0

    move v5, p4

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    new-instance p1, Lcom/huawei/hms/scankit/p/rc;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZI)V

    return-object p1
.end method

.method public a(FFF)Z
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result p2

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_1

    iget p2, p0, Lcom/huawei/hms/scankit/p/rc;->e:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_0

    iget p2, p0, Lcom/huawei/hms/scankit/p/rc;->e:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/rc;->g:Z

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/rc;->e:F

    return v0
.end method
