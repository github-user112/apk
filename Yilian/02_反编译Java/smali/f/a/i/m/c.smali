.class public Lf/a/i/m/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lf/a/i/m/c;->a:[C

    return-void

    :array_0
    .array-data 2
        0x34s
        0x57s
        0x54s
        0x36s
        0x4as
        0x30s
        0x3ds
        0x75s
        0x47s
        0x4fs
        0x48s
        0x37s
        0x72s
        0x32s
        0x65s
        0x74s
        0x77s
        0x39s
        0x46s
        0x6cs
        0x5as
        0x35s
        0x2fs
        0x55s
        0x51s
        0x58s
        0x71s
        0x6as
        0x66s
        0x50s
        0x53s
        0x68s
        0x52s
        0x6fs
        0x4es
        0x69s
        0x42s
        0x6es
        0x59s
        0x79s
        0x61s
        0x63s
        0x62s
        0x44s
        0x4bs
        0x43s
        0x38s
        0x31s
        0x45s
        0x33s
        0x6bs
        0x64s
        0x6ds
        0x76s
        0x4ds
        0x7as
        0x70s
        0x2bs
        0x73s
        0x49s
        0x56s
        0x78s
        0x41s
        0x67s
        0x4cs
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x3

    const/4 v3, 0x2

    if-gt v1, v2, :cond_0

    aget-byte v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    sget-object v6, Lf/a/i/m/c;->a:[C

    xor-int/lit8 v2, v2, 0x66

    and-int/lit16 v7, v2, 0xfc

    shr-int/2addr v7, v3

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lf/a/i/m/c;->a:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v7, v4, 0xf0

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v2, v7

    aget-char v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lf/a/i/m/c;->a:[C

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v3, v4, 0x2

    and-int/lit16 v4, v5, 0xc0

    shr-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lf/a/i/m/c;->a:[C

    and-int/lit8 v3, v5, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    const/16 v4, 0x40

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    aget-byte v2, p0, v1

    add-int/2addr v1, v5

    aget-byte p0, p0, v1

    sget-object v1, Lf/a/i/m/c;->a:[C

    xor-int/lit8 v2, v2, 0x66

    and-int/lit16 v5, v2, 0xfc

    shr-int/2addr v5, v3

    aget-char v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lf/a/i/m/c;->a:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v5, p0, 0xf0

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lf/a/i/m/c;->a:[C

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v3

    aget-char p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lf/a/i/m/c;->a:[C

    aget-char p0, p0, v4

    goto :goto_1

    :cond_2
    aget-byte p0, p0, v1

    sget-object v1, Lf/a/i/m/c;->a:[C

    xor-int/lit8 p0, p0, 0x66

    and-int/lit16 v2, p0, 0xfc

    shr-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lf/a/i/m/c;->a:[C

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-char p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lf/a/i/m/c;->a:[C

    aget-char p0, p0, v4

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lf/a/i/m/c;->a:[C

    aget-char p0, p0, v4

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(IZ)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_4

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    const/16 v5, 0x19

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x61

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    :goto_2
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Huh, UTF-8 should be supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Huh, MD5 should be supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
