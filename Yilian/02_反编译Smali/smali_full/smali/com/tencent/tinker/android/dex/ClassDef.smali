.class public final Lcom/tencent/tinker/android/dex/ClassDef;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/ClassDef;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_INDEX:I = -0x1

.field public static final NO_OFFSET:I


# instance fields
.field public accessFlags:I

.field public annotationsOffset:I

.field public classDataOffset:I

.field public interfacesOffset:I

.field public sourceFileIndex:I

.field public staticValuesOffset:I

.field public supertypeIndex:I

.field public typeIndex:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    iput p5, p0, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    iput p6, p0, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    iput p7, p0, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    iput p8, p0, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    iput p9, p0, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/ClassDef;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/ClassDef;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/ClassDef;->compareTo(Lcom/tencent/tinker/android/dex/ClassDef;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/ClassDef;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/ClassDef;->compareTo(Lcom/tencent/tinker/android/dex/ClassDef;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
