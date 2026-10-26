.class public final Lcom/tencent/tinker/android/dex/Code;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/Code$CatchHandler;,
        Lcom/tencent/tinker/android/dex/Code$Try;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/Code;",
        ">;"
    }
.end annotation


# instance fields
.field public catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

.field public debugInfoOffset:I

.field public insSize:I

.field public instructions:[S

.field public outsSize:I

.field public registersSize:I

.field public tries:[Lcom/tencent/tinker/android/dex/Code$Try;


# direct methods
.method public constructor <init>(IIIII[S[Lcom/tencent/tinker/android/dex/Code$Try;[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    iput p5, p0, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    iput-object p6, p0, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    iput-object p7, p0, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    iput-object p8, p0, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 10

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    array-length v0, v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x2

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    array-length v1, v1

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    iget-object v6, v5, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    array-length v6, v6

    iget v7, v5, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->catchAllAddress:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    neg-int v7, v6

    invoke-static {v7}, Lcom/tencent/tinker/android/dex/Leb128;->signedLeb128Size(I)I

    move-result v7

    iget v8, v5, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->catchAllAddress:I

    invoke-static {v8}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/tencent/tinker/android/dex/Leb128;->signedLeb128Size(I)I

    move-result v7

    add-int v8, v7, v1

    :goto_1
    move v1, v8

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    iget-object v8, v5, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    aget v8, v8, v7

    invoke-static {v8}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v8

    iget-object v9, v5, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->addresses:[I

    aget v9, v9, v7

    invoke-static {v9}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/Code;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([S[S)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->aArrCompare([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->aArrCompare([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/Code;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/Code;->compareTo(Lcom/tencent/tinker/android/dex/Code;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/Code;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/Code;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/Code;->compareTo(Lcom/tencent/tinker/android/dex/Code;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
