.class public abstract La/c/a/p;
.super La/c/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/p$i;,
        La/c/a/p$h;,
        La/c/a/p$d;,
        La/c/a/p$k;,
        La/c/a/p$c;,
        La/c/a/p$g;,
        La/c/a/p$f;,
        La/c/a/p$e;,
        La/c/a/p$b;,
        La/c/a/p$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "La/c/a/p<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "La/c/a/p$b<",
        "TMessageType;TBuilderType;>;>",
        "La/c/a/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public memoizedSerializedSize:I

.field public unknownFields:La/c/a/e0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/c/a/a;-><init>()V

    sget-object v0, La/c/a/e0;->a:La/c/a/e0;

    iput-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    const/4 v0, -0x1

    iput v0, p0, La/c/a/p;->memoizedSerializedSize:I

    return-void
.end method

.method public static synthetic access$200(La/c/a/k;)La/c/a/p$g;
    .locals 0

    invoke-static {p0}, La/c/a/p;->checkIsLite(La/c/a/k;)La/c/a/p$g;

    move-result-object p0

    return-object p0
.end method

.method private static checkIsLite(La/c/a/k;)La/c/a/p$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "La/c/a/p$e<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "La/c/a/k<",
            "TMessageType;TT;>;)",
            "La/c/a/p$g<",
            "TMessageType;TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, La/c/a/p$g;

    return-object p0
.end method

.method private static checkMessageInitialized(La/c/a/p;)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, La/c/a/p;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La/c/a/a;->newUninitializedMessageException()La/c/a/d0;

    move-result-object p0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, La/c/a/s;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La/c/a/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static emptyBooleanList()La/c/a/r$a;
    .locals 1

    .line 1
    sget-object v0, La/c/a/d;->c:La/c/a/d;

    return-object v0
.end method

.method public static emptyDoubleList()La/c/a/r$b;
    .locals 1

    .line 1
    sget-object v0, La/c/a/j;->c:La/c/a/j;

    return-object v0
.end method

.method public static emptyFloatList()La/c/a/r$e;
    .locals 1

    .line 1
    sget-object v0, La/c/a/o;->c:La/c/a/o;

    return-object v0
.end method

.method public static emptyIntList()La/c/a/r$f;
    .locals 1

    .line 1
    sget-object v0, La/c/a/q;->c:La/c/a/q;

    return-object v0
.end method

.method public static emptyLongList()La/c/a/r$g;
    .locals 1

    .line 1
    sget-object v0, La/c/a/w;->c:La/c/a/w;

    return-object v0
.end method

.method public static emptyProtobufList()La/c/a/r$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "La/c/a/r$h<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, La/c/a/a0;->c:La/c/a/a0;

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 5

    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    sget-object v1, La/c/a/e0;->a:La/c/a/e0;

    if-ne v0, v1, :cond_0

    .line 1
    new-instance v0, La/c/a/e0;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2
    invoke-direct {v0, v3, v2, v1, v4}, La/c/a/e0;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 3
    iput-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    :cond_0
    return-void
.end method

