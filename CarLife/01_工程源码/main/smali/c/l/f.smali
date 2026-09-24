.class public Lc/l/f;
.super Lc/l/e;
.source ""


# direct methods
.method public static a(Ljava/lang/CharSequence;CIZI)I
    .locals 7

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "$this$indexOf"

    .line 1
    invoke-static {p0, p4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, -0x1

    if-nez p3, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p4

    goto/16 :goto_6

    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [C

    aput-char p1, v2, v1

    const-string p1, "$this$indexOfAny"

    .line 2
    invoke-static {p0, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "chars"

    invoke-static {v2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3

    const-string p1, "$this$single"

    .line 3
    invoke-static {v2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aget-char p1, v2, v1

    .line 4
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p4

    goto :goto_6

    :cond_3
    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    const-string p1, "$this$lastIndex"

    .line 5
    invoke-static {p0, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, p4

    if-gt p2, p1, :cond_c

    .line 6
    :goto_0
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_a

    aget-char v5, v2, v4

    if-ne v5, v3, :cond_5

    goto :goto_3

    :cond_5
    if-nez p3, :cond_6

    goto :goto_2

    .line 7
    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_8

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-ne v5, v6, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_9

    const/4 v3, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_b

    move p4, p2

    goto :goto_6

    :cond_b
    if-eq p2, p1, :cond_c

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_c
    :goto_6
    return p4
.end method
