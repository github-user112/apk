.class public final Lcom/tencent/tinker/android/dex/Dex;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/Dex$ClassDefIterable;,
        Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;,
        Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;,
        Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;,
        Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;,
        Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;,
        Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;,
        Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;,
        Lcom/tencent/tinker/android/dex/Dex$StringTable;,
        Lcom/tencent/tinker/android/dex/Dex$Section;
    }
.end annotation


# static fields
.field public static final CHECKSUM_OFFSET:I = 0x8

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final SIGNATURE_OFFSET:I = 0xc


# instance fields
.field public final classDefs:Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

.field public data:Ljava/nio/ByteBuffer;

.field public final fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

.field public final methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

.field public nextSectionStart:I

.field public final protoIds:Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

.field public signature:[B

.field public final strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

.field public final tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

.field public final typeIds:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

.field public final typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lcom/tencent/tinker/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$StringTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeIds:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->protoIds:Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->classDefs:Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->signature:[B

    new-array v0, p1, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iput p1, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fileSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$StringTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeIds:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->protoIds:Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->classDefs:Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->signature:[B

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "classes.dex"

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {p0, v1, p1}, Lcom/tencent/tinker/android/dex/Dex;->loadFrom(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1

    :cond_2
    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected classes.dex in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_2
    move-exception p1

    :goto_0
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_3
    throw p1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".dex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_7
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-direct {p0, v0, p1}, Lcom/tencent/tinker/android/dex/Dex;->loadFrom(Ljava/io/InputStream;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    :goto_1
    return-void

    :catchall_3
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catchall_4
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_2
    :try_start_a
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_3
    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    :cond_5
    throw p1

    :cond_6
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown output extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "file is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$StringTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeIds:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->protoIds:Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->classDefs:Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->signature:[B

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$StringTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeIds:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->protoIds:Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->classDefs:Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->signature:[B

    invoke-direct {p0, p1, p2}, Lcom/tencent/tinker/android/dex/Dex;->loadFrom(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tinker/android/dex/TableOfContents;

    invoke-direct {v0}, Lcom/tencent/tinker/android/dex/TableOfContents;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$StringTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$StringTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeIds:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->protoIds:Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->classDefs:Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    iput-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->signature:[B

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    invoke-virtual {p1, p0}, Lcom/tencent/tinker/android/dex/TableOfContents;->readFrom(Lcom/tencent/tinker/android/dex/Dex;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/Dex;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic access$1000(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/Dex$StringTable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;
    .locals 0

    iget-object p0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    return-object p0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static checkBounds(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadFrom(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->loadFrom(Ljava/io/InputStream;I)V

    return-void
.end method

.method private loadFrom(Ljava/io/InputStream;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/tencent/tinker/android/dex/util/FileUtils;->readStream(Ljava/io/InputStream;I)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    invoke-virtual {p1, p0}, Lcom/tencent/tinker/android/dex/TableOfContents;->readFrom(Lcom/tencent/tinker/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public annotationDirectoryOffsetFromClassDefIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x20

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public appendSection(ILjava/lang/String;)Lcom/tencent/tinker/android/dex/Dex$Section;
    .locals 3

    iget v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/tencent/tinker/android/dex/Dex$Section;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/tencent/tinker/android/dex/Dex$Section;-><init>(Lcom/tencent/tinker/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/tencent/tinker/android/dex/Dex$1;)V

    iput v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    return-object v1
.end method

.method public classDefIterable()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tencent/tinker/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterable;-><init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V

    return-object v0
.end method

.method public classDefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/tinker/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->classDefs:Lcom/tencent/tinker/android/dex/Dex$ClassDefTable;

    return-object v0
.end method

.method public computeChecksum()I
    .locals 6

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v5, v4}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public computeSignature(Z)[B
    .locals 5

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->signature:[B

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string p1, "SHA-1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x2000

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/Dex;->signature:[B

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declaringClassIndexFromMethodIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public descriptorIndexFromTypeIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public fieldIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/tinker/android/dex/FieldId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    return-object v0
.end method

.method public findClassDefIndexFromTypeIndex(I)I
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public findFieldIndex(Lcom/tencent/tinker/android/dex/FieldId;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->fieldIds:Lcom/tencent/tinker/android/dex/Dex$FieldIdTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public findMethodIndex(Lcom/tencent/tinker/android/dex/MethodId;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public findStringIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public findTypeIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getNextSectionStart()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/android/dex/Dex;->nextSectionStart:I

    return v0
.end method

.method public getTableOfContents()Lcom/tencent/tinker/android/dex/TableOfContents;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    return-object v0
.end method

.method public interfaceTypeIndicesFromClassDef(Lcom/tencent/tinker/android/dex/ClassDef;)[S
    .locals 4

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 p1, p1, 0x4

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v1, "Unexpected interfaces list size: "

    invoke-static {v1, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public interfaceTypeIndicesFromClassDefIndex(I)[S
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x20

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 p1, p1, 0x4

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v1, "Unexpected interfaces list size: "

    invoke-static {v1, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public methodIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/tinker/android/dex/MethodId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->methodIds:Lcom/tencent/tinker/android/dex/Dex$MethodIdTable;

    return-object v0
.end method

.method public nameIndexFromFieldIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public nameIndexFromMethodIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/tencent/tinker/android/dex/Dex$Section;

    const/4 v1, 0x0

    const-string v2, "temp-section"

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/tencent/tinker/android/dex/Dex$Section;-><init>(Lcom/tencent/tinker/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/tencent/tinker/android/dex/Dex$1;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position="

    const-string v2, " length="

    invoke-static {v1, p1, v2}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSection(Lcom/tencent/tinker/android/dex/TableOfContents$Section;)Lcom/tencent/tinker/android/dex/Dex$Section;
    .locals 3

    iget v0, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/ByteBuffer;

    iget p1, p1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->byteCount:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/tencent/tinker/android/dex/Dex$Section;

    const/4 v0, 0x0

    const-string v2, "section"

    invoke-direct {p1, p0, v2, v1, v0}, Lcom/tencent/tinker/android/dex/Dex$Section;-><init>(Lcom/tencent/tinker/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/tencent/tinker/android/dex/Dex$1;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "position="

    const-string v2, " length="

    invoke-static {v1, v0, v2}, Le/a/c/a/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parameterTypeIndicesFromMethodId(Lcom/tencent/tinker/android/dex/MethodId;)[S
    .locals 4

    iget p1, p1, Lcom/tencent/tinker/android/dex/MethodId;->protoIndex:I

    const v0, 0xffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 p1, p1, 0x4

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v1, "Unexpected parameter type list size: "

    invoke-static {v1, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public parameterTypeIndicesFromMethodIndex(I)[S
    .locals 4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 p1, p1, 0x4

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v1, "Unexpected parameter type list size: "

    invoke-static {v1, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public protoIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/tinker/android/dex/ProtoId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->protoIds:Lcom/tencent/tinker/android/dex/Dex$ProtoIdTable;

    return-object v0
.end method

.method public readClassData(Lcom/tencent/tinker/android/dex/ClassDef;)Lcom/tencent/tinker/android/dex/ClassData;
    .locals 1

    iget p1, p1, Lcom/tencent/tinker/android/dex/ClassDef;->classDataOffset:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/Dex$Section;->readClassData()Lcom/tencent/tinker/android/dex/ClassData;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readCode(Lcom/tencent/tinker/android/dex/ClassData$Method;)Lcom/tencent/tinker/android/dex/Code;
    .locals 1

    iget p1, p1, Lcom/tencent/tinker/android/dex/ClassData$Method;->codeOffset:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/Dex$Section;->readCode()Lcom/tencent/tinker/android/dex/Code;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public returnTypeIndexFromMethodIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->methodIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->protoIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public strings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->strings:Lcom/tencent/tinker/android/dex/Dex$StringTable;

    return-object v0
.end method

.method public typeIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeIds:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    return-object v0
.end method

.method public typeIndexFromClassDefIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x20

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public typeIndexFromFieldIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    invoke-static {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->checkBounds(II)V

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->tableOfContents:Lcom/tencent/tinker/android/dex/TableOfContents;

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->fieldIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public typeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->typeNames:Lcom/tencent/tinker/android/dex/Dex$TypeIndexToDescriptorTable;

    return-object v0
.end method

.method public writeHashes()V
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/Dex;->computeSignature(Z)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->write([B)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/android/dex/Dex;->openSection(I)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/Dex;->computeChecksum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->writeInt(I)V

    return-void
.end method

.method public writeTo(Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    invoke-direct {v1, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
