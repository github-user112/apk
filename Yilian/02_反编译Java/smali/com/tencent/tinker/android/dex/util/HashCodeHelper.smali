.class public final Lcom/tencent/tinker/android/dex/util/HashCodeHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_e

    aget-object v4, p0, v2

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    goto/16 :goto_3

    :cond_3
    instance-of v5, v4, [Z

    if-eqz v5, :cond_4

    check-cast v4, [Z

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v4

    goto :goto_1

    :cond_4
    instance-of v5, v4, [B

    if-eqz v5, :cond_5

    check-cast v4, [B

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    goto :goto_1

    :cond_5
    instance-of v5, v4, [C

    if-eqz v5, :cond_6

    check-cast v4, [C

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([C)I

    move-result v4

    goto :goto_1

    :cond_6
    instance-of v5, v4, [S

    if-eqz v5, :cond_7

    check-cast v4, [S

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([S)I

    move-result v4

    goto :goto_1

    :cond_7
    instance-of v5, v4, [I

    if-eqz v5, :cond_8

    check-cast v4, [I

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    goto :goto_1

    :cond_8
    instance-of v5, v4, [J

    if-eqz v5, :cond_9

    check-cast v4, [J

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([J)I

    move-result v4

    goto :goto_1

    :cond_9
    instance-of v5, v4, [F

    if-eqz v5, :cond_a

    check-cast v4, [F

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([F)I

    move-result v4

    goto :goto_1

    :cond_a
    instance-of v5, v4, [D

    if-eqz v5, :cond_b

    check-cast v4, [D

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([D)I

    move-result v4

    goto :goto_1

    :cond_b
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_c

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-ge v5, v6, :cond_d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v6}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return v3

    :cond_f
    :goto_4
    return v0
.end method
