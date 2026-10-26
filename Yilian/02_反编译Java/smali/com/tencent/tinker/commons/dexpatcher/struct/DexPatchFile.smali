.class public final Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CURRENT_VERSION:S = 0x2s

.field public static final MAGIC:[B


# instance fields
.field public final buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

.field public firstChunkOffset:I

.field public oldDexSignature:[B

.field public patchedAnnotationSectionOffset:I

.field public patchedAnnotationSetRefListSectionOffset:I

.field public patchedAnnotationSetSectionOffset:I

.field public patchedAnnotationsDirectorySectionOffset:I

.field public patchedClassDataSectionOffset:I

.field public patchedClassDefSectionOffset:I

.field public patchedCodeSectionOffset:I

.field public patchedDebugInfoSectionOffset:I

.field public patchedDexSize:I

.field public patchedEncodedArraySectionOffset:I

.field public patchedFieldIdSectionOffset:I

.field public patchedMapListSectionOffset:I

.field public patchedMethodIdSectionOffset:I

.field public patchedProtoIdSectionOffset:I

.field public patchedStringDataSectionOffset:I

.field public patchedStringIdSectionOffset:I

.field public patchedTypeIdSectionOffset:I

.field public patchedTypeListSectionOffset:I

.field public version:S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->MAGIC:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x44t
        0x58t
        0x44t
        0x49t
        0x46t
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-static {p1}, Lcom/tencent/tinker/android/dex/util/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-direct {p0}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-static {p1}, Lcom/tencent/tinker/android/dex/util/FileUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-direct {p0}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    sget-object v1, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->MAGIC:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByteArray(I)[B

    move-result-object v0

    sget-object v1, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->MAGIC:[B

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([B[B)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->version:S

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uCompare(SS)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedDexSize:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->firstChunkOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedStringIdSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedTypeIdSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedProtoIdSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedFieldIdSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedMethodIdSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedClassDefSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedMapListSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedTypeListSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationSetRefListSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationSetSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedClassDataSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedCodeSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedStringDataSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedDebugInfoSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationSectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedEncodedArraySectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationsDirectorySectionOffset:I

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->oldDexSignature:[B

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    iget v1, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->firstChunkOffset:I

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->position(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "bad dex patch file version: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->version:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "bad dex patch file magic: "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->buffer:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    return-object v0
.end method

.method public getOldDexSignature()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->oldDexSignature:[B

    return-object v0
.end method

.method public getPatchedAnnotationSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationSectionOffset:I

    return v0
.end method

.method public getPatchedAnnotationSetRefListSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationSetRefListSectionOffset:I

    return v0
.end method

.method public getPatchedAnnotationSetSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationSetSectionOffset:I

    return v0
.end method

.method public getPatchedAnnotationsDirectorySectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedAnnotationsDirectorySectionOffset:I

    return v0
.end method

.method public getPatchedClassDataSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedClassDataSectionOffset:I

    return v0
.end method

.method public getPatchedClassDefSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedClassDefSectionOffset:I

    return v0
.end method

.method public getPatchedCodeSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedCodeSectionOffset:I

    return v0
.end method

.method public getPatchedDebugInfoSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedDebugInfoSectionOffset:I

    return v0
.end method

.method public getPatchedDexSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedDexSize:I

    return v0
.end method

.method public getPatchedEncodedArraySectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedEncodedArraySectionOffset:I

    return v0
.end method

.method public getPatchedFieldIdSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedFieldIdSectionOffset:I

    return v0
.end method

.method public getPatchedMapListSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedMapListSectionOffset:I

    return v0
.end method

.method public getPatchedMethodIdSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedMethodIdSectionOffset:I

    return v0
.end method

.method public getPatchedProtoIdSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedProtoIdSectionOffset:I

    return v0
.end method

.method public getPatchedStringDataSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedStringDataSectionOffset:I

    return v0
.end method

.method public getPatchedStringIdSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedStringIdSectionOffset:I

    return v0
.end method

.method public getPatchedTypeIdSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedTypeIdSectionOffset:I

    return v0
.end method

.method public getPatchedTypeListSectionOffset()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->patchedTypeListSectionOffset:I

    return v0
.end method

.method public getVersion()S
    .locals 1

    iget-short v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->version:S

    return v0
.end method
