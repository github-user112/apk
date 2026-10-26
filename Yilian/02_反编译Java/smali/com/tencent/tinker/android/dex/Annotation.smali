.class public final Lcom/tencent/tinker/android/dex/Annotation;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field public encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

.field public visibility:B


# direct methods
.method public constructor <init>(IBLcom/tencent/tinker/android/dex/EncodedValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput-byte p2, p0, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    iput-object p3, p0, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/EncodedValue;->byteCountInDex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/Annotation;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/EncodedValue;->compareTo(Lcom/tencent/tinker/android/dex/EncodedValue;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-byte v0, p0, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    iget-byte p1, p1, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(BB)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/Annotation;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/Annotation;->compareTo(Lcom/tencent/tinker/android/dex/Annotation;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/Annotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/Annotation;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/Annotation;->compareTo(Lcom/tencent/tinker/android/dex/Annotation;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getReader()Lcom/tencent/tinker/android/dex/EncodedValueReader;
    .locals 3

    new-instance v0, Lcom/tencent/tinker/android/dex/EncodedValueReader;

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/android/dex/EncodedValueReader;-><init>(Lcom/tencent/tinker/android/dex/EncodedValue;I)V

    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/Annotation;->getReader()Lcom/tencent/tinker/android/dex/EncodedValueReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readAnnotation()I

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
