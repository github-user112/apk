.class public Lcom/huawei/hms/scankit/p/ue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hms/scankit/p/te;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:F

.field public final f:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(IIJJLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/scankit/p/ue;->a:I

    iput p2, p0, Lcom/huawei/hms/scankit/p/ue;->b:I

    iput-wide p3, p0, Lcom/huawei/hms/scankit/p/ue;->c:J

    iput-wide p5, p0, Lcom/huawei/hms/scankit/p/ue;->d:J

    sub-long/2addr p5, p3

    long-to-float p1, p5

    iput p1, p0, Lcom/huawei/hms/scankit/p/ue;->e:F

    iput-object p7, p0, Lcom/huawei/hms/scankit/p/ue;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/p/qe;)I
    .locals 2

    iget v0, p0, Lcom/huawei/hms/scankit/p/ue;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/qe;->e()I

    move-result v0

    :cond_0
    return v0
.end method

.method private b(Lcom/huawei/hms/scankit/p/qe;)I
    .locals 2

    iget v0, p0, Lcom/huawei/hms/scankit/p/ue;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/qe;->a()I

    move-result v0

    :cond_0
    return v0
.end method

.method private c(Lcom/huawei/hms/scankit/p/qe;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/ue;->a(Lcom/huawei/hms/scankit/p/qe;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/ue;->b(Lcom/huawei/hms/scankit/p/qe;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/p/qe;J)V
    .locals 3

    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/ue;->c:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/ue;->d:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    iget v0, p0, Lcom/huawei/hms/scankit/p/ue;->e:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ue;->f:Landroid/view/animation/Interpolator;

    iget-wide v1, p0, Lcom/huawei/hms/scankit/p/ue;->c:J

    sub-long/2addr p2, v1

    long-to-float p2, p2

    iget p3, p0, Lcom/huawei/hms/scankit/p/ue;->e:F

    div-float/2addr p2, p3

    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/ue;->b(Lcom/huawei/hms/scankit/p/qe;)I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/ue;->c(Lcom/huawei/hms/scankit/p/qe;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    add-float/2addr v0, p3

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/qe;->a(I)V

    :cond_0
    return-void
.end method
