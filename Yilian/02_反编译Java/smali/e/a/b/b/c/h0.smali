.class public abstract Le/a/b/b/c/h0;
.super Le/a/b/b/c/y;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/b/b/c/y;",
        "Ljava/lang/Comparable<",
        "Le/a/b/b/c/h0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Le/a/b/b/c/l0;

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Le/a/b/b/c/y;-><init>()V

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iput p1, p0, Le/a/b/b/c/h0;->a:I

    iput p2, p0, Le/a/b/b/c/h0;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/b/c/h0;->c:Le/a/b/b/c/l0;

    iput v0, p0, Le/a/b/b/c/h0;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "writeSize < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid alignment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static h(Le/a/b/b/c/h0;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Le/a/b/b/c/h0;->g()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()I
    .locals 2

    iget v0, p0, Le/a/b/b/c/h0;->b:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/b/c/h0;

    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->e(Le/a/b/b/c/h0;)I

    move-result p1

    return p1
.end method

.method public final d(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 3

    iget v0, p0, Le/a/b/b/c/h0;->a:I

    check-cast p2, Le/a/b/f/c;

    invoke-virtual {p2, v0}, Le/a/b/f/c;->a(I)V

    :try_start_0
    iget v0, p0, Le/a/b/b/c/h0;->b:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Le/a/b/b/c/h0;->g()I

    move-result v0

    .line 1
    iget v1, p2, Le/a/b/f/c;->c:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/b/b/c/h0;->m(Le/a/b/b/c/m;Le/a/b/f/a;)V

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Le/a/a/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; actual value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Le/a/b/f/c;->c:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p2, v0}, Le/a/a/c/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writeSize is unknown"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Le/a/a/c/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)Le/a/a/c/b;

    move-result-object p1

    throw p1
.end method

.method public final e(Le/a/b/b/c/h0;)I
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Le/a/b/b/c/y;->b()Le/a/b/b/c/z;

    move-result-object v0

    invoke-virtual {p1}, Le/a/b/b/c/y;->b()Le/a/b/b/c/z;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->f(Le/a/b/b/c/h0;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Le/a/b/b/c/h0;

    invoke-virtual {p0}, Le/a/b/b/c/y;->b()Le/a/b/b/c/z;

    move-result-object v1

    invoke-virtual {p1}, Le/a/b/b/c/y;->b()Le/a/b/b/c/z;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Le/a/b/b/c/h0;->f(Le/a/b/b/c/h0;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Le/a/b/b/c/h0;)I
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Le/a/b/b/c/h0;->d:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Le/a/b/b/c/h0;->c:Le/a/b/b/c/l0;

    invoke-virtual {v1, v0}, Le/a/b/b/c/l0;->b(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/b/b/c/h0;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j(Le/a/b/b/c/l0;I)I
    .locals 1

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    iget-object v0, p0, Le/a/b/b/c/h0;->c:Le/a/b/b/c/l0;

    if-nez v0, :cond_0

    iget v0, p0, Le/a/b/b/c/h0;->a:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    iput-object p1, p0, Le/a/b/b/c/h0;->c:Le/a/b/b/c/l0;

    iput p2, p0, Le/a/b/b/c/h0;->d:I

    invoke-virtual {p0, p1, p2}, Le/a/b/b/c/h0;->k(Le/a/b/b/c/l0;I)V

    return p2

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "already written"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addedTo == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 0

    return-void
.end method

.method public final l(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Le/a/b/b/c/h0;->b:I

    if-gez v0, :cond_0

    iput p1, p0, Le/a/b/b/c/h0;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writeSize already set"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "writeSize < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract m(Le/a/b/b/c/m;Le/a/b/f/a;)V
.end method
