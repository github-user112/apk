.class public Lcom/tencent/tinker/lib/filepatch/BsFilePatch;
.super Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;-><init>()V

    return-void
.end method


# virtual methods
.method public patchFast(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/tencent/tinker/bsdiff/BSPatch;->patchFast(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I

    move-result p1

    return p1
.end method
