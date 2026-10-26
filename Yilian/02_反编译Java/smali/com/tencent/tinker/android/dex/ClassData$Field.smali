.class public Lcom/tencent/tinker/android/dex/ClassData$Field;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/ClassData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/tinker/android/dex/ClassData$Field;",
        ">;"
    }
.end annotation


# instance fields
.field public accessFlags:I

.field public fieldIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    iput p2, p0, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/tinker/android/dex/ClassData$Field;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/ClassData$Field;->compareTo(Lcom/tencent/tinker/android/dex/ClassData$Field;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/ClassData$Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/ClassData$Field;->compareTo(Lcom/tencent/tinker/android/dex/ClassData$Field;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
