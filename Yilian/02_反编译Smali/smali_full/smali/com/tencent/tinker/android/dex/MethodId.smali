.class public final Lcom/tencent/tinker/android/dex/MethodId;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/MethodId;",
        ">;"
    }
.end annotation


# instance fields
.field public declaringClassIndex:I

.field public nameIndex:I

.field public protoIndex:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/MethodId;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    if-eq v0, v1, :cond_1

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result p1

    return p1

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/MethodId;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/MethodId;->compareTo(Lcom/tencent/tinker/android/dex/MethodId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/MethodId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/MethodId;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/MethodId;->compareTo(Lcom/tencent/tinker/android/dex/MethodId;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
