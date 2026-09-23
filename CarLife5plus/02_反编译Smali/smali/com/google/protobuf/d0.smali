.class public abstract Lcom/google/protobuf/d0;
.super Lcom/google/protobuf/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/protobuf/y0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/protobuf/c;->memoizedHashCode:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/protobuf/y0;->f:Lcom/google/protobuf/y0;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 13
    .line 14
    return-void
.end method

.method public static access$200(Lcom/google/protobuf/p;)Lcom/google/protobuf/y;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lcom/google/protobuf/y;

    .line 5
    .line 6
    return-object p0
.end method

.method public static b(Lcom/google/protobuf/d0;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/d0;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/c;->newUninitializedMessageException()Lcom/google/protobuf/x0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/google/protobuf/o0;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/j;->o(ILjava/io/InputStream;)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    new-instance v1, Lcom/google/protobuf/a;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p1, v0, v2}, Lcom/google/protobuf/a;-><init>(Ljava/io/InputStream;II)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/google/protobuf/j;

    .line 21
    .line 22
    invoke-direct {p1, v1}, Lcom/google/protobuf/j;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Lcom/google/protobuf/j;->a(I)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Lcom/google/protobuf/o0;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public static emptyBooleanList()Lcom/google/protobuf/f0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/e;->d:Lcom/google/protobuf/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static emptyDoubleList()Lcom/google/protobuf/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/o;->d:Lcom/google/protobuf/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public static emptyFloatList()Lcom/google/protobuf/j0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/s;->d:Lcom/google/protobuf/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public static emptyIntList()Lcom/google/protobuf/k0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/e0;->d:Lcom/google/protobuf/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static emptyLongList()Lcom/google/protobuf/l0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/q0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static emptyProtobufList()Lcom/google/protobuf/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/m0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/w0;->c:Lcom/google/protobuf/w0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p2

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Generated message class \""

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "\" missing method \""

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, "\"."

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of p1, p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    instance-of p1, p0, Ljava/lang/Error;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Error;

    .line 20
    .line 21
    throw p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 25
    .line 26
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw p0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 37
    .line 38
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public static final isInitialized(Lcom/google/protobuf/d0;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;Z)Z"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/b0;->a:Lcom/google/protobuf/b0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final makeImmutable(Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/protobuf/b0;->d:Lcom/google/protobuf/b0;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    return-void
.end method

.method public static mutableCopy(Lcom/google/protobuf/f0;)Lcom/google/protobuf/f0;
    .locals 3

    .line 14
    check-cast p0, Lcom/google/protobuf/e;

    .line 15
    iget v0, p0, Lcom/google/protobuf/e;->c:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 16
    new-instance v0, Lcom/google/protobuf/e;

    iget-object v2, p0, Lcom/google/protobuf/e;->b:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/e;->c:I

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/e;-><init>([ZI)V

    return-object v0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/g0;)Lcom/google/protobuf/g0;
    .locals 3

    .line 10
    check-cast p0, Lcom/google/protobuf/o;

    .line 11
    iget v0, p0, Lcom/google/protobuf/o;->c:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    .line 12
    new-instance v0, Lcom/google/protobuf/o;

    iget-object v2, p0, Lcom/google/protobuf/o;->b:[D

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iget p0, p0, Lcom/google/protobuf/o;->c:I

    invoke-direct {v0, v1, p0}, Lcom/google/protobuf/o;-><init>([DI)V

    return-object v0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/j0;)Lcom/google/protobuf/j0;
    .locals 1

    .line 7
    check-cast p0, Lcom/google/protobuf/s;

    .line 8
    iget v0, p0, Lcom/google/protobuf/s;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/s;->l(I)Lcom/google/protobuf/s;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/protobuf/e0;

    .line 2
    iget v0, p0, Lcom/google/protobuf/e0;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/e0;->m(I)Lcom/google/protobuf/e0;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/l0;)Lcom/google/protobuf/l0;
    .locals 1

    .line 4
    check-cast p0, Lcom/google/protobuf/q0;

    .line 5
    iget v0, p0, Lcom/google/protobuf/q0;->c:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/q0;->m(I)Lcom/google/protobuf/q0;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/m0;)Lcom/google/protobuf/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/m0;",
            ")",
            "Lcom/google/protobuf/m0;"
        }
    .end annotation

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 19
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/m0;->e(I)Lcom/google/protobuf/m0;

    move-result-object p0

    return-object p0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/google/protobuf/s0;Lcom/google/protobuf/s0;Lcom/google/protobuf/i0;ILcom/google/protobuf/i1;ZLjava/lang/Class;)Lcom/google/protobuf/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/s0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/protobuf/s0;",
            "Lcom/google/protobuf/i0;",
            "I",
            "Lcom/google/protobuf/i1;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/y;"
        }
    .end annotation

    .line 1
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    new-instance p5, Lcom/google/protobuf/y;

    .line 4
    .line 5
    new-instance p6, Lcom/google/protobuf/x;

    .line 6
    .line 7
    invoke-direct {p6, p3, p4}, Lcom/google/protobuf/x;-><init>(ILcom/google/protobuf/i1;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p5, p0, p2, p1, p6}, Lcom/google/protobuf/y;-><init>(Lcom/google/protobuf/s0;Ljava/lang/Object;Lcom/google/protobuf/s0;Lcom/google/protobuf/x;)V

    .line 11
    .line 12
    .line 13
    return-object p5
