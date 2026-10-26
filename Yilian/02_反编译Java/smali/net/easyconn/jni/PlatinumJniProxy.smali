.class public Lnet/easyconn/jni/PlatinumJniProxy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "mDNSEmbedded"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lf/a/i/l/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "update so exists"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {}, Lf/a/i/l/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "update so noexists"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "mediaserver"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native enableLogPrint(Z)Z
.end method

.method public static native forceKeyFrame()I
.end method

.method public static responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "utf-8"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnet/easyconn/jni/PlatinumJniProxy;->responseGenaEvent(I[B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public static native responseGenaEvent(I[B[B)Z
.end method

.method public static native startMediaRender(Ljava/lang/String;IIIIILandroid/content/Context;)I
.end method

.method public static startMediaRender_Java(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v0, p1

    const/16 v5, 0x2d40

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    move v3, p2

    move v4, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lnet/easyconn/jni/PlatinumJniProxy;->startMediaRender(Ljava/lang/String;IIIIILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static native stopMediaRender()I
.end method
