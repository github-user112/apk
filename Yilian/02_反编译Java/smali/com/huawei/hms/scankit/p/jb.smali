.class public final Lcom/huawei/hms/scankit/p/jb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/jb$a;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:[C

.field public static final d:[C

.field public static final e:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/hms/scankit/p/jb;->a:[C

    const/16 v1, 0x1b

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/huawei/hms/scankit/p/jb;->b:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/huawei/hms/scankit/p/jb;->c:[C

    sput-object v1, Lcom/huawei/hms/scankit/p/jb;->d:[C

    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/huawei/hms/scankit/p/jb;->e:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x2as
        0x2as
        0x2as
        0x20s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x60s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method public static a(II)I
    .locals 0

    mul-int/lit16 p1, p1, 0x95

    rem-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    :goto_0
    return p0
.end method

.method public static a([BLjava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/scankit/p/cb;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/p/cb;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v6, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    :cond_0
    sget-object v7, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    if-ne v6, v7, :cond_1

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/scankit/p/jb;->a(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/huawei/hms/scankit/p/jb$a;

    move-result-object v6

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/huawei/hms/scankit/p/ib;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v5, :cond_6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    invoke-static {v0, v1, v4}, Lcom/huawei/hms/scankit/p/jb;->a(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    const-string p0, "AIScanException"

    invoke-static {p0}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/jb;->c(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/jb;->a(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/jb;->d(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_6
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/jb;->b(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V

    :goto_0
    sget-object v6, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    :goto_1
    sget-object v7, Lcom/huawei/hms/scankit/p/jb$a;->a:Lcom/huawei/hms/scankit/p/jb$a;

    if-eq v6, v7, :cond_7

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v7

    if-gtz v7, :cond_0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v2, v0, [B

    :goto_2
    if-ge v3, v0, :cond_9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/aiscan/common/B;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/e;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    move-object v4, v2

    :cond_a
    invoke-direct {p1, p0, v0, v4, v2}, Lcom/huawei/hms/scankit/aiscan/common/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object p1

    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/huawei/hms/scankit/p/cb;)Lcom/huawei/hms/scankit/p/jb$a;
    .locals 2

    const-string v0, "\u001e\u0004"

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const/16 p1, 0xfe

    if-ne p0, p1, :cond_0

    invoke-virtual {p3}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :pswitch_0
    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->f:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->d:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->e:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :pswitch_3
    const-string p0, "[)>\u001e06\u001d"

    goto :goto_0

    :pswitch_4
    const-string p0, "[)>\u001e05\u001d"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->h:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :pswitch_6
    const/16 p0, 0x1d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->g:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->c:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :goto_1
    :pswitch_9
    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "AIScanException"

    invoke-static {p0}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/huawei/hms/scankit/p/jb$a;
    .locals 4

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-gt v1, v3, :cond_2

    if-eqz v0, :cond_1

    add-int/lit16 v1, v1, 0x80

    :cond_1
    sub-int/2addr v1, v2

    int-to-char p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :cond_2
    const/16 v3, 0x81

    if-ne v1, v3, :cond_3

    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->a:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :cond_3
    const/16 v3, 0xe5

    if-gt v1, v3, :cond_5

    add-int/lit16 v1, v1, -0x82

    const/16 v2, 0xa

    if-ge v1, v2, :cond_4

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-static {v1, p1, p2, p0}, Lcom/huawei/hms/scankit/p/jb;->a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/huawei/hms/scankit/p/cb;)Lcom/huawei/hms/scankit/p/jb$a;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/huawei/hms/scankit/p/jb$a;->h:Lcom/huawei/hms/scankit/p/jb$a;

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object p0, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0

    :cond_8
    const-string p0, "AIScanException"

    invoke-static {p0}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(II[I)V
    .locals 2

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    div-int/lit16 v0, p0, 0x640

    const/4 v1, 0x0

    aput v0, p2, v1

    mul-int/lit16 v0, v0, 0x640

    sub-int/2addr p0, v0

    div-int/lit8 v0, p0, 0x28

    aput v0, p2, p1

    mul-int/lit8 v0, v0, 0x28

    sub-int/2addr p0, v0

    const/4 p1, 0x2

    aput p0, p2, p1

    return-void
.end method

.method public static a(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [I

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v2

    const/16 v4, 0xfe

    if-ne v2, v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/scankit/p/jb;->a(II[I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    aget v3, v1, v2

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    if-eq v3, v0, :cond_5

    const/16 v4, 0xe

    if-ge v3, v4, :cond_3

    add-int/lit8 v3, v3, 0x2c

    :goto_1
    int-to-char v3, v3

    goto :goto_2

    :cond_3
    const/16 v4, 0x28

    if-ge v3, v4, :cond_4

    add-int/lit8 v3, v3, 0x33

    goto :goto_1

    :cond_4
    const-string p0, "AIScanException"

    invoke-static {p0}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_5
    const/16 v3, 0x20

    goto :goto_2

    :cond_6
    const/16 v3, 0x3e

    goto :goto_2

    :cond_7
    const/16 v3, 0x2a

    goto :goto_2

    :cond_8
    const/16 v3, 0xd

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v2

    if-gtz v2, :cond_0

    return-void
.end method

.method public static a(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/p/cb;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/p/jb;->a(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0xfa

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit16 v0, v0, -0xf9

    mul-int/lit16 v0, v0, 0xfa

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/jb;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    move v3, v4

    :goto_0
    const-string v2, "AIScanException"

    if-ltz v0, :cond_4

    new-array v4, v0, [B

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v6

    if-lt v6, v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v3}, Lcom/huawei/hms/scankit/p/jb;->a(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_3
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "ISO8859_1"

    :try_start_1
    invoke-direct {p0, v4, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Platform does not support required encoding: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static a(Ljava/lang/StringBuilder;IIZ)[I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const-string v2, "AIScanException"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/huawei/hms/scankit/p/jb;->e:[C

    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget-char p1, p1, p2

    if-eqz p3, :cond_0

    add-int/lit16 p1, p1, 0x80

    int-to-char p1, p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_3
    sget-object p1, Lcom/huawei/hms/scankit/p/jb;->d:[C

    array-length v0, p1

    if-ge p2, v0, :cond_5

    aget-char p1, p1, p2

    if-eqz p3, :cond_4

    add-int/lit16 p1, p1, 0x80

    int-to-char p1, p1

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    goto :goto_0

    :cond_5
    const/16 p1, 0x1b

    if-ne p2, p1, :cond_6

    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const/16 p0, 0x1e

    if-ne p2, p0, :cond_7

    const/4 p3, 0x1

    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_8
    if-eqz p3, :cond_9

    add-int/lit16 p2, p2, 0x80

    int-to-char p2, p2

    :cond_9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const/4 p1, 0x0

    :goto_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_a
    if-ge p2, v0, :cond_b

    add-int/lit8 p1, p2, 0x1

    goto :goto_3

    :cond_b
    sget-object v0, Lcom/huawei/hms/scankit/p/jb;->c:[C

    array-length v5, v0

    if-ge p2, v5, :cond_d

    aget-char p2, v0, p2

    if-eqz p3, :cond_c

    add-int/lit16 p2, p2, 0x80

    int-to-char p2, p2

    :cond_c
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    new-array p0, v1, [I

    aput p1, p0, v4

    aput p3, p0, v3

    return-object p0

    :cond_d
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static b(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v6}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v6}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/huawei/hms/scankit/p/jb;->a(II[I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    aget v6, v1, v5

    invoke-static {p1, v4, v6, v3}, Lcom/huawei/hms/scankit/p/jb;->b(Ljava/lang/StringBuilder;IIZ)[I

    move-result-object v3

    aget v4, v3, v2

    const/4 v6, 0x1

    aget v3, v3, v6

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v5

    if-gtz v5, :cond_0

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;IIZ)[I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const-string v2, "AIScanException"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    add-int/lit16 p2, p2, 0xe0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x60

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_2
    sget-object p1, Lcom/huawei/hms/scankit/p/jb;->b:[C

    array-length v0, p1

    if-ge p2, v0, :cond_4

    aget-char p1, p1, p2

    if-eqz p3, :cond_3

    add-int/lit16 p1, p1, 0x80

    int-to-char p1, p1

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    goto :goto_0

    :cond_4
    const/16 p1, 0x1b

    if-eq p2, p1, :cond_6

    const/16 p0, 0x1e

    if-ne p2, p0, :cond_5

    const/4 p3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_6
    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    add-int/lit16 p2, p2, 0x80

    :cond_8
    :goto_1
    int-to-char p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    :goto_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_9
    if-ge p2, v0, :cond_a

    add-int/lit8 p1, p2, 0x1

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/huawei/hms/scankit/p/jb;->a:[C

    array-length v5, v0

    if-ge p2, v5, :cond_c

    aget-char p2, v0, p2

    if-eqz p3, :cond_b

    add-int/lit16 p2, p2, 0x80

    int-to-char p2, p2

    :cond_b
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    new-array p0, v1, [I

    aput p1, p0, v4

    aput p3, p0, v3

    return-object p0

    :cond_c
    invoke-static {v2}, Lcom/huawei/hms/scankit/aiscan/common/a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static c(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V
    .locals 3

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->b()I

    move-result p1

    const/16 v0, 0x8

    rsub-int/lit8 p1, p1, 0x8

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    :cond_2
    return-void

    :cond_3
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_4

    or-int/lit8 v1, v1, 0x40

    :cond_4
    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method

.method public static d(Lcom/huawei/hms/scankit/p/cb;Ljava/lang/StringBuilder;)V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v6}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v5

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v6}, Lcom/huawei/hms/scankit/p/cb;->a(I)I

    move-result v6

    invoke-static {v5, v6, v1}, Lcom/huawei/hms/scankit/p/jb;->a(II[I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    aget v6, v1, v5

    invoke-static {p1, v4, v6, v3}, Lcom/huawei/hms/scankit/p/jb;->a(Ljava/lang/StringBuilder;IIZ)[I

    move-result-object v3

    aget v4, v3, v2

    const/4 v6, 0x1

    aget v3, v3, v6

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/cb;->a()I

    move-result v5

    if-gtz v5, :cond_0

    return-void
.end method
