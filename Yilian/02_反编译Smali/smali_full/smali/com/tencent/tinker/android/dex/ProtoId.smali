.class public final Lcom/tencent/tinker/android/dex/ProtoId;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/ProtoId;",
        ">;"
    }
.end annotation


# instance fields
.field public parametersOffset:I

.field public returnTypeIndex:I

.field public shortyIndex:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/ProtoId;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/ProtoId;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/ProtoId;->compareTo(Lcom/tencent/tinker/android/dex/ProtoId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/ProtoId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/ProtoId;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/ProtoId;->compareTo(Lcom/tencent/tinker/android/dex/ProtoId;)I

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

    iget v1, p0, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
