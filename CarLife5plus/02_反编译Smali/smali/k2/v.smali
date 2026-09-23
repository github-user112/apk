.class public abstract Lk2/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lk2/a;

.field public static final b:Lk2/a;

.field public static final c:[Ljava/lang/StackTraceElement;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk2/a;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lk2/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lk2/v;->a:Lk2/a;

    .line 9
    .line 10
    new-instance v0, Lk2/a;

    .line 11
    .line 12
    const/16 v1, 0x3ef

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lk2/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lk2/a;

    .line 18
    .line 19
    const/16 v1, 0x3f0

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lk2/a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lk2/v;->b:Lk2/a;

    .line 25
    .line 26
    new-instance v0, Lk2/a;

    .line 27
    .line 28
    const/16 v1, 0x3ea

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lk2/a;-><init>(I)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 35
    .line 36
    sput-object v0, Lk2/v;->c:[Ljava/lang/StackTraceElement;

    .line 37
    .line 38
    return-void
.end method

.method public static final a(Lk2/w;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk2/w;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lk2/w;->d:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static final b(Lk2/w;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk2/w;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lk2/w;->h:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lk2/w;->d:Z

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static final c(Lk2/w;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk2/w;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lk2/w;->d:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static final d(JJ)Z
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static final e(Lk2/w;JJ)Z
    .locals 10

    .line 1
    iget v0, p0, Lk2/w;->i:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-wide v3, p0, Lk2/w;->c:J

    .line 11
    .line 12
    const/16 p0, 0x20

    .line 13
    .line 14
    shr-long v5, v3, p0

    .line 15
    .line 16
    long-to-int v6, v5

    .line 17
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const-wide v6, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v3, v6

    .line 27
    long-to-int v4, v3

    .line 28
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    shr-long v8, p3, p0

    .line 33
    .line 34
    long-to-int v4, v8

    .line 35
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-float v0, v0

    .line 40
    mul-float v4, v4, v0

    .line 41
    .line 42
    shr-long v8, p1, p0

    .line 43
    .line 44
    long-to-int p0, v8

    .line 45
    int-to-float p0, p0

    .line 46
    add-float/2addr p0, v4

    .line 47
    and-long/2addr p3, v6

    .line 48
    long-to-int p4, p3

    .line 49
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    mul-float p3, p3, v0

    .line 54
    .line 55
    and-long/2addr p1, v6

    .line 56
    long-to-int p2, p1

    .line 57
    int-to-float p1, p2

    .line 58
    add-float/2addr p1, p3

    .line 59
    neg-float p2, v4

    .line 60
    cmpg-float p2, v5, p2

    .line 61
    .line 62
    if-gez p2, :cond_1

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 p2, 0x0

    .line 67
    :goto_1
    cmpl-float p0, v5, p0

    .line 68
    .line 69
    if-lez p0, :cond_2

    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const/4 p0, 0x0

    .line 74
    :goto_2
    or-int/2addr p0, p2

    .line 75
    neg-float p2, p3

    .line 76
    cmpg-float p2, v3, p2

    .line 77
    .line 78
    if-gez p2, :cond_3

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/4 p2, 0x0

    .line 83
    :goto_3
    or-int/2addr p0, p2

    .line 84
    cmpl-float p1, v3, p1

    .line 85
    .line 86
    if-lez p1, :cond_4

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    :cond_4
    or-int/2addr p0, v1

    .line 90
    return p0
.end method

.method public static final f(Lk2/w;Z)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lk2/w;->g:J

    .line 2
    .line 3
    iget-wide v2, p0, Lk2/w;->c:J

    .line 4
    .line 5
    invoke-static {v2, v3, v0, v1}, Lx1/b;->g(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lk2/w;->b()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-wide/16 p0, 0x0

    .line 18
    .line 19
    return-wide p0

    .line 20
    :cond_0
    return-wide v0
.end method

.method public static final g(Lk2/o;JLf9/k;Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lk2/o;->b:Lk2/i;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lk2/i;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/support/v4/media/session/t;

    .line 8
    .line 9
    iget-object p0, p0, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/view/MotionEvent;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz p4, :cond_1

    .line 22
    .line 23
    const/4 p4, 0x3

    .line 24
    invoke-virtual {p0, p4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/16 p4, 0x20

    .line 28
    .line 29
    shr-long v1, p1, p4

    .line 30
    .line 31
    long-to-int p4, v1

    .line 32
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    neg-float v1, v1

    .line 37
    const-wide v2, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    and-long/2addr p1, v2

    .line 43
    long-to-int p2, p1

    .line 44
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    neg-float p1, p1

    .line 49
    invoke-virtual {p0, v1, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p3, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p1, "The PointerEvent receiver cannot have a null MotionEvent."

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method
