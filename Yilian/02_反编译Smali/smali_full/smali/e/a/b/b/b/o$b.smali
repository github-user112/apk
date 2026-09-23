.class public Le/a/b/b/b/o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/a/b/b/b/o$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Le/a/b/b/b/o$a;

.field public final c:Le/a/b/d/b/k;


# virtual methods
.method public a(Le/a/b/b/b/o$b;)I
    .locals 4

    iget v0, p0, Le/a/b/b/b/o$b;->a:I

    iget v1, p1, Le/a/b/b/b/o$b;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Le/a/b/b/b/o$b;->d()Z

    move-result v0

    invoke-virtual {p1}, Le/a/b/b/b/o$b;->d()Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    iget-object p1, p1, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    invoke-virtual {v0, p1}, Le/a/b/d/b/k;->e(Le/a/b/d/b/k;)I

    move-result p1

    return p1
.end method

.method public b()Le/a/b/d/c/v;
    .locals 2

    iget-object v0, p0, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    throw v1

    .line 1
    :cond_0
    throw v1
.end method

.method public c()Le/a/b/d/c/v;
    .locals 2

    iget-object v0, p0, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    throw v1

    .line 1
    :cond_0
    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/b/b/o$b;

    invoke-virtual {p0, p1}, Le/a/b/b/b/o$b;->a(Le/a/b/b/b/o$b;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Le/a/b/b/b/o$b;->b:Le/a/b/b/b/o$a;

    sget-object v1, Le/a/b/b/b/o$a;->a:Le/a/b/b/b/o$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Le/a/b/d/b/k;)Z
    .locals 1

    iget-object v0, p0, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    invoke-virtual {v0, p1}, Le/a/b/d/b/k;->g(Le/a/b/d/b/k;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le/a/b/b/b/o$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le/a/b/b/b/o$b;

    invoke-virtual {p0, p1}, Le/a/b/b/b/o$b;->a(Le/a/b/b/b/o$b;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f(Le/a/b/b/b/o$a;)Le/a/b/b/b/o$b;
    .locals 2

    iget-object v0, p0, Le/a/b/b/b/o$b;->b:Le/a/b/b/b/o$a;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Le/a/b/b/b/o$b;->a:I

    iget-object v1, p0, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    if-ltz v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    .line 1
    :try_start_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec.getLocalItem() == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "disposition == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Le/a/b/b/b/o$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/b/b/b/o$b;->b:Le/a/b/b/b/o$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/b/b/b/o$b;->c:Le/a/b/d/b/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
