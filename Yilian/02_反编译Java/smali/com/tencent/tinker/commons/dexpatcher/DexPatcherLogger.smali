.class public final Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;
    }
.end annotation


# instance fields
.field public loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz v0, :cond_2

    const-string v0, "[D]["

    const-string v1, "] "

    invoke-static {v0, p1, v1, p2}, Le/a/c/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz v0, :cond_2

    const-string v0, "[E]["

    const-string v1, "] "

    invoke-static {v0, p1, v1, p2}, Le/a/c/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getLoggerImpl()Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    return-object v0
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz v0, :cond_2

    const-string v0, "[I]["

    const-string v1, "] "

    invoke-static {v0, p1, v1, p2}, Le/a/c/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;->i(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setLoggerImpl(Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    return-void
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz v0, :cond_2

    const-string v0, "[V]["

    const-string v1, "] "

    invoke-static {v0, p1, v1, p2}, Le/a/c/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;->v(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz v0, :cond_2

    const-string v0, "[W]["

    const-string v1, "] "

    invoke-static {v0, p1, v1, p2}, Le/a/c/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger;->loggerImpl:Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/DexPatcherLogger$IDexPatcherLogger;->w(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
