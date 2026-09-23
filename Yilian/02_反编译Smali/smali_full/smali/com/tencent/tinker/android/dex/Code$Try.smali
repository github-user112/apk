.class public Lcom/tencent/tinker/android/dex/Code$Try;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/tinker/android/dex/Code$Try;",
        ">;"
    }
.end annotation


# instance fields
.field public catchHandlerIndex:I

.field public instructionCount:I

.field public startAddress:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tinker/android/dex/Code$Try;->startAddress:I

    iput p2, p0, Lcom/tencent/tinker/android/dex/Code$Try;->instructionCount:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/Code$Try;->catchHandlerIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/tinker/android/dex/Code$Try;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/Code$Try;->startAddress:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code$Try;->startAddress:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/Code$Try;->instructionCount:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/Code$Try;->instructionCount:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/Code$Try;->catchHandlerIndex:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/Code$Try;->catchHandlerIndex:I

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sCompare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/Code$Try;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/Code$Try;->compareTo(Lcom/tencent/tinker/android/dex/Code$Try;)I

    move-result p1

    return p1
.end method
