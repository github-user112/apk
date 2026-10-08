.class public Lc/h/f;
.super Lc/h/e;
.source ""


# direct methods
.method public static final varargs a([Lc/c;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lc/c<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p0

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v2, p0

    invoke-static {v2}, La/a/a/a/l/d;->b(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const-string v2, "$this$toMap"

    .line 1
    invoke-static {p0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$putAll"

    .line 2
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 3
    iget-object v4, v3, Lc/c;->b:Ljava/lang/Object;

    .line 4
    iget-object v3, v3, Lc/c;->c:Ljava/lang/Object;

    .line 5
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lc/h/c;->b:Lc/h/c;

    :cond_1
    return-object v1
.end method
