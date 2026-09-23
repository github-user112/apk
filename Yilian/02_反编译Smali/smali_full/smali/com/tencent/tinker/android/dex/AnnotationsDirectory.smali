.class public Lcom/tencent/tinker/android/dex/AnnotationsDirectory;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/AnnotationsDirectory;",
        ">;"
    }
.end annotation


# instance fields
.field public classAnnotationsOffset:I

.field public fieldAnnotations:[[I

.field public methodAnnotations:[[I

.field public parameterAnnotations:[[I


# direct methods
.method public constructor <init>(II[[I[[I[[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    iput-object p3, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    iput-object p4, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    iput-object p5, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v0, v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)I
    .locals 10

    iget v0, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v0, v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v1, v1

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v2, v2

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v3, v3

    iget-object v4, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v4, v4

    iget-object v5, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v5, v5

    if-eq v0, v3, :cond_1

    invoke-static {v0, v3}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1

    :cond_1
    if-eq v1, v4, :cond_2

    invoke-static {v1, v4}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1

    :cond_2
    if-eq v2, v5, :cond_3

    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_6

    iget-object v6, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    aget-object v7, v6, v4

    aget v7, v7, v3

    aget-object v6, v6, v4

    aget v6, v6, v5

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    aget-object v9, v8, v4

    aget v9, v9, v3

    aget-object v8, v8, v4

    aget v5, v8, v5

    if-eq v7, v9, :cond_4

    invoke-static {v7, v9}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result p1

    return p1

    :cond_4
    if-eq v6, v5, :cond_5

    invoke-static {v6, v5}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_9

    iget-object v4, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    aget-object v6, v4, v0

    aget v6, v6, v3

    aget-object v4, v4, v0

    aget v4, v4, v5

    iget-object v7, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    aget-object v8, v7, v0

    aget v8, v8, v3

    aget-object v7, v7, v0

    aget v7, v7, v5

    if-eq v6, v8, :cond_7

    invoke-static {v6, v8}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result p1

    return p1

    :cond_7
    if-eq v4, v7, :cond_8

    invoke-static {v4, v7}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_c

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    aget-object v4, v1, v0

    aget v4, v4, v3

    aget-object v1, v1, v0

    aget v1, v1, v5

    iget-object v6, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    aget-object v7, v6, v0

    aget v7, v7, v3

    aget-object v6, v6, v0

    aget v6, v6, v5

    if-eq v4, v7, :cond_a

    invoke-static {v4, v7}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result p1

    return p1

    :cond_a
    if-eq v1, v6, :cond_b

    invoke-static {v1, v6}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->compareTo(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->compareTo(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
