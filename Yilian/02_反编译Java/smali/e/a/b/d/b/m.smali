.class public final Le/a/b/d/b/m;
.super Le/a/b/f/i;
.source ""


# instance fields
.field public final b:[Le/a/b/d/b/k;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Le/a/b/f/i;-><init>(Z)V

    new-array p1, p1, [Le/a/b/d/b/k;

    iput-object p1, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    iput v0, p0, Le/a/b/d/b/m;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Le/a/b/d/b/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Le/a/b/d/b/m;

    iget-object v0, p1, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    iget-object v2, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v2, v2

    array-length v3, v0

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Le/a/b/d/b/m;->i()I

    move-result v3

    invoke-virtual {p1}, Le/a/b/d/b/m;->i()I

    move-result p1

    if-eq v3, p1, :cond_1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_5

    iget-object v3, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object v3, v3, p1

    aget-object v4, v0, p1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Le/a/b/d/b/k;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_3
    return v1
.end method

.method public f(I)Le/a/b/d/b/k;
    .locals 1

    :try_start_0
    iget-object v0, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Le/a/b/d/b/k;)V
    .locals 5

    invoke-virtual {p0}, Le/a/b/f/i;->d()V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Le/a/b/d/b/m;->c:I

    .line 1
    :try_start_0
    iget v0, p1, Le/a/b/d/b/k;->a:I

    .line 2
    iget-object v1, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aput-object p1, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lez v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Le/a/b/d/b/k;->h()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aput-object v1, v4, v3

    :cond_0
    invoke-virtual {p1}, Le/a/b/d/b/k;->h()I

    move-result p1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    add-int/lit8 v0, v0, 0x1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spec.getReg() out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Le/a/b/d/b/k;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    .line 1
    iget p1, p1, Le/a/b/d/b/k;->a:I

    const/4 v1, 0x0

    .line 2
    aput-object v1, v0, p1

    const/4 p1, -0x1

    iput p1, p0, Le/a/b/d/b/m;->c:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Le/a/b/d/b/k;->hashCode()I

    move-result v4

    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public i()I
    .locals 4

    iget v0, p0, Le/a/b/d/b/m;->c:I

    if-gez v0, :cond_2

    iget-object v0, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Le/a/b/d/b/m;->c:I

    move v0, v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Le/a/b/d/b/m;->b:[Le/a/b/d/b/k;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
