.class public abstract Lcom/google/protobuf/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/google/protobuf/r0;


# direct methods
.method public static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/google/protobuf/p0;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lcom/google/protobuf/p0;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/protobuf/p0;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    check-cast p0, Ljava/util/Collection;

    .line 34
    .line 35
    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    check-cast p0, Ljava/util/Collection;

    .line 62
    .line 63
    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    return-void
.end method

.method public static newUninitializedMessageException(Lcom/google/protobuf/s0;)Lcom/google/protobuf/x0;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/protobuf/x0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/x0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Reading "

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
    const-string v1, " from a "

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

.method public abstract internalMergeFrom(Lcom/google/protobuf/c;)Lcom/google/protobuf/b;
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Z

    move-result p1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/j;->o(ILjava/io/InputStream;)I

    move-result v0

    .line 3
    new-instance v1, Lcom/google/protobuf/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/protobuf/a;-><init>(Ljava/io/InputStream;II)V

    .line 4
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/b;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeFrom(Lcom/google/protobuf/i;)Lcom/google/protobuf/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    .line 28
    :try_start_0
    check-cast p1, Lcom/google/protobuf/h;

    .line 29
    iget-object v0, p1, Lcom/google/protobuf/h;->d:[B

    .line 30
    invoke-virtual {p1}, Lcom/google/protobuf/h;->l()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/h;->size()I

    move-result p1

    const/4 v2, 0x1

    .line 31
    invoke-static {v0, v1, p1, v2}, Lcom/google/protobuf/j;->c([BIIZ)Lcom/google/protobuf/j;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;)Lcom/google/protobuf/b;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/o0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 34
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ByteString"

    invoke-virtual {p0, v1}, Lcom/google/protobuf/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 35
    :goto_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/r;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    .line 36
    :try_start_0
    check-cast p1, Lcom/google/protobuf/h;

    .line 37
    iget-object v0, p1, Lcom/google/protobuf/h;->d:[B

    .line 38
    invoke-virtual {p1}, Lcom/google/protobuf/h;->l()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/h;->size()I

    move-result p1

    const/4 v2, 0x1

    .line 39
    invoke-static {v0, v1, p1, v2}, Lcom/google/protobuf/j;->c([BIIZ)Lcom/google/protobuf/j;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p1, p2}, Lcom/google/protobuf/j;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/o0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 42
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "ByteString"

    invoke-virtual {p0, v0}, Lcom/google/protobuf/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 43
    :goto_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/j;)Lcom/google/protobuf/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;
.end method

.method public mergeFrom(Lcom/google/protobuf/s0;)Lcom/google/protobuf/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/s0;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    .line 46
    invoke-interface {p0}, Lcom/google/protobuf/t0;->getDefaultInstanceForType()Lcom/google/protobuf/s0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/google/protobuf/c;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->internalMergeFrom(Lcom/google/protobuf/c;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/j;

    invoke-direct {v0, p1}, Lcom/google/protobuf/j;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;)Lcom/google/protobuf/b;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/protobuf/j;->a(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/r;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/protobuf/j;

    invoke-direct {v0, p1}, Lcom/google/protobuf/j;-><init>(Ljava/io/InputStream;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/protobuf/j;->a(I)V

    return-object p0
.end method

.method public mergeFrom([B)Lcom/google/protobuf/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/b;->mergeFrom([BII)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/j;->c([BIIZ)Lcom/google/protobuf/j;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;)Lcom/google/protobuf/b;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/o0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 10
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-virtual {p0, p3}, Lcom/google/protobuf/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :goto_1
    throw p1
.end method

.method public mergeFrom([BIILcom/google/protobuf/r;)Lcom/google/protobuf/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/r;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/google/protobuf/j;->c([BIIZ)Lcom/google/protobuf/j;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, p4}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/protobuf/j;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/o0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 15
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-virtual {p0, p3}, Lcom/google/protobuf/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 16
    :goto_1
    throw p1
.end method

.method public mergeFrom([BLcom/google/protobuf/r;)Lcom/google/protobuf/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/r;",
            ")",
            "Lcom/google/protobuf/b;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/protobuf/b;->mergeFrom([BIILcom/google/protobuf/r;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/i;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/r0;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/j;)Lcom/google/protobuf/r0;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/j;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/s0;)Lcom/google/protobuf/r0;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->mergeFrom(Lcom/google/protobuf/s0;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/r0;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/r0;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/r0;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/protobuf/b;->mergeFrom([B)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/r0;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/b;->mergeFrom([BII)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/r;)Lcom/google/protobuf/r0;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/b;->mergeFrom([BIILcom/google/protobuf/r;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/r;)Lcom/google/protobuf/r0;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->mergeFrom([BLcom/google/protobuf/r;)Lcom/google/protobuf/b;

    move-result-object p1

    return-object p1
.end method
