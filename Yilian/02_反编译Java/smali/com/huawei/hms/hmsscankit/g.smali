.class public Lcom/huawei/hms/hmsscankit/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Lcom/huawei/hms/scankit/p/Pc;

.field public static volatile b:Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;


# direct methods
.method public static a(Ljava/lang/String;IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    const-string v1, "contentLength"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "scanType"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "reqWidth"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "reqHeight"

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p4, :cond_1

    const-string p0, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "buildBitmapOption"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "apiName"

    const-string p1, "BuildBitmap"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "callTime"

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "transId"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p2, :cond_2

    const-string v0, "result"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, -0x1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    const-string v1, "outputWidth"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    :goto_1
    const-string p1, "outputHeight"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "callTime"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p1, "costTime"

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p1, Lcom/huawei/hms/hmsscankit/f;

    const-string v2, "yyyyMMddHHmmss.SSS"

    invoke-direct {p1, v2}, Lcom/huawei/hms/hmsscankit/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/huawei/hms/hmsscankit/g;->a(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "RemoteDecoder"

    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1
    :try_start_0
    sget-object v1, Le/d/a/b/c/a;->b:Le/d/a/b/c/a;

    .line 2
    iget-object v1, v1, Le/d/a/b/c/a;->a:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/huawei/hms/hmsscankit/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NoClassDefFoundError"

    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception"

    goto :goto_6

    :goto_2
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IllegalAccessException"

    goto :goto_6

    :goto_3
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InvocationTargetException"

    goto :goto_6

    :goto_4
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoSuchMethodException"

    goto :goto_6

    :goto_5
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClassNotFoundException"

    :goto_6
    invoke-static {v2, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_7
    sget-object v1, Lcom/huawei/hms/hmsscankit/g;->a:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v1, :cond_2

    :try_start_1
    new-instance v1, Lcom/huawei/hms/scankit/p/Pc;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/Pc;-><init>()V

    sput-object v1, Lcom/huawei/hms/hmsscankit/g;->a:Lcom/huawei/hms/scankit/p/Pc;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/huawei/hms/hmsscankit/g;->a:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_6
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/huawei/hms/hmsscankit/g;->a:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_2

    return-void

    :catch_7
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/huawei/hms/hmsscankit/g;->a:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_2

    return-void

    :goto_8
    sget-object v0, Lcom/huawei/hms/hmsscankit/g;->a:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_1

    return-void

    :cond_1
    throw p0

    :cond_2
    sget-object v0, Lcom/huawei/hms/hmsscankit/g;->a:Lcom/huawei/hms/scankit/p/Pc;

    invoke-virtual {v0, p0}, Lcom/huawei/hms/scankit/p/Pc;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    sget-object v1, Lcom/huawei/hms/hmsscankit/g;->b:Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;

    const-string v2, "RemoteException"

    const-string v3, "RemoteDecoder"

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/huawei/hms/hmsscankit/j;->b(Landroid/content/Context;)Lcom/huawei/hms/hmsscankit/api/IRemoteCreator;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/huawei/hms/hmsscankit/api/IRemoteCreator;->newRemoteDecoderDelegate()Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;

    move-result-object v1

    sput-object v1, Lcom/huawei/hms/hmsscankit/g;->b:Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v1, Lcom/huawei/hms/hmsscankit/g;->b:Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;

    if-eqz v1, :cond_3

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_2

    const-string v4, "FormatValue"

    :try_start_2
    iget v5, p2, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;->mode:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "PhotoMode"

    :try_start_3
    iget-boolean p2, p2, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;->photoMode:Z

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    const-string p2, "TransType"

    const/4 v4, 0x3

    :try_start_4
    invoke-virtual {v1, p2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Rc;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    sget-object p0, Lcom/huawei/hms/hmsscankit/g;->b:Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {v1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate;->decodeWithBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz p0, :cond_3

    move-object v0, p0

    goto :goto_1

    :catch_1
    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method
