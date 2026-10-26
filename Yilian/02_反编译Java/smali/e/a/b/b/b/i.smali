.class public final Le/a/b/b/b/i;
.super Le/a/b/f/d;
.source ""


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    iput p2, p0, Le/a/b/b/b/i;->c:I

    return-void
.end method


# virtual methods
.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Le/a/b/b/b/i;->j(I)Le/a/b/b/b/h;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Le/a/b/b/b/h;->c()I

    move-result v1

    invoke-virtual {v0}, Le/a/b/b/b/h;->b()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public j(I)Le/a/b/b/b/h;
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/b/b/h;

    return-object p1
.end method

.method public k(Le/a/b/f/a;)V
    .locals 14

    move-object v0, p1

    check-cast v0, Le/a/b/f/c;

    .line 1
    iget v1, v0, Le/a/b/f/c;->c:I

    .line 2
    iget-object v2, p0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v2, v2

    .line 3
    invoke-virtual {v0}, Le/a/b/f/c;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4
    iget-boolean v3, v0, Le/a/b/f/c;->d:Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    .line 5
    invoke-virtual {p0, v4}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/b/b/h;

    invoke-virtual {v5}, Le/a/b/b/b/h;->b()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    const-string v7, ""

    const/4 v8, 0x0

    if-nez v6, :cond_0

    if-eqz v3, :cond_3

    .line 6
    :cond_0
    iget v9, v0, Le/a/b/f/c;->g:I

    mul-int/lit8 v10, v9, 0x2

    add-int/lit8 v10, v10, 0x8

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    iget v10, v0, Le/a/b/f/c;->f:I

    sub-int/2addr v10, v9

    const/4 v9, 0x1

    .line 7
    invoke-virtual {v5, v9}, Le/a/b/b/b/h;->e(Z)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "  "

    invoke-static {v8}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Le/a/b/b/b/h;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_1

    :cond_2
    sub-int/2addr v10, v8

    .line 8
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Ljava/io/StringWriter;

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x3

    invoke-direct {v13, v11}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v11, Le/a/b/f/l;

    invoke-direct {v11, v13, v8, v10, v7}, Le/a/b/f/l;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 9
    :try_start_0
    iget-object v8, v11, Le/a/b/f/l;->e:Le/a/b/f/e;

    .line 10
    invoke-virtual {v8, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 11
    iget-object v5, v11, Le/a/b/f/l;->f:Le/a/b/f/e;

    .line 12
    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v11}, Le/a/b/f/l;->b()V

    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 13
    invoke-virtual {v0, v6, v8}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v0, v6, v7}, Le/a/b/f/c;->b(ILjava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    .line 15
    invoke-virtual {p0, v3}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/b/b/h;

    :try_start_1
    invoke-virtual {v4, p1}, Le/a/b/b/b/h;->k(Le/a/b/f/a;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...while writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/a/c/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)Le/a/a/c/b;

    move-result-object p1

    throw p1

    .line 16
    :cond_7
    iget p1, v0, Le/a/b/f/c;->c:I

    sub-int/2addr p1, v1

    .line 17
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Le/a/b/b/b/i;->i()I

    move-result v0

    if-ne p1, v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "write length mismatch; expected "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Le/a/b/b/b/i;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but actually wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
