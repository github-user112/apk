.class public final Lcom/google/protobuf/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/io/InputStream;

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Lcom/google/protobuf/j;->h:I

    const/16 v0, 0x1000

    .line 10
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/j;->a:[B

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/protobuf/j;->d:I

    .line 12
    iput v0, p0, Lcom/google/protobuf/j;->g:I

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/j;->e:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p4, 0x7fffffff

    .line 2
    iput p4, p0, Lcom/google/protobuf/j;->h:I

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/j;->a:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/protobuf/j;->b:I

    .line 5
    iput p2, p0, Lcom/google/protobuf/j;->d:I

    neg-int p1, p2

    .line 6
    iput p1, p0, Lcom/google/protobuf/j;->g:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/protobuf/j;->e:Ljava/io/InputStream;

    return-void
.end method

.method public static c([BIIZ)Lcom/google/protobuf/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/protobuf/j;-><init>([BIIZ)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/protobuf/j;->e(I)I
    :try_end_0
    .catch Lcom/google/protobuf/o0; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public static o(ILjava/io/InputStream;)I
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0x80

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    and-int/lit8 p0, p0, 0x7f

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    :goto_0
    const/16 v1, 0x20

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-ge v0, v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, v2, :cond_2

    .line 19
    .line 20
    and-int/lit8 v2, v1, 0x7f

    .line 21
    .line 22
    shl-int/2addr v2, v0

    .line 23
    or-int/2addr p0, v2

    .line 24
    and-int/lit16 v1, v1, 0x80

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x7

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    throw p0

    .line 37
    :cond_3
    :goto_1
    const/16 v1, 0x40

    .line 38
    .line 39
    if-ge v0, v1, :cond_6

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eq v1, v2, :cond_5

    .line 46
    .line 47
    and-int/lit16 v1, v1, 0x80

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    return p0

    .line 52
    :cond_4
    add-int/lit8 v0, v0, 0x7

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0

    .line 60
    :cond_6
    new-instance p0, Lcom/google/protobuf/o0;

    .line 61
    .line 62
    const-string p1, "CodedInputStream encountered a malformed varint."

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->f:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/google/protobuf/o0;

    .line 7
    .line 8
    const-string v0, "Protocol message end-group tag did not match expected tag."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final b()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->h:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Lcom/google/protobuf/j;->g:I

    .line 11
    .line 12
    iget v2, p0, Lcom/google/protobuf/j;->d:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/j;->h:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/j;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lcom/google/protobuf/j;->g:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/protobuf/j;->d:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    add-int/2addr v0, p1

    .line 9
    iget p1, p0, Lcom/google/protobuf/j;->h:I

    .line 10
    .line 11
    if-gt v0, p1, :cond_0

    .line 12
    .line 13
    iput v0, p0, Lcom/google/protobuf/j;->h:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/j;->u()V

    .line 16
    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/protobuf/o0;

    .line 25
    .line 26
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final f()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j;->p()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final g()Lcom/google/protobuf/h;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/protobuf/j;->d:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 15
    .line 16
    new-instance v1, Lcom/google/protobuf/h;

    .line 17
    .line 18
    sget-object v3, Lcom/google/protobuf/i;->c:Lcom/google/protobuf/g;

    .line 19
    .line 20
    iget v3, v3, Lcom/google/protobuf/g;->a:I

    .line 21
    .line 22
    iget-object v4, p0, Lcom/google/protobuf/j;->a:[B

    .line 23
    .line 24
    packed-switch v3, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    new-array v3, v0, [B

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v4, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_0
    add-int v3, v2, v0

    .line 35
    .line 36
    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_0
    invoke-direct {v1, v3}, Lcom/google/protobuf/h;-><init>([B)V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/google/protobuf/j;->d:I

    .line 44
    .line 45
    add-int/2addr v2, v0

    .line 46
    iput v2, p0, Lcom/google/protobuf/j;->d:I

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_0
    if-nez v0, :cond_1

    .line 50
    .line 51
    sget-object v0, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->k(I)[B

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 59
    .line 60
    new-instance v1, Lcom/google/protobuf/h;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/google/protobuf/h;-><init>([B)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j;->m()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final i()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final j(Lcom/google/protobuf/v0;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/protobuf/j;->i:I

    .line 6
    .line 7
    const/16 v2, 0x64

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->e(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/google/protobuf/j;->i:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    iput v1, p0, Lcom/google/protobuf/j;->i:I

    .line 20
    .line 21
    check-cast p1, Lcom/google/protobuf/u;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/protobuf/u;->a:Lcom/google/protobuf/d0;

    .line 24
    .line 25
    invoke-static {p1, p0, p2}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p2}, Lcom/google/protobuf/j;->a(I)V

    .line 31
    .line 32
    .line 33
    iget p2, p0, Lcom/google/protobuf/j;->i:I

    .line 34
    .line 35
    add-int/lit8 p2, p2, -0x1

    .line 36
    .line 37
    iput p2, p0, Lcom/google/protobuf/j;->i:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->d(I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_0
    new-instance p1, Lcom/google/protobuf/o0;

    .line 44
    .line 45
    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final k(I)[B
    .locals 14

    .line 1
    if-gtz p1, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/protobuf/n0;->b:[B

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lcom/google/protobuf/o0;

    .line 9
    .line 10
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    iget v0, p0, Lcom/google/protobuf/j;->g:I

    .line 17
    .line 18
    iget v1, p0, Lcom/google/protobuf/j;->d:I

    .line 19
    .line 20
    add-int v2, v0, v1

    .line 21
    .line 22
    add-int/2addr v2, p1

    .line 23
    const/high16 v3, 0x4000000

    .line 24
    .line 25
    if-gt v2, v3, :cond_c

    .line 26
    .line 27
    iget v3, p0, Lcom/google/protobuf/j;->h:I

    .line 28
    .line 29
    if-gt v2, v3, :cond_b

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/protobuf/j;->e:Ljava/io/InputStream;

    .line 32
    .line 33
    if-eqz v2, :cond_a

    .line 34
    .line 35
    iget v3, p0, Lcom/google/protobuf/j;->b:I

    .line 36
    .line 37
    sub-int v4, v3, v1

    .line 38
    .line 39
    add-int/2addr v0, v3

    .line 40
    iput v0, p0, Lcom/google/protobuf/j;->g:I

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/protobuf/j;->d:I

    .line 44
    .line 45
    iput v0, p0, Lcom/google/protobuf/j;->b:I

    .line 46
    .line 47
    sub-int v3, p1, v4

    .line 48
    .line 49
    iget-object v5, p0, Lcom/google/protobuf/j;->a:[B

    .line 50
    .line 51
    const/4 v6, -0x1

    .line 52
    const/16 v7, 0x1000

    .line 53
    .line 54
    if-lt v3, v7, :cond_7

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-gt v3, v8, :cond_2

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    :goto_0
    if-lez v3, :cond_5

    .line 69
    .line 70
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    new-array v10, v9, [B

    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    :goto_1
    if-ge v11, v9, :cond_4

    .line 78
    .line 79
    sub-int v12, v9, v11

    .line 80
    .line 81
    invoke-virtual {v2, v10, v11, v12}, Ljava/io/InputStream;->read([BII)I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    if-eq v12, v6, :cond_3

    .line 86
    .line 87
    iget v13, p0, Lcom/google/protobuf/j;->g:I

    .line 88
    .line 89
    add-int/2addr v13, v12

    .line 90
    iput v13, p0, Lcom/google/protobuf/j;->g:I

    .line 91
    .line 92
    add-int/2addr v11, v12

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    throw p1

    .line 99
    :cond_4
    sub-int/2addr v3, v9

    .line 100
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    new-array p1, p1, [B

    .line 105
    .line 106
    invoke-static {v5, v1, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, [B

    .line 124
    .line 125
    array-length v3, v2

    .line 126
    invoke-static {v2, v0, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    array-length v2, v2

    .line 130
    add-int/2addr v4, v2

    .line 131
    goto :goto_2

    .line 132
    :cond_6
    return-object p1

    .line 133
    :cond_7
    :goto_3
    new-array v3, p1, [B

    .line 134
    .line 135
    invoke-static {v5, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    :goto_4
    if-ge v4, p1, :cond_9

    .line 139
    .line 140
    sub-int v0, p1, v4

    .line 141
    .line 142
    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eq v0, v6, :cond_8

    .line 147
    .line 148
    iget v1, p0, Lcom/google/protobuf/j;->g:I

    .line 149
    .line 150
    add-int/2addr v1, v0

    .line 151
    iput v1, p0, Lcom/google/protobuf/j;->g:I

    .line 152
    .line 153
    add-int/2addr v4, v0

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    throw p1

    .line 160
    :cond_9
    return-object v3

    .line 161
    :cond_a
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    throw p1

    .line 166
    :cond_b
    sub-int/2addr v3, v0

    .line 167
    sub-int/2addr v3, v1

    .line 168
    invoke-virtual {p0, v3}, Lcom/google/protobuf/j;->w(I)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    throw p1

    .line 176
    :cond_c
    new-instance p1, Lcom/google/protobuf/o0;

    .line 177
    .line 178
    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public final l()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/google/protobuf/j;->v(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v1, v0, 0x4

    .line 15
    .line 16
    iput v1, p0, Lcom/google/protobuf/j;->d:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/protobuf/j;->a:[B

    .line 19
    .line 20
    aget-byte v2, v1, v0

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    add-int/lit8 v3, v0, 0x1

    .line 25
    .line 26
    aget-byte v3, v1, v3

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    shl-int/lit8 v3, v3, 0x8

    .line 31
    .line 32
    or-int/2addr v2, v3

    .line 33
    add-int/lit8 v3, v0, 0x2

    .line 34
    .line 35
    aget-byte v3, v1, v3

    .line 36
    .line 37
    and-int/lit16 v3, v3, 0xff

    .line 38
    .line 39
    shl-int/lit8 v3, v3, 0x10

    .line 40
    .line 41
    or-int/2addr v2, v3

    .line 42
    add-int/lit8 v0, v0, 0x3

    .line 43
    .line 44
    aget-byte v0, v1, v0

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    shl-int/lit8 v0, v0, 0x18

    .line 49
    .line 50
    or-int/2addr v0, v2

    .line 51
    return v0
.end method

.method public final m()J
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/google/protobuf/j;->v(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v0, 0x8

    .line 16
    .line 17
    iput v1, p0, Lcom/google/protobuf/j;->d:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/protobuf/j;->a:[B

    .line 20
    .line 21
    aget-byte v3, v1, v0

    .line 22
    .line 23
    int-to-long v3, v3

    .line 24
    const-wide/16 v5, 0xff

    .line 25
    .line 26
    and-long/2addr v3, v5

    .line 27
    add-int/lit8 v7, v0, 0x1

    .line 28
    .line 29
    aget-byte v7, v1, v7

    .line 30
    .line 31
    int-to-long v7, v7

    .line 32
    and-long/2addr v7, v5

    .line 33
    shl-long/2addr v7, v2

    .line 34
    or-long/2addr v3, v7

    .line 35
    add-int/lit8 v2, v0, 0x2

    .line 36
    .line 37
    aget-byte v2, v1, v2

    .line 38
    .line 39
    int-to-long v7, v2

    .line 40
    and-long/2addr v7, v5

    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    shl-long/2addr v7, v2

    .line 44
    or-long/2addr v3, v7

    .line 45
    add-int/lit8 v2, v0, 0x3

    .line 46
    .line 47
    aget-byte v2, v1, v2

    .line 48
    .line 49
    int-to-long v7, v2

    .line 50
    and-long/2addr v7, v5

    .line 51
    const/16 v2, 0x18

    .line 52
    .line 53
    shl-long/2addr v7, v2

    .line 54
    or-long/2addr v3, v7

    .line 55
    add-int/lit8 v2, v0, 0x4

    .line 56
    .line 57
    aget-byte v2, v1, v2

    .line 58
    .line 59
    int-to-long v7, v2

    .line 60
    and-long/2addr v7, v5

    .line 61
    const/16 v2, 0x20

    .line 62
    .line 63
    shl-long/2addr v7, v2

    .line 64
    or-long/2addr v3, v7

    .line 65
    add-int/lit8 v2, v0, 0x5

    .line 66
    .line 67
    aget-byte v2, v1, v2

    .line 68
    .line 69
    int-to-long v7, v2

    .line 70
    and-long/2addr v7, v5

    .line 71
    const/16 v2, 0x28

    .line 72
    .line 73
    shl-long/2addr v7, v2

    .line 74
    or-long/2addr v3, v7

    .line 75
    add-int/lit8 v2, v0, 0x6

    .line 76
    .line 77
    aget-byte v2, v1, v2

    .line 78
    .line 79
    int-to-long v7, v2

    .line 80
    and-long/2addr v7, v5

    .line 81
    const/16 v2, 0x30

    .line 82
    .line 83
    shl-long/2addr v7, v2

    .line 84
    or-long/2addr v3, v7

    .line 85
    add-int/lit8 v0, v0, 0x7

    .line 86
    .line 87
    aget-byte v0, v1, v0

    .line 88
    .line 89
    int-to-long v0, v0

    .line 90
    and-long/2addr v0, v5

    .line 91
    const/16 v2, 0x38

    .line 92
    .line 93
    shl-long/2addr v0, v2

    .line 94
    or-long/2addr v0, v3

    .line 95
    return-wide v0
.end method

.method public final n()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/protobuf/j;->a:[B

    .line 11
    .line 12
    aget-byte v4, v3, v0

    .line 13
    .line 14
    if-ltz v4, :cond_1

    .line 15
    .line 16
    iput v2, p0, Lcom/google/protobuf/j;->d:I

    .line 17
    .line 18
    return v4

    .line 19
    :cond_1
    sub-int/2addr v1, v2

    .line 20
    const/16 v5, 0x9

    .line 21
    .line 22
    if-ge v1, v5, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 26
    .line 27
    aget-byte v2, v3, v2

    .line 28
    .line 29
    shl-int/lit8 v2, v2, 0x7

    .line 30
    .line 31
    xor-int/2addr v2, v4

    .line 32
    if-gez v2, :cond_3

    .line 33
    .line 34
    xor-int/lit8 v0, v2, -0x80

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 38
    .line 39
    aget-byte v1, v3, v1

    .line 40
    .line 41
    shl-int/lit8 v1, v1, 0xe

    .line 42
    .line 43
    xor-int/2addr v1, v2

    .line 44
    if-ltz v1, :cond_4

    .line 45
    .line 46
    xor-int/lit16 v0, v1, 0x3f80

    .line 47
    .line 48
    :goto_0
    move v1, v4

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    add-int/lit8 v2, v0, 0x4

    .line 51
    .line 52
    aget-byte v4, v3, v4

    .line 53
    .line 54
    shl-int/lit8 v4, v4, 0x15

    .line 55
    .line 56
    xor-int/2addr v1, v4

    .line 57
    if-gez v1, :cond_5

    .line 58
    .line 59
    const v0, -0x1fc080

    .line 60
    .line 61
    .line 62
    xor-int/2addr v0, v1

    .line 63
    :goto_1
    move v1, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_5
    add-int/lit8 v4, v0, 0x5

    .line 66
    .line 67
    aget-byte v2, v3, v2

    .line 68
    .line 69
    shl-int/lit8 v5, v2, 0x1c

    .line 70
    .line 71
    xor-int/2addr v1, v5

    .line 72
    const v5, 0xfe03f80

    .line 73
    .line 74
    .line 75
    xor-int/2addr v1, v5

    .line 76
    if-gez v2, :cond_7

    .line 77
    .line 78
    add-int/lit8 v2, v0, 0x6

    .line 79
    .line 80
    aget-byte v4, v3, v4

    .line 81
    .line 82
    if-gez v4, :cond_8

    .line 83
    .line 84
    add-int/lit8 v4, v0, 0x7

    .line 85
    .line 86
    aget-byte v2, v3, v2

    .line 87
    .line 88
    if-gez v2, :cond_7

    .line 89
    .line 90
    add-int/lit8 v2, v0, 0x8

    .line 91
    .line 92
    aget-byte v4, v3, v4

    .line 93
    .line 94
    if-gez v4, :cond_8

    .line 95
    .line 96
    add-int/lit8 v4, v0, 0x9

    .line 97
    .line 98
    aget-byte v2, v3, v2

    .line 99
    .line 100
    if-gez v2, :cond_7

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0xa

    .line 103
    .line 104
    aget-byte v2, v3, v4

    .line 105
    .line 106
    if-gez v2, :cond_6

    .line 107
    .line 108
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/j;->q()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    long-to-int v1, v0

    .line 113
    return v1

    .line 114
    :cond_6
    move v6, v1

    .line 115
    move v1, v0

    .line 116
    move v0, v6

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_8
    move v0, v1

    .line 121
    goto :goto_1

    .line 122
    :goto_3
    iput v1, p0, Lcom/google/protobuf/j;->d:I

    .line 123
    .line 124
    return v0
.end method

.method public final p()J
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/protobuf/j;->a:[B

    .line 12
    .line 13
    aget-byte v4, v3, v0

    .line 14
    .line 15
    if-ltz v4, :cond_1

    .line 16
    .line 17
    iput v2, p0, Lcom/google/protobuf/j;->d:I

    .line 18
    .line 19
    int-to-long v0, v4

    .line 20
    return-wide v0

    .line 21
    :cond_1
    sub-int/2addr v1, v2

    .line 22
    const/16 v5, 0x9

    .line 23
    .line 24
    if-ge v1, v5, :cond_2

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 29
    .line 30
    aget-byte v2, v3, v2

    .line 31
    .line 32
    shl-int/lit8 v2, v2, 0x7

    .line 33
    .line 34
    xor-int/2addr v2, v4

    .line 35
    if-gez v2, :cond_3

    .line 36
    .line 37
    xor-int/lit8 v0, v2, -0x80

    .line 38
    .line 39
    int-to-long v2, v0

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 43
    .line 44
    aget-byte v1, v3, v1

    .line 45
    .line 46
    shl-int/lit8 v1, v1, 0xe

    .line 47
    .line 48
    xor-int/2addr v1, v2

    .line 49
    if-ltz v1, :cond_4

    .line 50
    .line 51
    xor-int/lit16 v0, v1, 0x3f80

    .line 52
    .line 53
    int-to-long v2, v0

    .line 54
    move v1, v4

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_4
    add-int/lit8 v2, v0, 0x4

    .line 58
    .line 59
    aget-byte v4, v3, v4

    .line 60
    .line 61
    shl-int/lit8 v4, v4, 0x15

    .line 62
    .line 63
    xor-int/2addr v1, v4

    .line 64
    if-gez v1, :cond_5

    .line 65
    .line 66
    const v0, -0x1fc080

    .line 67
    .line 68
    .line 69
    xor-int/2addr v0, v1

    .line 70
    int-to-long v0, v0

    .line 71
    :goto_0
    move-wide v10, v0

    .line 72
    move v1, v2

    .line 73
    move-wide v2, v10

    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_5
    int-to-long v4, v1

    .line 77
    add-int/lit8 v1, v0, 0x5

    .line 78
    .line 79
    aget-byte v2, v3, v2

    .line 80
    .line 81
    int-to-long v6, v2

    .line 82
    const/16 v2, 0x1c

    .line 83
    .line 84
    shl-long/2addr v6, v2

    .line 85
    xor-long/2addr v4, v6

    .line 86
    const-wide/16 v6, 0x0

    .line 87
    .line 88
    cmp-long v2, v4, v6

    .line 89
    .line 90
    if-ltz v2, :cond_6

    .line 91
    .line 92
    const-wide/32 v2, 0xfe03f80

    .line 93
    .line 94
    .line 95
    :goto_1
    xor-long/2addr v2, v4

    .line 96
    goto :goto_4

    .line 97
    :cond_6
    add-int/lit8 v2, v0, 0x6

    .line 98
    .line 99
    aget-byte v1, v3, v1

    .line 100
    .line 101
    int-to-long v8, v1

    .line 102
    const/16 v1, 0x23

    .line 103
    .line 104
    shl-long/2addr v8, v1

    .line 105
    xor-long/2addr v4, v8

    .line 106
    cmp-long v1, v4, v6

    .line 107
    .line 108
    if-gez v1, :cond_7

    .line 109
    .line 110
    const-wide v0, -0x7f01fc080L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :goto_2
    xor-long/2addr v0, v4

    .line 116
    goto :goto_0

    .line 117
    :cond_7
    add-int/lit8 v1, v0, 0x7

    .line 118
    .line 119
    aget-byte v2, v3, v2

    .line 120
    .line 121
    int-to-long v8, v2

    .line 122
    const/16 v2, 0x2a

    .line 123
    .line 124
    shl-long/2addr v8, v2

    .line 125
    xor-long/2addr v4, v8

    .line 126
    cmp-long v2, v4, v6

    .line 127
    .line 128
    if-ltz v2, :cond_8

    .line 129
    .line 130
    const-wide v2, 0x3f80fe03f80L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    add-int/lit8 v2, v0, 0x8

    .line 137
    .line 138
    aget-byte v1, v3, v1

    .line 139
    .line 140
    int-to-long v8, v1

    .line 141
    const/16 v1, 0x31

    .line 142
    .line 143
    shl-long/2addr v8, v1

    .line 144
    xor-long/2addr v4, v8

    .line 145
    cmp-long v1, v4, v6

    .line 146
    .line 147
    if-gez v1, :cond_9

    .line 148
    .line 149
    const-wide v0, -0x1fc07f01fc080L

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    add-int/lit8 v1, v0, 0x9

    .line 156
    .line 157
    aget-byte v2, v3, v2

    .line 158
    .line 159
    int-to-long v8, v2

    .line 160
    const/16 v2, 0x38

    .line 161
    .line 162
    shl-long/2addr v8, v2

    .line 163
    xor-long/2addr v4, v8

    .line 164
    const-wide v8, 0xfe03f80fe03f80L

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    xor-long/2addr v4, v8

    .line 170
    cmp-long v2, v4, v6

    .line 171
    .line 172
    if-gez v2, :cond_b

    .line 173
    .line 174
    add-int/lit8 v0, v0, 0xa

    .line 175
    .line 176
    aget-byte v1, v3, v1

    .line 177
    .line 178
    int-to-long v1, v1

    .line 179
    cmp-long v3, v1, v6

    .line 180
    .line 181
    if-gez v3, :cond_a

    .line 182
    .line 183
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/j;->q()J

    .line 184
    .line 185
    .line 186
    move-result-wide v0

    .line 187
    return-wide v0

    .line 188
    :cond_a
    move v1, v0

    .line 189
    :cond_b
    move-wide v2, v4

    .line 190
    :goto_4
    iput v1, p0, Lcom/google/protobuf/j;->d:I

    .line 191
    .line 192
    return-wide v2
.end method

.method public final q()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v2, v3, :cond_2

    .line 7
    .line 8
    iget v3, p0, Lcom/google/protobuf/j;->d:I

    .line 9
    .line 10
    iget v4, p0, Lcom/google/protobuf/j;->b:I

    .line 11
    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {p0, v3}, Lcom/google/protobuf/j;->v(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v3, p0, Lcom/google/protobuf/j;->d:I

    .line 19
    .line 20
    add-int/lit8 v4, v3, 0x1

    .line 21
    .line 22
    iput v4, p0, Lcom/google/protobuf/j;->d:I

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/protobuf/j;->a:[B

    .line 25
    .line 26
    aget-byte v3, v4, v3

    .line 27
    .line 28
    and-int/lit8 v4, v3, 0x7f

    .line 29
    .line 30
    int-to-long v4, v4

    .line 31
    shl-long/2addr v4, v2

    .line 32
    or-long/2addr v0, v4

    .line 33
    and-int/lit16 v3, v3, 0x80

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    return-wide v0

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x7

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Lcom/google/protobuf/o0;

    .line 42
    .line 43
    const-string v1, "CodedInputStream encountered a malformed varint."

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public final r()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j;->p()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    ushr-long v2, v0, v2

    .line 7
    .line 8
    const-wide/16 v4, 0x1

    .line 9
    .line 10
    and-long/2addr v0, v4

    .line 11
    neg-long v0, v0

    .line 12
    xor-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public final s()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/j;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/protobuf/j;->d:I

    .line 8
    .line 9
    sub-int v3, v1, v2

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/protobuf/j;->a:[B

    .line 12
    .line 13
    if-gt v0, v3, :cond_0

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v3, Lcom/google/protobuf/n0;->a:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/google/protobuf/j;->d:I

    .line 25
    .line 26
    add-int/2addr v2, v0

    .line 27
    iput v2, p0, Lcom/google/protobuf/j;->d:I

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    if-gt v0, v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->v(I)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/String;

    .line 41
    .line 42
    iget v2, p0, Lcom/google/protobuf/j;->d:I

    .line 43
    .line 44
    sget-object v3, Lcom/google/protobuf/n0;->a:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/google/protobuf/j;->d:I

    .line 50
    .line 51
    add-int/2addr v2, v0

    .line 52
    iput v2, p0, Lcom/google/protobuf/j;->d:I

    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->k(I)[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v2, Lcom/google/protobuf/n0;->a:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 64
    .line 65
    .line 66
    return-object v1
.end method

.method public final t()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->x(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/protobuf/j;->f:I

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/j;->n()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/google/protobuf/j;->f:I

    .line 23
    .line 24
    ushr-int/lit8 v1, v0, 0x3

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    new-instance v0, Lcom/google/protobuf/o0;

    .line 30
    .line 31
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public final u()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/j;->c:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/google/protobuf/j;->b:I

    .line 7
    .line 8
    iget v1, p0, Lcom/google/protobuf/j;->g:I

    .line 9
    .line 10
    add-int/2addr v1, v0

    .line 11
    iget v2, p0, Lcom/google/protobuf/j;->h:I

    .line 12
    .line 13
    if-le v1, v2, :cond_0

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/google/protobuf/j;->c:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/j;->b:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/google/protobuf/j;->c:I

    .line 24
    .line 25
    return-void
.end method

.method public final v(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j;->x(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method

.method public final w(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/j;->d:I

    .line 4
    .line 5
    sub-int v2, v0, v1

    .line 6
    .line 7
    if-gt p1, v2, :cond_0

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    iput v1, p0, Lcom/google/protobuf/j;->d:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-ltz p1, :cond_3

    .line 16
    .line 17
    iget v3, p0, Lcom/google/protobuf/j;->g:I

    .line 18
    .line 19
    add-int v4, v3, v1

    .line 20
    .line 21
    add-int/2addr v4, p1

    .line 22
    iget v5, p0, Lcom/google/protobuf/j;->h:I

    .line 23
    .line 24
    if-gt v4, v5, :cond_2

    .line 25
    .line 26
    iput v0, p0, Lcom/google/protobuf/j;->d:I

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->v(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sub-int v1, p1, v2

    .line 33
    .line 34
    iget v3, p0, Lcom/google/protobuf/j;->b:I

    .line 35
    .line 36
    if-le v1, v3, :cond_1

    .line 37
    .line 38
    add-int/2addr v2, v3

    .line 39
    iput v3, p0, Lcom/google/protobuf/j;->d:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/google/protobuf/j;->v(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput v1, p0, Lcom/google/protobuf/j;->d:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    sub-int/2addr v5, v3

    .line 49
    sub-int/2addr v5, v1

    .line 50
    invoke-virtual {p0, v5}, Lcom/google/protobuf/j;->w(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/google/protobuf/o0;->a()Lcom/google/protobuf/o0;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    throw p1

    .line 58
    :cond_3
    new-instance p1, Lcom/google/protobuf/o0;

    .line 59
    .line 60
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final x(I)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/j;->d:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iget v2, p0, Lcom/google/protobuf/j;->b:I

    .line 6
    .line 7
    if-le v1, v2, :cond_7

    .line 8
    .line 9
    iget v1, p0, Lcom/google/protobuf/j;->g:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    add-int/2addr v1, p1

    .line 13
    iget v3, p0, Lcom/google/protobuf/j;->h:I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-le v1, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/j;->e:Ljava/io/InputStream;

    .line 20
    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/protobuf/j;->a:[B

    .line 24
    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    if-le v2, v0, :cond_1

    .line 28
    .line 29
    sub-int/2addr v2, v0

    .line 30
    invoke-static {v3, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget v2, p0, Lcom/google/protobuf/j;->g:I

    .line 34
    .line 35
    add-int/2addr v2, v0

    .line 36
    iput v2, p0, Lcom/google/protobuf/j;->g:I

    .line 37
    .line 38
    iget v2, p0, Lcom/google/protobuf/j;->b:I

    .line 39
    .line 40
    sub-int/2addr v2, v0

    .line 41
    iput v2, p0, Lcom/google/protobuf/j;->b:I

    .line 42
    .line 43
    iput v4, p0, Lcom/google/protobuf/j;->d:I

    .line 44
    .line 45
    :cond_2
    iget v0, p0, Lcom/google/protobuf/j;->b:I

    .line 46
    .line 47
    array-length v2, v3

    .line 48
    sub-int/2addr v2, v0

    .line 49
    invoke-virtual {v1, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    if-lt v0, v1, :cond_5

    .line 57
    .line 58
    array-length v1, v3

    .line 59
    if-gt v0, v1, :cond_5

    .line 60
    .line 61
    if-lez v0, :cond_6

    .line 62
    .line 63
    iget v1, p0, Lcom/google/protobuf/j;->b:I

    .line 64
    .line 65
    add-int/2addr v1, v0

    .line 66
    iput v1, p0, Lcom/google/protobuf/j;->b:I

    .line 67
    .line 68
    iget v0, p0, Lcom/google/protobuf/j;->g:I

    .line 69
    .line 70
    add-int/2addr v0, p1

    .line 71
    const/high16 v1, 0x4000000

    .line 72
    .line 73
    sub-int/2addr v0, v1

    .line 74
    if-gtz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/google/protobuf/j;->u()V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lcom/google/protobuf/j;->b:I

    .line 80
    .line 81
    if-lt v0, p1, :cond_3

    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    return p1

    .line 85
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/j;->x(I)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    :cond_4
    new-instance p1, Lcom/google/protobuf/o0;

    .line 91
    .line 92
    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    .line 101
    .line 102
    const-string v2, "\nThe InputStream implementation is buggy."

    .line 103
    .line 104
    invoke-static {v1, v2, v0}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_6
    :goto_0
    return v4

    .line 113
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v1, "refillBuffer() called when "

    .line 116
    .line 117
    const-string v2, " bytes were already available in buffer"

    .line 118
    .line 119
    invoke-static {v1, v2, p1}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method
