.class public abstract Lcom/tencent/tinker/android/dx/instruction/CodeCursor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final baseAddressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public cursor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor:I

    return-void
.end method


# virtual methods
.method public final advance(I)V
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor:I

    return-void
.end method

.method public final baseAddressForCursor()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    iget v1, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor:I

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor:I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result v0

    return v0
.end method

.method public final cursor()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor:I

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor:I

    return-void
.end method

.method public final setBaseAddress(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method
