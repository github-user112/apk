.class public final Lcom/huawei/hms/scankit/p/me;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/me;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static a(I)I
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/me;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/je;)I
    .locals 4

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    invoke-static {p0, p1, p2, v2, p3}, Lcom/huawei/hms/scankit/p/oe;->a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;ILcom/huawei/hms/scankit/p/je;)V

    invoke-static {p3}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/je;)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static a(Lcom/huawei/hms/scankit/p/je;)I
    .locals 2

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->a(Lcom/huawei/hms/scankit/p/je;)I

    move-result v0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->b(Lcom/huawei/hms/scankit/p/je;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->c(Lcom/huawei/hms/scankit/p/je;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->d(Lcom/huawei/hms/scankit/p/je;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I
    .locals 0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p1

    invoke-virtual {p0, p3}, Lcom/huawei/hms/scankit/p/wc;->a(Lcom/huawei/hms/scankit/p/zc;)I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(Lcom/huawei/hms/scankit/p/ab;III)Lcom/huawei/hms/scankit/p/ab;
    .locals 17

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v0

    if-ne v0, v7, :cond_9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v0, 0x1

    new-array v15, v0, [I

    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/me;->a(IIII[I[I)V

    aget v0, v15, v10

    new-array v1, v0, [B

    mul-int/lit8 v2, v12, 0x8

    move-object/from16 v3, p0

    invoke-virtual {v3, v2, v1, v10, v0}, Lcom/huawei/hms/scankit/p/ab;->a(I[BII)V

    aget v2, v16, v10

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/p/me;->a([BI)[B

    move-result-object v2

    new-instance v4, Lcom/huawei/hms/scankit/p/ie;

    invoke-direct {v4, v1, v2}, Lcom/huawei/hms/scankit/p/ie;-><init>([B[B)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    array-length v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v12, :cond_8

    new-instance v0, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v14, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/scankit/p/ie;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/ie;->a()[B

    move-result-object v4

    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v10, v13, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/ie;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/ie;->b()[B

    move-result-object v3

    array-length v4, v3

    if-ge v10, v4, :cond_4

    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v1

    if-ne v6, v1, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v2, "Interleaving error: "

    const-string v3, " and "

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/qc;Ljava/util/Map;)Lcom/huawei/hms/scankit/p/pe;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/p/qc;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/p/ke;",
            "*>;)",
            "Lcom/huawei/hms/scankit/p/pe;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "ISO-8859-1"

    :goto_1
    invoke-static {p0, v3}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/wc;

    move-result-object v4

    new-instance v5, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v5}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    sget-object v6, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    if-ne v4, v6, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v3}, Lcom/huawei/hms/scankit/aiscan/common/c;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/c;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, v5}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/aiscan/common/c;Lcom/huawei/hms/scankit/p/ab;)V

    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->l:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    sget-object v0, Lcom/huawei/hms/scankit/p/ke;->l:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/huawei/hms/scankit/p/wc;->h:Lcom/huawei/hms/scankit/p/wc;

    invoke-static {v0, v5}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V

    :cond_4
    invoke-static {v4, v5}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V

    new-instance v0, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    invoke-static {p0, v4, v0, v3}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    sget-object v1, Lcom/huawei/hms/scankit/p/ke;->k:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/ke;->k:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/huawei/hms/scankit/p/zc;->c(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4, v5, v0, p2}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I

    move-result v1

    invoke-static {v1, p2, p1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    throw p0

    :cond_6
    invoke-static {p1, v4, v5, v0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/zc;

    move-result-object p2

    :goto_3
    new-instance v1, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/ab;->a(Lcom/huawei/hms/scankit/p/ab;)V

    sget-object v2, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    if-ne v4, v2, :cond_7

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result p0

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_4
    invoke-static {p0, p2, v4, v1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V

    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/ab;->a(Lcom/huawei/hms/scankit/p/ab;)V

    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/p/zc;->a(Lcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc$b;

    move-result-object p0

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/zc$b;->d()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/ab;)V

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v2

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/zc$b;->c()I

    move-result p0

    invoke-static {v1, v2, v0, p0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/ab;III)Lcom/huawei/hms/scankit/p/ab;

    move-result-object p0

    new-instance v0, Lcom/huawei/hms/scankit/p/pe;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/pe;-><init>()V

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/qc;)V

    invoke-virtual {v0, v4}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/wc;)V

    invoke-virtual {v0, p2}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/zc;)V

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/zc;->c()I

    move-result v1

    new-instance v2, Lcom/huawei/hms/scankit/p/je;

    invoke-direct {v2, v1, v1}, Lcom/huawei/hms/scankit/p/je;-><init>(II)V

    invoke-static {p0, p1, p2, v2}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/je;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/pe;->b(I)V

    invoke-static {p0, p1, p2, v1, v2}, Lcom/huawei/hms/scankit/p/oe;->a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;ILcom/huawei/hms/scankit/p/je;)V

    invoke-virtual {v0, v2}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/je;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/wc;
    .locals 5

    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->g:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/huawei/hms/scankit/p/me;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->c:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->b:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    :cond_5
    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    return-object p0
.end method

.method public static a(ILcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc;
    .locals 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/zc;->c(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/zc;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/zc;->c(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I

    move-result p1

    invoke-static {p1, p0}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc;

    move-result-object p0

    return-object p0
.end method

.method public static a(IIII[I[I)V
    .locals 6

    if-ge p3, p2, :cond_4

    rem-int v0, p0, p2

    sub-int v1, p2, v0

    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr v5, p2

    if-ne p0, v5, :cond_1

    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    aput p1, p4, p0

    aput v2, p5, p0

    goto :goto_0

    :cond_0
    aput v4, p4, p0

    aput v3, p5, p0

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILcom/huawei/hms/scankit/p/ab;)V
    .locals 4

    mul-int/lit8 v0, p0, 0x8

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v1

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/ab;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/ab;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    :cond_4
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "data bits cannot fit in the QR Code"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 1

    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/p/wc;->a(Lcom/huawei/hms/scankit/p/zc;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_0

    invoke-virtual {p3, p0, p1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    return-void

    :cond_0
    new-instance p1, Lcom/huawei/hms/hmsscankit/WriterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/huawei/hms/scankit/aiscan/common/c;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/wc;->f:Lcom/huawei/hms/scankit/p/wc;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/wc;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/c;->a()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    return-void
.end method

.method public static a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/wc;->a()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/me;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/me;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    move v1, v4

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 6

    const-string v0, "Shift_JIS"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v4, :cond_2

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    invoke-virtual {p1, v3, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/huawei/hms/scankit/p/le;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/p/me;->b(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V

    :goto_0
    return-void
.end method

.method public static a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/zc;->a(Lcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/zc$b;->d()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Shift_JIS"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p0

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static a([BI)[B
    .locals 5

    array-length v0, p0

    add-int v1, v0, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/v;

    sget-object v3, Lcom/huawei/hms/scankit/aiscan/common/h;->e:Lcom/huawei/hms/scankit/aiscan/common/h;

    invoke-direct {p0, v3}, Lcom/huawei/hms/scankit/aiscan/common/v;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;)V

    invoke-virtual {p0, v1, p1}, Lcom/huawei/hms/scankit/aiscan/common/v;->a([II)V

    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static b(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-virtual {p1, v4, v5}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    goto :goto_0

    :cond_2
    return-void
.end method
