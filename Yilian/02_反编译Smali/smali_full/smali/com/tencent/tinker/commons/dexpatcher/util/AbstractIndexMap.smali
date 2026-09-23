.class public abstract Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$CatchHandler;
    .locals 8

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    array-length v4, v4

    new-array v5, v4, [I

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_1

    iget-object v7, v3, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->typeIndexes:[I

    aget v7, v7, v6

    invoke-virtual {p0, v7}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    iget-object v6, v3, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->addresses:[I

    iget v7, v3, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->catchAllAddress:I

    iget v3, v3, Lcom/tencent/tinker/android/dex/Code$CatchHandler;->offset:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/tencent/tinker/android/dex/Code$CatchHandler;-><init>([I[III)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private adjustDebugInfoItemSTM([B)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$1;-><init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;Ljava/io/ByteArrayInputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length p1, p1

    add-int/lit16 p1, p1, 0x200

    invoke-direct {v2, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance p1, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$2;

    invoke-direct {p1, p0, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$2;-><init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;Ljava/io/ByteArrayOutputStream;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v4

    invoke-static {p1, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v4

    invoke-static {p1, v4}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/Leb128;->writeSignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->readUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteInput;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128p1(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private adjustFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)[Lcom/tencent/tinker/android/dex/ClassData$Field;
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/ClassData$Field;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget v3, v2, Lcom/tencent/tinker/android/dex/ClassData$Field;->fieldIndex:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustFieldIdIndex(I)I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/ClassData$Field;

    iget v2, v2, Lcom/tencent/tinker/android/dex/ClassData$Field;->accessFlags:I

    invoke-direct {v4, v3, v2}, Lcom/tencent/tinker/android/dex/ClassData$Field;-><init>(II)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private adjustInstructions([S)[S
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;-><init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;)V

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;->transform([S)[S

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private adjustMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)[Lcom/tencent/tinker/android/dex/ClassData$Method;
    .locals 6

    array-length v0, p1

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/ClassData$Method;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget v3, v2, Lcom/tencent/tinker/android/dex/ClassData$Method;->methodIndex:I

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustMethodIdIndex(I)I

    move-result v3

    iget v4, v2, Lcom/tencent/tinker/android/dex/ClassData$Method;->codeOffset:I

    invoke-virtual {p0, v4}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustCodeOffset(I)I

    move-result v4

    new-instance v5, Lcom/tencent/tinker/android/dex/ClassData$Method;

    iget v2, v2, Lcom/tencent/tinker/android/dex/ClassData$Method;->accessFlags:I

    invoke-direct {v5, v3, v2, v4}, Lcom/tencent/tinker/android/dex/ClassData$Method;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private adjustParameterNames([I)[I
    .locals 4

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public adjust(Lcom/tencent/tinker/android/dex/Annotation;)Lcom/tencent/tinker/android/dex/Annotation;
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    iget-object v1, v1, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;

    new-instance v2, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$4;

    invoke-direct {v2, p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$4;-><init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;-><init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;Lcom/tencent/tinker/android/dex/util/ByteOutput;)V

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/Annotation;->getReader()Lcom/tencent/tinker/android/dex/EncodedValueReader;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->access$100(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    new-instance v1, Lcom/tencent/tinker/android/dex/Annotation;

    iget v2, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    iget-byte v3, p1, Lcom/tencent/tinker/android/dex/Annotation;->visibility:B

    new-instance v4, Lcom/tencent/tinker/android/dex/EncodedValue;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/Annotation;->encodedAnnotation:Lcom/tencent/tinker/android/dex/EncodedValue;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tinker/android/dex/Annotation;-><init>(IBLcom/tencent/tinker/android/dex/EncodedValue;)V

    return-object v1
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/AnnotationSet;)Lcom/tencent/tinker/android/dex/AnnotationSet;
    .locals 4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationSet;->annotationOffsets:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustAnnotationOffset(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationSet;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-direct {v0, p1, v1}, Lcom/tencent/tinker/android/dex/AnnotationSet;-><init>(I[I)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/AnnotationSetRefList;)Lcom/tencent/tinker/android/dex/AnnotationSetRefList;
    .locals 4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;->annotationSetRefItems:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustAnnotationSetOffset(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-direct {v0, p1, v1}, Lcom/tencent/tinker/android/dex/AnnotationSetRefList;-><init>(I[I)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/AnnotationsDirectory;)Lcom/tencent/tinker/android/dex/AnnotationsDirectory;
    .locals 10

    const-class v0, I

    iget v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->classAnnotationsOffset:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustAnnotationSetOffset(I)I

    move-result v4

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    array-length v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v5, 0x1

    aput v2, v3, v5

    const/4 v6, 0x0

    aput v1, v3, v6

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v3, 0x0

    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    aget-object v7, v1, v3

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    aget-object v8, v8, v3

    aget v8, v8, v6

    invoke-virtual {p0, v8}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustFieldIdIndex(I)I

    move-result v8

    aput v8, v7, v6

    aget-object v7, v1, v3

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->fieldAnnotations:[[I

    aget-object v8, v8, v3

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustAnnotationSetOffset(I)I

    move-result v8

    aput v8, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    array-length v3, v3

    new-array v7, v2, [I

    aput v2, v7, v5

    aput v3, v7, v6

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [[I

    const/4 v3, 0x0

    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_1

    aget-object v8, v7, v3

    iget-object v9, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    aget-object v9, v9, v3

    aget v9, v9, v6

    invoke-virtual {p0, v9}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustMethodIdIndex(I)I

    move-result v9

    aput v9, v8, v6

    aget-object v8, v7, v3

    iget-object v9, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->methodAnnotations:[[I

    aget-object v9, v9, v3

    aget v9, v9, v5

    invoke-virtual {p0, v9}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustAnnotationSetOffset(I)I

    move-result v9

    aput v9, v8, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    array-length v3, v3

    new-array v8, v2, [I

    aput v2, v8, v5

    aput v3, v8, v6

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    aget-object v8, v8, v2

    aget v8, v8, v6

    invoke-virtual {p0, v8}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustMethodIdIndex(I)I

    move-result v8

    aput v8, v3, v6

    aget-object v3, v0, v2

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;->parameterAnnotations:[[I

    aget-object v8, v8, v2

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustAnnotationSetRefListOffset(I)I

    move-result v8

    aput v8, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;

    iget v3, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    move-object v2, v8

    move-object v5, v1

    move-object v6, v7

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/tinker/android/dex/AnnotationsDirectory;-><init>(II[[I[[I[[I)V

    return-object v8
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/ClassData;)Lcom/tencent/tinker/android/dex/ClassData;
    .locals 7

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->staticFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v3

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->instanceFields:[Lcom/tencent/tinker/android/dex/ClassData$Field;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustFields([Lcom/tencent/tinker/android/dex/ClassData$Field;)[Lcom/tencent/tinker/android/dex/ClassData$Field;

    move-result-object v4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->directMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v5

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/ClassData;->virtualMethods:[Lcom/tencent/tinker/android/dex/ClassData$Method;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustMethods([Lcom/tencent/tinker/android/dex/ClassData$Method;)[Lcom/tencent/tinker/android/dex/ClassData$Method;

    move-result-object v6

    new-instance v0, Lcom/tencent/tinker/android/dex/ClassData;

    iget v2, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/ClassData;-><init>(I[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Field;[Lcom/tencent/tinker/android/dex/ClassData$Method;[Lcom/tencent/tinker/android/dex/ClassData$Method;)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/ClassDef;)Lcom/tencent/tinker/android/dex/ClassDef;
    .locals 11

    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->typeIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v3

    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->supertypeIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v5

    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->interfacesOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeListOffset(I)I

    move-result v6

    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->sourceFileIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v7

    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->annotationsOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustAnnotationsDirectoryOffset(I)I

    move-result v8

    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustClassDataOffset(I)I

    move-result v9

    iget v0, p1, Lcom/tencent/tinker/android/dex/ClassDef;->staticValuesOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStaticValuesOffset(I)I

    move-result v10

    new-instance v0, Lcom/tencent/tinker/android/dex/ClassDef;

    iget v2, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    iget v4, p1, Lcom/tencent/tinker/android/dex/ClassDef;->accessFlags:I

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/tencent/tinker/android/dex/ClassDef;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/Code;)Lcom/tencent/tinker/android/dex/Code;
    .locals 10

    iget v0, p1, Lcom/tencent/tinker/android/dex/Code;->debugInfoOffset:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustDebugInfoItemOffset(I)I

    move-result v6

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/Code;->instructions:[S

    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustInstructions([S)[S

    move-result-object v7

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/Code;->catchHandlers:[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustCatchHandlers([Lcom/tencent/tinker/android/dex/Code$CatchHandler;)[Lcom/tencent/tinker/android/dex/Code$CatchHandler;

    move-result-object v9

    new-instance v0, Lcom/tencent/tinker/android/dex/Code;

    iget v2, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    iget v3, p1, Lcom/tencent/tinker/android/dex/Code;->registersSize:I

    iget v4, p1, Lcom/tencent/tinker/android/dex/Code;->insSize:I

    iget v5, p1, Lcom/tencent/tinker/android/dex/Code;->outsSize:I

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/Code;->tries:[Lcom/tencent/tinker/android/dex/Code$Try;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/tencent/tinker/android/dex/Code;-><init>(IIIII[S[Lcom/tencent/tinker/android/dex/Code$Try;[Lcom/tencent/tinker/android/dex/Code$CatchHandler;)V

    return-object v0
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/DebugInfoItem;)Lcom/tencent/tinker/android/dex/DebugInfoItem;
    .locals 4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    invoke-direct {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustParameterNames([I)[I

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    invoke-direct {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustDebugInfoItemSTM([B)[B

    move-result-object v1

    new-instance v2, Lcom/tencent/tinker/android/dex/DebugInfoItem;

    iget v3, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/tencent/tinker/android/dex/DebugInfoItem;-><init>(II[I[B)V

    return-object v2
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/EncodedValue;)Lcom/tencent/tinker/android/dex/EncodedValue;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;

    new-instance v2, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$3;

    invoke-direct {v2, p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$3;-><init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;-><init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;Lcom/tencent/tinker/android/dex/util/ByteOutput;)V

    new-instance v2, Lcom/tencent/tinker/android/dex/EncodedValueReader;

    const/16 v3, 0x1c

    invoke-direct {v2, p1, v3}, Lcom/tencent/tinker/android/dex/EncodedValueReader;-><init>(Lcom/tencent/tinker/android/dex/EncodedValue;I)V

    invoke-static {v1, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->access$000(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    new-instance v1, Lcom/tencent/tinker/android/dex/EncodedValue;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/tencent/tinker/android/dex/EncodedValue;-><init>(I[B)V

    return-object v1
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/FieldId;)Lcom/tencent/tinker/android/dex/FieldId;
    .locals 4

    iget v0, p1, Lcom/tencent/tinker/android/dex/FieldId;->declaringClassIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/FieldId;->typeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v1

    iget v2, p1, Lcom/tencent/tinker/android/dex/FieldId;->nameIndex:I

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/FieldId;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/tencent/tinker/android/dex/FieldId;-><init>(IIII)V

    return-object v3
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/MethodId;)Lcom/tencent/tinker/android/dex/MethodId;
    .locals 4

    iget v0, p1, Lcom/tencent/tinker/android/dex/MethodId;->declaringClassIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustProtoIdIndex(I)I

    move-result v1

    iget v2, p1, Lcom/tencent/tinker/android/dex/MethodId;->nameIndex:I

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/MethodId;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/tencent/tinker/android/dex/MethodId;-><init>(IIII)V

    return-object v3
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/ProtoId;)Lcom/tencent/tinker/android/dex/ProtoId;
    .locals 4

    iget v0, p1, Lcom/tencent/tinker/android/dex/ProtoId;->shortyIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/ProtoId;->returnTypeIndex:I

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v1

    iget v2, p1, Lcom/tencent/tinker/android/dex/ProtoId;->parametersOffset:I

    invoke-virtual {p0, v2}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeListOffset(I)I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/ProtoId;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/tencent/tinker/android/dex/ProtoId;-><init>(IIII)V

    return-object v3
.end method

.method public adjust(Lcom/tencent/tinker/android/dex/TypeList;)Lcom/tencent/tinker/android/dex/TypeList;
    .locals 4

    sget-object v0, Lcom/tencent/tinker/android/dex/TypeList;->EMPTY:Lcom/tencent/tinker/android/dex/TypeList;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/TypeList;->types:[S

    array-length v0, v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/TypeList;->types:[S

    aget-short v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/tinker/android/dex/TypeList;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    invoke-direct {v0, p1, v1}, Lcom/tencent/tinker/android/dex/TypeList;-><init>(I[S)V

    return-object v0
.end method

.method public abstract adjustAnnotationOffset(I)I
.end method

.method public abstract adjustAnnotationSetOffset(I)I
.end method

.method public abstract adjustAnnotationSetRefListOffset(I)I
.end method

.method public abstract adjustAnnotationsDirectoryOffset(I)I
.end method

.method public abstract adjustClassDataOffset(I)I
.end method

.method public abstract adjustCodeOffset(I)I
.end method

.method public abstract adjustDebugInfoItemOffset(I)I
.end method

.method public abstract adjustFieldIdIndex(I)I
.end method

.method public abstract adjustMethodIdIndex(I)I
.end method

.method public abstract adjustProtoIdIndex(I)I
.end method

.method public abstract adjustStaticValuesOffset(I)I
.end method

.method public abstract adjustStringIndex(I)I
.end method

.method public abstract adjustTypeIdIndex(I)I
.end method

.method public abstract adjustTypeListOffset(I)I
.end method
