.class public final La/c/a/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:[B

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public final f:Ljava/io/InputStream;

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, La/c/a/h;->i:I

    new-array p2, p2, [B

    iput-object p2, p0, La/c/a/h;->a:[B

    const/4 p2, 0x0

    iput p2, p0, La/c/a/h;->e:I

    iput p2, p0, La/c/a/h;->h:I

    iput-object p1, p0, La/c/a/h;->f:Ljava/io/InputStream;

    iput-boolean p2, p0, La/c/a/h;->b:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, La/c/a/h;->i:I

    iput-object p1, p0, La/c/a/h;->a:[B

    add-int/2addr p3, p2

    iput p3, p0, La/c/a/h;->c:I

    iput p2, p0, La/c/a/h;->e:I

    neg-int p1, p2

    iput p1, p0, La/c/a/h;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, La/c/a/h;->f:Ljava/io/InputStream;

    iput-boolean p4, p0, La/c/a/h;->b:Z

    return-void
.end method

.method public static c(Ljava/io/InputStream;)La/c/a/h;
    .locals 2

    new-instance v0, La/c/a/h;

    const/16 v1, 0x1000

    invoke-direct {v0, p0, v1}, La/c/a/h;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static d([BII)La/c/a/h;
    .locals 2

    .line 1
    new-instance v0, La/c/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, La/c/a/h;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v0, p2}, La/c/a/h;->e(I)I
    :try_end_0
    .catch La/c/a/s; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static o(ILjava/io/InputStream;)I
    .locals 3

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_0
    const/16 v1, 0x20

    const/4 v2, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_2

    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v2, :cond_5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_5
    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p0

    throw p0

    .line 1
    :cond_6
    new-instance p0, La/c/a/s;

    const-string p1, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, p1}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 2
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, La/c/a/h;->g:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, La/c/a/s;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1
.end method

.method public b()I
    .locals 3

    iget v0, p0, La/c/a/h;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, La/c/a/h;->h:I

    iget v2, p0, La/c/a/h;->e:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public e(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, La/c/a/h;->h:I

    iget v1, p0, La/c/a/h;->e:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget p1, p0, La/c/a/h;->i:I

    if-gt v0, p1, :cond_0

    iput v0, p0, La/c/a/h;->i:I

    invoke-virtual {p0}, La/c/a/h;->v()V

    return p1

    :cond_0
    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, La/c/a/s;->b()La/c/a/s;

    move-result-object p1

    throw p1
.end method

.method public f()Z
    .locals 5

    invoke-virtual {p0}, La/c/a/h;->p()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()La/c/a/g;
    .locals 5

    invoke-virtual {p0}, La/c/a/h;->n()I

    move-result v0

    iget v1, p0, La/c/a/h;->c:I

    iget v2, p0, La/c/a/h;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-boolean v1, p0, La/c/a/h;->b:Z

    iget-object v1, p0, La/c/a/h;->a:[B

    .line 1
    new-instance v3, La/c/a/g$d;

    sget-object v4, La/c/a/g;->c:La/c/a/g$b;

    invoke-interface {v4, v1, v2, v0}, La/c/a/g$b;->a([BII)[B

    move-result-object v1

    invoke-direct {v3, v1}, La/c/a/g$d;-><init>([B)V

    .line 2
    iget v1, p0, La/c/a/h;->e:I

    add-int/2addr v1, v0

    iput v1, p0, La/c/a/h;->e:I

    return-object v3

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, La/c/a/g;->b:La/c/a/g;

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, La/c/a/h;->k(I)[B

    move-result-object v0

    .line 3
    sget-object v1, La/c/a/g;->b:La/c/a/g;

    new-instance v1, La/c/a/g$d;

    invoke-direct {v1, v0}, La/c/a/g$d;-><init>([B)V

    return-object v1
.end method

.method public h()D
    .locals 2

    invoke-virtual {p0}, La/c/a/h;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public i()F
    .locals 1

    invoke-virtual {p0}, La/c/a/h;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public j(La/c/a/z;La/c/a/m;)La/c/a/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "La/c/a/x;",
            ">(",
            "La/c/a/z<",
            "TT;>;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, La/c/a/h;->n()I

    move-result v0

    iget v1, p0, La/c/a/h;->j:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, La/c/a/h;->e(I)I

    move-result v0

    iget v1, p0, La/c/a/h;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/c/a/h;->j:I

    invoke-interface {p1, p0, p2}, La/c/a/z;->a(La/c/a/h;La/c/a/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/c/a/x;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, La/c/a/h;->a(I)V

    iget p2, p0, La/c/a/h;->j:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, La/c/a/h;->j:I

    .line 1
    iput v0, p0, La/c/a/h;->i:I

    invoke-virtual {p0}, La/c/a/h;->v()V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, La/c/a/s;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method public final k(I)[B
    .locals 12

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object p1, La/c/a/r;->b:[B

    return-object p1

    :cond_0
    invoke-static {}, La/c/a/s;->b()La/c/a/s;

    move-result-object p1

    throw p1

    :cond_1
    iget v0, p0, La/c/a/h;->h:I

    iget v1, p0, La/c/a/h;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    const/high16 v3, 0x4000000

    if-gt v2, v3, :cond_c

    iget v3, p0, La/c/a/h;->i:I

    if-gt v2, v3, :cond_b

    iget-object v2, p0, La/c/a/h;->f:Ljava/io/InputStream;

    if-eqz v2, :cond_a

    iget v3, p0, La/c/a/h;->c:I

    sub-int v4, v3, v1

    add-int/2addr v0, v3

    iput v0, p0, La/c/a/h;->h:I

    const/4 v0, 0x0

    iput v0, p0, La/c/a/h;->e:I

    iput v0, p0, La/c/a/h;->c:I

    sub-int v3, p1, v4

    const/4 v5, -0x1

    const/16 v6, 0x1000

    if-lt v3, v6, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v3, :cond_5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [B

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_4

    iget-object v10, p0, La/c/a/h;->f:Ljava/io/InputStream;

    sub-int v11, v7, v9

    invoke-virtual {v10, v8, v9, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v5, :cond_3

    iget v11, p0, La/c/a/h;->h:I

    add-int/2addr v11, v10

    iput v11, p0, La/c/a/h;->h:I

    add-int/2addr v9, v10

    goto :goto_1

    :cond_3
    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p1

    throw p1

    :cond_4
    sub-int/2addr v3, v7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-array p1, p1, [B

    iget-object v3, p0, La/c/a/h;->a:[B

    invoke-static {v3, v1, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v0, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v4, v2

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    :goto_3
    new-array v2, p1, [B

    iget-object v3, p0, La/c/a/h;->a:[B

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-ge v4, p1, :cond_9

    iget-object v0, p0, La/c/a/h;->f:Ljava/io/InputStream;

    sub-int v1, p1, v4

    invoke-virtual {v0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v5, :cond_8

    iget v1, p0, La/c/a/h;->h:I

    add-int/2addr v1, v0

    iput v1, p0, La/c/a/h;->h:I

    add-int/2addr v4, v0

    goto :goto_4

    :cond_8
    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p1

    throw p1

    :cond_9
    return-object v2

    :cond_a
    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p1

    throw p1

    :cond_b
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, La/c/a/h;->x(I)V

    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p1

    throw p1

    .line 1
    :cond_c
    new-instance p1, La/c/a/s;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 2
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public l()I
    .locals 4

    iget v0, p0, La/c/a/h;->e:I

    iget v1, p0, La/c/a/h;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, La/c/a/h;->w(I)V

    iget v0, p0, La/c/a/h;->e:I

    :cond_0
    iget-object v1, p0, La/c/a/h;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, La/c/a/h;->e:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public m()J
    .locals 9

    iget v0, p0, La/c/a/h;->e:I

    iget v1, p0, La/c/a/h;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, La/c/a/h;->w(I)V

    iget v0, p0, La/c/a/h;->e:I

    :cond_0
    iget-object v1, p0, La/c/a/h;->a:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, La/c/a/h;->e:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public n()I
    .locals 5

    iget v0, p0, La/c/a/h;->e:I

    iget v1, p0, La/c/a/h;->c:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, La/c/a/h;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, La/c/a/h;->e:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_5

    xor-int/lit16 v0, v0, 0x3f80

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_6

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_7

    :goto_0
    invoke-virtual {p0}, La/c/a/h;->q()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_7
    :goto_1
    iput v1, p0, La/c/a/h;->e:I

    return v0
.end method

.method public p()J
    .locals 11

    iget v0, p0, La/c/a/h;->e:I

    iget v1, p0, La/c/a/h;->c:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, La/c/a/h;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, La/c/a/h;->e:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_5

    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_5

    :cond_4
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_5

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long/2addr v1, v3

    move-wide v2, v1

    move v1, v0

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long/2addr v3, v5

    :cond_7
    :goto_3
    move-wide v2, v3

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_9

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_a
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_7

    :goto_4
    invoke-virtual {p0}, La/c/a/h;->q()J

    move-result-wide v0

    return-wide v0

    :cond_b
    move v1, v0

    goto :goto_3

    :goto_5
    iput v1, p0, La/c/a/h;->e:I

    return-wide v2
.end method

.method public q()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 1
    iget v3, p0, La/c/a/h;->e:I

    iget v4, p0, La/c/a/h;->c:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, La/c/a/h;->w(I)V

    :cond_0
    iget-object v3, p0, La/c/a/h;->a:[B

    iget v4, p0, La/c/a/h;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, La/c/a/h;->e:I

    aget-byte v3, v3, v4

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2
    :cond_2
    new-instance v0, La/c/a/s;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 3
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public r()I
    .locals 2

    invoke-virtual {p0}, La/c/a/h;->n()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public s()J
    .locals 6

    invoke-virtual {p0}, La/c/a/h;->p()J

    move-result-wide v0

    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public t()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, La/c/a/h;->n()I

    move-result v0

    iget v1, p0, La/c/a/h;->c:I

    iget v2, p0, La/c/a/h;->e:I

    sub-int v2, v1, v2

    if-gt v0, v2, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, La/c/a/h;->a:[B

    iget v3, p0, La/c/a/h;->e:I

    sget-object v4, La/c/a/r;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, La/c/a/h;->e:I

    add-int/2addr v2, v0

    iput v2, p0, La/c/a/h;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    if-gt v0, v1, :cond_2

    invoke-virtual {p0, v0}, La/c/a/h;->w(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, La/c/a/h;->a:[B

    iget v3, p0, La/c/a/h;->e:I

    sget-object v4, La/c/a/r;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, La/c/a/h;->e:I

    add-int/2addr v2, v0

    iput v2, p0, La/c/a/h;->e:I

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, La/c/a/h;->k(I)[B

    move-result-object v0

    sget-object v2, La/c/a/r;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public u()I
    .locals 4

    .line 1
    iget v0, p0, La/c/a/h;->e:I

    iget v1, p0, La/c/a/h;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, La/c/a/h;->y(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    iput v3, p0, La/c/a/h;->g:I

    return v3

    :cond_1
    invoke-virtual {p0}, La/c/a/h;->n()I

    move-result v0

    iput v0, p0, La/c/a/h;->g:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    return v0

    .line 3
    :cond_2
    new-instance v0, La/c/a/s;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 4
    throw v0
.end method

.method public final v()V
    .locals 3

    iget v0, p0, La/c/a/h;->c:I

    iget v1, p0, La/c/a/h;->d:I

    add-int/2addr v0, v1

    iput v0, p0, La/c/a/h;->c:I

    iget v1, p0, La/c/a/h;->h:I

    add-int/2addr v1, v0

    iget v2, p0, La/c/a/h;->i:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, La/c/a/h;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, La/c/a/h;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, La/c/a/h;->d:I

    :goto_0
    return-void
.end method

.method public final w(I)V
    .locals 0

    invoke-virtual {p0, p1}, La/c/a/h;->y(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p1

    throw p1
.end method

.method public x(I)V
    .locals 5

    iget v0, p0, La/c/a/h;->c:I

    iget v1, p0, La/c/a/h;->e:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, La/c/a/h;->e:I

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_3

    .line 1
    iget v2, p0, La/c/a/h;->h:I

    add-int v3, v2, v1

    add-int/2addr v3, p1

    iget v4, p0, La/c/a/h;->i:I

    if-gt v3, v4, :cond_2

    sub-int v1, v0, v1

    iput v0, p0, La/c/a/h;->e:I

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, La/c/a/h;->w(I)V

    sub-int v2, p1, v1

    iget v3, p0, La/c/a/h;->c:I

    if-le v2, v3, :cond_1

    add-int/2addr v1, v3

    iput v3, p0, La/c/a/h;->e:I

    goto :goto_0

    :cond_1
    iput v2, p0, La/c/a/h;->e:I

    :goto_1
    return-void

    :cond_2
    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, La/c/a/h;->x(I)V

    invoke-static {}, La/c/a/s;->c()La/c/a/s;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, La/c/a/s;->b()La/c/a/s;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final y(I)Z
    .locals 5

    iget v0, p0, La/c/a/h;->e:I

    add-int v1, v0, p1

    iget v2, p0, La/c/a/h;->c:I

    if-le v1, v2, :cond_7

    iget v1, p0, La/c/a/h;->h:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v3, p0, La/c/a/h;->i:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, La/c/a/h;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    if-lez v0, :cond_2

    if-le v2, v0, :cond_1

    iget-object v1, p0, La/c/a/h;->a:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v1, p0, La/c/a/h;->h:I

    add-int/2addr v1, v0

    iput v1, p0, La/c/a/h;->h:I

    iget v1, p0, La/c/a/h;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, La/c/a/h;->c:I

    iput v4, p0, La/c/a/h;->e:I

    :cond_2
    iget-object v0, p0, La/c/a/h;->f:Ljava/io/InputStream;

    iget-object v1, p0, La/c/a/h;->a:[B

    iget v2, p0, La/c/a/h;->c:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-lt v0, v1, :cond_5

    iget-object v1, p0, La/c/a/h;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_5

    if-lez v0, :cond_6

    iget v1, p0, La/c/a/h;->c:I

    add-int/2addr v1, v0

    iput v1, p0, La/c/a/h;->c:I

    iget v0, p0, La/c/a/h;->h:I

    add-int/2addr v0, p1

    const/high16 v1, 0x4000000

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    invoke-virtual {p0}, La/c/a/h;->v()V

    iget v0, p0, La/c/a/h;->c:I

    if-lt v0, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, La/c/a/h;->y(I)Z

    move-result p1

    :goto_0
    return p1

    .line 1
    :cond_4
    new-instance p1, La/c/a/s;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v4

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
