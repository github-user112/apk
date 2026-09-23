.class public abstract Lcom/baidu/encryption/EncryptionUtils;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "encryption"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static native getVerifyResult(Ljava/lang/String;Ljava/lang/String;)Z
.end method
