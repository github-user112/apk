.class public final Le4/t0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Le4/a1;

.field public final synthetic b:Le4/r1;

.field public final synthetic c:Le4/r1;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Le4/a1;Le4/r1;Le4/r1;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le4/t0;->a:Le4/a1;

    .line 5
    .line 6
    iput-object p2, p0, Le4/t0;->b:Le4/r1;

    .line 7
    .line 8
    iput-object p3, p0, Le4/t0;->c:Le4/r1;

    .line 9
    .line 10
    iput p4, p0, Le4/t0;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Le4/t0;->e:Landroid/view/View;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Le4/t0;->a:Le4/a1;

    .line 6
    .line 7
    iget-object v1, v0, Le4/a1;->a:Le4/z0;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Le4/z0;->e(F)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Le4/t0;->b:Le4/r1;

    .line 13
    .line 14
    iget-object v2, p1, Le4/r1;->a:Le4/n1;

    .line 15
    .line 16
    invoke-virtual {v1}, Le4/z0;->c()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v3, Le4/w0;->e:Landroid/view/animation/PathInterpolator;

    .line 21
    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v4, 0x22

    .line 25
    .line 26
    if-lt v3, v4, :cond_0

    .line 27
    .line 28
    new-instance v3, Le4/f1;

    .line 29
    .line 30
    invoke-direct {v3, p1}, Le4/f1;-><init>(Le4/r1;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 v4, 0x1e

    .line 35
    .line 36
    if-lt v3, v4, :cond_1

    .line 37
    .line 38
    new-instance v3, Le4/e1;

    .line 39
    .line 40
    invoke-direct {v3, p1}, Le4/e1;-><init>(Le4/r1;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v4, 0x1d

    .line 45
    .line 46
    if-lt v3, v4, :cond_2

    .line 47
    .line 48
    new-instance v3, Le4/d1;

    .line 49
    .line 50
    invoke-direct {v3, p1}, Le4/d1;-><init>(Le4/r1;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v3, Le4/c1;

    .line 55
    .line 56
    invoke-direct {v3, p1}, Le4/c1;-><init>(Le4/r1;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 p1, 0x1

    .line 60
    :goto_1
    const/16 v4, 0x200

    .line 61
    .line 62
    if-gt p1, v4, :cond_4

    .line 63
    .line 64
    iget v4, p0, Le4/t0;->d:I

    .line 65
    .line 66
    and-int/2addr v4, p1

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Le4/n1;->g(I)Lx3/b;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, p1, v4}, Le4/g1;->c(ILx3/b;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v2, p1}, Le4/n1;->g(I)Lx3/b;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget-object v5, p0, Le4/t0;->c:Le4/r1;

    .line 82
    .line 83
    iget-object v5, v5, Le4/r1;->a:Le4/n1;

    .line 84
    .line 85
    invoke-virtual {v5, p1}, Le4/n1;->g(I)Lx3/b;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget v6, v4, Lx3/b;->a:I

    .line 90
    .line 91
    iget v7, v5, Lx3/b;->a:I

    .line 92
    .line 93
    sub-int/2addr v6, v7

    .line 94
    int-to-float v6, v6

    .line 95
    const/high16 v7, 0x3f800000    # 1.0f

    .line 96
    .line 97
    sub-float/2addr v7, v1

    .line 98
    mul-float v6, v6, v7

    .line 99
    .line 100
    float-to-double v8, v6

    .line 101
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 102
    .line 103
    add-double/2addr v8, v10

    .line 104
    double-to-int v6, v8

    .line 105
    iget v8, v4, Lx3/b;->b:I

    .line 106
    .line 107
    iget v9, v5, Lx3/b;->b:I

    .line 108
    .line 109
    sub-int/2addr v8, v9

    .line 110
    int-to-float v8, v8

    .line 111
    mul-float v8, v8, v7

    .line 112
    .line 113
    float-to-double v8, v8

    .line 114
    add-double/2addr v8, v10

    .line 115
    double-to-int v8, v8

    .line 116
    iget v9, v4, Lx3/b;->c:I

    .line 117
    .line 118
    iget v12, v5, Lx3/b;->c:I

    .line 119
    .line 120
    sub-int/2addr v9, v12

    .line 121
    int-to-float v9, v9

    .line 122
    mul-float v9, v9, v7

    .line 123
    .line 124
    float-to-double v12, v9

    .line 125
    add-double/2addr v12, v10

    .line 126
    double-to-int v9, v12

    .line 127
    iget v12, v4, Lx3/b;->d:I

    .line 128
    .line 129
    iget v5, v5, Lx3/b;->d:I

    .line 130
    .line 131
    sub-int/2addr v12, v5

    .line 132
    int-to-float v5, v12

    .line 133
    mul-float v5, v5, v7

    .line 134
    .line 135
    float-to-double v12, v5

    .line 136
    add-double/2addr v12, v10

    .line 137
    double-to-int v5, v12

    .line 138
    invoke-static {v4, v6, v8, v9, v5}, Le4/r1;->a(Lx3/b;IIII)Lx3/b;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v3, p1, v4}, Le4/g1;->c(ILx3/b;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    shl-int/lit8 p1, p1, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {v3}, Le4/g1;->b()Le4/r1;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v1, p0, Le4/t0;->e:Landroid/view/View;

    .line 157
    .line 158
    invoke-static {v1, p1, v0}, Le4/w0;->h(Landroid/view/View;Le4/r1;Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
