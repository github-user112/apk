.class public Lnet/easyconn/EcApplication$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tencent/bugly/beta/interfaces/BetaPatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/EcApplication;->initBugly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lnet/easyconn/EcApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyFailure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onApplyFailure==>"

    invoke-static {v0, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onApplySuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onApplySuccess==>"

    invoke-static {v0, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadFailure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onDownloadFailure==>"

    invoke-static {v0, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadReceived(JJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadReceived==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onDownloadSuccess==>"

    invoke-static {v0, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPatchReceived(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onPatchReceived==>"

    invoke-static {v0, p1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPatchRollback()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onPatchRollback"

    invoke-static {v1, v0}, Le/e/a/g;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
