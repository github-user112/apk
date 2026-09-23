.class public Le/d/c/a/a/a/d/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/d/c/a/a/a/d/c;->a:Ljava/util/regex/Pattern;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Le/d/c/a/a/a/d/c;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/security/cert/X509Certificate;Z)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Le/d/c/a/a/a/d/b;

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-direct {v0, v2}, Le/d/c/a/a/a/d/b;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Le/d/c/a/a/a/d/b;->c:I

    iput v2, v0, Le/d/c/a/a/a/d/b;->d:I

    iput v2, v0, Le/d/c/a/a/a/d/b;->e:I

    iput v2, v0, Le/d/c/a/a/a/d/b;->f:I

    iget-object v2, v0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, v0, Le/d/c/a/a/a/d/b;->g:[C

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Le/d/c/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ""

    if-nez v3, :cond_0

    goto/16 :goto_d

    :cond_0
    :goto_0
    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->b:I

    if-ge v6, v7, :cond_1e

    iget-object v8, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v8, v8, v6

    const-string v9, "Unexpected end of DN: "

    const/16 v10, 0x22

    const/16 v11, 0x20

    const/16 v12, 0x3b

    const/16 v13, 0x2b

    const/16 v14, 0x2c

    const/16 v15, 0x5c

    if-eq v8, v10, :cond_12

    const/16 v10, 0x23

    if-eq v8, v10, :cond_9

    if-eq v8, v13, :cond_8

    if-eq v8, v14, :cond_8

    if-eq v8, v12, :cond_8

    .line 3
    iput v6, v0, Le/d/c/a/a/a/d/b;->d:I

    iput v6, v0, Le/d/c/a/a/a/d/b;->e:I

    :cond_1
    :goto_1
    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->b:I

    if-lt v6, v7, :cond_2

    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    iget v8, v0, Le/d/c/a/a/a/d/b;->d:I

    iget v9, v0, Le/d/c/a/a/a/d/b;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_a

    :cond_2
    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v11, :cond_5

    if-eq v8, v12, :cond_4

    if-eq v8, v15, :cond_3

    if-eq v8, v13, :cond_4

    if-eq v8, v14, :cond_4

    iget v8, v0, Le/d/c/a/a/a/d/b;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Le/d/c/a/a/a/d/b;->e:I

    aget-char v9, v7, v6

    aput-char v9, v7, v8

    goto :goto_2

    :cond_3
    iget v6, v0, Le/d/c/a/a/a/d/b;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Le/d/c/a/a/a/d/b;->e:I

    invoke-virtual {v0}, Le/d/c/a/a/a/d/b;->c()C

    move-result v8

    aput-char v8, v7, v6

    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    :goto_2
    add-int/2addr v6, v4

    iput v6, v0, Le/d/c/a/a/a/d/b;->c:I

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    iget v8, v0, Le/d/c/a/a/a/d/b;->d:I

    iget v9, v0, Le/d/c/a/a/a/d/b;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_a

    :cond_5
    iget v8, v0, Le/d/c/a/a/a/d/b;->e:I

    iput v8, v0, Le/d/c/a/a/a/d/b;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Le/d/c/a/a/a/d/b;->c:I

    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Le/d/c/a/a/a/d/b;->e:I

    aput-char v11, v7, v8

    :goto_3
    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->b:I

    if-ge v6, v7, :cond_6

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v8, v7, v6

    if-ne v8, v11, :cond_6

    iget v8, v0, Le/d/c/a/a/a/d/b;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Le/d/c/a/a/a/d/b;->e:I

    aput-char v11, v7, v8

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Le/d/c/a/a/a/d/b;->c:I

    goto :goto_3

    :cond_6
    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->b:I

    if-eq v6, v7, :cond_7

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v14, :cond_7

    aget-char v8, v7, v6

    if-eq v8, v13, :cond_7

    aget-char v6, v7, v6

    if-ne v6, v12, :cond_1

    :cond_7
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    iget v8, v0, Le/d/c/a/a/a/d/b;->d:I

    iget v9, v0, Le/d/c/a/a/a/d/b;->f:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_a

    :cond_8
    move-object v6, v5

    goto/16 :goto_a

    :cond_9
    add-int/lit8 v8, v6, 0x4

    if-ge v8, v7, :cond_11

    .line 4
    iput v6, v0, Le/d/c/a/a/a/d/b;->d:I

    :goto_4
    add-int/2addr v6, v4

    iput v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->b:I

    if-eq v6, v7, :cond_d

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v8, v7, v6

    if-eq v8, v13, :cond_d

    aget-char v8, v7, v6

    if-eq v8, v14, :cond_d

    aget-char v8, v7, v6

    if-ne v8, v12, :cond_a

    goto :goto_6

    :cond_a
    aget-char v8, v7, v6

    if-ne v8, v11, :cond_b

    iput v6, v0, Le/d/c/a/a/a/d/b;->e:I

    :goto_5
    add-int/2addr v6, v4

    iput v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->b:I

    if-ge v6, v7, :cond_e

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v7, v7, v6

    if-ne v7, v11, :cond_e

    goto :goto_5

    :cond_b
    aget-char v8, v7, v6

    const/16 v10, 0x41

    if-lt v8, v10, :cond_c

    aget-char v8, v7, v6

    const/16 v10, 0x46

    if-gt v8, v10, :cond_c

    aget-char v8, v7, v6

    add-int/2addr v8, v11

    int-to-char v8, v8

    aput-char v8, v7, v6

    :cond_c
    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    goto :goto_4

    :cond_d
    :goto_6
    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iput v6, v0, Le/d/c/a/a/a/d/b;->e:I

    :cond_e
    iget v6, v0, Le/d/c/a/a/a/d/b;->e:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->d:I

    sub-int/2addr v6, v7

    const/4 v8, 0x5

    if-lt v6, v8, :cond_10

    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_10

    div-int/lit8 v8, v6, 0x2

    new-array v9, v8, [B

    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v8, :cond_f

    invoke-virtual {v0, v7}, Le/d/c/a/a/a/d/b;->a(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_f
    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Le/d/c/a/a/a/d/b;->g:[C

    iget v9, v0, Le/d/c/a/a/a/d/b;->d:I

    invoke-direct {v7, v8, v9, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v6, v7

    goto :goto_a

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v9}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v9}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 5
    iput v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iput v6, v0, Le/d/c/a/a/a/d/b;->d:I

    :goto_8
    iput v6, v0, Le/d/c/a/a/a/d/b;->e:I

    iget v7, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v8, v0, Le/d/c/a/a/a/d/b;->b:I

    if-eq v7, v8, :cond_1d

    iget-object v8, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v15, v8, v7

    if-ne v15, v10, :cond_1b

    :goto_9
    add-int/2addr v7, v4

    iput v7, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v6, v0, Le/d/c/a/a/a/d/b;->b:I

    if-ge v7, v6, :cond_13

    iget-object v6, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v6, v6, v7

    if-ne v6, v11, :cond_13

    goto :goto_9

    :cond_13
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Le/d/c/a/a/a/d/b;->g:[C

    iget v8, v0, Le/d/c/a/a/a/d/b;->d:I

    iget v9, v0, Le/d/c/a/a/a/d/b;->e:I

    sub-int/2addr v9, v8

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    :goto_a
    const-string v7, "cn"

    .line 6
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_14
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget v3, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v6, v0, Le/d/c/a/a/a/d/b;->b:I

    if-lt v3, v6, :cond_16

    goto/16 :goto_d

    :cond_16
    iget-object v6, v0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v7, v6, v3

    const-string v8, "Malformed DN: "

    if-eq v7, v14, :cond_19

    aget-char v7, v6, v3

    if-ne v7, v12, :cond_17

    goto :goto_b

    :cond_17
    aget-char v3, v6, v3

    if-ne v3, v13, :cond_18

    goto :goto_b

    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    :goto_b
    iget v3, v0, Le/d/c/a/a/a/d/b;->c:I

    add-int/2addr v3, v4

    iput v3, v0, Le/d/c/a/a/a/d/b;->c:I

    invoke-virtual {v0}, Le/d/c/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    goto/16 :goto_0

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v8}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1b
    aget-char v14, v8, v7

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_1c

    invoke-virtual {v0}, Le/d/c/a/a/a/d/b;->c()C

    move-result v7

    aput-char v7, v8, v6

    goto :goto_c

    :cond_1c
    aget-char v7, v8, v7

    aput-char v7, v8, v6

    :goto_c
    iget v6, v0, Le/d/c/a/a/a/d/b;->c:I

    add-int/2addr v6, v4

    iput v6, v0, Le/d/c/a/a/a/d/b;->c:I

    iget v6, v0, Le/d/c/a/a/a/d/b;->e:I

    add-int/lit8 v6, v6, 0x1

    const/16 v14, 0x2c

    goto/16 :goto_8

    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v9}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1e
    :goto_d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v2, v0

    goto :goto_e

    :cond_1f
    move-object v2, v3

    .line 9
    :goto_e
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 10
    invoke-static {v5}, Ld/s/y;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Error parsing certificate."

    invoke-static {v0, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    :goto_f
    if-eqz v0, :cond_21

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_20

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_21
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    :cond_22
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz v2, :cond_23

    array-length v5, v2

    if-lez v5, :cond_23

    const/4 v5, 0x0

    aget-object v6, v2, v5

    if-eqz v6, :cond_23

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v3, :cond_25

    array-length v2, v3

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v2, :cond_25

    aget-object v6, v3, v5

    if-eqz v6, :cond_24

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_25
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " <"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, 0x3e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v6, " OR"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_27
    const-string v6, "*."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/16 v6, 0x2e

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    .line 14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x7

    if-lt v7, v8, :cond_29

    const/16 v8, 0x9

    if-gt v7, v8, :cond_29

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_29

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Le/d/c/a/a/a/d/c;->b:[Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_28

    goto :goto_12

    :cond_28
    const/4 v6, 0x0

    goto :goto_13

    :cond_29
    :goto_12
    const/4 v6, 0x1

    :goto_13
    if-eqz v6, :cond_2a

    .line 15
    sget-object v6, Le/d/c/a/a/a/d/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2a

    const/4 v6, 0x1

    goto :goto_14

    :cond_2a
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_2d

    .line 16
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    if-eqz p2, :cond_2c

    invoke-static {v3}, Le/d/c/a/a/a/d/c;->b(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5}, Le/d/c/a/a/a/d/c;->b(Ljava/lang/String;)I

    move-result v5

    if-ne v6, v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_15

    :cond_2b
    const/4 v5, 0x0

    goto :goto_15

    :cond_2c
    move v5, v6

    goto :goto_15

    :cond_2d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_15
    if-eqz v5, :cond_26

    :cond_2e
    if-eqz v5, :cond_2f

    return-void

    :cond_2f
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostname in certificate didn\'t match: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> !="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const-string v0, "Certificate for <"

    const-string v2, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-static {v0, v1, v2}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw v1

    :goto_17
    goto :goto_16
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
