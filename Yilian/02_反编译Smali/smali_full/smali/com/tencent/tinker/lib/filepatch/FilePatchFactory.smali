.class public Lcom/tencent/tinker/lib/filepatch/FilePatchFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "MicroMsg.FilePatchFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilePatcher(Landroid/content/Context;Z)Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;
    .locals 2

    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getCustomPatcher()Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

    move-result-object v0

    const-string v1, "MicroMsg.FilePatchFactory"

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CustomPatcher"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getCustomPatcher()Lcom/tencent/tinker/lib/filepatch/AbstractFilePatch;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "BsFilePatch"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/tencent/tinker/lib/filepatch/BsFilePatch;

    invoke-direct {p0}, Lcom/tencent/tinker/lib/filepatch/BsFilePatch;-><init>()V

    return-object p0
.end method
