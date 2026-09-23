.class public Lcom/huawei/hms/scankit/util/OpencvJNI;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "OpencvJNI"

    const-string v1, "start load method"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scannative"

    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "UnsatisfiedLinkError"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hms/scankit/k;->a(Z)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native QuadFitting([FI[F)[F
.end method

.method public static native adaptiveBinary([BIII)[B
.end method

.method public static native imageResize([BIIII)[B
.end method

.method public static native imageRotate([BIIIIFD)[B
.end method

.method public static init()V
    .locals 2

    const-string v0, "OpencvJNI"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static native multiBarcodeDetect([BIIIZ)[F
.end method

.method public static native setModel([BI[FI[BI)V
.end method
