.class public final Lcom/tencent/tinker/android/dex/TableOfContents;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/TableOfContents$Section;
    }
.end annotation


# static fields
.field public static final SECTION_TYPE_ANNOTATIONS:S = 0x2004s

.field public static final SECTION_TYPE_ANNOTATIONSDIRECTORIES:S = 0x2006s

.field public static final SECTION_TYPE_ANNOTATIONSETREFLISTS:S = 0x1002s

.field public static final SECTION_TYPE_ANNOTATIONSETS:S = 0x1003s

.field public static final SECTION_TYPE_CLASSDATA:S = 0x2000s

.field public static final SECTION_TYPE_CLASSDEFS:S = 0x6s

.field public static final SECTION_TYPE_CODES:S = 0x2001s

.field public static final SECTION_TYPE_DEBUGINFOS:S = 0x2003s

.field public static final SECTION_TYPE_ENCODEDARRAYS:S = 0x2005s

.field public static final SECTION_TYPE_FIELDIDS:S = 0x4s

.field public static final SECTION_TYPE_HEADER:S = 0x0s

.field public static final SECTION_TYPE_MAPLIST:S = 0x1000s

.field public static final SECTION_TYPE_METHODIDS:S = 0x5s

.field public static final SECTION_TYPE_PROTOIDS:S = 0x3s

.field public static final SECTION_TYPE_STRINGDATAS:S = 0x2002s

.field public static final SECTION_TYPE_STRINGIDS:S = 0x1s

.field public static final SECTION_TYPE_TYPEIDS:S = 0x2s

.field public static final SECTION_TYPE_TYPELISTS:S = 0x1001s


# instance fields
.field public final annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public checksum:I

.field public final classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public dataOff:I

.field public dataSize:I

.field public final debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public fileSize:I

.field public final header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public linkOff:I

.field public linkSize:I

.field public final mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public signature:[B

.field public final stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

.field public final typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-direct {v0, v2, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v6, 0x5

    invoke-direct {v0, v6, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v7, 0x6

    invoke-direct {v0, v7, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x1000

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x1001

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x1002

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x1003

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x2000

    invoke-direct {v0, v8, v1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x2001

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x2002

    invoke-direct {v0, v8, v1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x2003

    invoke-direct {v0, v8, v1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x2004

    invoke-direct {v0, v8, v1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x2005

    invoke-direct {v0, v8, v1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x2006

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v8, 0x12

    new-array v8, v8, [Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget-object v9, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aput-object v9, v8, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aput-object v1, v8, v3

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aput-object v1, v8, v4

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aput-object v1, v8, v5

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aput-object v1, v8, v6

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aput-object v1, v8, v7

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v2, 0x7

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0x8

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0x9

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0xa

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0xb

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0xc

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0xd

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0xe

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0xf

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v2, 0x10

    aput-object v1, v8, v2

    const/16 v1, 0x11

    aput-object v0, v8, v1

    iput-object v8, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->signature:[B

    return-void
.end method

.method private getSection(S)Lcom/tencent/tinker/android/dex/TableOfContents$Section;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-short v4, v3, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->type:S

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No such map item: "

    invoke-static {v1, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private readHeader(Lcom/tencent/tinker/android/dex/Dex$Section;)V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/DexFormat;->magicToApi([B)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->checksum:I

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    const v1, 0x12345678

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->linkOff:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->dataOff:I

    return-void

    :cond_0
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string v0, "Cannot merge dex files that do not contain a map"

    invoke-direct {p1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string v1, "Unexpected endian tag: 0x"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string v1, "Unexpected header: 0x"

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string v1, "Unexpected magic: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readMap(Lcom/tencent/tinker/android/dex/Dex$Section;)V
    .locals 10

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v0, :cond_5

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readShort()S

    invoke-direct {p0, v5}, Lcom/tencent/tinker/android/dex/TableOfContents;->getSection(S)Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v7

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v8

    iget v9, v6, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    if-eqz v9, :cond_0

    if-ne v9, v7, :cond_1

    :cond_0
    iget v9, v6, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    if-eq v9, v4, :cond_2

    if-ne v9, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string v0, "Unexpected map value for 0x"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput v7, v6, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    iput v8, v6, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    if-eqz v2, :cond_4

    iget v4, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    if-gt v4, v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Map is unsorted at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v2, v6

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iput v1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 p1, 0x1

    :goto_3
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    array-length v1, v0

    if-ge p1, v1, :cond_7

    aget-object v1, v0, p1

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    if-ne v1, v4, :cond_6

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    iput v0, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .locals 5

    iget v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-gt v3, v0, :cond_1

    sub-int/2addr v0, v3

    iput v0, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    move v0, v3

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map is unsorted at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->dataOff:I

    iget v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->dataSize:I

    return-void
.end method

.method public getSectionByType(I)Lcom/tencent/tinker/android/dex/TableOfContents$Section;
    .locals 2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown section type: "

    invoke-static {v1, p1}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_9
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_a
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_c
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_d
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_e
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_10
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    :pswitch_11
    iget-object p1, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2000
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public readFrom(Lcom/tencent/tinker/android/dex/Dex;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->header:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->openSection(Lcom/tencent/tinker/android/dex/TableOfContents$Section;)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/TableOfContents;->readHeader(Lcom/tencent/tinker/android/dex/Dex$Section;)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents;->readMap(Lcom/tencent/tinker/android/dex/Dex$Section;)V

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/TableOfContents;->computeSizesFromOffsets()V

    return-void
.end method

.method public writeHeader(Lcom/tencent/tinker/android/dex/Dex$Section;)V
    .locals 2

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    iget v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->checksum:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    iget v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    const v0, 0x12345678

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->linkOff:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->mapList:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    :cond_5
    invoke-virtual {p1, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->dataOff:I

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    return-void
.end method

.method public writeMap(Lcom/tencent/tinker/android/dex/Dex$Section;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/TableOfContents;->sections:[Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-short v5, v4, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->type:S

    invoke-virtual {p1, v5}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    invoke-virtual {p1, v2}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeShort(S)V

    iget v5, v4, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v5}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    iget v4, v4, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v4}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
