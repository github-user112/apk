.class public final Ll7/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x6000

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Ll7/h;->a:I

    .line 11
    .line 12
    new-array p1, p1, [B

    .line 13
    .line 14
    iput-object p1, p0, Ll7/h;->b:[B

    .line 15
    .line 16
    new-instance p1, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr v1, p2

    .line 9
    :cond_0
    :goto_0
    iget v3, p0, Ll7/h;->d:I

    .line 10
    .line 11
    if-ge v3, p1, :cond_5

    .line 12
    .line 13
    iget-boolean v3, p0, Ll7/h;->g:Z

    .line 14
    .line 15
    if-nez v3, :cond_5

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmp-long v5, p2, v3

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    cmp-long v8, v6, v1

    .line 28
    .line 29
    if-gez v8, :cond_5

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_4

    .line 34
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 35
    .line 36
    move-wide v6, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    sub-long v6, v1, v6

    .line 43
    .line 44
    :goto_2
    cmp-long v8, v6, v3

    .line 45
    .line 46
    if-gtz v8, :cond_3

    .line 47
    .line 48
    if-nez v5, :cond_0

    .line 49
    .line 50
    :cond_3
    iget-object v8, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 51
    .line 52
    if-nez v5, :cond_4

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    move-wide v3, v6

    .line 56
    :goto_3
    invoke-virtual {v8, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_4
    monitor-exit v0

    .line 63
    throw p1
.end method

.method public final b([BII)I
    .locals 5

    .line 1
    iget v0, p0, Ll7/h;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    if-le p3, v0, :cond_1

    .line 8
    .line 9
    move p3, v0

    .line 10
    :cond_1
    iget v0, p0, Ll7/h;->e:I

    .line 11
    .line 12
    iget v1, p0, Ll7/h;->a:I

    .line 13
    .line 14
    sub-int v2, v1, v0

    .line 15
    .line 16
    if-le v2, p3, :cond_2

    .line 17
    .line 18
    move v2, p3

    .line 19
    :cond_2
    iget-object v3, p0, Ll7/h;->b:[B

    .line 20
    .line 21
    invoke-static {v3, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Ll7/h;->e:I

    .line 25
    .line 26
    add-int/2addr v0, v2

    .line 27
    rem-int/2addr v0, v1

    .line 28
    iput v0, p0, Ll7/h;->e:I

    .line 29
    .line 30
    iget v4, p0, Ll7/h;->d:I

    .line 31
    .line 32
    sub-int/2addr v4, v2

    .line 33
    iput v4, p0, Ll7/h;->d:I

    .line 34
    .line 35
    if-ge v2, p3, :cond_4

    .line 36
    .line 37
    if-lez v4, :cond_4

    .line 38
    .line 39
    sub-int/2addr p3, v2

    .line 40
    if-le p3, v4, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v4, p3

    .line 44
    :goto_0
    add-int/2addr p2, v2

    .line 45
    invoke-static {v3, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    iget p1, p0, Ll7/h;->e:I

    .line 49
    .line 50
    add-int/2addr p1, v4

    .line 51
    rem-int/2addr p1, v1

    .line 52
    iput p1, p0, Ll7/h;->e:I

    .line 53
    .line 54
    iget p1, p0, Ll7/h;->d:I

    .line 55
    .line 56
    sub-int/2addr p1, v4

    .line 57
    iput p1, p0, Ll7/h;->d:I

    .line 58
    .line 59
    add-int/2addr v2, v4

    .line 60
    :cond_4
    return v2
.end method

.method public final c(IIJ[B)I
    .locals 10

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget v1, p0, Ll7/h;->d:I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, p0, Ll7/h;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    const/4 p1, -0x1

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_4

    .line 27
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    add-long/2addr v1, p3

    .line 32
    move v3, p2

    .line 33
    :cond_2
    :goto_1
    if-lez v3, :cond_7

    .line 34
    .line 35
    iget-boolean v4, p0, Ll7/h;->g:Z

    .line 36
    .line 37
    if-nez v4, :cond_7

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long v6, p3, v4

    .line 42
    .line 43
    if-eqz v6, :cond_3

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    cmp-long v9, v7, v1

    .line 50
    .line 51
    if-gez v9, :cond_7

    .line 52
    .line 53
    :cond_3
    sub-int v7, p2, v3

    .line 54
    .line 55
    add-int/2addr v7, p1

    .line 56
    invoke-virtual {p0, p5, v7, v3}, Ll7/h;->b([BII)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    sub-int/2addr v3, v7

    .line 61
    if-lez v3, :cond_2

    .line 62
    .line 63
    iget-boolean v7, p0, Ll7/h;->g:Z

    .line 64
    .line 65
    if-nez v7, :cond_2

    .line 66
    .line 67
    if-nez v6, :cond_4

    .line 68
    .line 69
    move-wide v7, v4

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    sub-long v7, v1, v7

    .line 76
    .line 77
    :goto_2
    cmp-long v9, v7, v4

    .line 78
    .line 79
    if-gtz v9, :cond_5

    .line 80
    .line 81
    if-nez v6, :cond_2

    .line 82
    .line 83
    :cond_5
    iget-object v9, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 84
    .line 85
    if-nez v6, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    move-wide v4, v7

    .line 89
    :goto_3
    invoke-virtual {v9, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_7
    iget-object p1, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    sub-int/2addr p2, v3

    .line 99
    monitor-exit v0

    .line 100
    return p2

    .line 101
    :goto_4
    monitor-exit v0

    .line 102
    throw p1
.end method

.method public final d([BII)V
    .locals 7

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Ll7/h;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    iget v1, p0, Ll7/h;->a:I

    .line 16
    .line 17
    iget v2, p0, Ll7/h;->d:I

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    if-le p3, v1, :cond_1

    .line 21
    .line 22
    move p3, v1

    .line 23
    :cond_1
    iget v1, p0, Ll7/h;->a:I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, p3, :cond_4

    .line 27
    .line 28
    iget v3, p0, Ll7/h;->f:I

    .line 29
    .line 30
    sub-int v4, v1, v3

    .line 31
    .line 32
    sub-int v5, p3, v2

    .line 33
    .line 34
    if-le v4, v5, :cond_2

    .line 35
    .line 36
    move v4, v5

    .line 37
    :cond_2
    add-int v5, p2, v2

    .line 38
    .line 39
    iget-object v6, p0, Ll7/h;->b:[B

    .line 40
    .line 41
    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    iget v3, p0, Ll7/h;->f:I

    .line 45
    .line 46
    add-int/2addr v3, v4

    .line 47
    rem-int/2addr v3, v1

    .line 48
    iput v3, p0, Ll7/h;->f:I

    .line 49
    .line 50
    iget v3, p0, Ll7/h;->d:I

    .line 51
    .line 52
    add-int/2addr v3, v4

    .line 53
    if-le v3, v1, :cond_3

    .line 54
    .line 55
    move v3, v1

    .line 56
    :cond_3
    iput v3, p0, Ll7/h;->d:I

    .line 57
    .line 58
    add-int/2addr v2, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget-object p1, p0, Ll7/h;->c:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    monitor-exit v0

    .line 69
    throw p1
.end method