.end method

.method public static newSingularGeneratedExtension(Lcom/google/protobuf/s0;Ljava/lang/Object;Lcom/google/protobuf/s0;Lcom/google/protobuf/i0;ILcom/google/protobuf/i1;Ljava/lang/Class;)Lcom/google/protobuf/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/s0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/protobuf/s0;",
            "Lcom/google/protobuf/i0;",
            "I",
            "Lcom/google/protobuf/i1;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/y;"
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/google/protobuf/y;

    .line 2
    .line 3
    new-instance p6, Lcom/google/protobuf/x;

    .line 4
    .line 5
    invoke-direct {p6, p4, p5}, Lcom/google/protobuf/x;-><init>(ILcom/google/protobuf/i1;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p3, p0, p1, p2, p6}, Lcom/google/protobuf/y;-><init>(Lcom/google/protobuf/s0;Ljava/lang/Object;Lcom/google/protobuf/s0;Lcom/google/protobuf/x;)V

    .line 9
    .line 10
    .line 11
    return-object p3
.end method

.method public static parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/d0;->c(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/r;",
            ")TT;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d0;->c(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Lcom/google/protobuf/i;",
            ")TT;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Lcom/google/protobuf/i;",
            "Lcom/google/protobuf/r;",
            ")TT;"
        }
    .end annotation

    .line 15
    check-cast p1, Lcom/google/protobuf/h;

    .line 16
    iget-object v0, p1, Lcom/google/protobuf/h;->d:[B

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/h;->l()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/h;->size()I

    move-result p1

    const/4 v2, 0x1

    .line 18
    invoke-static {v0, v1, p1, v2}, Lcom/google/protobuf/j;->c([BIIZ)Lcom/google/protobuf/j;

    move-result-object p1

    .line 19
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    const/4 p2, 0x0

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/protobuf/j;->a(I)V

    .line 21
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Lcom/google/protobuf/j;",
            "Lcom/google/protobuf/r;",
            ")TT;"
        }
    .end annotation

    .line 29
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/j;

    invoke-direct {v0, p1}, Lcom/google/protobuf/j;-><init>(Ljava/io/InputStream;)V

    .line 2
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object p1

    .line 3
    invoke-static {p0, v0, p1}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/r;",
            ")TT;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/protobuf/j;

    invoke-direct {v0, p1}, Lcom/google/protobuf/j;-><init>(Ljava/io/InputStream;)V

    .line 6
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v0

    .line 23
    array-length v1, p1

    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v2, v1, v2}, Lcom/google/protobuf/j;->c([BIIZ)Lcom/google/protobuf/j;

    move-result-object p1

    .line 25
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 26
    invoke-virtual {p1, v2}, Lcom/google/protobuf/j;->a(I)V

    .line 27
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;[B",
            "Lcom/google/protobuf/r;",
            ")TT;"
        }
    .end annotation

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1, v0, v1}, Lcom/google/protobuf/j;->c([BIIZ)Lcom/google/protobuf/j;

    move-result-object p1

    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    .line 11
    invoke-virtual {p1, v1}, Lcom/google/protobuf/j;->a(I)V

    .line 12
    invoke-static {p0}, Lcom/google/protobuf/d0;->b(Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public static parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/google/protobuf/r;->a()Lcom/google/protobuf/r;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/d0;->parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    return-object p0
.end method

.method public static parsePartialFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/d0;",
            ">(TT;",
            "Lcom/google/protobuf/j;",
            "Lcom/google/protobuf/r;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/b0;->e:Lcom/google/protobuf/b0;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/d0;

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/protobuf/b0;->c:Lcom/google/protobuf/b0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/d0;->makeImmutable()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/o0;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o0;

    throw p0

    .line 6
    :cond_0
    throw p0
.end method


# virtual methods
.method public dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Lcom/google/protobuf/w;Lcom/google/protobuf/s0;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d0;->getDefaultInstanceForType()Lcom/google/protobuf/d0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    check-cast p2, Lcom/google/protobuf/d0;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->visit(Lcom/google/protobuf/c0;Lcom/google/protobuf/d0;)V

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/d0;->getDefaultInstanceForType()Lcom/google/protobuf/d0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/protobuf/w;->a:Lcom/google/protobuf/w;

    check-cast p1, Lcom/google/protobuf/d0;

    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/d0;->visit(Lcom/google/protobuf/c0;Lcom/google/protobuf/d0;)V
    :try_end_0
    .catch Lcom/google/protobuf/v; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/d0;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/b0;->g:Lcom/google/protobuf/b0;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/d0;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/s0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d0;->getDefaultInstanceForType()Lcom/google/protobuf/d0;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/b0;->h:Lcom/google/protobuf/b0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/protobuf/v0;

    .line 8
    .line 9
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/c;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/z;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/google/protobuf/z;->a:I

    .line 5
    invoke-virtual {p0, v0, p0}, Lcom/google/protobuf/d0;->visit(Lcom/google/protobuf/c0;Lcom/google/protobuf/d0;)V

    .line 6
    iget v0, v0, Lcom/google/protobuf/z;->a:I

    .line 7
    iput v0, p0, Lcom/google/protobuf/c;->memoizedHashCode:I

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/protobuf/c;->memoizedHashCode:I

    return v0
.end method

.method public hashCode(Lcom/google/protobuf/z;)I
    .locals 2

    .line 9
    iget v0, p0, Lcom/google/protobuf/c;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 10
    iget v0, p1, Lcom/google/protobuf/z;->a:I

    const/4 v1, 0x0

    .line 11
    iput v1, p1, Lcom/google/protobuf/z;->a:I

    .line 12
    invoke-virtual {p0, p1, p0}, Lcom/google/protobuf/d0;->visit(Lcom/google/protobuf/c0;Lcom/google/protobuf/d0;)V

    .line 13
    iget v1, p1, Lcom/google/protobuf/z;->a:I

    .line 14
    iput v1, p0, Lcom/google/protobuf/c;->memoizedHashCode:I

    .line 15
    iput v0, p1, Lcom/google/protobuf/z;->a:I

    .line 16
    :cond_0
    iget p1, p0, Lcom/google/protobuf/c;->memoizedHashCode:I

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/b0;->a:Lcom/google/protobuf/b0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeImmutable()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/b0;->d:Lcom/google/protobuf/b0;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/google/protobuf/y0;->e:Z

    return-void
.end method

.method public mergeLengthDelimitedField(ILcom/google/protobuf/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/y0;->f:Lcom/google/protobuf/y0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/protobuf/y0;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/protobuf/y0;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/google/protobuf/y0;->e:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    shl-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    or-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/y0;->d(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "Zero is not a valid field number."

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/y0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/protobuf/y0;->c(Lcom/google/protobuf/y0;Lcom/google/protobuf/y0;)Lcom/google/protobuf/y0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 8
    .line 9
    return-void
.end method

.method public mergeVarintField(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/y0;->f:Lcom/google/protobuf/y0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/protobuf/y0;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/protobuf/y0;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/google/protobuf/y0;->e:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    shl-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    int-to-long v1, p2

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/y0;->d(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Zero is not a valid field number."

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d0;->newBuilderForType()Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/google/protobuf/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/b0;->f:Lcom/google/protobuf/b0;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    return-object v0
.end method

.method public parseUnknownField(ILcom/google/protobuf/j;)Z
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 9
    .line 10
    sget-object v1, Lcom/google/protobuf/y0;->f:Lcom/google/protobuf/y0;

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/google/protobuf/y0;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/protobuf/y0;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/y0;->b(ILcom/google/protobuf/j;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/google/protobuf/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/protobuf/b0;->f:Lcom/google/protobuf/b0;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "# "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p0, v1, v0}, Lcom/google/protobuf/u0;->f(Lcom/google/protobuf/d0;Ljava/lang/StringBuilder;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public visit(Lcom/google/protobuf/c0;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/c0;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/b0;->b:Lcom/google/protobuf/b0;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 9
    .line 10
    invoke-interface {p1, v0, p2}, Lcom/google/protobuf/c0;->c(Lcom/google/protobuf/y0;Lcom/google/protobuf/y0;)Lcom/google/protobuf/y0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 15
    .line 16
    return-void
.end method
