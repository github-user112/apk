.class public abstract La/c/a/p$b;
.super La/c/a/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "La/c/a/p<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "La/c/a/p$b<",
        "TMessageType;TBuilderType;>;>",
        "La/c/a/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final defaultInstance:La/c/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public instance:La/c/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public isBuilt:Z


# direct methods
.method public constructor <init>(La/c/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, La/c/a/a$a;-><init>()V

    iput-object p1, p0, La/c/a/p$b;->defaultInstance:La/c/a/p;

    sget-object v0, La/c/a/p$j;->f:La/c/a/p$j;

    invoke-virtual {p1, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/c/a/p;

    iput-object p1, p0, La/c/a/p$b;->instance:La/c/a/p;

    const/4 p1, 0x0

    iput-boolean p1, p0, La/c/a/p$b;->isBuilt:Z

    return-void
.end method


# virtual methods
.method public final build()La/c/a/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, La/c/a/p$b;->buildPartial()La/c/a/p;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, La/c/a/a$a;->newUninitializedMessageException(La/c/a/x;)La/c/a/d0;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()La/c/a/x;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, La/c/a/p$b;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    return-object v0

    :cond_0
    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    invoke-virtual {v0}, La/c/a/p;->makeImmutable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/c/a/p$b;->isBuilt:Z

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    return-object v0
.end method

.method public bridge synthetic buildPartial()La/c/a/x;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->buildPartial()La/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final clear()La/c/a/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    sget-object v1, La/c/a/p$j;->f:La/c/a/p$j;

    invoke-virtual {v0, v1}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a/p;

    iput-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    return-object p0
.end method

.method public bridge synthetic clear()La/c/a/x$a;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->clear()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()La/c/a/a$a;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->clone()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()La/c/a/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, La/c/a/p$b;->getDefaultInstanceForType()La/c/a/p;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p;->newBuilderForType()La/c/a/p$b;

    move-result-object v0

    invoke-virtual {p0}, La/c/a/p$b;->buildPartial()La/c/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    return-object v0
.end method

.method public bridge synthetic clone()La/c/a/x$a;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->clone()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->clone()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public copyOnWrite()V
    .locals 3

    iget-boolean v0, p0, La/c/a/p$b;->isBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    sget-object v1, La/c/a/p$j;->f:La/c/a/p$j;

    invoke-virtual {v0, v1}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a/p;

    sget-object v1, La/c/a/p$i;->a:La/c/a/p$i;

    iget-object v2, p0, La/c/a/p$b;->instance:La/c/a/p;

    invoke-virtual {v0, v1, v2}, La/c/a/p;->visit(La/c/a/p$k;La/c/a/p;)V

    iput-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/c/a/p$b;->isBuilt:Z

    :cond_0
    return-void
.end method

.method public getDefaultInstanceForType()La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, La/c/a/p$b;->defaultInstance:La/c/a/p;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()La/c/a/x;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->getDefaultInstanceForType()La/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic internalMergeFrom(La/c/a/a;)La/c/a/a$a;
    .locals 0

    check-cast p1, La/c/a/p;

    invoke-virtual {p0, p1}, La/c/a/p$b;->internalMergeFrom(La/c/a/p;)La/c/a/p$b;

    move-result-object p1

    return-object p1
.end method

.method public internalMergeFrom(La/c/a/p;)La/c/a/p$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/c/a/p;->isInitialized(La/c/a/p;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(La/c/a/h;La/c/a/m;)La/c/a/a$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, La/c/a/p$b;->mergeFrom(La/c/a/h;La/c/a/m;)La/c/a/p$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(La/c/a/h;La/c/a/m;)La/c/a/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/a/h;",
            "La/c/a/m;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    :try_start_0
    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    sget-object v1, La/c/a/p$j;->d:La/c/a/p$j;

    invoke-virtual {v0, v1, p1, p2}, La/c/a/p;->dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    throw p1
.end method

.method public mergeFrom(La/c/a/p;)La/c/a/p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    sget-object v1, La/c/a/p$i;->a:La/c/a/p$i;

    invoke-virtual {v0, v1, p1}, La/c/a/p;->visit(La/c/a/p$k;La/c/a/p;)V

    return-object p0
.end method

.method public bridge synthetic mergeFrom(La/c/a/h;La/c/a/m;)La/c/a/x$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, La/c/a/p$b;->mergeFrom(La/c/a/h;La/c/a/m;)La/c/a/p$b;

    move-result-object p1

    return-object p1
.end method
