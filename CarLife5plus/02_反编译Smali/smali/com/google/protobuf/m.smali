.class public final Lcom/google/protobuf/m;
.super Lcom/google/protobuf/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I

.field public final g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p2, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x14

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    new-array v0, p2, [B

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/protobuf/m;->d:[B

    .line 15
    .line 16
    iput p2, p0, Lcom/google/protobuf/m;->e:I

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/protobuf/m;->g:Ljava/io/OutputStream;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string p2, "out"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p2, "bufferSize must be >= 0"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method


# virtual methods
.method public final A(ILjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->B(II)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    mul-int/lit8 p1, p1, 0x3

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/protobuf/n;->p(I)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Lcom/google/protobuf/c1; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    add-int v1, v0, p1

    .line 16
    .line 17
    iget v2, p0, Lcom/google/protobuf/m;->e:I

    .line 18
    .line 19
    if-le v1, v2, :cond_0

    .line 20
    .line 21
    :try_start_1
    new-array v0, p1, [B

    .line 22
    .line 23
    sget-object v1, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/u0;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, p2, v0, v2, p1}, Lcom/google/protobuf/u0;->b(Ljava/lang/String;[BII)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->D(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/protobuf/m;->g([BII)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :cond_0
    iget p1, p0, Lcom/google/protobuf/m;->f:I

    .line 40
    .line 41
    sub-int p1, v2, p1

    .line 42
    .line 43
    if-le v1, p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/m;->I()V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1}, Lcom/google/protobuf/n;->p(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget v1, p0, Lcom/google/protobuf/m;->f:I
    :try_end_1
    .catch Lcom/google/protobuf/c1; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    iget-object v3, p0, Lcom/google/protobuf/m;->d:[B

    .line 59
    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    add-int v0, v1, p1

    .line 63
    .line 64
    :try_start_2
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 65
    .line 66
    sub-int/2addr v2, v0

    .line 67
    sget-object v4, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/u0;

    .line 68
    .line 69
    invoke-virtual {v4, p2, v3, v0, v2}, Lcom/google/protobuf/u0;->b(Ljava/lang/String;[BII)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v1, p0, Lcom/google/protobuf/m;->f:I

    .line 74
    .line 75
    sub-int v2, v0, v1

    .line 76
    .line 77
    sub-int/2addr v2, p1

    .line 78
    invoke-virtual {p0, v2}, Lcom/google/protobuf/m;->G(I)V

    .line 79
    .line 80
    .line 81
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_1
    move-exception p1

    .line 85
    goto :goto_1

    .line 86
    :catch_2
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-static {p2}, Lcom/google/protobuf/d1;->b(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->G(I)V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/google/protobuf/m;->f:I

    .line 96
    .line 97
    sget-object v2, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/u0;

    .line 98
    .line 99
    invoke-virtual {v2, p2, v3, v0, p1}, Lcom/google/protobuf/u0;->b(Ljava/lang/String;[BII)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput p1, p0, Lcom/google/protobuf/m;->f:I
    :try_end_2
    .catch Lcom/google/protobuf/c1; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .line 105
    :goto_0
    return-void

    .line 106
    :goto_1
    :try_start_3
    new-instance v0, Lcom/google/protobuf/l;

    .line 107
    .line 108
    invoke-direct {v0, p1}, Lcom/google/protobuf/l;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :goto_2
    iput v1, p0, Lcom/google/protobuf/m;->f:I

    .line 113
    .line 114
    throw p1
    :try_end_3
    .catch Lcom/google/protobuf/c1; {:try_start_3 .. :try_end_3} :catch_0

    .line 115
    :goto_3
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/n;->r(Ljava/lang/String;Lcom/google/protobuf/c1;)V

    .line 116
    .line 117
    .line 118
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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->D(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final C(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->F(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/google/protobuf/m;->G(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final D(I)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->J(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->G(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final E(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->F(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/m;->H(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final F(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->G(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final G(I)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/google/protobuf/n;->b:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/m;->d:[B

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/protobuf/m;->f:I

    .line 8
    .line 9
    int-to-long v2, v0

    .line 10
    sget-wide v4, Lcom/google/protobuf/n;->c:J

    .line 11
    .line 12
    add-long/2addr v4, v2

    .line 13
    move-wide v2, v4

    .line 14
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 15
    .line 16
    const-wide/16 v6, 0x1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    add-long/2addr v6, v2

    .line 21
    int-to-byte p1, p1

    .line 22
    invoke-static {v1, v2, v3, p1}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 23
    .line 24
    .line 25
    sub-long/2addr v6, v4

    .line 26
    long-to-int p1, v6

    .line 27
    iget v0, p0, Lcom/google/protobuf/m;->f:I

    .line 28
    .line 29
    add-int/2addr v0, p1

    .line 30
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    add-long/2addr v6, v2

    .line 34
    and-int/lit8 v0, p1, 0x7f

    .line 35
    .line 36
    or-int/lit16 v0, v0, 0x80

    .line 37
    .line 38
    int-to-byte v0, v0

    .line 39
    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 40
    .line 41
    .line 42
    ushr-int/lit8 p1, p1, 0x7

    .line 43
    .line 44
    move-wide v2, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget v0, p0, Lcom/google/protobuf/m;->f:I

    .line 51
    .line 52
    add-int/lit8 v2, v0, 0x1

    .line 53
    .line 54
    iput v2, p0, Lcom/google/protobuf/m;->f:I

    .line 55
    .line 56
    int-to-byte p1, p1

    .line 57
    aput-byte p1, v1, v0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget v0, p0, Lcom/google/protobuf/m;->f:I

    .line 61
    .line 62
    add-int/lit8 v2, v0, 0x1

    .line 63
    .line 64
    iput v2, p0, Lcom/google/protobuf/m;->f:I

    .line 65
    .line 66
    and-int/lit8 v2, p1, 0x7f

    .line 67
    .line 68
    or-int/lit16 v2, v2, 0x80

    .line 69
    .line 70
    int-to-byte v2, v2

    .line 71
    aput-byte v2, v1, v0

    .line 72
    .line 73
    ushr-int/lit8 p1, p1, 0x7

    .line 74
    .line 75
    goto :goto_1
.end method

.method public final H(J)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/google/protobuf/n;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    const-wide/16 v5, -0x80

    .line 9
    .line 10
    iget-object v7, v0, Lcom/google/protobuf/m;->d:[B

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v1, v0, Lcom/google/protobuf/m;->f:I

    .line 15
    .line 16
    int-to-long v8, v1

    .line 17
    sget-wide v10, Lcom/google/protobuf/n;->c:J

    .line 18
    .line 19
    add-long/2addr v10, v8

    .line 20
    move-wide/from16 v8, p1

    .line 21
    .line 22
    move-wide v12, v10

    .line 23
    :goto_0
    and-long v14, v8, v5

    .line 24
    .line 25
    const-wide/16 v16, 0x1

    .line 26
    .line 27
    cmp-long v1, v14, v3

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    add-long v16, v12, v16

    .line 32
    .line 33
    long-to-int v1, v8

    .line 34
    int-to-byte v1, v1

    .line 35
    invoke-static {v7, v12, v13, v1}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 36
    .line 37
    .line 38
    sub-long v1, v16, v10

    .line 39
    .line 40
    long-to-int v2, v1

    .line 41
    iget v1, v0, Lcom/google/protobuf/m;->f:I

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    iput v1, v0, Lcom/google/protobuf/m;->f:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    add-long v16, v12, v16

    .line 48
    .line 49
    long-to-int v1, v8

    .line 50
    and-int/lit8 v1, v1, 0x7f

    .line 51
    .line 52
    or-int/lit16 v1, v1, 0x80

    .line 53
    .line 54
    int-to-byte v1, v1

    .line 55
    invoke-static {v7, v12, v13, v1}, Lcom/google/protobuf/a1;->f([BJB)V

    .line 56
    .line 57
    .line 58
    ushr-long/2addr v8, v2

    .line 59
    move-wide/from16 v12, v16

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-wide/from16 v8, p1

    .line 63
    .line 64
    :goto_1
    and-long v10, v8, v5

    .line 65
    .line 66
    cmp-long v1, v10, v3

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    iget v1, v0, Lcom/google/protobuf/m;->f:I

    .line 71
    .line 72
    add-int/lit8 v2, v1, 0x1

    .line 73
    .line 74
    iput v2, v0, Lcom/google/protobuf/m;->f:I

    .line 75
    .line 76
    long-to-int v2, v8

    .line 77
    int-to-byte v2, v2

    .line 78
    aput-byte v2, v7, v1

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iget v1, v0, Lcom/google/protobuf/m;->f:I

    .line 82
    .line 83
    add-int/lit8 v10, v1, 0x1

    .line 84
    .line 85
    iput v10, v0, Lcom/google/protobuf/m;->f:I

    .line 86
    .line 87
    long-to-int v10, v8

    .line 88
    and-int/lit8 v10, v10, 0x7f

    .line 89
    .line 90
    or-int/lit16 v10, v10, 0x80

    .line 91
    .line 92
    int-to-byte v10, v10

    .line 93
    aput-byte v10, v7, v1

    .line 94
    .line 95
    ushr-long/2addr v8, v2

    .line 96
    goto :goto_1
.end method

.method public final I()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/m;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/m;->g:Ljava/io/OutputStream;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/protobuf/m;->d:[B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    .line 10
    .line 11
    iput v3, p0, Lcom/google/protobuf/m;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public final J(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/m;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/m;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/m;->I()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final g([BII)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/m;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/m;->e:I

    .line 4
    .line 5
    sub-int v2, v1, v0

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/protobuf/m;->d:[B

    .line 8
    .line 9
    if-lt v2, p3, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lcom/google/protobuf/m;->f:I

    .line 15
    .line 16
    add-int/2addr p1, p3

    .line 17
    iput p1, p0, Lcom/google/protobuf/m;->f:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    add-int/2addr p2, v2

    .line 24
    sub-int/2addr p3, v2

    .line 25
    iput v1, p0, Lcom/google/protobuf/m;->f:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/m;->I()V

    .line 28
    .line 29
    .line 30
    if-gt p3, v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p1, p2, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iput p3, p0, Lcom/google/protobuf/m;->f:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/m;->g:Ljava/io/OutputStream;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final s(IZ)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->F(II)V

    .line 8
    .line 9
    .line 10
    int-to-byte p1, p2

    .line 11
    iget p2, p0, Lcom/google/protobuf/m;->f:I

    .line 12
    .line 13
    add-int/lit8 v0, p2, 0x1

    .line 14
    .line 15
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/protobuf/m;->d:[B

    .line 18
    .line 19
    aput-byte p1, v0, p2

    .line 20
    .line 21
    return-void
.end method

.method public final t(ILcom/google/protobuf/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->B(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/i;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->D(I)V

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
    .locals 4

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->F(II)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/google/protobuf/m;->f:I

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 15
    .line 16
    and-int/lit16 v1, p2, 0xff

    .line 17
    .line 18
    int-to-byte v1, v1

    .line 19
    iget-object v2, p0, Lcom/google/protobuf/m;->d:[B

    .line 20
    .line 21
    aput-byte v1, v2, p1

    .line 22
    .line 23
    add-int/lit8 v1, p1, 0x2

    .line 24
    .line 25
    iput v1, p0, Lcom/google/protobuf/m;->f:I

    .line 26
    .line 27
    shr-int/lit8 v3, p2, 0x8

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    int-to-byte v3, v3

    .line 32
    aput-byte v3, v2, v0

    .line 33
    .line 34
    add-int/lit8 v0, p1, 0x3

    .line 35
    .line 36
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 37
    .line 38
    shr-int/lit8 v3, p2, 0x10

    .line 39
    .line 40
    and-int/lit16 v3, v3, 0xff

    .line 41
    .line 42
    int-to-byte v3, v3

    .line 43
    aput-byte v3, v2, v1

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x4

    .line 46
    .line 47
    iput p1, p0, Lcom/google/protobuf/m;->f:I

    .line 48
    .line 49
    shr-int/lit8 p1, p2, 0x18

    .line 50
    .line 51
    and-int/lit16 p1, p1, 0xff

    .line 52
    .line 53
    int-to-byte p1, p1

    .line 54
    aput-byte p1, v2, v0

    .line 55
    .line 56
    return-void
.end method

.method public final w(IJ)V
    .locals 8

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->F(II)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/google/protobuf/m;->f:I

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 15
    .line 16
    const-wide/16 v1, 0xff

    .line 17
    .line 18
    and-long v3, p2, v1

    .line 19
    .line 20
    long-to-int v4, v3

    .line 21
    int-to-byte v3, v4

    .line 22
    iget-object v4, p0, Lcom/google/protobuf/m;->d:[B

    .line 23
    .line 24
    aput-byte v3, v4, p1

    .line 25
    .line 26
    add-int/lit8 v3, p1, 0x2

    .line 27
    .line 28
    iput v3, p0, Lcom/google/protobuf/m;->f:I

    .line 29
    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    shr-long v6, p2, v5

    .line 33
    .line 34
    and-long/2addr v6, v1

    .line 35
    long-to-int v7, v6

    .line 36
    int-to-byte v6, v7

    .line 37
    aput-byte v6, v4, v0

    .line 38
    .line 39
    add-int/lit8 v0, p1, 0x3

    .line 40
    .line 41
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 42
    .line 43
    const/16 v6, 0x10

    .line 44
    .line 45
    shr-long v6, p2, v6

    .line 46
    .line 47
    and-long/2addr v6, v1

    .line 48
    long-to-int v7, v6

    .line 49
    int-to-byte v6, v7

    .line 50
    aput-byte v6, v4, v3

    .line 51
    .line 52
    add-int/lit8 v3, p1, 0x4

    .line 53
    .line 54
    iput v3, p0, Lcom/google/protobuf/m;->f:I

    .line 55
    .line 56
    const/16 v6, 0x18

    .line 57
    .line 58
    shr-long v6, p2, v6

    .line 59
    .line 60
    and-long/2addr v1, v6

    .line 61
    long-to-int v2, v1

    .line 62
    int-to-byte v1, v2

    .line 63
    aput-byte v1, v4, v0

    .line 64
    .line 65
    add-int/lit8 v0, p1, 0x5

    .line 66
    .line 67
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 68
    .line 69
    const/16 v1, 0x20

    .line 70
    .line 71
    shr-long v1, p2, v1

    .line 72
    .line 73
    long-to-int v2, v1

    .line 74
    and-int/lit16 v1, v2, 0xff

    .line 75
    .line 76
    int-to-byte v1, v1

    .line 77
    aput-byte v1, v4, v3

    .line 78
    .line 79
    add-int/lit8 v1, p1, 0x6

    .line 80
    .line 81
    iput v1, p0, Lcom/google/protobuf/m;->f:I

    .line 82
    .line 83
    const/16 v2, 0x28

    .line 84
    .line 85
    shr-long v2, p2, v2

    .line 86
    .line 87
    long-to-int v3, v2

    .line 88
    and-int/lit16 v2, v3, 0xff

    .line 89
    .line 90
    int-to-byte v2, v2

    .line 91
    aput-byte v2, v4, v0

    .line 92
    .line 93
    add-int/lit8 v0, p1, 0x7

    .line 94
    .line 95
    iput v0, p0, Lcom/google/protobuf/m;->f:I

    .line 96
    .line 97
    const/16 v2, 0x30

    .line 98
    .line 99
    shr-long v2, p2, v2

    .line 100
    .line 101
    long-to-int v3, v2

    .line 102
    and-int/lit16 v2, v3, 0xff

    .line 103
    .line 104
    int-to-byte v2, v2

    .line 105
    aput-byte v2, v4, v1

    .line 106
    .line 107
    add-int/2addr p1, v5

    .line 108
    iput p1, p0, Lcom/google/protobuf/m;->f:I

    .line 109
    .line 110
    const/16 p1, 0x38

    .line 111
    .line 112
    shr-long p1, p2, p1

    .line 113
    .line 114
    long-to-int p2, p1

    .line 115
    and-int/lit16 p1, p2, 0xff

    .line 116
    .line 117
    int-to-byte p1, p1

    .line 118
    aput-byte p1, v4, v0

    .line 119
    .line 120
    return-void
.end method

.method public final y(II)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/m;->J(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->F(II)V

    .line 8
    .line 9
    .line 10
    if-ltz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/google/protobuf/m;->G(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    int-to-long p1, p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/m;->H(J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final z(ILcom/google/protobuf/s0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/m;->B(II)V

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Lcom/google/protobuf/s0;->getSerializedSize()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/protobuf/m;->D(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p0}, Lcom/google/protobuf/s0;->writeTo(Lcom/google/protobuf/n;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
