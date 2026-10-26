.class public Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;
.super Ljava/lang/Throwable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/common/utils/SmartLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThrowableWrapper"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x62ef79f88034b1e7L


# instance fields
.field public message:Ljava/lang/String;

.field public ownerThrowable:Ljava/lang/Throwable;

.field public thisCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->ownerThrowable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->thisCause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCause(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->thisCause:Ljava/lang/Throwable;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->ownerThrowable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->message:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ": "

    invoke-static {v0, v1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/ml/common/utils/SmartLog$ThrowableWrapper;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
