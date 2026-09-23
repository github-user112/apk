.class public abstract Lcom/google/protobuf/t;
.super Lcom/google/protobuf/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/d0;"
        }
    .end annotation
.end field

.field protected instance:Lcom/google/protobuf/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/d0;"
        }
    .end annotation
.end field

.field protected isBuilt:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/t;->defaultInstance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    sget-object v0, Lcom/google/protobuf/b0;->e:Lcom/google/protobuf/b0;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/protobuf/d0;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/google/protobuf/t;->isBuilt:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/protobuf/d0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/d0;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/t;->buildPartial()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/b;->newUninitializedMessageException(Lcom/google/protobuf/s0;)Lcom/google/protobuf/x0;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/s0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->build()Lcom/google/protobuf/d0;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/d0;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/google/protobuf/t;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->makeImmutable()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/protobuf/t;->isBuilt:Z

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/s0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->buildPartial()Lcom/google/protobuf/d0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->clear()Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/google/protobuf/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    sget-object v1, Lcom/google/protobuf/b0;->e:Lcom/google/protobuf/b0;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/d0;

    iput-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->clone()Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/r0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/t;->clone()Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/t;->getDefaultInstanceForType()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->newBuilderForType()Lcom/google/protobuf/t;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->buildPartial()Lcom/google/protobuf/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->clone()Lcom/google/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public copyOnWrite()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/t;->isBuilt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 6
    .line 7
    sget-object v1, Lcom/google/protobuf/b0;->e:Lcom/google/protobuf/b0;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/protobuf/d0;

    .line 14
    .line 15
    sget-object v1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/d0;->visit(Lcom/google/protobuf/c0;Lcom/google/protobuf/d0;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/protobuf/t;->isBuilt:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/d0;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/t;->defaultInstance:Lcom/google/protobuf/d0;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/s0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->getDefaultInstanceForType()Lcom/google/protobuf/d0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic internalMergeFrom(Lcom/google/protobuf/c;)Lcom/google/protobuf/b;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/d0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t;->internalMergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p1

    return-object p1
.end method

.method public internalMergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/d0;",
            ")",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/d0;->isInitialized(Lcom/google/protobuf/d0;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/r0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/t;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/d0;",
            ")",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    sget-object v1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/d0;->visit(Lcom/google/protobuf/c0;Lcom/google/protobuf/d0;)V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/j;",
            "Lcom/google/protobuf/r;",
            ")",
            "Lcom/google/protobuf/t;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    sget-object v1, Lcom/google/protobuf/b0;->c:Lcom/google/protobuf/b0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/protobuf/d0;->dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 9
    :cond_0
    throw p1
.end method
