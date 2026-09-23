.class public abstract Lcom/google/protobuf/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/google/protobuf/s0;


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkByteStringIsUtf8(Lcom/google/protobuf/i;)V
    .locals 3

    .line 1
    check-cast p0, Lcom/google/protobuf/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/h;->l()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/h;->d:[B

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/h;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    sget-object v2, Lcom/google/protobuf/d1;->a:Lcom/google/protobuf/u0;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v0, p0}, Lcom/google/protobuf/u0;->d([BII)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "Byte string is not UTF-8."

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Serializing "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " to a "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " threw an IOException (should never happen)."

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public newUninitializedMessageException()Lcom/google/protobuf/x0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/x0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/x0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/s0;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    sget-object v2, Lcom/google/protobuf/n;->a:Ljava/util/logging/Logger;

    .line 8
    .line 9
    new-instance v2, Lcom/google/protobuf/k;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v1, v3, v0}, Lcom/google/protobuf/k;-><init>([BII)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v2}, Lcom/google/protobuf/s0;->writeTo(Lcom/google/protobuf/n;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/protobuf/k;->F()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "Did not write as much data as expected."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string v2, "byte array"

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lcom/google/protobuf/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public toByteString()Lcom/google/protobuf/i;
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/protobuf/s0;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    sget-object v2, Lcom/google/protobuf/n;->a:Ljava/util/logging/Logger;

    .line 10
    .line 11
    new-instance v2, Lcom/google/protobuf/k;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v1, v3, v0}, Lcom/google/protobuf/k;-><init>([BII)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v2}, Lcom/google/protobuf/s0;->writeTo(Lcom/google/protobuf/n;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/protobuf/k;->F()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/google/protobuf/h;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/google/protobuf/h;-><init>([B)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "Did not write as much data as expected."

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string v2, "ByteString"

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/google/protobuf/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/s0;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/n;->p(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    const/16 v2, 0x1000

    .line 11
    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x1000

    .line 15
    .line 16
    :cond_0
    new-instance v2, Lcom/google/protobuf/m;

    .line 17
    .line 18
    invoke-direct {v2, p1, v1}, Lcom/google/protobuf/m;-><init>(Ljava/io/OutputStream;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lcom/google/protobuf/m;->D(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v2}, Lcom/google/protobuf/s0;->writeTo(Lcom/google/protobuf/n;)V

    .line 25
    .line 26
    .line 27
    iget p1, v2, Lcom/google/protobuf/m;->f:I

    .line 28
    .line 29
    if-lez p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/protobuf/m;->I()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/s0;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/google/protobuf/n;->a:Ljava/util/logging/Logger;

    .line 6
    .line 7
    const/16 v1, 0x1000

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x1000

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lcom/google/protobuf/m;

    .line 14
    .line 15
    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/m;-><init>(Ljava/io/OutputStream;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v1}, Lcom/google/protobuf/s0;->writeTo(Lcom/google/protobuf/n;)V

    .line 19
    .line 20
    .line 21
    iget p1, v1, Lcom/google/protobuf/m;->f:I

    .line 22
    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/protobuf/m;->I()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
