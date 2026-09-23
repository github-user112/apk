.class public final Lcom/google/protobuf/k;
.super Lcom/google/protobuf/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    or-int v0, p2, p3

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    add-int v2, p2, p3

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    or-int/2addr v0, v1

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/protobuf/k;->d:[B

    .line 16
    .line 17
    iput p2, p0, Lcom/google/protobuf/k;->f:I

    .line 18
    .line 19
    iput v2, p0, Lcom/google/protobuf/k;->e:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    const/4 v1, 0x3

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object p1, v1, v2

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    aput-object p2, v1, p1

    .line 45
    .line 46
    const/4 p1, 0x2

    .line 47
    aput-object p3, v1, p1

    .line 48
    .line 49
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 50
    .line 51
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 60
    .line 61
    const-string p2, "buffer"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method


# virtual methods
.method public final A(ILjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    iget p1, p0, Lcom/google/protobuf/k;->f:I

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/protobuf/n;->p(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lcom/google/protobuf/n;->p(I)I

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catch Lcom/google/protobuf/c1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    iget-object v2, p0, Lcom/google/protobuf/k;->d:[B

    .line 26
    .line 27
    if-ne v1, v0, :cond_0

    .line 28
    .line 29
    add-int v0, p1, v1

    .line 30
    .line 31
    :try_start_1
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/k;->F()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v4, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/u0;

    .line 38
    .line 39
    invoke-virtual {v4, p2, v2, v0, v3}, Lcom/google/protobuf/u0;->b(Ljava/lang/String;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/protobuf/k;->f:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/protobuf/k;->D(I)V

    .line 49
    .line 50
    .line 51
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 52
    .line 53
    return-void

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-static {p2}, Lcom/google/protobuf/d1;->b(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/protobuf/k;->D(I)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/protobuf/k;->F()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sget-object v3, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/u0;

    .line 72
    .line 73
    invoke-virtual {v3, p2, v2, v0, v1}, Lcom/google/protobuf/u0;->b(Ljava/lang/String;[BII)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/google/protobuf/k;->f:I
    :try_end_1
    .catch Lcom/google/protobuf/c1; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    return-void

    .line 80
    :goto_0
    new-instance p2, Lcom/google/protobuf/l;

    .line 81
    .line 82
    invoke-direct {p2, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 83
    .line 84
    .line 85
    throw p2

    .line 86
    :goto_1
    iput p1, p0, Lcom/google/protobuf/k;->f:I

    .line 87
    .line 88
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/n;->r(Ljava/lang/String;Lcom/google/protobuf/c1;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final B(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->D(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final C(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->D(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final D(I)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/google/protobuf/n;->b:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/k;->d:[B

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/k;->F()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    if-lt v0, v3, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 17
    .line 18
    int-to-long v3, v0

    .line 19
    sget-wide v5, Lcom/google/protobuf/n;->c:J

    .line 20
    .line 21
    add-long/2addr v5, v3

    .line 22
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    int-to-byte p1, p1

    .line 27
    invoke-static {v1, v5, v6, p1}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lcom/google/protobuf/k;->f:I

    .line 31
    .line 32
    add-int/2addr p1, v2

    .line 33
    iput p1, p0, Lcom/google/protobuf/k;->f:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-wide/16 v3, 0x1

    .line 37
    .line 38
    add-long/2addr v3, v5

    .line 39
    and-int/lit8 v0, p1, 0x7f

    .line 40
    .line 41
    or-int/lit16 v0, v0, 0x80

    .line 42
    .line 43
    int-to-byte v0, v0

    .line 44
    invoke-static {v1, v5, v6, v0}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 48
    .line 49
    add-int/2addr v0, v2

    .line 50
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 51
    .line 52
    ushr-int/lit8 p1, p1, 0x7

    .line 53
    .line 54
    move-wide v5, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 61
    .line 62
    add-int/lit8 v3, v0, 0x1

    .line 63
    .line 64
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 65
    .line 66
    int-to-byte p1, p1

    .line 67
    aput-byte p1, v1, v0

    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 73
    .line 74
    add-int/lit8 v3, v0, 0x1

    .line 75
    .line 76
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 77
    .line 78
    and-int/lit8 v3, p1, 0x7f

    .line 79
    .line 80
    or-int/lit16 v3, v3, 0x80

    .line 81
    .line 82
    int-to-byte v3, v3

    .line 83
    aput-byte v3, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    ushr-int/lit8 p1, p1, 0x7

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_2
    new-instance v0, Lcom/google/protobuf/l;

    .line 89
    .line 90
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget v3, p0, Lcom/google/protobuf/k;->e:I

    .line 97
    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const/4 v5, 0x3

    .line 107
    new-array v5, v5, [Ljava/lang/Object;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    aput-object v1, v5, v6

    .line 111
    .line 112
    aput-object v3, v5, v2

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    aput-object v4, v5, v1

    .line 116
    .line 117
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 118
    .line 119
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {v0, v1, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method public final E(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/k;->G(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final F()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/k;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final G(J)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/google/protobuf/n;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v4, -0x80

    .line 7
    .line 8
    iget-object v6, p0, Lcom/google/protobuf/k;->d:[B

    .line 9
    .line 10
    const/4 v7, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/k;->F()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v8, 0xa

    .line 18
    .line 19
    if-lt v0, v8, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 22
    .line 23
    int-to-long v8, v0

    .line 24
    sget-wide v10, Lcom/google/protobuf/n;->c:J

    .line 25
    .line 26
    add-long/2addr v10, v8

    .line 27
    :goto_0
    and-long v8, p1, v4

    .line 28
    .line 29
    cmp-long v0, v8, v2

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    long-to-int p2, p1

    .line 34
    int-to-byte p1, p2

    .line 35
    invoke-static {v6, v10, v11, p1}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/google/protobuf/k;->f:I

    .line 39
    .line 40
    add-int/2addr p1, v7

    .line 41
    iput p1, p0, Lcom/google/protobuf/k;->f:I

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const-wide/16 v8, 0x1

    .line 45
    .line 46
    add-long/2addr v8, v10

    .line 47
    long-to-int v0, p1

    .line 48
    and-int/lit8 v0, v0, 0x7f

    .line 49
    .line 50
    or-int/lit16 v0, v0, 0x80

    .line 51
    .line 52
    int-to-byte v0, v0

    .line 53
    invoke-static {v6, v10, v11, v0}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 57
    .line 58
    add-int/2addr v0, v7

    .line 59
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 60
    .line 61
    ushr-long/2addr p1, v1

    .line 62
    move-wide v10, v8

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    and-long v8, p1, v4

    .line 65
    .line 66
    cmp-long v0, v8, v2

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 71
    .line 72
    add-int/lit8 v1, v0, 0x1

    .line 73
    .line 74
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 75
    .line 76
    long-to-int p2, p1

    .line 77
    int-to-byte p1, p2

    .line 78
    aput-byte p1, v6, v0

    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 84
    .line 85
    add-int/lit8 v8, v0, 0x1

    .line 86
    .line 87
    iput v8, p0, Lcom/google/protobuf/k;->f:I

    .line 88
    .line 89
    long-to-int v8, p1

    .line 90
    and-int/lit8 v8, v8, 0x7f

    .line 91
    .line 92
    or-int/lit16 v8, v8, 0x80

    .line 93
    .line 94
    int-to-byte v8, v8

    .line 95
    aput-byte v8, v6, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    ushr-long/2addr p1, v1

    .line 98
    goto :goto_1

    .line 99
    :goto_2
    new-instance p2, Lcom/google/protobuf/l;

    .line 100
    .line 101
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 102
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget v1, p0, Lcom/google/protobuf/k;->e:I

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const/4 v3, 0x3

    .line 118
    new-array v3, v3, [Ljava/lang/Object;

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    aput-object v0, v3, v4

    .line 122
    .line 123
    aput-object v1, v3, v7

    .line 124
    .line 125
    const/4 v0, 0x2

    .line 126
    aput-object v2, v3, v0

    .line 127
    .line 128
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 129
    .line 130
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 135
    .line 136
    .line 137
    throw p2
.end method

.method public final g([BII)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/k;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/protobuf/k;->f:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/protobuf/k;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/protobuf/l;

    .line 16
    .line 17
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/google/protobuf/k;->e:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v0, v2, v3

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v1, v2, v0

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object p3, v2, v0

    .line 44
    .line 45
    const-string p3, "Pos: %d, limit: %d, len: %d"

    .line 46
    .line 47
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-direct {p2, p3, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public final s(IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    int-to-byte p1, p2

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/google/protobuf/k;->d:[B

    .line 7
    .line 8
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 13
    .line 14
    aput-byte p1, p2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/google/protobuf/l;

    .line 19
    .line 20
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v2, p0, Lcom/google/protobuf/k;->e:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v5, v5, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v1, v5, v0

    .line 41
    .line 42
    aput-object v2, v5, v3

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    aput-object v4, v5, v0

    .line 46
    .line 47
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 48
    .line 49
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 54
    .line 55
    .line 56
    throw p2
.end method

.method public final t(ILcom/google/protobuf/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/i;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->D(I)V

    .line 10
    .line 11
    .line 12
    check-cast p2, Lcom/google/protobuf/h;

    .line 13
    .line 14
    iget-object p1, p2, Lcom/google/protobuf/h;->d:[B

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/protobuf/h;->l()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p2}, Lcom/google/protobuf/h;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/u0;->g([BII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final v(II)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/google/protobuf/k;->d:[B

    .line 6
    .line 7
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 12
    .line 13
    and-int/lit16 v2, p2, 0xff

    .line 14
    .line 15
    int-to-byte v2, v2

    .line 16
    aput-byte v2, p1, v0

    .line 17
    .line 18
    add-int/lit8 v2, v0, 0x2

    .line 19
    .line 20
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 21
    .line 22
    shr-int/lit8 v3, p2, 0x8

    .line 23
    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 25
    .line 26
    int-to-byte v3, v3

    .line 27
    aput-byte v3, p1, v1

    .line 28
    .line 29
    add-int/lit8 v1, v0, 0x3

    .line 30
    .line 31
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 32
    .line 33
    shr-int/lit8 v3, p2, 0x10

    .line 34
    .line 35
    and-int/lit16 v3, v3, 0xff

    .line 36
    .line 37
    int-to-byte v3, v3

    .line 38
    aput-byte v3, p1, v2

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x4

    .line 41
    .line 42
    iput v0, p0, Lcom/google/protobuf/k;->f:I

    .line 43
    .line 44
    shr-int/lit8 p2, p2, 0x18

    .line 45
    .line 46
    and-int/lit16 p2, p2, 0xff

    .line 47
    .line 48
    int-to-byte p2, p2

    .line 49
    aput-byte p2, p1, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Lcom/google/protobuf/l;

    .line 54
    .line 55
    iget v0, p0, Lcom/google/protobuf/k;->f:I

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p0, Lcom/google/protobuf/k;->e:I

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v4, 0x3

    .line 73
    new-array v4, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    aput-object v0, v4, v5

    .line 77
    .line 78
    aput-object v1, v4, v2

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    aput-object v3, v4, v0

    .line 82
    .line 83
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 84
    .line 85
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p2, v0, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 90
    .line 91
    .line 92
    throw p2
.end method

.method public final w(IJ)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/google/protobuf/k;->d:[B

    .line 6
    .line 7
    iget v1, p0, Lcom/google/protobuf/k;->f:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 12
    .line 13
    long-to-int v3, p2

    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    int-to-byte v3, v3

    .line 17
    aput-byte v3, p1, v1

    .line 18
    .line 19
    add-int/lit8 v3, v1, 0x2

    .line 20
    .line 21
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    shr-long v5, p2, v4

    .line 26
    .line 27
    long-to-int v6, v5

    .line 28
    and-int/lit16 v5, v6, 0xff

    .line 29
    .line 30
    int-to-byte v5, v5

    .line 31
    aput-byte v5, p1, v2

    .line 32
    .line 33
    add-int/lit8 v2, v1, 0x3

    .line 34
    .line 35
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 36
    .line 37
    const/16 v5, 0x10

    .line 38
    .line 39
    shr-long v5, p2, v5

    .line 40
    .line 41
    long-to-int v6, v5

    .line 42
    and-int/lit16 v5, v6, 0xff

    .line 43
    .line 44
    int-to-byte v5, v5

    .line 45
    aput-byte v5, p1, v3

    .line 46
    .line 47
    add-int/lit8 v3, v1, 0x4

    .line 48
    .line 49
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 50
    .line 51
    const/16 v5, 0x18

    .line 52
    .line 53
    shr-long v5, p2, v5

    .line 54
    .line 55
    long-to-int v6, v5

    .line 56
    and-int/lit16 v5, v6, 0xff

    .line 57
    .line 58
    int-to-byte v5, v5

    .line 59
    aput-byte v5, p1, v2

    .line 60
    .line 61
    add-int/lit8 v2, v1, 0x5

    .line 62
    .line 63
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 64
    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    shr-long v5, p2, v5

    .line 68
    .line 69
    long-to-int v6, v5

    .line 70
    and-int/lit16 v5, v6, 0xff

    .line 71
    .line 72
    int-to-byte v5, v5

    .line 73
    aput-byte v5, p1, v3

    .line 74
    .line 75
    add-int/lit8 v3, v1, 0x6

    .line 76
    .line 77
    iput v3, p0, Lcom/google/protobuf/k;->f:I

    .line 78
    .line 79
    const/16 v5, 0x28

    .line 80
    .line 81
    shr-long v5, p2, v5

    .line 82
    .line 83
    long-to-int v6, v5

    .line 84
    and-int/lit16 v5, v6, 0xff

    .line 85
    .line 86
    int-to-byte v5, v5

    .line 87
    aput-byte v5, p1, v2

    .line 88
    .line 89
    add-int/lit8 v2, v1, 0x7

    .line 90
    .line 91
    iput v2, p0, Lcom/google/protobuf/k;->f:I

    .line 92
    .line 93
    const/16 v5, 0x30

    .line 94
    .line 95
    shr-long v5, p2, v5

    .line 96
    .line 97
    long-to-int v6, v5

    .line 98
    and-int/lit16 v5, v6, 0xff

    .line 99
    .line 100
    int-to-byte v5, v5

    .line 101
    aput-byte v5, p1, v3

    .line 102
    .line 103
    add-int/2addr v1, v4

    .line 104
    iput v1, p0, Lcom/google/protobuf/k;->f:I

    .line 105
    .line 106
    const/16 v1, 0x38

    .line 107
    .line 108
    shr-long/2addr p2, v1

    .line 109
    long-to-int p3, p2

    .line 110
    and-int/lit16 p2, p3, 0xff

    .line 111
    .line 112
    int-to-byte p2, p2

    .line 113
    aput-byte p2, p1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    return-void

    .line 116
    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Lcom/google/protobuf/l;

    .line 118
    .line 119
    iget p3, p0, Lcom/google/protobuf/k;->f:I

    .line 120
    .line 121
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    iget v1, p0, Lcom/google/protobuf/k;->e:I

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const/4 v3, 0x3

    .line 136
    new-array v3, v3, [Ljava/lang/Object;

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    aput-object p3, v3, v4

    .line 140
    .line 141
    aput-object v1, v3, v0

    .line 142
    .line 143
    const/4 p3, 0x2

    .line 144
    aput-object v2, v3, p3

    .line 145
    .line 146
    const-string p3, "Pos: %d, limit: %d, len: %d"

    .line 147
    .line 148
    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-direct {p2, p3, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 153
    .line 154
    .line 155
    throw p2
.end method

.method public final y(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/google/protobuf/k;->D(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    int-to-long p1, p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k;->G(J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z(ILcom/google/protobuf/s0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/k;->B(II)V

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Lcom/google/protobuf/s0;->getSerializedSize()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/k;->D(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p0}, Lcom/google/protobuf/s0;->writeTo(Lcom/google/protobuf/n;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
