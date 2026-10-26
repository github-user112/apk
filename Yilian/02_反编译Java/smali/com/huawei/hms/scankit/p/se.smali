.class public Lcom/huawei/hms/scankit/p/se;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/scankit/p/qe;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/scankit/p/qe;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:J

.field public f:Z

.field public g:F

.field public h:[I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Landroid/graphics/Path;

.field public p:Landroid/graphics/PathMeasure;

.field public q:Lcom/huawei/hms/scankit/p/ve;

.field public r:Lcom/huawei/hms/scankit/p/xe;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/se;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/se;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/se;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/se;->n:Z

    new-instance v0, Lcom/huawei/hms/scankit/p/ve;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ve;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/se;->q:Lcom/huawei/hms/scankit/p/ve;

    new-instance v0, Lcom/huawei/hms/scankit/p/xe;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/xe;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/se;->r:Lcom/huawei/hms/scankit/p/xe;

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/scankit/p/se;->a(IJ)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/se;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(II)I
    .locals 0

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    sub-int/2addr p2, p1

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/ze;->a(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    :cond_1
    sub-int/2addr p1, p2

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/ze;->a(I)I

    move-result p1

    add-int/2addr p1, p2

    return p1
.end method

.method private a(I)V
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/se;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/huawei/hms/scankit/p/se;->i:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/huawei/hms/scankit/p/se;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/se;->f:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(IJ)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/se;->h:[I

    iput p1, p0, Lcom/huawei/hms/scankit/p/se;->d:I

    iput-wide p2, p0, Lcom/huawei/hms/scankit/p/se;->e:J

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/huawei/hms/scankit/p/se;->d:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/se;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/huawei/hms/scankit/p/qe;

    invoke-direct {v2, p1}, Lcom/huawei/hms/scankit/p/qe;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/se;->h:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/hms/scankit/p/se;->k:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/huawei/hms/scankit/p/se;->j:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/se;->h:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/hms/scankit/p/se;->m:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/huawei/hms/scankit/p/se;->l:I

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/p/te;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/se;->q:Lcom/huawei/hms/scankit/p/ve;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hms/scankit/p/ve;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ve;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/se;->q:Lcom/huawei/hms/scankit/p/ve;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/se;->q:Lcom/huawei/hms/scankit/p/ve;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/ve;->a(Lcom/huawei/hms/scankit/p/te;)V

    return-void
.end method

.method private a(Lcom/huawei/hms/scankit/p/we;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/se;->r:Lcom/huawei/hms/scankit/p/xe;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hms/scankit/p/xe;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/xe;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/se;->r:Lcom/huawei/hms/scankit/p/xe;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/se;->r:Lcom/huawei/hms/scankit/p/xe;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/xe;->a(Lcom/huawei/hms/scankit/p/we;)V

    return-void
.end method

.method private b(J)V
    .locals 11

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/se;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/qe;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/se;->r:Lcom/huawei/hms/scankit/p/xe;

    invoke-virtual {v2, v0}, Lcom/huawei/hms/scankit/p/xe;->a(Lcom/huawei/hms/scankit/p/qe;)V

    iget-boolean v2, p0, Lcom/huawei/hms/scankit/p/se;->n:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/se;->p:Landroid/graphics/PathMeasure;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/huawei/hms/scankit/p/se;->b(FF)[F

    move-result-object v2

    aget v1, v2, v1

    float-to-int v1, v1

    aget v2, v2, v10

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/huawei/hms/scankit/p/se;->k:I

    iget v2, p0, Lcom/huawei/hms/scankit/p/se;->j:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/hms/scankit/p/se;->a(II)I

    move-result v1

    iget v2, p0, Lcom/huawei/hms/scankit/p/se;->m:I

    iget v3, p0, Lcom/huawei/hms/scankit/p/se;->l:I

    invoke-direct {p0, v2, v3}, Lcom/huawei/hms/scankit/p/se;->a(II)I

    move-result v2

    :goto_0
    iget-wide v3, p0, Lcom/huawei/hms/scankit/p/se;->e:J

    int-to-float v5, v1

    int-to-float v6, v2

    iget-object v9, p0, Lcom/huawei/hms/scankit/p/se;->q:Lcom/huawei/hms/scankit/p/ve;

    move-object v2, v0

    move-wide v7, p1

    invoke-virtual/range {v2 .. v9}, Lcom/huawei/hms/scankit/p/qe;->a(JFFJLcom/huawei/hms/scankit/p/te;)V

    sget-object p1, Lcom/huawei/hms/scankit/p/se;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/se;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/huawei/hms/scankit/p/se;->i:I

    add-int/2addr p2, v10

    iput p2, p0, Lcom/huawei/hms/scankit/p/se;->i:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private b(FF)[F
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    sub-float/2addr p2, p1

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/ze;->a(F)F

    move-result p2

    add-float/2addr p2, p1

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/ze;->a(F)F

    move-result p1

    add-float/2addr p2, p1

    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/se;->p:Landroid/graphics/PathMeasure;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/se;->o:Landroid/graphics/Path;

    invoke-direct {p1, v1, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/se;->p:Landroid/graphics/PathMeasure;

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/se;->p:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 p2, 0x0

    aget v1, p1, p2

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/se;->h:[I

    aget v3, v2, p2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    aput v1, p1, p2

    aget p2, p1, v0

    aget v1, v2, v0

    int-to-float v1, v1

    sub-float/2addr p2, v1

    aput p2, p1, v0

    return-object p1
.end method

.method private c()V
    .locals 3

    sget-object v0, Lcom/huawei/hms/scankit/p/se;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/se;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/se;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(FF)Lcom/huawei/hms/scankit/p/se;
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/ye;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hms/scankit/p/ye;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/se;->a(Lcom/huawei/hms/scankit/p/we;)V

    return-object p0
.end method

.method public a(IIJJLandroid/view/animation/Interpolator;)Lcom/huawei/hms/scankit/p/se;
    .locals 10

    move-object v0, p0

    new-instance v9, Lcom/huawei/hms/scankit/p/ue;

    move-object v1, v9

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/huawei/hms/scankit/p/ue;-><init>(IIJJLandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v9}, Lcom/huawei/hms/scankit/p/se;->a(Lcom/huawei/hms/scankit/p/te;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/se;->c()V

    return-void
.end method

.method public a(J)V
    .locals 5

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/se;->f:Z

    iget v1, p0, Lcom/huawei/hms/scankit/p/se;->g:F

    long-to-float v2, p1

    mul-float v1, v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/huawei/hms/scankit/p/se;->a:Ljava/lang/Object;

    monitor-enter v3

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/huawei/hms/scankit/p/se;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/huawei/hms/scankit/p/se;->i:I

    int-to-float v4, v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/se;->b(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/se;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/qe;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/hms/scankit/p/qe;->a(J)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/se;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/se;->a(Landroid/graphics/Rect;)V

    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/se;->a(I)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/qe;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/huawei/hms/scankit/p/se;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/se;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
