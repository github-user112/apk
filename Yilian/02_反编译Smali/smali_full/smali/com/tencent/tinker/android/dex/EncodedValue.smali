.class public final Lcom/tencent/tinker/android/dex/EncodedValue;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    return-void
.end method


# virtual methods
.method public asByteInput()Lcom/tencent/tinker/android/dex/util/ByteInput;
    .locals 1

    new-instance v0, Lcom/tencent/tinker/android/dex/EncodedValue$1;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/EncodedValue$1;-><init>(Lcom/tencent/tinker/android/dex/EncodedValue;)V

    return-object v0
.end method

.method public byteCountInDex()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/EncodedValue;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([B[B)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/EncodedValue;->compareTo(Lcom/tencent/tinker/android/dex/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/EncodedValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/EncodedValue;->compareTo(Lcom/tencent/tinker/android/dex/EncodedValue;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
