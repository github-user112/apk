.class public abstract Ly1/j0;
.super Ly1/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Lv/a1;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Ly1/j0;->b:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(FJLd7/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/j0;->a:Lv/a1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Ly1/j0;->b:J

    .line 7
    .line 8
    invoke-static {v2, v3, p2, p3}, Lx1/e;->a(JJ)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    :cond_0
    invoke-static {p2, p3}, Lx1/e;->e(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-object v1, p0, Ly1/j0;->a:Lv/a1;

    .line 21
    .line 22
    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide p2, p0, Ly1/j0;->b:J

    .line 28
    .line 29
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Ly1/j0;->a:Lv/a1;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Lv/a1;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Ly1/j0;->a:Lv/a1;

    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0, p2, p3}, Ly1/j0;->b(J)Landroid/graphics/Shader;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 47
    .line 48
    iput-object v0, p0, Ly1/j0;->a:Lv/a1;

    .line 49
    .line 50
    iput-wide p2, p0, Ly1/j0;->b:J

    .line 51
    .line 52
    :cond_3
    :goto_0
    iget-object p2, p4, Ld7/q;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-static {p2}, Ly1/h0;->c(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide p2

    .line 64
    sget-wide v2, Ly1/q;->b:J

    .line 65
    .line 66
    invoke-static {p2, p3, v2, v3}, Ly1/q;->c(JJ)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_4

    .line 71
    .line 72
    invoke-virtual {p4, v2, v3}, Ld7/q;->k(J)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object p2, p4, Ld7/q;->d:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p2, Landroid/graphics/Shader;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object p3, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p3, Landroid/graphics/Shader;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move-object p3, v1

    .line 87
    :goto_1
    invoke-static {p2, p3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_7

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    iget-object p2, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v1, p2

    .line 98
    check-cast v1, Landroid/graphics/Shader;

    .line 99
    .line 100
    :cond_6
    invoke-virtual {p4, v1}, Ld7/q;->n(Landroid/graphics/Shader;)V

    .line 101
    .line 102
    .line 103
    :cond_7
    iget-object p2, p4, Ld7/q;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p2, Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    int-to-float p2, p2

    .line 112
    const/high16 p3, 0x437f0000    # 255.0f

    .line 113
    .line 114
    div-float/2addr p2, p3

    .line 115
    cmpg-float p2, p2, p1

    .line 116
    .line 117
    if-nez p2, :cond_8

    .line 118
    .line 119
    return-void

    .line 120
    :cond_8
    invoke-virtual {p4, p1}, Ld7/q;->i(F)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public abstract b(J)Landroid/graphics/Shader;
.end method
