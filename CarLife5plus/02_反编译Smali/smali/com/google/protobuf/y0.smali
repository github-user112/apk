.class public final Lcom/google/protobuf/y0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final f:Lcom/google/protobuf/y0;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/y0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/protobuf/y0;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/protobuf/y0;->f:Lcom/google/protobuf/y0;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    .line 1
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/google/protobuf/y0;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/protobuf/y0;->d:I

    .line 4
    iput p1, p0, Lcom/google/protobuf/y0;->a:I

    .line 5
    iput-object p2, p0, Lcom/google/protobuf/y0;->b:[I

    .line 6
    iput-object p3, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 7
    iput-boolean p4, p0, Lcom/google/protobuf/y0;->e:Z

    return-void
.end method

.method public static c(Lcom/google/protobuf/y0;Lcom/google/protobuf/y0;)Lcom/google/protobuf/y0;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/y0;->a:I

    .line 2
    .line 3
    iget v1, p1, Lcom/google/protobuf/y0;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/google/protobuf/y0;->b:[I

    .line 7
    .line 8
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p1, Lcom/google/protobuf/y0;->b:[I

    .line 13
    .line 14
    iget v3, p0, Lcom/google/protobuf/y0;->a:I

    .line 15
    .line 16
    iget v4, p1, Lcom/google/protobuf/y0;->a:I

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p1, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 29
    .line 30
    iget p0, p0, Lcom/google/protobuf/y0;->a:I

    .line 31
    .line 32
    iget p1, p1, Lcom/google/protobuf/y0;->a:I

    .line 33
    .line 34
    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lcom/google/protobuf/y0;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/protobuf/y0;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 41
    .line 42
    .line 43
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/y0;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/protobuf/y0;->a:I

    .line 10
    .line 11
    if-ge v0, v2, :cond_6

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/protobuf/y0;->b:[I

    .line 14
    .line 15
    aget v2, v2, v0

    .line 16
    .line 17
    ushr-int/lit8 v3, v2, 0x3

    .line 18
    .line 19
    and-int/lit8 v2, v2, 0x7

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v4, :cond_4

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v2, v4, :cond_3

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    if-eq v2, v5, :cond_2

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-ne v2, v4, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 36
    .line 37
    aget-object v2, v2, v0

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/google/protobuf/n;->n(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/lit8 v2, v2, 0x4

    .line 49
    .line 50
    :goto_1
    add-int/2addr v2, v1

    .line 51
    move v1, v2

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance v1, Lcom/google/protobuf/o0;

    .line 56
    .line 57
    const-string v2, "Protocol message tag had invalid wire type."

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    invoke-static {v3}, Lcom/google/protobuf/n;->n(I)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    mul-int/lit8 v2, v2, 0x2

    .line 71
    .line 72
    iget-object v3, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 73
    .line 74
    aget-object v3, v3, v0

    .line 75
    .line 76
    check-cast v3, Lcom/google/protobuf/y0;

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/google/protobuf/y0;->a()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    :goto_2
    add-int/2addr v3, v2

    .line 83
    add-int/2addr v3, v1

    .line 84
    move v1, v3

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 87
    .line 88
    aget-object v2, v2, v0

    .line 89
    .line 90
    check-cast v2, Lcom/google/protobuf/i;

    .line 91
    .line 92
    invoke-static {v3, v2}, Lcom/google/protobuf/n;->i(ILcom/google/protobuf/i;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 98
    .line 99
    aget-object v2, v2, v0

    .line 100
    .line 101
    check-cast v2, Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Lcom/google/protobuf/n;->n(I)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    add-int/lit8 v2, v2, 0x8

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 114
    .line 115
    aget-object v2, v2, v0

    .line 116
    .line 117
    check-cast v2, Ljava/lang/Long;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    invoke-static {v3}, Lcom/google/protobuf/n;->n(I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {v4, v5}, Lcom/google/protobuf/n;->q(J)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    goto :goto_2

    .line 132
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_6
    iput v1, p0, Lcom/google/protobuf/y0;->d:I

    .line 136
    .line 137
    return v1
.end method

.method public final b(ILcom/google/protobuf/j;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/y0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    ushr-int/lit8 v0, p1, 0x3

    .line 6
    .line 7
    and-int/lit8 v1, p1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_7

    .line 11
    .line 12
    if-eq v1, v2, :cond_6

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v1, v3, :cond_5

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    const/4 v4, 0x3

    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    if-eq v1, v3, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    if-ne v1, v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/google/protobuf/j;->l()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y0;->d(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_0
    new-instance p1, Lcom/google/protobuf/o0;

    .line 39
    .line 40
    const-string p2, "Protocol message tag had invalid wire type."

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    return p1

    .line 48
    :cond_2
    new-instance v1, Lcom/google/protobuf/y0;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/google/protobuf/y0;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1, v5, p2}, Lcom/google/protobuf/y0;->b(ILcom/google/protobuf/j;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    :cond_4
    shl-int/2addr v0, v4

    .line 66
    or-int/2addr v0, v3

    .line 67
    invoke-virtual {p2, v0}, Lcom/google/protobuf/j;->a(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/y0;->d(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->g()Lcom/google/protobuf/h;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y0;->d(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_6
    invoke-virtual {p2}, Lcom/google/protobuf/j;->m()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y0;->d(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/j;->p()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y0;->d(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public final d(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/y0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/protobuf/y0;->b:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    shr-int/lit8 v2, v0, 0x1

    .line 15
    .line 16
    :goto_0
    add-int/2addr v0, v2

    .line 17
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/google/protobuf/y0;->b:[I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/y0;->b:[I

    .line 32
    .line 33
    iget v1, p0, Lcom/google/protobuf/y0;->a:I

    .line 34
    .line 35
    aput p1, v0, v1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p2, p1, v1

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    iput v1, p0, Lcom/google/protobuf/y0;->a:I

    .line 44
    .line 45
    return-void
.end method

.method public final e(Lcom/google/protobuf/n;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/protobuf/y0;->a:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_5

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/protobuf/y0;->b:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    ushr-int/lit8 v2, v1, 0x3

    .line 11
    .line 12
    and-int/lit8 v1, v1, 0x7

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v1, v3, :cond_3

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq v1, v3, :cond_2

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    if-eq v1, v3, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    if-ne v1, v3, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v1, v1, v0

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/n;->v(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance p1, Lcom/google/protobuf/o0;

    .line 43
    .line 44
    const-string v0, "Protocol message tag had invalid wire type."

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/n;->B(II)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 54
    .line 55
    aget-object v1, v1, v0

    .line 56
    .line 57
    check-cast v1, Lcom/google/protobuf/y0;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/n;->B(II)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 68
    .line 69
    aget-object v1, v1, v0

    .line 70
    .line 71
    check-cast v1, Lcom/google/protobuf/i;

    .line 72
    .line 73
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/n;->t(ILcom/google/protobuf/i;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 78
    .line 79
    aget-object v1, v1, v0

    .line 80
    .line 81
    check-cast v1, Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/n;->w(IJ)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 92
    .line 93
    aget-object v1, v1, v0

    .line 94
    .line 95
    check-cast v1, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/n;->E(IJ)V

    .line 102
    .line 103
    .line 104
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/y0;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Lcom/google/protobuf/y0;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/protobuf/y0;->a:I

    .line 17
    .line 18
    iget v3, p1, Lcom/google/protobuf/y0;->a:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_4

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/protobuf/y0;->b:[I

    .line 23
    .line 24
    iget-object v3, p1, Lcom/google/protobuf/y0;->b:[I

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v2, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return v0

    .line 44
    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget v1, p0, Lcom/google/protobuf/y0;->a:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/protobuf/y0;->b:[I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v0

    .line 15
    mul-int/lit8 v1, v1, 0x1f

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/protobuf/y0;->c:[Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v0, v1

    .line 24
    return v0
.end method
