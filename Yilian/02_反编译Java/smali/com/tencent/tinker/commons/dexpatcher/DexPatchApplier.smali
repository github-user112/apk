.class public Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public annotationSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public annotationSetRefListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/AnnotationSetRefList;",
            ">;"
        }
    .end annotation
.end field

.field public annotationSetSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/AnnotationSet;",
            ">;"
        }
    .end annotation
.end field

.field public annotationsDirectorySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/AnnotationsDirectory;",
            ">;"
        }
    .end annotation
.end field

.field public classDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/ClassData;",
            ">;"
        }
    .end annotation
.end field

.field public classDefSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/ClassDef;",
            ">;"
        }
    .end annotation
.end field

.field public codeSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/Code;",
            ">;"
        }
    .end annotation
.end field

.field public debugInfoSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/DebugInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public encodedArraySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/EncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field public fieldIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/FieldId;",
            ">;"
        }
    .end annotation
.end field

.field public methodIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/MethodId;",
            ">;"
        }
    .end annotation
.end field

.field public final oldDex:Lcom/tencent/tinker/android/dex/Dex;

.field public final oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

.field public final patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

.field public final patchedDex:Lcom/tencent/tinker/android/dex/Dex;

.field public protoIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/ProtoId;",
            ">;"
        }
    .end annotation
.end field

.field public stringDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/StringData;",
            ">;"
        }
    .end annotation
.end field

.field public typeIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public typeListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<",
            "Lcom/tencent/tinker/android/dex/TypeList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iput-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    new-instance p1, Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedDexSize()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dex/Dex;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    new-instance p1, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {p1}, Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/File;)V

    new-instance p1, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {p1, p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-direct {p1, p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;)V

    return-void
.end method


# virtual methods
.method public executeAndSaveTo(Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->executeAndSaveTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/tencent/tinker/commons/util/IOHelper;->closeQuietly(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/tencent/tinker/commons/util/IOHelper;->closeQuietly(Ljava/lang/Object;)V

    throw p1
.end method

.method public executeAndSaveTo(Ljava/io/OutputStream;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/Dex;->computeSignature(Z)[B

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getOldDexSignature()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([B[B)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/Dex;->getTableOfContents()Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iput v1, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iput v4, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iput v4, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedStringIdSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedTypeIdSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedTypeListSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedProtoIdSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedFieldIdSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedMethodIdSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedClassDefSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedMapListSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedStringDataSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationSetSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationSetRefListSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedAnnotationsDirectorySectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedEncodedArraySectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedDebugInfoSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedCodeSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedClassDataSectionOffset()I

    move-result v2

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedDexSize()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    iget-object v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents;->computeSizesFromOffsets()V

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StringDataSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StringDataSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->stringDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ProtoIdSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ProtoIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->protoIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/FieldIdSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/FieldIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->fieldIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/MethodIdSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/MethodIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->methodIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDefSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDefSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDefSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeListSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeListSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetRefListSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetRefListSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetRefListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDataSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/ClassDataSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/CodeSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/CodeSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->codeSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DebugInfoItemSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DebugInfoItemSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->debugInfoSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StaticValueSectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/StaticValueSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->encodedArraySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationsDirectorySectionPatchAlgorithm;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v4, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v5, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->oldToPatchedIndexMap:Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationsDirectorySectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/commons/dexpatcher/util/SparseIndexMap;)V

    iput-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationsDirectorySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->stringDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->typeListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->protoIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->fieldIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->methodIdSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationSetRefListSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->annotationsDirectorySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->debugInfoSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->codeSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDataSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->encodedArraySectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->classDefSectionPatchAlg:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->execute()V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v2, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v1, v2}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/TableOfContents;->writeHeader(Lcom/tencent/tinker/android/dex/Dex$Section;)V

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    iget-object v2, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v1, v2}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/TableOfContents;->writeMap(Lcom/tencent/tinker/android/dex/Dex$Section;)V

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/Dex;->writeHashes()V

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->patchedDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "old dex signature mismatch! expected: %s, actual: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "patch file is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to compute old dex\'s signature."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
