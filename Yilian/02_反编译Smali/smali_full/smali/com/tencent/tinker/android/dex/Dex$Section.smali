.class public final Lcom/tencent/tinker/android/dex/Dex$Section;
.super Lcom/tencent/tinker/android/dex/io/DexDataBuffer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Section"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/tencent/tinker/android/dex/Dex;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {p0, p3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tinker/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/tencent/tinker/android/dex/Dex$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tinker/android/dex/Dex$Section;-><init>(Lcom/tencent/tinker/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V
    .locals 0

    iget-boolean p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->isElementFourByteAligned:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->alignToFourBytesWithZeroFill()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->alignToFourBytes()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public readAnnotation()Lcom/tencent/tinker/android/dex/Annotation;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readAnnotation()Lcom/tencent/tinker/android/dex/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public readAnnotationSet()Lcom/tencent/tinker/android/dex/AnnotationSet;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readAnnotationSet()Lcom/tencent/tinker/android/dex/AnnotationSet;

    move-result-object v0

    return-object v0
.end method

.method public readAnnotationSetRefList()Lcom/tencent/tinker/android/dex/AnnotationSetRefList;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readAnnotationSetRefList()Lcom/tencent/tinker/android/dex/AnnotationSetRefList;

    move-result-object v0

    return-object v0
.end method

.method public readAnnotationsDirectory()Lcom/tencent/tinker/android/dex/AnnotationsDirectory;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readAnnotationsDirectory()Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    move-result-object v0

    return-object v0
.end method

.method public readClassData()Lcom/tencent/tinker/android/dex/ClassData;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readClassData()Lcom/tencent/tinker/android/dex/ClassData;

    move-result-object v0

    return-object v0
.end method

.method public readClassDef()Lcom/tencent/tinker/android/dex/ClassDef;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readClassDef()Lcom/tencent/tinker/android/dex/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public readCode()Lcom/tencent/tinker/android/dex/Code;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readCode()Lcom/tencent/tinker/android/dex/Code;

    move-result-object v0

    return-object v0
.end method

.method public readDebugInfoItem()Lcom/tencent/tinker/android/dex/DebugInfoItem;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readDebugInfoItem()Lcom/tencent/tinker/android/dex/DebugInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public readEncodedArray()Lcom/tencent/tinker/android/dex/EncodedValue;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readEncodedArray()Lcom/tencent/tinker/android/dex/EncodedValue;

    move-result-object v0

    return-object v0
.end method

.method public readFieldId()Lcom/tencent/tinker/android/dex/FieldId;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readFieldId()Lcom/tencent/tinker/android/dex/FieldId;

    move-result-object v0

    return-object v0
.end method

.method public readMethodId()Lcom/tencent/tinker/android/dex/MethodId;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readMethodId()Lcom/tencent/tinker/android/dex/MethodId;

    move-result-object v0

    return-object v0
.end method

.method public readProtoId()Lcom/tencent/tinker/android/dex/ProtoId;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readProtoId()Lcom/tencent/tinker/android/dex/ProtoId;

    move-result-object v0

    return-object v0
.end method

.method public readStringData()Lcom/tencent/tinker/android/dex/StringData;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readStringData()Lcom/tencent/tinker/android/dex/StringData;

    move-result-object v0

    return-object v0
.end method

.method public readTypeList()Lcom/tencent/tinker/android/dex/TypeList;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readTypeList()Lcom/tencent/tinker/android/dex/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public writeAnnotation(Lcom/tencent/tinker/android/dex/Annotation;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotations:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeAnnotation(Lcom/tencent/tinker/android/dex/Annotation;)I

    move-result p1

    return p1
.end method

.method public writeAnnotationSet(Lcom/tencent/tinker/android/dex/AnnotationSet;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSets:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeAnnotationSet(Lcom/tencent/tinker/android/dex/AnnotationSet;)I

    move-result p1

    return p1
.end method

.method public writeAnnotationSetRefList(Lcom/tencent/tinker/android/dex/AnnotationSetRefList;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationSetRefLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeAnnotationSetRefList(Lcom/tencent/tinker/android/dex/AnnotationSetRefList;)I

    move-result p1

    return p1
.end method

.method public writeAnnotationsDirectory(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->annotationsDirectories:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeAnnotationsDirectory(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)I

    move-result p1

    return p1
.end method

.method public writeClassData(Lcom/tencent/tinker/android/dex/ClassData;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeClassData(Lcom/tencent/tinker/android/dex/ClassData;)I

    move-result p1

    return p1
.end method

.method public writeClassDef(Lcom/tencent/tinker/android/dex/ClassDef;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeClassDef(Lcom/tencent/tinker/android/dex/ClassDef;)I

    move-result p1

    return p1
.end method

.method public writeCode(Lcom/tencent/tinker/android/dex/Code;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->codes:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeCode(Lcom/tencent/tinker/android/dex/Code;)I

    move-result p1

    return p1
.end method

.method public writeDebugInfoItem(Lcom/tencent/tinker/android/dex/DebugInfoItem;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->debugInfos:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeDebugInfoItem(Lcom/tencent/tinker/android/dex/DebugInfoItem;)I

    move-result p1

    return p1
.end method

.method public writeEncodedArray(Lcom/tencent/tinker/android/dex/EncodedValue;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->encodedArrays:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeEncodedArray(Lcom/tencent/tinker/android/dex/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public writeFieldId(Lcom/tencent/tinker/android/dex/FieldId;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeFieldId(Lcom/tencent/tinker/android/dex/FieldId;)I

    move-result p1

    return p1
.end method

.method public writeMethodId(Lcom/tencent/tinker/android/dex/MethodId;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeMethodId(Lcom/tencent/tinker/android/dex/MethodId;)I

    move-result p1

    return p1
.end method

.method public writeProtoId(Lcom/tencent/tinker/android/dex/ProtoId;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeProtoId(Lcom/tencent/tinker/android/dex/ProtoId;)I

    move-result p1

    return p1
.end method

.method public writeStringData(Lcom/tencent/tinker/android/dex/StringData;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->stringDatas:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeStringData(Lcom/tencent/tinker/android/dex/StringData;)I

    move-result p1

    return p1
.end method

.method public writeTypeList(Lcom/tencent/tinker/android/dex/TypeList;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$Section;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeLists:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;->ensureFourBytesAligned(Lcom/tencent/tinker/android/dex/TableOfContents$Section;Z)V

    invoke-super {p0, p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeTypeList(Lcom/tencent/tinker/android/dex/TypeList;)I

    move-result p1

    return p1
.end method
