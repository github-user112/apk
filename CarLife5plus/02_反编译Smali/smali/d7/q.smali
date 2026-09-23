.class public final Ld7/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ld7/l;


# static fields
.field public static f:Ld7/q;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld7/q;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ld7/q;->b:I

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld7/q;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld7/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Ld7/q;->a:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7/q;->c:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 12
    iput p1, p0, Ld7/q;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ld7/q;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Ld7/q;->b:I

    .line 15
    iput-object p1, p0, Ld7/q;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/a;Lf6/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ld7/q;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 7
    iget p1, p1, Lf6/a;->b:I

    .line 8
    iput p1, p0, Ld7/q;->b:I

    .line 9
    iput-object p2, p0, Ld7/q;->e:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    .line 10
    new-array p1, p1, [Lu0/j;

    iput-object p1, p0, Ld7/q;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lu0/j;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    check-cast p1, Lf6/e;

    .line 4
    .line 5
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lf6/a;

    .line 8
    .line 9
    iget-object v1, p1, Lu0/j;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [Lf6/a;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v2, :cond_1

    .line 17
    .line 18
    aget-object v5, v1, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, Lf6/a;->b()V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1, v1, v0}, Lf6/e;->Q([Lf6/a;Lf6/a;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lf6/c;

    .line 34
    .line 35
    iget-boolean v4, p1, Lf6/e;->d:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget-object v5, v2, Lf6/c;->b:Lm5/o;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v5, v2, Lf6/c;->d:Lm5/o;

    .line 43
    .line 44
    :goto_1
    if-eqz v4, :cond_3

    .line 45
    .line 46
    iget-object v2, v2, Lf6/c;->c:Lm5/o;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-object v2, v2, Lf6/c;->e:Lm5/o;

    .line 50
    .line 51
    :goto_2
    iget v4, v5, Lm5/o;->b:F

    .line 52
    .line 53
    float-to-int v4, v4

    .line 54
    invoke-virtual {p1, v4}, Lu0/j;->v(I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget v2, v2, Lm5/o;->b:F

    .line 59
    .line 60
    float-to-int v2, v2

    .line 61
    invoke-virtual {p1, v2}, Lu0/j;->v(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v2, 0x1

    .line 66
    const/4 v5, -0x1

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x1

    .line 69
    :goto_3
    if-ge v4, p1, :cond_e

    .line 70
    .line 71
    aget-object v8, v1, v4

    .line 72
    .line 73
    if-eqz v8, :cond_d

    .line 74
    .line 75
    iget v9, v8, Lf6/a;->f:I

    .line 76
    .line 77
    sub-int v10, v9, v5

    .line 78
    .line 79
    if-nez v10, :cond_4

    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_9

    .line 84
    :cond_4
    if-ne v10, v2, :cond_5

    .line 85
    .line 86
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iget v5, v8, Lf6/a;->f:I

    .line 91
    .line 92
    :goto_4
    const/4 v6, 0x1

    .line 93
    goto :goto_9

    .line 94
    :cond_5
    const/4 v11, 0x0

    .line 95
    if-ltz v10, :cond_c

    .line 96
    .line 97
    iget v12, v0, Lf6/a;->f:I

    .line 98
    .line 99
    if-ge v9, v12, :cond_c

    .line 100
    .line 101
    if-le v10, v4, :cond_6

    .line 102
    .line 103
    goto :goto_8

    .line 104
    :cond_6
    const/4 v9, 0x2

    .line 105
    if-le v7, v9, :cond_7

    .line 106
    .line 107
    add-int/lit8 v9, v7, -0x2

    .line 108
    .line 109
    mul-int v10, v10, v9

    .line 110
    .line 111
    :cond_7
    if-lt v10, v4, :cond_8

    .line 112
    .line 113
    const/4 v9, 0x1

    .line 114
    goto :goto_5

    .line 115
    :cond_8
    const/4 v9, 0x0

    .line 116
    :goto_5
    const/4 v12, 0x1

    .line 117
    :goto_6
    if-gt v12, v10, :cond_a

    .line 118
    .line 119
    if-nez v9, :cond_a

    .line 120
    .line 121
    sub-int v9, v4, v12

    .line 122
    .line 123
    aget-object v9, v1, v9

    .line 124
    .line 125
    if-eqz v9, :cond_9

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_7

    .line 129
    :cond_9
    const/4 v9, 0x0

    .line 130
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_a
    if-eqz v9, :cond_b

    .line 134
    .line 135
    aput-object v11, v1, v4

    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_b
    iget v5, v8, Lf6/a;->f:I

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_c
    :goto_8
    aput-object v11, v1, v4

    .line 142
    .line 143
    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_e
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lp/l1;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz v1, :cond_7

    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x15

    .line 19
    .line 20
    if-le v2, v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-ne v2, v3, :cond_6

    .line 24
    .line 25
    iget-object v2, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lp/t2;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    new-instance v2, Lp/t2;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_2
    iget-object v2, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Lp/t2;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    iput-object v3, v2, Lp/t2;->a:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    iput-boolean v4, v2, Lp/t2;->d:Z

    .line 47
    .line 48
    iput-object v3, v2, Lp/t2;->b:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    iput-boolean v4, v2, Lp/t2;->c:Z

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x1

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iput-boolean v4, v2, Lp/t2;->d:Z

    .line 60
    .line 61
    iput-object v3, v2, Lp/t2;->a:Landroid/content/res/ColorStateList;

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    iput-boolean v4, v2, Lp/t2;->c:Z

    .line 70
    .line 71
    iput-object v3, v2, Lp/t2;->b:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    :cond_4
    iget-boolean v3, v2, Lp/t2;->d:Z

    .line 74
    .line 75
    if-nez v3, :cond_5

    .line 76
    .line 77
    iget-boolean v3, v2, Lp/t2;->c:Z

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v2, v0}, Lp/t;->d(Landroid/graphics/drawable/Drawable;Lp/t2;[I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    :goto_0
    iget-object v2, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lp/t2;

    .line 92
    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v1, v2, v0}, Lp/t;->d(Landroid/graphics/drawable/Drawable;Lp/t2;[I)V

    .line 100
    .line 101
    .line 102
    :cond_7
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget v1, p0, Ld7/q;->b:I

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/os/HandlerThread;

    .line 15
    .line 16
    const-string v2, "CameraThread"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/os/Handler;

    .line 27
    .line 28
    iget-object v2, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v2, "CameraThread is not open"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw v1
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ld7/q;->c()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Ly1/g;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return v2

    .line 32
    :cond_2
    return v1

    .line 33
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Ly1/g;->b:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    return v2

    .line 33
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public g(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v3, Li/a;->f:[I

    .line 11
    .line 12
    invoke-static {v0, p1, v3, p2}, La2/b;->P(Landroid/content/Context;Landroid/util/AttributeSet;[II)La2/b;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    iget-object v0, v7, La2/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/content/res/TypedArray;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v4, v7, La2/b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v5, v4

    .line 27
    check-cast v5, Landroid/content/res/TypedArray;

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    move v6, p2

    .line 31
    invoke-static/range {v1 .. v6}, Le4/k0;->i(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, -0x1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eq v2, p2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v2}, Lm9/e0;->g0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-static {p1}, Lp/l1;->a(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 p1, 0x2

    .line 71
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/16 v3, 0x15

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {v7, p1}, La2/b;->A(I)Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 86
    .line 87
    .line 88
    if-ne v2, v3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    const/4 p1, 0x3

    .line 119
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const/4 p2, 0x0

    .line 130
    invoke-static {p1, p2}, Lp/l1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 137
    .line 138
    .line 139
    if-ne p2, v3, :cond_5

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_4

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 164
    .line 165
    .line 166
    :cond_4
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {v7}, La2/b;->W()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :goto_1
    invoke-virtual {v7}, La2/b;->W()V

    .line 174
    .line 175
    .line 176
    throw p1
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public i(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/high16 v1, 0x437f0000    # 255.0f

    .line 6
    .line 7
    mul-float p1, p1, v1

    .line 8
    .line 9
    float-to-double v1, p1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    double-to-float p1, v1

    .line 15
    float-to-int p1, p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public j(I)V
    .locals 3

    .line 1
    iget v0, p0, Ld7/q;->b:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Ld7/q;->b:I

    .line 7
    .line 8
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/graphics/Paint;

    .line 11
    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x1d

    .line 15
    .line 16
    if-lt v1, v2, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Ly1/h0;->x(I)Landroid/graphics/BlendMode;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Ly1/a;->f(Landroid/graphics/Paint;Landroid/graphics/BlendMode;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 27
    .line 28
    invoke-static {p1}, Ly1/h0;->G(I)Landroid/graphics/PorterDuff$Mode;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public k(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {p1, p2}, Ly1/h0;->C(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public l(Ly1/k;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ld7/q;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Ly1/k;->a:Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    xor-int/2addr p1, v1

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n(Landroid/graphics/Shader;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public o(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-nez p1, :cond_2

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x2

    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    if-ne p1, v1, :cond_2

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public q(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/q;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Ld7/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget v0, p0, Ld7/q;->b:I

    .line 12
    .line 13
    iget-object v1, p0, Ld7/q;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, [Lu0/j;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aget-object v3, v1, v2

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v3, v0, 0x1

    .line 23
    .line 24
    aget-object v3, v1, v3

    .line 25
    .line 26
    :cond_0
    new-instance v4, Ljava/util/Formatter;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_0
    :try_start_0
    iget-object v6, v3, Lu0/j;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, [Lf6/a;

    .line 35
    .line 36
    array-length v6, v6

    .line 37
    if-ge v5, v6, :cond_4

    .line 38
    .line 39
    const-string v6, "CW %3d:"

    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v8, 0x1

    .line 46
    new-array v9, v8, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v7, v9, v2

    .line 49
    .line 50
    invoke-virtual {v4, v6, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    :goto_1
    const/4 v7, 0x2

    .line 55
    add-int/lit8 v9, v0, 0x2

    .line 56
    .line 57
    if-ge v6, v9, :cond_3

    .line 58
    .line 59
    aget-object v9, v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    const-string v10, "    |   "

    .line 62
    .line 63
    if-nez v9, :cond_1

    .line 64
    .line 65
    :try_start_1
    new-array v7, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v4, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_3

    .line 73
    :cond_1
    iget-object v9, v9, Lu0/j;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v9, [Lf6/a;

    .line 76
    .line 77
    aget-object v9, v9, v5

    .line 78
    .line 79
    if-nez v9, :cond_2

    .line 80
    .line 81
    new-array v7, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v4, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-string v10, " %3d|%3d"

    .line 88
    .line 89
    iget v11, v9, Lf6/a;->f:I

    .line 90
    .line 91
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    iget v9, v9, Lf6/a;->e:I

    .line 96
    .line 97
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    new-array v7, v7, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v11, v7, v2

    .line 104
    .line 105
    aput-object v9, v7, v8

    .line 106
    .line 107
    invoke-virtual {v4, v10, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 108
    .line 109
    .line 110
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const-string v6, "%n"

    .line 114
    .line 115
    new-array v7, v2, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-virtual {v4, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 118
    .line 119
    .line 120
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    :catchall_1
    move-exception v1

    .line 133
    :try_start_3
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :catchall_2
    move-exception v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :goto_4
    throw v1

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
