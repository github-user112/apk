.class public final Lc8/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lc8/h0;->e:Lz8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lg9/b;

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    invoke-direct {v1, v2, v0}, Lg9/b;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Lg9/b;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lg9/b;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lc8/h0;

    .line 24
    .line 25
    iget v2, v2, Lc8/h0;->b:I

    .line 26
    .line 27
    if-ne v2, p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    check-cast v0, Lc8/h0;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object p0, v0, Lc8/h0;->a:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string p0, "\u672a\u77e5\u72b6\u6001"

    .line 39
    .line 40
    return-object p0
.end method

.method public static b(II)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lc8/j;->f:Lz8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lg9/b;

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    invoke-direct {v1, v2, v0}, Lg9/b;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Lg9/b;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lg9/b;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lc8/j;

    .line 24
    .line 25
    iget v3, v2, Lc8/j;->b:I

    .line 26
    .line 27
    if-ne v3, p0, :cond_0

    .line 28
    .line 29
    iget v2, v2, Lc8/j;->c:I

    .line 30
    .line 31
    if-ne v2, p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    check-cast v0, Lc8/j;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object p0, v0, Lc8/j;->a:Ljava/lang/String;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    const-string p0, "\u672a\u77e5\u72b6\u6001"

    .line 43
    .line 44
    return-object p0
.end method
