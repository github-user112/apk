.class public La/c/a/g$d;
.super La/c/a/g$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final e:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, La/c/a/g$c;-><init>()V

    iput-object p1, p0, La/c/a/g$d;->e:[B

    return-void
.end method


# virtual methods
.method public c(I)B
    .locals 1

    iget-object v0, p0, La/c/a/g$d;->e:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final e()Z
    .locals 5

    invoke-virtual {p0}, La/c/a/g$d;->k()I

    move-result v0

    iget-object v1, p0, La/c/a/g$d;->e:[B

    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 1
    sget-object v3, La/c/a/g0;->a:La/c/a/g0$a;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v3, v4, v1, v0, v2}, La/c/a/g0$a;->b(I[BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La/c/a/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, La/c/a/g;

    invoke-virtual {v3}, La/c/a/g;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p1, La/c/a/g$d;

    if-eqz v1, :cond_9

    check-cast p1, La/c/a/g$d;

    .line 1
    iget v1, p0, La/c/a/g;->d:I

    iget v3, p1, La/c/a/g;->d:I

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    .line 2
    :cond_4
    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v1

    .line 3
    invoke-virtual {p1}, La/c/a/g$d;->size()I

    move-result v3

    if-gt v1, v3, :cond_8

    add-int v3, v2, v1

    invoke-virtual {p1}, La/c/a/g$d;->size()I

    move-result v4

    if-gt v3, v4, :cond_7

    iget-object v3, p0, La/c/a/g$d;->e:[B

    iget-object v4, p1, La/c/a/g$d;->e:[B

    invoke-virtual {p0}, La/c/a/g$d;->k()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, La/c/a/g$d;->k()I

    move-result v1

    invoke-virtual {p1}, La/c/a/g$d;->k()I

    move-result p1

    add-int/2addr p1, v2

    :goto_0
    if-ge v1, v5, :cond_6

    aget-byte v6, v3, v1

    aget-byte v7, v4, p1

    if-eq v6, v7, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ran off end of other: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, La/c/a/g$d;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()La/c/a/h;
    .locals 5

    iget-object v0, p0, La/c/a/g$d;->e:[B

    invoke-virtual {p0}, La/c/a/g$d;->k()I

    move-result v1

    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v2

    .line 1
    new-instance v3, La/c/a/h;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v2, v4}, La/c/a/h;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v3, v2}, La/c/a/h;->e(I)I
    :try_end_0
    .catch La/c/a/s; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g(III)I
    .locals 3

    iget-object v0, p0, La/c/a/g$d;->e:[B

    invoke-virtual {p0}, La/c/a/g$d;->k()I

    move-result v1

    add-int/2addr v1, p2

    .line 1
    sget-object p2, La/c/a/r;->a:Ljava/nio/charset/Charset;

    move p2, v1

    :goto_0
    add-int v2, v1, p3

    if-ge p2, v2, :cond_0

    mul-int/lit8 p1, p1, 0x1f

    aget-byte v2, v0, p2

    add-int/2addr p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final h(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, La/c/a/g$d;->e:[B

    invoke-virtual {p0}, La/c/a/g$d;->k()I

    move-result v2

    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final j(La/c/a/e;)V
    .locals 3

    iget-object v0, p0, La/c/a/g$d;->e:[B

    invoke-virtual {p0}, La/c/a/g$d;->k()I

    move-result v1

    invoke-virtual {p0}, La/c/a/g$d;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, La/c/a/e;->a([BII)V

    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, La/c/a/g$d;->e:[B

    array-length v0, v0

    return v0
.end method
