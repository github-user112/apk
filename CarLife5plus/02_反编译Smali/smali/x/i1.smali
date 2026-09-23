.class public final Lx/i1;
.super Lx/g1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# virtual methods
.method public final a(JJ)V
    .locals 8

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lx/g1;->a:Landroid/widget/Magnifier;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/Magnifier;->setZoom(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-wide v0, 0x7fffffff7fffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr v0, p3

    .line 20
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v4, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/16 v6, 0x20

    .line 31
    .line 32
    cmp-long v7, v0, v2

    .line 33
    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lx/g1;->a:Landroid/widget/Magnifier;

    .line 37
    .line 38
    shr-long v1, p1, v6

    .line 39
    .line 40
    long-to-int v2, v1

    .line 41
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    and-long/2addr p1, v4

    .line 46
    long-to-int p2, p1

    .line 47
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    shr-long v2, p3, v6

    .line 52
    .line 53
    long-to-int p2, v2

    .line 54
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    and-long/2addr p3, v4

    .line 59
    long-to-int p4, p3

    .line 60
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/widget/Magnifier;->show(FFFF)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iget-object p3, p0, Lx/g1;->a:Landroid/widget/Magnifier;

    .line 69
    .line 70
    shr-long v0, p1, v6

    .line 71
    .line 72
    long-to-int p4, v0

    .line 73
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    and-long/2addr p1, v4

    .line 78
    long-to-int p2, p1

    .line 79
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p3, p4, p1}, Landroid/widget/Magnifier;->show(FF)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
