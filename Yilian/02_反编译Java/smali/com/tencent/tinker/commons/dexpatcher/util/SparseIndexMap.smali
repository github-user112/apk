.class public Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;
.super Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;
.source ""


# instance fields
.field public final annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final deletedAnnotationOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedAnnotationSetOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedAnnotationSetRefListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedAnnotationsDirectoryOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedClassDataOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedCodeOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedDebugInfoItemOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedFieldIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedMethodIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedProtoIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedStaticValuesOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedStringIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedTypeIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final deletedTypeListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

.field public final fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public final typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedStringIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedTypeIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedProtoIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedFieldIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedMethodIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedTypeListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationSetOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationSetRefListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationsDirectoryOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedStaticValuesOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedClassDataOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedDebugInfoItemOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedCodeOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    return-void
.end method


# virtual methods
.method public adjustAnnotationOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustAnnotationSetOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationSetOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustAnnotationSetRefListOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationSetRefListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustAnnotationsDirectoryOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationsDirectoryOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustClassDataOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedClassDataOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustCodeOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedCodeOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustDebugInfoItemOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedDebugInfoItemOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustFieldIdIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedFieldIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustMethodIdIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedMethodIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustProtoIdIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedProtoIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustStaticValuesOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedStaticValuesOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustStringIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedStringIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustTypeIdIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedTypeIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public adjustTypeListOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedTypeListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public mapAnnotationOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapAnnotationSetOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapAnnotationSetRefListOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationSetRefListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapAnnotationsDirectoryOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->annotationsDirectoryOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapClassDataOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->classDataOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapCodeOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->codeOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapDebugInfoItemOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->debugInfoItemOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapFieldIds(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->fieldIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapMethodIds(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->methodIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapProtoIds(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->protoIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapStaticValuesOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->staticValuesOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapStringIds(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->stringIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapTypeIds(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeIdsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public mapTypeListOffset(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->typeListOffsetsMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/android/utils/SparseIntArray;->put(II)V

    return-void
.end method

.method public markAnnotationDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markAnnotationSetDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationSetOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markAnnotationSetRefListDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationSetRefListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markAnnotationsDirectoryDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedAnnotationsDirectoryOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markClassDataDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedClassDataOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markCodeDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedCodeOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markDebugInfoItemDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedDebugInfoItemOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markFieldIdDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedFieldIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markMethodIdDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedMethodIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markProtoIdDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedProtoIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markStaticValuesDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedStaticValuesOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markStringIdDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedStringIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markTypeIdDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedTypeIds:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method

.method public markTypeListDeleted(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;->deletedTypeListOffsets:Lcom/tencent/tinker/android/utils/SparseBoolArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->put(IZ)V

    return-void
.end method
