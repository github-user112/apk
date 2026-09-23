.class public Lcom/tencent/tinker/android/dex/StringData;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/StringData;",
        ">;"
    }
.end annotation


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/tinker/android/dex/Mutf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/StringData;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/StringData;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/StringData;->compareTo(Lcom/tencent/tinker/android/dex/StringData;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/StringData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/StringData;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/StringData;->compareTo(Lcom/tencent/tinker/android/dex/StringData;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/StringData;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