.method public static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Generated message class \""

    invoke-static {v1}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final isInitialized(La/c/a/p;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->b:La/c/a/p$j;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, La/c/a/p;->dynamicMethod(La/c/a/p$j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final makeImmutable(La/c/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;)V"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->e:La/c/a/p$j;

    invoke-virtual {p0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    return-void
.end method

.method public static mutableCopy(La/c/a/r$a;)La/c/a/r$a;
    .locals 1

    move-object v0, p0

    check-cast v0, La/c/a/d;

    .line 1
    iget v0, v0, La/c/a/d;->e:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 2
    :goto_0
    check-cast p0, La/c/a/d;

    invoke-virtual {p0, v0}, La/c/a/d;->f(I)La/c/a/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(La/c/a/r$b;)La/c/a/r$b;
    .locals 1

    move-object v0, p0

    check-cast v0, La/c/a/j;

    .line 3
    iget v0, v0, La/c/a/j;->e:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 4
    :goto_0
    check-cast p0, La/c/a/j;

    invoke-virtual {p0, v0}, La/c/a/j;->f(I)La/c/a/r$b;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(La/c/a/r$e;)La/c/a/r$e;
    .locals 1

    move-object v0, p0

    check-cast v0, La/c/a/o;

    .line 5
    iget v0, v0, La/c/a/o;->e:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 6
    :goto_0
    check-cast p0, La/c/a/o;

    invoke-virtual {p0, v0}, La/c/a/o;->h(I)La/c/a/r$e;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(La/c/a/r$f;)La/c/a/r$f;
    .locals 1

    move-object v0, p0

    check-cast v0, La/c/a/q;

    .line 7
    iget v0, v0, La/c/a/q;->e:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 8
    :goto_0
    check-cast p0, La/c/a/q;

    invoke-virtual {p0, v0}, La/c/a/q;->h(I)La/c/a/r$f;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(La/c/a/r$g;)La/c/a/r$g;
    .locals 1

    move-object v0, p0

    check-cast v0, La/c/a/w;

    .line 9
    iget v0, v0, La/c/a/w;->e:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 10
    :goto_0
    check-cast p0, La/c/a/w;

    invoke-virtual {p0, v0}, La/c/a/w;->h(I)La/c/a/r$g;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(La/c/a/r$h;)La/c/a/r$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "La/c/a/r$h<",
            "TE;>;)",
            "La/c/a/r$h<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, La/c/a/r$h;->a(I)La/c/a/r$h;

    move-result-object p0

    return-object p0
.end method

.method public static newRepeatedGeneratedExtension(La/c/a/x;La/c/a/x;La/c/a/r$d;ILa/c/a/i0;ZLjava/lang/Class;)La/c/a/p$g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "La/c/a/x;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "La/c/a/x;",
            "La/c/a/r$d<",
            "*>;I",
            "La/c/a/i0;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "La/c/a/p$g<",
            "TContainingType;TType;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p6

    new-instance v0, La/c/a/p$g;

    new-instance v7, La/c/a/p$f;

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, La/c/a/p$f;-><init>(La/c/a/r$d;ILa/c/a/i0;ZZ)V

    invoke-direct {v0, p0, p6, p1, v7}, La/c/a/p$g;-><init>(La/c/a/x;Ljava/lang/Object;La/c/a/x;La/c/a/p$f;)V

    return-object v0
.end method

.method public static newSingularGeneratedExtension(La/c/a/x;Ljava/lang/Object;La/c/a/x;La/c/a/r$d;ILa/c/a/i0;Ljava/lang/Class;)La/c/a/p$g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "La/c/a/x;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "La/c/a/x;",
            "La/c/a/r$d<",
            "*>;I",
            "La/c/a/i0;",
            "Ljava/lang/Class;",
            ")",
            "La/c/a/p$g<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance p6, La/c/a/p$g;

    new-instance v6, La/c/a/p$f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, La/c/a/p$f;-><init>(La/c/a/r$d;ILa/c/a/i0;ZZ)V

    invoke-direct {p6, p0, p1, p2, v6}, La/c/a/p$g;-><init>(La/c/a/x;Ljava/lang/Object;La/c/a/x;La/c/a/p$f;)V

    return-object p6
.end method

.method public static parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, La/c/a/m;->a()La/c/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c/a/p;->parsePartialDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;La/c/a/g;)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "La/c/a/g;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, La/c/a/m;->a()La/c/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "La/c/a/g;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;La/c/a/h;)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "La/c/a/h;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, La/c/a/m;->a()La/c/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c/a/p;->parseFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "La/c/a/h;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;Ljava/io/InputStream;)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, La/c/a/h;->c(Ljava/io/InputStream;)La/c/a/h;

    move-result-object p1

    invoke-static {}, La/c/a/m;->a()La/c/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, La/c/a/h;->c(Ljava/io/InputStream;)La/c/a/h;

    move-result-object p1

    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;[B)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    invoke-static {}, La/c/a/m;->a()La/c/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c/a/p;->parsePartialFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;[B",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;

    move-result-object p0

    invoke-static {p0}, La/c/a/p;->checkMessageInitialized(La/c/a/p;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method private static parsePartialDelimitedFrom(La/c/a/p;Ljava/io/InputStream;La/c/a/m;)La/c/a/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, La/c/a/h;->o(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, La/c/a/a$a$a;

    invoke-direct {v1, p1, v0}, La/c/a/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v1}, La/c/a/h;->c(Ljava/io/InputStream;)La/c/a/h;

    move-result-object p1

    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, La/c/a/h;->a(I)V
    :try_end_1
    .catch La/c/a/s; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, La/c/a/s;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, La/c/a/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePartialFrom(La/c/a/p;La/c/a/g;La/c/a/m;)La/c/a/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "La/c/a/g;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, La/c/a/g;->f()La/c/a/h;

    move-result-object p1

    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0
    :try_end_0
    .catch La/c/a/s; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, La/c/a/h;->a(I)V
    :try_end_1
    .catch La/c/a/s; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catch La/c/a/s; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static parsePartialFrom(La/c/a/p;La/c/a/h;)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "La/c/a/h;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, La/c/a/m;->a()La/c/a/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0

    return-object p0
.end method

.method public static parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;",
            "La/c/a/h;",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->f:La/c/a/p$j;

    invoke-virtual {p0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/c/a/p;

    :try_start_0
    sget-object v0, La/c/a/p$j;->d:La/c/a/p$j;

    invoke-virtual {p0, v0, p1, p2}, La/c/a/p;->dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, La/c/a/p;->makeImmutable()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, La/c/a/s;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, La/c/a/s;

    throw p0

    :cond_0
    throw p0
.end method

.method private static parsePartialFrom(La/c/a/p;[BLa/c/a/m;)La/c/a/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "La/c/a/p<",
            "TT;*>;>(TT;[B",
            "La/c/a/m;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, La/c/a/h;->d([BII)La/c/a/h;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p0
    :try_end_0
    .catch La/c/a/s; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v1}, La/c/a/h;->a(I)V
    :try_end_1
    .catch La/c/a/s; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catch La/c/a/s; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method


# virtual methods
.method public dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dynamicMethod(La/c/a/p$j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(La/c/a/p$d;La/c/a/x;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, La/c/a/p;->getDefaultInstanceForType()La/c/a/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p2, La/c/a/p;

    invoke-virtual {p0, p1, p2}, La/c/a/p;->visit(La/c/a/p$k;La/c/a/p;)V

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, La/c/a/p;->getDefaultInstanceForType()La/c/a/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, La/c/a/p$d;->a:La/c/a/p$d;

    check-cast p1, La/c/a/p;

    invoke-virtual {p0, v1, p1}, La/c/a/p;->visit(La/c/a/p$k;La/c/a/p;)V
    :try_end_0
    .catch La/c/a/p$d$a; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public final getDefaultInstanceForType()La/c/a/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->h:La/c/a/p$j;

    invoke-virtual {p0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a/p;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()La/c/a/x;
    .locals 1

    invoke-virtual {p0}, La/c/a/p;->getDefaultInstanceForType()La/c/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()La/c/a/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/a/z<",
            "TMessageType;>;"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->i:La/c/a/p$j;

    invoke-virtual {p0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a/z;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, La/c/a/a;->memoizedHashCode:I

    if-nez v0, :cond_0

    new-instance v0, La/c/a/p$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/c/a/p$h;-><init>(La/c/a/p$a;)V

    invoke-virtual {p0, v0, p0}, La/c/a/p;->visit(La/c/a/p$k;La/c/a/p;)V

    .line 1
    iget v0, v0, La/c/a/p$h;->a:I

    .line 2
    iput v0, p0, La/c/a/a;->memoizedHashCode:I

    :cond_0
    iget v0, p0, La/c/a/a;->memoizedHashCode:I

    return v0
.end method

.method public hashCode(La/c/a/p$h;)I
    .locals 2

    iget v0, p0, La/c/a/a;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 3
    iget v0, p1, La/c/a/p$h;->a:I

    const/4 v1, 0x0

    .line 4
    iput v1, p1, La/c/a/p$h;->a:I

    .line 5
    invoke-virtual {p0, p1, p0}, La/c/a/p;->visit(La/c/a/p$k;La/c/a/p;)V

    .line 6
    iget v1, p1, La/c/a/p$h;->a:I

    .line 7
    iput v1, p0, La/c/a/a;->memoizedHashCode:I

    .line 8
    iput v0, p1, La/c/a/p$h;->a:I

    .line 9
    :cond_0
    iget p1, p0, La/c/a/a;->memoizedHashCode:I

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    sget-object v0, La/c/a/p$j;->b:La/c/a/p$j;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, La/c/a/p;->dynamicMethod(La/c/a/p$j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeImmutable()V
    .locals 2

    sget-object v0, La/c/a/p$j;->e:La/c/a/p$j;

    invoke-virtual {p0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, La/c/a/e0;->f:Z

    return-void
.end method

.method public mergeLengthDelimitedField(ILa/c/a/g;)V
    .locals 1

    invoke-direct {p0}, La/c/a/p;->ensureUnknownFieldsInitialized()V

    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    .line 1
    invoke-virtual {v0}, La/c/a/e0;->a()V

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, La/c/a/e0;->e(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mergeUnknownFields(La/c/a/e0;)V
    .locals 1

    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-static {v0, p1}, La/c/a/e0;->d(La/c/a/e0;La/c/a/e0;)La/c/a/e0;

    move-result-object p1

    iput-object p1, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    return-void
.end method

.method public mergeVarintField(II)V
    .locals 3

    invoke-direct {p0}, La/c/a/p;->ensureUnknownFieldsInitialized()V

    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    .line 1
    invoke-virtual {v0}, La/c/a/e0;->a()V

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, La/c/a/e0;->e(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final newBuilderForType()La/c/a/p$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->g:La/c/a/p$j;

    invoke-virtual {p0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a/p$b;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()La/c/a/x$a;
    .locals 1

    invoke-virtual {p0}, La/c/a/p;->newBuilderForType()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public parseUnknownField(ILa/c/a/h;)Z
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, La/c/a/p;->ensureUnknownFieldsInitialized()V

    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-virtual {v0, p1, p2}, La/c/a/e0;->c(ILa/c/a/h;)Z

    move-result p1

    return p1
.end method

.method public final toBuilder()La/c/a/p$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->g:La/c/a/p$j;

    invoke-virtual {p0, v0}, La/c/a/p;->dynamicMethod(La/c/a/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c/a/p$b;

    invoke-virtual {v0, p0}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    return-object v0
.end method

.method public bridge synthetic toBuilder()La/c/a/x$a;
    .locals 1

    invoke-virtual {p0}, La/c/a/p;->toBuilder()La/c/a/p$b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lb/e/b/g;->T(La/c/a/x;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(La/c/a/p$k;La/c/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/a/p$k;",
            "TMessageType;)V"
        }
    .end annotation

    sget-object v0, La/c/a/p$j;->c:La/c/a/p$j;

    invoke-virtual {p0, v0, p1, p2}, La/c/a/p;->dynamicMethod(La/c/a/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    iget-object p2, p2, La/c/a/p;->unknownFields:La/c/a/e0;

    invoke-interface {p1, v0, p2}, La/c/a/p$k;->c(La/c/a/e0;La/c/a/e0;)La/c/a/e0;

    move-result-object p1

    iput-object p1, p0, La/c/a/p;->unknownFields:La/c/a/e0;

    return-void
.end method
