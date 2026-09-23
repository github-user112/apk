.class public Lcom/tencent/tinker/lib/patch/BasePatchInternal;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ARKHOT_META_FILE:Ljava/lang/String; = "assets/arkHot_meta.txt"

.field public static final DEX_META_FILE:Ljava/lang/String; = "assets/dex_meta.txt"

.field public static final DEX_OPTIMIZE_PATH:Ljava/lang/String; = "odex"

.field public static final DEX_PATH:Ljava/lang/String; = "dex"

.field public static final MAX_EXTRACT_ATTEMPTS:I = 0x2

.field public static final RES_META_FILE:Ljava/lang/String; = "assets/res_meta.txt"

.field public static final SO_META_FILE:Ljava/lang/String; = "assets/so_meta.txt"

.field public static final SO_PATH:Ljava/lang/String; = "lib"

.field public static final TAG:Ljava/lang/String; = "Tinker.BasePatchInternal"

.field public static final TYPE_ARKHOT_SO:I = 0x8

.field public static final TYPE_CLASS_N_DEX:I = 0x7

.field public static final TYPE_DEX:I = 0x3

.field public static final TYPE_LIBRARY:I = 0x5

.field public static final TYPE_RESOURCE:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_5

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    const-string v2, "try Extracting "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Tinker.BasePatchInternal"

    invoke-static {v4, v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->setReadOnly()Z

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v2, v0, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_0
    invoke-static {v5}, Lcom/tencent/tinker/commons/util/IOHelper;->closeQuietly(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/tencent/tinker/commons/util/IOHelper;->closeQuietly(Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_1
    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v5, "isExtractionSuccessful: %b"

    invoke-static {v4, v5, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "Failed to delete corrupted dex "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v2, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v2

    :goto_3
    invoke-static {v2}, Lcom/tencent/tinker/commons/util/IOHelper;->closeQuietly(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/tencent/tinker/commons/util/IOHelper;->closeQuietly(Ljava/lang/Object;)V

    throw p0

    :cond_5
    return v2
.end method

.method public static getMetaCorruptedCode(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const/4 p0, -0x4

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    const/4 p0, -0x8

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
