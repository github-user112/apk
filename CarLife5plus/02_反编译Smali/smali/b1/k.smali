.class public final Lb1/k;
.super Landroid/view/View;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final f:[I

.field public static final g:[I


# instance fields
.field public a:Lb1/r;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Long;

.field public d:Landroidx/lifecycle/z;

.field public e:Lf9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100a7

    .line 2
    .line 3
    .line 4
    const v1, 0x101009e

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lb1/k;->f:[I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    sput-object v0, Lb1/k;->g:[I

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lb1/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lb1/k;->setRippleState$lambda$2(Lb1/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final setRippleState(Z)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lb1/k;->d:Landroidx/lifecycle/z;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroidx/lifecycle/z;->run()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lb1/k;->c:Ljava/lang/Long;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    :goto_0
    sub-long v2, v0, v2

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    const-wide/16 v4, 0x5

    .line 31
    .line 32
    cmp-long v6, v2, v4

    .line 33
    .line 34
    if-gez v6, :cond_2

    .line 35
    .line 36
    new-instance p1, Landroidx/lifecycle/z;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {p1, v2, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lb1/k;->d:Landroidx/lifecycle/z;

    .line 43
    .line 44
    const-wide/16 v2, 0x32

    .line 45
    .line 46
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    if-eqz p1, :cond_3

    .line 51
    .line 52
    sget-object p1, Lb1/k;->f:[I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    sget-object p1, Lb1/k;->g:[I

    .line 56
    .line 57
    :goto_1
    iget-object v2, p0, Lb1/k;->a:Lb1/r;

    .line 58
    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lb1/k;->c:Ljava/lang/Long;

    .line 70
    .line 71
    return-void
.end method

.method private static final setRippleState$lambda$2(Lb1/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/k;->a:Lb1/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lb1/k;->g:[I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lb1/k;->d:Landroidx/lifecycle/z;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Lb0/m;ZJIJFLf9/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/k;->a:Lb1/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lb1/k;->b:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lb1/r;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Lb1/r;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lb1/k;->a:Lb1/r;

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lb1/k;->b:Ljava/lang/Boolean;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lb1/k;->a:Lb1/r;

    .line 34
    .line 35
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p9, p0, Lb1/k;->e:Lf9/a;

    .line 39
    .line 40
    move p9, p8

    .line 41
    move-wide p7, p6

    .line 42
    move p6, p5

    .line 43
    move-wide p4, p3

    .line 44
    move-object p3, p0

    .line 45
    invoke-virtual/range {p3 .. p9}, Lb1/k;->e(JIJF)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    iget-wide p4, p1, Lb0/m;->a:J

    .line 51
    .line 52
    invoke-static {p4, p5}, Lx1/b;->d(J)F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget-wide p4, p1, Lb0/m;->a:J

    .line 57
    .line 58
    invoke-static {p4, p5}, Lx1/b;->e(J)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    int-to-float p1, p1

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    int-to-float p2, p2

    .line 84
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 85
    .line 86
    .line 87
    :goto_0
    const/4 p1, 0x1

    .line 88
    invoke-direct {p0, p1}, Lb1/k;->setRippleState(Z)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb1/k;->e:Lf9/a;

    .line 3
    .line 4
    iget-object v0, p0, Lb1/k;->d:Landroidx/lifecycle/z;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lb1/k;->d:Landroidx/lifecycle/z;

    .line 12
    .line 13
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/lifecycle/z;->run()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lb1/k;->a:Lb1/r;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Lb1/k;->g:[I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lb1/k;->a:Lb1/r;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lb1/k;->setRippleState(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lb1/k;->c()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(JIJF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb1/k;->a:Lb1/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, v0, Lb1/r;->c:Ljava/lang/Integer;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v1, p3, :cond_4

    .line 17
    .line 18
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lb1/r;->c:Ljava/lang/Integer;

    .line 23
    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v3, 0x17

    .line 27
    .line 28
    if-ge v1, v3, :cond_3

    .line 29
    .line 30
    :try_start_0
    sget-boolean v1, Lb1/r;->f:Z

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    sput-boolean v3, Lb1/r;->f:Z

    .line 36
    .line 37
    const-class v1, Landroid/graphics/drawable/RippleDrawable;

    .line 38
    .line 39
    const-string v4, "setMaxRadius"

    .line 40
    .line 41
    new-array v5, v3, [Ljava/lang/Class;

    .line 42
    .line 43
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    aput-object v6, v5, v2

    .line 46
    .line 47
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sput-object v1, Lb1/r;->e:Ljava/lang/reflect/Method;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    nop

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    sget-object v1, Lb1/r;->e:Ljava/lang/reflect/Method;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p3, v3, v2

    .line 67
    .line 68
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-static {v0, p3}, La7/a;->i(Landroid/graphics/drawable/RippleDrawable;I)V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v1, 0x1c

    .line 78
    .line 79
    if-ge p3, v1, :cond_5

    .line 80
    .line 81
    const/4 p3, 0x2

    .line 82
    int-to-float p3, p3

    .line 83
    mul-float p6, p6, p3

    .line 84
    .line 85
    :cond_5
    const/high16 p3, 0x3f800000    # 1.0f

    .line 86
    .line 87
    cmpl-float v1, p6, p3

    .line 88
    .line 89
    if-lez v1, :cond_6

    .line 90
    .line 91
    const/high16 p6, 0x3f800000    # 1.0f

    .line 92
    .line 93
    :cond_6
    invoke-static {p6, p4, p5}, Ly1/q;->b(FJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide p3

    .line 97
    iget-object p5, v0, Lb1/r;->b:Ly1/q;

    .line 98
    .line 99
    if-nez p5, :cond_7

    .line 100
    .line 101
    const/4 p5, 0x0

    .line 102
    goto :goto_3

    .line 103
    :cond_7
    iget-wide p5, p5, Ly1/q;->a:J

    .line 104
    .line 105
    invoke-static {p5, p6, p3, p4}, Ly1/q;->c(JJ)Z

    .line 106
    .line 107
    .line 108
    move-result p5

    .line 109
    :goto_3
    if-nez p5, :cond_8

    .line 110
    .line 111
    new-instance p5, Ly1/q;

    .line 112
    .line 113
    invoke-direct {p5, p3, p4}, Ly1/q;-><init>(J)V

    .line 114
    .line 115
    .line 116
    iput-object p5, v0, Lb1/r;->b:Ly1/q;

    .line 117
    .line 118
    invoke-static {p3, p4}, Ly1/h0;->C(J)I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 127
    .line 128
    .line 129
    :cond_8
    new-instance p3, Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-static {p1, p2}, Lx1/e;->d(J)F

    .line 132
    .line 133
    .line 134
    move-result p4

    .line 135
    invoke-static {p4}, Li9/a;->N(F)I

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    invoke-static {p1, p2}, Lx1/e;->b(J)F

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-static {p1}, Li9/a;->N(F)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-direct {p3, v2, v2, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    .line 149
    .line 150
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroid/view/View;->setLeft(I)V

    .line 153
    .line 154
    .line 155
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroid/view/View;->setTop(I)V

    .line 158
    .line 159
    .line 160
    iget p1, p3, Landroid/graphics/Rect;->right:I

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/view/View;->setRight(I)V

    .line 163
    .line 164
    .line 165
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb1/k;->e:Lf9/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final refreshDrawableState()V
    .locals 0

    .line 1
    return-void
.end method
