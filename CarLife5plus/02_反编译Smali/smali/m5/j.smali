.class public final Lm5/j;
.super Lg1/j0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final d:[B

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(III[BI)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p3, p5, v0, v1}, Lg1/j0;-><init>(IIIB)V

    .line 4
    .line 5
    .line 6
    if-gt p3, p1, :cond_0

    .line 7
    .line 8
    if-gt p5, p2, :cond_0

    .line 9
    .line 10
    iput-object p4, p0, Lm5/j;->d:[B

    .line 11
    .line 12
    iput p1, p0, Lm5/j;->e:I

    .line 13
    .line 14
    iput p2, p0, Lm5/j;->f:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "Crop rectangle does not fit within image data."

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method


# virtual methods
.method public final e()[B
    .locals 8

    .line 1
    iget-object v0, p0, Lm5/j;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lg1/j0;->b:I

    .line 4
    .line 5
    iget v2, p0, Lg1/j0;->c:I

    .line 6
    .line 7
    iget v3, p0, Lm5/j;->e:I

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    iget v4, p0, Lm5/j;->f:I

    .line 12
    .line 13
    if-ne v2, v4, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    mul-int v4, v1, v2

    .line 17
    .line 18
    new-array v5, v4, [B

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    invoke-static {v0, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    return-object v5

    .line 27
    :cond_1
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v6, v2, :cond_2

    .line 29
    .line 30
    mul-int v7, v6, v1

    .line 31
    .line 32
    invoke-static {v0, v4, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v4, v3

    .line 36
    add-int/lit8 v6, v6, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v5
.end method

.method public final f([BI)[B
    .locals 3

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lg1/j0;->c:I

    .line 4
    .line 5
    if-ge p2, v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lg1/j0;->b:I

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    :cond_0
    new-array p1, v0, [B

    .line 15
    .line 16
    :cond_1
    iget v1, p0, Lm5/j;->e:I

    .line 17
    .line 18
    mul-int p2, p2, v1

    .line 19
    .line 20
    iget-object v1, p0, Lm5/j;->d:[B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v1, p2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Requested row is outside the image: "

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
