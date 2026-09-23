.class public abstract Lcom/google/protobuf/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lcom/google/protobuf/h;

.field public static final c:Lcom/google/protobuf/g;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/h;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/n0;->b:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/protobuf/h;-><init>([B)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 9
    .line 10
    :try_start_0
    const-string v0, "android.content.Context"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/protobuf/g;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Lcom/google/protobuf/g;-><init>(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    new-instance v0, Lcom/google/protobuf/g;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Lcom/google/protobuf/g;-><init>(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sput-object v0, Lcom/google/protobuf/i;->c:Lcom/google/protobuf/g;

    .line 29
    .line 30
    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/google/protobuf/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/h;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/n0;->a:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/google/protobuf/h;-><init>([B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public abstract b(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/i;->a:I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/i;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    move-object v1, p0

    .line 10
    check-cast v1, Lcom/google/protobuf/h;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/protobuf/h;->l()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sget-object v3, Lcom/google/protobuf/n0;->a:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    move v4, v0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    add-int v5, v2, v0

    .line 21
    .line 22
    if-ge v3, v5, :cond_0

    .line 23
    .line 24
    mul-int/lit8 v4, v4, 0x1f

    .line 25
    .line 26
    iget-object v5, v1, Lcom/google/protobuf/h;->d:[B

    .line 27
    .line 28
    aget-byte v5, v5, v3

    .line 29
    .line 30
    add-int/2addr v4, v5

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-nez v4, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    :cond_1
    iput v4, p0, Lcom/google/protobuf/i;->a:I

    .line 38
    .line 39
    return v4

    .line 40
    :cond_2
    return v0
.end method

.method public abstract j([BI)V
.end method

.method public final k()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/protobuf/n0;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/i;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    move-object v1, p0

    .line 13
    check-cast v1, Lcom/google/protobuf/h;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/protobuf/h;->l()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1}, Lcom/google/protobuf/h;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v1, v1, Lcom/google/protobuf/h;->d:[B

    .line 26
    .line 27
    invoke-direct {v2, v1, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    return-object v2
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/i;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v2, v0

    .line 25
    .line 26
    const-string v0, "<ByteString@%s size=%d>"

    .line 27
    .line 28
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
