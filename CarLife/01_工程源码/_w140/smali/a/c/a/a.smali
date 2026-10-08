.class public abstract La/c/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/c/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "La/c/a/a<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "La/c/a/a$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "La/c/a/x;"
    }
.end annotation


# instance fields
.field public memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/c/a/a;->memoizedHashCode:I

    return-void
.end method

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

    invoke-static {p0, p1}, La/c/a/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method public static checkByteStringIsUtf8(La/c/a/g;)V
    .locals 1

    invoke-virtual {p0}, La/c/a/g;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Serializing "

    invoke-static {v0}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public newUninitializedMessageException()La/c/a/d0;
    .locals 1

    new-instance v0, La/c/a/d0;

    invoke-direct {v0}, La/c/a/d0;-><init>()V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    :try_start_0
    invoke-interface {p0}, La/c/a/x;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    .line 1
    sget-object v2, La/c/a/i;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v2, La/c/a/i$c;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, La/c/a/i$c;-><init>([BII)V

    .line 3
    invoke-interface {p0, v2}, La/c/a/x;->writeTo(La/c/a/i;)V

    .line 4
    invoke-virtual {v2}, La/c/a/i$c;->q()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, La/c/a/a;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()La/c/a/g;
    .locals 4

    :try_start_0
    invoke-interface {p0}, La/c/a/x;->getSerializedSize()I

    move-result v0

    .line 1
    sget-object v1, La/c/a/g;->b:La/c/a/g;

    .line 2
    new-array v1, v0, [B

    .line 3
    sget-object v2, La/c/a/i;->a:Ljava/util/logging/Logger;

    .line 4
    new-instance v2, La/c/a/i$c;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, La/c/a/i$c;-><init>([BII)V

    .line 5
    invoke-interface {p0, v2}, La/c/a/x;->writeTo(La/c/a/i;)V

    .line 6
    invoke-virtual {v2}, La/c/a/i;->q()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, La/c/a/g$d;

    invoke-direct {v0, v1}, La/c/a/g$d;-><init>([B)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, La/c/a/a;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 3

    invoke-interface {p0}, La/c/a/x;->getSerializedSize()I

    move-result v0

    .line 1
    invoke-static {v0}, La/c/a/i;->m(I)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x1000

    if-le v1, v2, :cond_0

    const/16 v1, 0x1000

    .line 2
    :cond_0
    new-instance v2, La/c/a/i$e;

    invoke-direct {v2, p1, v1}, La/c/a/i$e;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    invoke-virtual {v2, v0}, La/c/a/i$e;->C(I)V

    .line 4
    invoke-interface {p0, v2}, La/c/a/x;->writeTo(La/c/a/i;)V

    .line 5
    iget p1, v2, La/c/a/i$b;->f:I

    if-lez p1, :cond_1

    invoke-virtual {v2}, La/c/a/i$e;->G()V

    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-interface {p0}, La/c/a/x;->getSerializedSize()I

    move-result v0

    .line 1
    sget-object v1, La/c/a/i;->a:Ljava/util/logging/Logger;

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    const/16 v0, 0x1000

    .line 2
    :cond_0
    new-instance v1, La/c/a/i$e;

    invoke-direct {v1, p1, v0}, La/c/a/i$e;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    invoke-interface {p0, v1}, La/c/a/x;->writeTo(La/c/a/i;)V

    .line 4
    iget p1, v1, La/c/a/i$b;->f:I

    if-lez p1, :cond_1

    invoke-virtual {v1}, La/c/a/i$e;->G()V

    :cond_1
    return-void
.end method
