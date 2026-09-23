.class public final Le3/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Le3/g;->a:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .line 1
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 2
    .line 3
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 4
    .line 5
    sub-int/2addr p1, p2

    .line 6
    if-gtz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget p2, p0, Le3/g;->a:F

    .line 10
    .line 11
    float-to-double p2, p2

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide p2

    .line 16
    double-to-float p2, p2

    .line 17
    float-to-int p2, p2

    .line 18
    int-to-float p3, p2

    .line 19
    const/high16 p4, 0x3f800000    # 1.0f

    .line 20
    .line 21
    mul-float p3, p3, p4

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    div-float/2addr p3, p1

    .line 25
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 26
    .line 27
    int-to-double p4, p1

    .line 28
    float-to-double v0, p3

    .line 29
    mul-double p4, p4, v0

    .line 30
    .line 31
    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide p3

    .line 35
    double-to-int p1, p3

    .line 36
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 37
    .line 38
    sub-int/2addr p1, p2

    .line 39
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 40
    .line 41
    return-void
.end method
