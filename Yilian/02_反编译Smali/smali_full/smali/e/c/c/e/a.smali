.class public final Le/c/c/e/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/c/c/a;IILjava/util/Map;)Le/c/c/d/b;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/c/c/a;",
            "II",
            "Ljava/util/Map<",
            "Le/c/c/b;",
            "*>;)",
            "Le/c/c/d/b;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    sget-object v5, Le/c/c/b;->f:Le/c/c/b;

    sget-object v6, Le/c/c/b;->a:Le/c/c/b;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_63

    sget-object v7, Le/c/c/a;->l:Le/c/c/a;

    if-ne v1, v7, :cond_62

    if-ltz v2, :cond_61

    if-ltz v3, :cond_61

    sget-object v1, Le/c/c/e/b/a;->b:Le/c/c/e/b/a;

    if-eqz v4, :cond_1

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/c/c/e/b/a;->valueOf(Ljava/lang/String;)Le/c/c/e/b/a;

    move-result-object v1

    :cond_0
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    .line 1
    :goto_0
    sget-object v6, Le/c/c/b;->k:Le/c/c/b;

    sget-object v8, Le/c/c/b;->b:Le/c/c/b;

    sget-object v9, Le/c/c/e/b/b;->g:Le/c/c/e/b/b;

    const-string v10, "ISO-8859-1"

    if-eqz v4, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v10

    :goto_1
    const-string v11, "Shift_JIS"

    .line 2
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3
    :try_start_0
    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v15, v12

    rem-int/lit8 v16, v15, 0x2

    if-eqz v16, :cond_3

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_6

    aget-byte v7, v12, v14

    and-int/lit16 v7, v7, 0xff

    const/16 v13, 0x81

    if-lt v7, v13, :cond_4

    const/16 v13, 0x9f

    if-le v7, v13, :cond_5

    :cond_4
    const/16 v13, 0xe0

    if-lt v7, v13, :cond_7

    const/16 v13, 0xeb

    if-le v7, v13, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v14, v14, 0x2

    goto :goto_2

    :cond_6
    const/4 v7, 0x1

    goto :goto_4

    :catch_0
    :cond_7
    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_8

    .line 4
    sget-object v7, Le/c/c/e/b/b;->i:Le/c/c/e/b/b;

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_a

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-lt v14, v15, :cond_9

    const/16 v15, 0x39

    if-gt v14, v15, :cond_9

    const/4 v12, 0x1

    goto :goto_6

    :cond_9
    invoke-static {v14}, Le/c/c/e/c/c;->b(I)I

    move-result v7

    const/4 v14, -0x1

    if-eq v7, v14, :cond_c

    const/4 v7, 0x1

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_b

    sget-object v7, Le/c/c/e/b/b;->e:Le/c/c/e/b/b;

    goto :goto_7

    :cond_b
    if-eqz v12, :cond_c

    sget-object v7, Le/c/c/e/b/b;->d:Le/c/c/e/b/b;

    goto :goto_7

    :cond_c
    move-object v7, v9

    .line 5
    :goto_7
    new-instance v12, Le/c/c/d/a;

    invoke-direct {v12}, Le/c/c/d/a;-><init>()V

    const/16 v13, 0x8

    if-ne v7, v9, :cond_d

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 6
    sget-object v10, Le/c/c/d/c;->F:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/c/c/d/c;

    if-eqz v10, :cond_d

    .line 7
    sget-object v14, Le/c/c/e/b/b;->h:Le/c/c/e/b/b;

    .line 8
    iget v14, v14, Le/c/c/e/b/b;->b:I

    const/4 v15, 0x4

    .line 9
    invoke-virtual {v12, v14, v15}, Le/c/c/d/a;->c(II)V

    .line 10
    iget-object v10, v10, Le/c/c/d/c;->a:[I

    const/4 v14, 0x0

    aget v10, v10, v14

    .line 11
    invoke-virtual {v12, v10, v13}, Le/c/c/d/a;->c(II)V

    goto :goto_8

    :cond_d
    const/4 v15, 0x4

    .line 12
    :goto_8
    iget v10, v7, Le/c/c/e/b/b;->b:I

    .line 13
    invoke-virtual {v12, v10, v15}, Le/c/c/d/a;->c(II)V

    .line 14
    new-instance v10, Le/c/c/d/a;

    invoke-direct {v10}, Le/c/c/d/a;-><init>()V

    .line 15
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v13, 0x2

    const/4 v15, 0x1

    if-eq v14, v15, :cond_17

    const/4 v15, 0x6

    if-eq v14, v13, :cond_13

    const/4 v13, 0x4

    if-eq v14, v13, :cond_12

    if-ne v14, v15, :cond_11

    .line 16
    :try_start_1
    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v11, v8

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v11, :cond_1a

    aget-byte v14, v8, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, v8, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v14, v15

    const v15, 0x8140

    if-lt v14, v15, :cond_e

    const v15, 0x9ffc

    if-gt v14, v15, :cond_e

    const v15, 0x8140

    goto :goto_a

    :cond_e
    const v15, 0xe040

    if-lt v14, v15, :cond_f

    const v15, 0xebbf

    if-gt v14, v15, :cond_f

    const v15, 0xc140

    :goto_a
    sub-int/2addr v14, v15

    goto :goto_b

    :cond_f
    const/4 v14, -0x1

    :goto_b
    const/4 v15, -0x1

    if-eq v14, v15, :cond_10

    shr-int/lit8 v15, v14, 0x8

    mul-int/lit16 v15, v15, 0xc0

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v15, v14

    const/16 v14, 0xd

    invoke-virtual {v10, v15, v14}, Le/c/c/d/a;->c(II)V

    add-int/lit8 v13, v13, 0x2

    goto :goto_9

    :cond_10
    new-instance v0, Le/c/c/c;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Le/c/c/c;

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_11
    new-instance v0, Le/c/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_12
    :try_start_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    array-length v11, v8

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v11, :cond_1a

    aget-byte v14, v8, v13

    const/16 v15, 0x8

    invoke-virtual {v10, v14, v15}, Le/c/c/d/a;->c(II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Le/c/c/c;

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 19
    :cond_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v8, :cond_1a

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Le/c/c/e/c/c;->b(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_16

    add-int/lit8 v15, v11, 0x1

    if-ge v15, v8, :cond_15

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Le/c/c/e/c/c;->b(I)I

    move-result v15

    if-eq v15, v14, :cond_14

    mul-int/lit8 v13, v13, 0x2d

    add-int/2addr v13, v15

    const/16 v14, 0xb

    invoke-virtual {v10, v13, v14}, Le/c/c/d/a;->c(II)V

    add-int/lit8 v11, v11, 0x2

    move v15, v11

    const/4 v11, 0x6

    goto :goto_e

    :cond_14
    new-instance v0, Le/c/c/c;

    invoke-direct {v0}, Le/c/c/c;-><init>()V

    throw v0

    :cond_15
    const/4 v11, 0x6

    invoke-virtual {v10, v13, v11}, Le/c/c/d/a;->c(II)V

    :goto_e
    move v11, v15

    const/4 v15, 0x6

    goto :goto_d

    :cond_16
    new-instance v0, Le/c/c/c;

    invoke-direct {v0}, Le/c/c/c;-><init>()V

    throw v0

    .line 20
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v8, :cond_1a

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    add-int/lit8 v14, v11, 0x2

    if-ge v14, v8, :cond_18

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v15, v15, -0x30

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, -0x30

    mul-int/lit8 v13, v13, 0x64

    const/16 v3, 0xa

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v15, v13

    add-int/2addr v15, v14

    invoke-virtual {v10, v15, v3}, Le/c/c/d/a;->c(II)V

    add-int/lit8 v11, v11, 0x3

    goto :goto_10

    :cond_18
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v8, :cond_19

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v3

    const/4 v3, 0x7

    invoke-virtual {v10, v13, v3}, Le/c/c/d/a;->c(II)V

    move v11, v14

    goto :goto_10

    :cond_19
    const/4 v3, 0x4

    invoke-virtual {v10, v13, v3}, Le/c/c/d/a;->c(II)V

    :goto_10
    move/from16 v3, p4

    goto :goto_f

    :cond_1a
    if-eqz v4, :cond_1c

    .line 21
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Le/c/c/e/b/c;->b(I)Le/c/c/e/b/c;

    move-result-object v3

    .line 22
    iget v4, v12, Le/c/c/d/a;->b:I

    .line 23
    invoke-virtual {v7, v3}, Le/c/c/e/b/b;->a(Le/c/c/e/b/c;)I

    move-result v6

    add-int/2addr v6, v4

    .line 24
    iget v4, v10, Le/c/c/d/a;->b:I

    add-int/2addr v6, v4

    .line 25
    invoke-static {v6, v3, v1}, Le/c/c/e/c/c;->c(ILe/c/c/e/b/c;Le/c/c/e/b/a;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_11

    :cond_1b
    new-instance v0, Le/c/c/c;

    const-string v1, "Data too big for requested version"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v3, 0x1

    .line 26
    invoke-static {v3}, Le/c/c/e/b/c;->b(I)Le/c/c/e/b/c;

    move-result-object v4

    .line 27
    iget v3, v12, Le/c/c/d/a;->b:I

    .line 28
    invoke-virtual {v7, v4}, Le/c/c/e/b/b;->a(Le/c/c/e/b/c;)I

    move-result v4

    add-int/2addr v4, v3

    .line 29
    iget v3, v10, Le/c/c/d/a;->b:I

    add-int/2addr v4, v3

    .line 30
    invoke-static {v4, v1}, Le/c/c/e/c/c;->a(ILe/c/c/e/b/a;)Le/c/c/e/b/c;

    move-result-object v3

    .line 31
    iget v4, v12, Le/c/c/d/a;->b:I

    .line 32
    invoke-virtual {v7, v3}, Le/c/c/e/b/b;->a(Le/c/c/e/b/c;)I

    move-result v3

    add-int/2addr v3, v4

    .line 33
    iget v4, v10, Le/c/c/d/a;->b:I

    add-int/2addr v3, v4

    .line 34
    invoke-static {v3, v1}, Le/c/c/e/c/c;->a(ILe/c/c/e/b/a;)Le/c/c/e/b/c;

    move-result-object v3

    .line 35
    :goto_11
    new-instance v4, Le/c/c/d/a;

    invoke-direct {v4}, Le/c/c/d/a;-><init>()V

    invoke-virtual {v4, v12}, Le/c/c/d/a;->b(Le/c/c/d/a;)V

    if-ne v7, v9, :cond_1d

    invoke-virtual {v10}, Le/c/c/d/a;->f()I

    move-result v0

    goto :goto_12

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 36
    :goto_12
    invoke-virtual {v7, v3}, Le/c/c/e/b/b;->a(Le/c/c/e/b/c;)I

    move-result v6

    const/4 v7, 0x1

    shl-int v8, v7, v6

    if-ge v0, v8, :cond_60

    invoke-virtual {v4, v0, v6}, Le/c/c/d/a;->c(II)V

    .line 37
    invoke-virtual {v4, v10}, Le/c/c/d/a;->b(Le/c/c/d/a;)V

    .line 38
    iget-object v0, v3, Le/c/c/e/b/c;->b:[Le/c/c/e/b/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v0, v0, v6

    .line 39
    iget v6, v3, Le/c/c/e/b/c;->c:I

    .line 40
    iget v7, v0, Le/c/c/e/b/c$b;->a:I

    invoke-virtual {v0}, Le/c/c/e/b/c$b;->a()I

    move-result v8

    mul-int v8, v8, v7

    sub-int/2addr v6, v8

    shl-int/lit8 v7, v6, 0x3

    .line 41
    iget v8, v4, Le/c/c/d/a;->b:I

    if-gt v8, v7, :cond_5f

    const/4 v8, 0x0

    :goto_13
    const/4 v9, 0x4

    if-ge v8, v9, :cond_1e

    iget v9, v4, Le/c/c/d/a;->b:I

    if-ge v9, v7, :cond_1e

    const/4 v9, 0x0

    .line 42
    invoke-virtual {v4, v9}, Le/c/c/d/a;->a(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1e
    const/4 v9, 0x0

    .line 43
    iget v8, v4, Le/c/c/d/a;->b:I

    const/4 v10, 0x7

    and-int/2addr v8, v10

    if-lez v8, :cond_1f

    :goto_14
    const/16 v10, 0x8

    if-ge v8, v10, :cond_1f

    .line 44
    invoke-virtual {v4, v9}, Le/c/c/d/a;->a(Z)V

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    goto :goto_14

    :cond_1f
    invoke-virtual {v4}, Le/c/c/d/a;->f()I

    move-result v8

    sub-int v8, v6, v8

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v8, :cond_21

    and-int/lit8 v11, v9, 0x1

    if-nez v11, :cond_20

    const/16 v10, 0xec

    goto :goto_16

    :cond_20
    const/16 v10, 0x11

    :goto_16
    const/16 v11, 0x8

    invoke-virtual {v4, v10, v11}, Le/c/c/d/a;->c(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 45
    :cond_21
    iget v8, v4, Le/c/c/d/a;->b:I

    if-ne v8, v7, :cond_5e

    .line 46
    iget v7, v3, Le/c/c/e/b/c;->c:I

    .line 47
    invoke-virtual {v0}, Le/c/c/e/b/c$b;->a()I

    move-result v0

    .line 48
    invoke-virtual {v4}, Le/c/c/d/a;->f()I

    move-result v8

    if-ne v8, v6, :cond_5d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_17
    if-ge v14, v0, :cond_3e

    const/4 v13, 0x1

    new-array v15, v13, [I

    new-array v10, v13, [I

    if-ge v14, v0, :cond_3d

    .line 49
    rem-int v13, v7, v0

    sub-int v2, v0, v13

    div-int v20, v7, v0

    add-int/lit8 v21, v20, 0x1

    div-int v22, v6, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v24, v5

    sub-int v5, v20, v22

    move-object/from16 v20, v1

    sub-int v1, v21, v23

    if-ne v5, v1, :cond_3c

    move-object/from16 v21, v3

    add-int v3, v2, v13

    if-ne v0, v3, :cond_3b

    add-int v3, v22, v5

    mul-int v3, v3, v2

    add-int v25, v23, v1

    mul-int v25, v25, v13

    add-int v3, v25, v3

    if-ne v7, v3, :cond_3a

    if-ge v14, v2, :cond_22

    const/4 v2, 0x0

    aput v22, v15, v2

    aput v5, v10, v2

    goto :goto_18

    :cond_22
    const/4 v2, 0x0

    aput v23, v15, v2

    aput v1, v10, v2

    .line 50
    :goto_18
    aget v1, v15, v2

    new-array v2, v1, [B

    shl-int/lit8 v3, v12, 0x3

    const/4 v5, 0x0

    :goto_19
    move/from16 p5, v0

    move/from16 v22, v7

    const/4 v0, 0x0

    if-ge v5, v1, :cond_25

    const/16 v7, 0x8

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v7, :cond_24

    .line 51
    invoke-virtual {v4, v3}, Le/c/c/d/a;->e(I)Z

    move-result v7

    if-eqz v7, :cond_23

    rsub-int/lit8 v7, v13, 0x7

    const/16 v23, 0x1

    shl-int v7, v23, v7

    or-int/2addr v0, v7

    :cond_23
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x8

    goto :goto_1a

    :cond_24
    add-int/lit8 v7, v5, 0x0

    int-to-byte v0, v0

    aput-byte v0, v2, v7

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p5

    move/from16 v7, v22

    goto :goto_19

    .line 52
    :cond_25
    aget v3, v10, v0

    add-int v0, v1, v3

    .line 53
    new-array v5, v0, [I

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v1, :cond_26

    aget-byte v10, v2, v7

    and-int/lit16 v10, v10, 0xff

    aput v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_26
    new-instance v7, Le/c/c/d/d/c;

    sget-object v10, Le/c/c/d/d/a;->h:Le/c/c/d/d/a;

    invoke-direct {v7, v10}, Le/c/c/d/d/c;-><init>(Le/c/c/d/d/a;)V

    if-eqz v3, :cond_39

    sub-int/2addr v0, v3

    if-lez v0, :cond_38

    .line 54
    iget-object v10, v7, Le/c/c/d/d/c;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-string v13, "GenericGFPolys do not have same GenericGF field"

    if-lt v3, v10, :cond_2c

    iget-object v10, v7, Le/c/c/d/d/c;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v23

    move-object/from16 v25, v4

    const/16 v18, -0x1

    add-int/lit8 v4, v23, -0x1

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/c/c/d/d/b;

    iget-object v10, v7, Le/c/c/d/d/c;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_1c
    move/from16 v23, v6

    if-gt v10, v3, :cond_2d

    new-instance v6, Le/c/c/d/d/b;

    move/from16 v26, v14

    iget-object v14, v7, Le/c/c/d/d/c;->a:Le/c/c/d/d/a;

    move/from16 v27, v12

    move-object/from16 v28, v15

    const/4 v12, 0x2

    new-array v15, v12, [I

    const/4 v12, 0x0

    const/16 v29, 0x1

    aput v29, v15, v12

    add-int/lit8 v12, v10, -0x1

    move/from16 v30, v9

    .line 55
    iget v9, v14, Le/c/c/d/d/a;->f:I

    add-int/2addr v12, v9

    .line 56
    iget-object v9, v14, Le/c/c/d/d/a;->a:[I

    aget v9, v9, v12

    aput v9, v15, v29

    .line 57
    invoke-direct {v6, v14, v15}, Le/c/c/d/d/b;-><init>(Le/c/c/d/d/a;[I)V

    .line 58
    iget-object v9, v4, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    iget-object v12, v6, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-virtual {v4}, Le/c/c/d/d/b;->d()Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-virtual {v6}, Le/c/c/d/d/b;->d()Z

    move-result v9

    if-eqz v9, :cond_27

    goto :goto_1f

    :cond_27
    iget-object v9, v4, Le/c/c/d/d/b;->b:[I

    array-length v12, v9

    iget-object v6, v6, Le/c/c/d/d/b;->b:[I

    array-length v14, v6

    add-int v15, v12, v14

    const/16 v18, -0x1

    add-int/lit8 v15, v15, -0x1

    new-array v15, v15, [I

    move/from16 v29, v11

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v12, :cond_29

    move/from16 v31, v12

    aget v12, v9, v11

    move-object/from16 v32, v9

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v14, :cond_28

    add-int v33, v11, v9

    aget v34, v15, v33

    move/from16 v35, v14

    iget-object v14, v4, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    move-object/from16 v36, v8

    aget v8, v6, v9

    invoke-virtual {v14, v12, v8}, Le/c/c/d/d/a;->b(II)I

    move-result v8

    xor-int v8, v8, v34

    aput v8, v15, v33

    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v35

    move-object/from16 v8, v36

    goto :goto_1e

    :cond_28
    move-object/from16 v36, v8

    move/from16 v35, v14

    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v31

    move-object/from16 v9, v32

    goto :goto_1d

    :cond_29
    move-object/from16 v36, v8

    new-instance v6, Le/c/c/d/d/b;

    iget-object v4, v4, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    invoke-direct {v6, v4, v15}, Le/c/c/d/d/b;-><init>(Le/c/c/d/d/a;[I)V

    move-object v4, v6

    goto :goto_20

    :cond_2a
    :goto_1f
    move-object/from16 v36, v8

    move/from16 v29, v11

    iget-object v4, v4, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    .line 59
    iget-object v4, v4, Le/c/c/d/d/a;->c:Le/c/c/d/d/b;

    .line 60
    :goto_20
    iget-object v6, v7, Le/c/c/d/d/c;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v23

    move/from16 v14, v26

    move/from16 v12, v27

    move-object/from16 v15, v28

    move/from16 v11, v29

    move/from16 v9, v30

    move-object/from16 v8, v36

    goto/16 :goto_1c

    .line 61
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    move-object/from16 v25, v4

    move/from16 v23, v6

    :cond_2d
    move-object/from16 v36, v8

    move/from16 v30, v9

    move/from16 v29, v11

    move/from16 v27, v12

    move/from16 v26, v14

    move-object/from16 v28, v15

    .line 62
    iget-object v4, v7, Le/c/c/d/d/c;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/c/c/d/d/b;

    .line 63
    new-array v6, v0, [I

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Le/c/c/d/d/b;

    iget-object v7, v7, Le/c/c/d/d/c;->a:Le/c/c/d/d/a;

    invoke-direct {v8, v7, v6}, Le/c/c/d/d/b;-><init>(Le/c/c/d/d/a;[I)V

    const/4 v6, 0x1

    invoke-virtual {v8, v3, v6}, Le/c/c/d/d/b;->e(II)Le/c/c/d/d/b;

    move-result-object v7

    .line 64
    iget-object v6, v7, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    iget-object v8, v4, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {v4}, Le/c/c/d/d/b;->d()Z

    move-result v6

    if-nez v6, :cond_36

    iget-object v6, v7, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    .line 65
    iget-object v6, v6, Le/c/c/d/d/a;->c:Le/c/c/d/d/b;

    .line 66
    invoke-virtual {v4}, Le/c/c/d/d/b;->c()I

    move-result v8

    invoke-virtual {v4, v8}, Le/c/c/d/d/b;->b(I)I

    move-result v8

    iget-object v9, v7, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    const/4 v10, 0x0

    if-eqz v9, :cond_35

    if-eqz v8, :cond_34

    .line 67
    iget-object v11, v9, Le/c/c/d/d/a;->a:[I

    iget v12, v9, Le/c/c/d/d/a;->d:I

    iget-object v9, v9, Le/c/c/d/d/a;->b:[I

    aget v8, v9, v8

    sub-int/2addr v12, v8

    const/4 v8, -0x1

    add-int/2addr v12, v8

    aget v8, v11, v12

    move-object v9, v7

    .line 68
    :goto_21
    invoke-virtual {v9}, Le/c/c/d/d/b;->c()I

    move-result v11

    invoke-virtual {v4}, Le/c/c/d/d/b;->c()I

    move-result v12

    if-lt v11, v12, :cond_31

    invoke-virtual {v9}, Le/c/c/d/d/b;->d()Z

    move-result v11

    if-nez v11, :cond_31

    invoke-virtual {v9}, Le/c/c/d/d/b;->c()I

    move-result v11

    invoke-virtual {v4}, Le/c/c/d/d/b;->c()I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, v7, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    invoke-virtual {v9}, Le/c/c/d/d/b;->c()I

    move-result v13

    invoke-virtual {v9, v13}, Le/c/c/d/d/b;->b(I)I

    move-result v13

    invoke-virtual {v12, v13, v8}, Le/c/c/d/d/a;->b(II)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Le/c/c/d/d/b;->e(II)Le/c/c/d/d/b;

    move-result-object v13

    iget-object v14, v7, Le/c/c/d/d/b;->a:Le/c/c/d/d/a;

    if-eqz v14, :cond_30

    if-ltz v11, :cond_2f

    if-nez v12, :cond_2e

    .line 69
    iget-object v11, v14, Le/c/c/d/d/a;->c:Le/c/c/d/d/b;

    goto :goto_22

    :cond_2e
    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [I

    const/4 v15, 0x0

    aput v12, v11, v15

    new-instance v12, Le/c/c/d/d/b;

    invoke-direct {v12, v14, v11}, Le/c/c/d/d/b;-><init>(Le/c/c/d/d/a;[I)V

    move-object v11, v12

    .line 70
    :goto_22
    invoke-virtual {v6, v11}, Le/c/c/d/d/b;->a(Le/c/c/d/d/b;)Le/c/c/d/d/b;

    move-result-object v6

    invoke-virtual {v9, v13}, Le/c/c/d/d/b;->a(Le/c/c/d/d/b;)Le/c/c/d/d/b;

    move-result-object v9

    goto :goto_21

    .line 71
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_30
    throw v10

    :cond_31
    const/4 v4, 0x2

    new-array v7, v4, [Le/c/c/d/d/b;

    const/4 v4, 0x0

    aput-object v6, v7, v4

    const/4 v6, 0x1

    aput-object v9, v7, v6

    .line 72
    aget-object v7, v7, v6

    .line 73
    iget-object v6, v7, Le/c/c/d/d/b;->b:[I

    .line 74
    array-length v7, v6

    sub-int v7, v3, v7

    const/4 v8, 0x0

    :goto_23
    if-ge v8, v7, :cond_32

    add-int v9, v0, v8

    aput v4, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_32
    add-int/2addr v0, v7

    array-length v7, v6

    invoke-static {v6, v4, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-array v0, v3, [B

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_33

    add-int v6, v1, v4

    aget v6, v5, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 76
    :cond_33
    new-instance v4, Le/c/c/e/c/a;

    invoke-direct {v4, v2, v0}, Le/c/c/e/c/a;-><init>([B[B)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v29

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v1, v30

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v1, 0x0

    aget v2, v28, v1

    add-int v12, v27, v2

    add-int/lit8 v14, v26, 0x1

    move/from16 v2, p3

    move-object v8, v0

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    move/from16 v7, v22

    move/from16 v6, v23

    move/from16 v5, v24

    move-object/from16 v4, v25

    move/from16 v0, p5

    goto/16 :goto_17

    .line 77
    :cond_34
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_35
    throw v10

    .line 78
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3a
    new-instance v0, Le/c/c/c;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Le/c/c/c;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Le/c/c/c;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Le/c/c/c;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move/from16 v24, v5

    move/from16 v22, v7

    move-object v0, v8

    move v1, v9

    move v2, v11

    if-ne v6, v12, :cond_5c

    .line 81
    new-instance v3, Le/c/c/d/a;

    invoke-direct {v3}, Le/c/c/d/a;-><init>()V

    const/4 v14, 0x0

    :goto_25
    if-ge v14, v2, :cond_41

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/c/c/e/c/a;

    .line 82
    iget-object v5, v5, Le/c/c/e/c/a;->a:[B

    .line 83
    array-length v6, v5

    if-ge v14, v6, :cond_3f

    aget-byte v5, v5, v14

    const/16 v6, 0x8

    invoke-virtual {v3, v5, v6}, Le/c/c/d/a;->c(II)V

    goto :goto_26

    :cond_40
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    :cond_41
    const/4 v14, 0x0

    :goto_27
    if-ge v14, v1, :cond_44

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/c/c/e/c/a;

    .line 84
    iget-object v4, v4, Le/c/c/e/c/a;->b:[B

    .line 85
    array-length v5, v4

    if-ge v14, v5, :cond_42

    aget-byte v4, v4, v14

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Le/c/c/d/a;->c(II)V

    goto :goto_28

    :cond_43
    add-int/lit8 v14, v14, 0x1

    goto :goto_27

    :cond_44
    invoke-virtual {v3}, Le/c/c/d/a;->f()I

    move-result v0

    move/from16 v1, v22

    if-ne v1, v0, :cond_5b

    move-object/from16 v0, v21

    .line 86
    iget v1, v0, Le/c/c/e/b/c;->a:I

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    const/16 v2, 0x11

    add-int/2addr v1, v2

    .line 87
    new-instance v2, Le/c/c/e/c/b;

    invoke-direct {v2, v1, v1}, Le/c/c/e/c/b;-><init>(II)V

    const v1, 0x7fffffff

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v14, 0x0

    :goto_29
    move-object/from16 v6, v20

    if-ge v14, v5, :cond_53

    .line 88
    invoke-static {v3, v6, v0, v14, v2}, Le/c/c/e/c/d;->a(Le/c/c/d/a;Le/c/c/e/b/a;Le/c/c/e/b/c;ILe/c/c/e/c/b;)V

    const/4 v7, 0x1

    .line 89
    invoke-static {v2, v7}, Ld/s/y;->e(Le/c/c/e/c/b;Z)I

    move-result v8

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ld/s/y;->e(Le/c/c/e/c/b;Z)I

    move-result v9

    add-int/2addr v9, v8

    .line 90
    iget-object v8, v2, Le/c/c/e/c/b;->a:[[B

    .line 91
    iget v10, v2, Le/c/c/e/c/b;->b:I

    .line 92
    iget v11, v2, Le/c/c/e/c/b;->c:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2a
    const/4 v15, -0x1

    add-int/lit8 v5, v11, -0x1

    if-ge v12, v5, :cond_47

    const/4 v5, 0x0

    :goto_2b
    add-int/lit8 v7, v10, -0x1

    if-ge v5, v7, :cond_46

    .line 93
    aget-object v7, v8, v12

    aget-byte v7, v7, v5

    aget-object v17, v8, v12

    add-int/lit8 v18, v5, 0x1

    aget-byte v15, v17, v18

    if-ne v7, v15, :cond_45

    add-int/lit8 v15, v12, 0x1

    aget-object v17, v8, v15

    aget-byte v5, v17, v5

    if-ne v7, v5, :cond_45

    aget-object v5, v8, v15

    aget-byte v5, v5, v18

    if-ne v7, v5, :cond_45

    add-int/lit8 v13, v13, 0x1

    :cond_45
    move/from16 v5, v18

    const/4 v15, -0x1

    goto :goto_2b

    :cond_46
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    goto :goto_2a

    :cond_47
    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v9

    .line 94
    iget-object v5, v2, Le/c/c/e/c/b;->a:[[B

    .line 95
    iget v7, v2, Le/c/c/e/c/b;->b:I

    .line 96
    iget v8, v2, Le/c/c/e/c/b;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2c
    if-ge v9, v8, :cond_4e

    const/4 v11, 0x0

    :goto_2d
    if-ge v11, v7, :cond_4d

    .line 97
    aget-object v12, v5, v9

    add-int/lit8 v15, v11, 0x6

    if-ge v15, v7, :cond_49

    move/from16 v17, v7

    aget-byte v7, v12, v11

    move-object/from16 v21, v0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_4a

    add-int/lit8 v7, v11, 0x1

    aget-byte v7, v12, v7

    if-nez v7, :cond_4a

    add-int/lit8 v7, v11, 0x2

    aget-byte v7, v12, v7

    if-ne v7, v0, :cond_4a

    add-int/lit8 v7, v11, 0x3

    aget-byte v7, v12, v7

    if-ne v7, v0, :cond_4a

    add-int/lit8 v7, v11, 0x4

    aget-byte v7, v12, v7

    if-ne v7, v0, :cond_4a

    add-int/lit8 v7, v11, 0x5

    aget-byte v7, v12, v7

    if-nez v7, :cond_4a

    aget-byte v7, v12, v15

    if-ne v7, v0, :cond_4a

    add-int/lit8 v0, v11, -0x4

    invoke-static {v12, v0, v11}, Ld/s/y;->S([BII)Z

    move-result v0

    if-nez v0, :cond_48

    add-int/lit8 v0, v11, 0x7

    add-int/lit8 v7, v11, 0xb

    invoke-static {v12, v0, v7}, Ld/s/y;->S([BII)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_48
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_49
    move-object/from16 v21, v0

    move/from16 v17, v7

    :cond_4a
    :goto_2e
    add-int/lit8 v0, v9, 0x6

    if-ge v0, v8, :cond_4c

    aget-object v7, v5, v9

    aget-byte v7, v7, v11

    const/4 v12, 0x1

    if-ne v7, v12, :cond_4c

    add-int/lit8 v7, v9, 0x1

    aget-object v7, v5, v7

    aget-byte v7, v7, v11

    if-nez v7, :cond_4c

    add-int/lit8 v7, v9, 0x2

    aget-object v7, v5, v7

    aget-byte v7, v7, v11

    if-ne v7, v12, :cond_4c

    add-int/lit8 v7, v9, 0x3

    aget-object v7, v5, v7

    aget-byte v7, v7, v11

    if-ne v7, v12, :cond_4c

    add-int/lit8 v7, v9, 0x4

    aget-object v7, v5, v7

    aget-byte v7, v7, v11

    if-ne v7, v12, :cond_4c

    add-int/lit8 v7, v9, 0x5

    aget-object v7, v5, v7

    aget-byte v7, v7, v11

    if-nez v7, :cond_4c

    aget-object v0, v5, v0

    aget-byte v0, v0, v11

    if-ne v0, v12, :cond_4c

    add-int/lit8 v0, v9, -0x4

    invoke-static {v5, v11, v0, v9}, Ld/s/y;->T([[BIII)Z

    move-result v0

    if-nez v0, :cond_4b

    add-int/lit8 v0, v9, 0x7

    add-int/lit8 v7, v9, 0xb

    invoke-static {v5, v11, v0, v7}, Ld/s/y;->T([[BIII)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_4b
    add-int/lit8 v10, v10, 0x1

    :cond_4c
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v17

    move-object/from16 v0, v21

    goto/16 :goto_2d

    :cond_4d
    move-object/from16 v21, v0

    move/from16 v17, v7

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2c

    :cond_4e
    move-object/from16 v21, v0

    mul-int/lit8 v10, v10, 0x28

    add-int/2addr v10, v13

    .line 98
    iget-object v0, v2, Le/c/c/e/c/b;->a:[[B

    .line 99
    iget v5, v2, Le/c/c/e/c/b;->b:I

    .line 100
    iget v7, v2, Le/c/c/e/c/b;->c:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2f
    if-ge v8, v7, :cond_51

    .line 101
    aget-object v11, v0, v8

    const/4 v12, 0x0

    :goto_30
    if-ge v12, v5, :cond_50

    aget-byte v13, v11, v12

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4f

    add-int/lit8 v9, v9, 0x1

    :cond_4f
    add-int/lit8 v12, v12, 0x1

    goto :goto_30

    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 102
    :cond_51
    iget v0, v2, Le/c/c/e/c/b;->c:I

    .line 103
    iget v5, v2, Le/c/c/e/c/b;->b:I

    mul-int v0, v0, v5

    shl-int/lit8 v5, v9, 0x1

    sub-int/2addr v5, v0

    .line 104
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v7, 0xa

    mul-int/lit8 v5, v5, 0xa

    div-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v10

    if-ge v5, v1, :cond_52

    move v1, v5

    move v4, v14

    :cond_52
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v6

    move-object/from16 v0, v21

    const/16 v5, 0x8

    goto/16 :goto_29

    .line 105
    :cond_53
    invoke-static {v3, v6, v0, v4, v2}, Le/c/c/e/c/d;->a(Le/c/c/d/a;Le/c/c/e/b/a;Le/c/c/e/b/c;ILe/c/c/e/c/b;)V

    .line 106
    iget v0, v2, Le/c/c/e/c/b;->b:I

    .line 107
    iget v1, v2, Le/c/c/e/c/b;->c:I

    const/4 v3, 0x1

    shl-int/lit8 v4, v24, 0x1

    add-int v3, v0, v4

    add-int/2addr v4, v1

    move/from16 v5, p3

    .line 108
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, p4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v3, v5, v3

    div-int v4, v6, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int v4, v0, v3

    sub-int v4, v5, v4

    const/4 v7, 0x2

    div-int/2addr v4, v7

    mul-int v8, v1, v3

    sub-int v8, v6, v8

    div-int/2addr v8, v7

    new-instance v7, Le/c/c/d/b;

    invoke-direct {v7, v5, v6}, Le/c/c/d/b;-><init>(II)V

    const/4 v14, 0x0

    :goto_31
    if-ge v14, v1, :cond_5a

    move v6, v4

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v0, :cond_59

    invoke-virtual {v2, v5, v14}, Le/c/c/e/c/b;->a(II)B

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_58

    if-ltz v8, :cond_57

    if-ltz v6, :cond_57

    if-lez v3, :cond_56

    if-lez v3, :cond_56

    add-int v9, v3, v6

    add-int v10, v3, v8

    .line 109
    iget v11, v7, Le/c/c/d/b;->b:I

    if-gt v10, v11, :cond_55

    iget v11, v7, Le/c/c/d/b;->a:I

    if-gt v9, v11, :cond_55

    move v11, v8

    :goto_33
    if-ge v11, v10, :cond_58

    iget v12, v7, Le/c/c/d/b;->c:I

    mul-int v12, v12, v11

    move v13, v6

    :goto_34
    if-ge v13, v9, :cond_54

    iget-object v15, v7, Le/c/c/d/b;->d:[I

    div-int/lit8 v17, v13, 0x20

    add-int v17, v17, v12

    aget v18, v15, v17

    and-int/lit8 v19, v13, 0x1f

    const/16 v20, 0x1

    shl-int v19, v20, v19

    or-int v18, v18, v19

    aput v18, v15, v17

    add-int/lit8 v13, v13, 0x1

    goto :goto_34

    :cond_54
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v3

    goto :goto_32

    :cond_59
    add-int/lit8 v14, v14, 0x1

    add-int/2addr v8, v3

    goto :goto_31

    :cond_5a
    return-object v7

    .line 110
    :cond_5b
    new-instance v0, Le/c/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Le/c/c/d/a;->f()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " differ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Le/c/c/c;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Le/c/c/c;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_5e
    new-instance v0, Le/c/c/c;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    move-object/from16 v25, v4

    new-instance v0, Le/c/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v25

    .line 112
    iget v2, v2, Le/c/c/d/a;->b:I

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_60
    new-instance v1, Le/c/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sub-int/2addr v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Le/c/c/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    move v5, v2

    move v6, v3

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested dimensions are too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can only encode QR_CODE, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_36

    :goto_35
    throw v0

    :goto_36
    goto :goto_35
.end method
