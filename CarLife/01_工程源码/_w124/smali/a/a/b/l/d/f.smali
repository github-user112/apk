.class public final La/a/b/l/d/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:La/a/b/l/d/f;

.field public static b:La/a/b/l/d/b;

.field public static c:La/a/a/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/b/l/d/f;

    invoke-direct {v0}, La/a/b/l/d/f;-><init>()V

    sput-object v0, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "-----MSG_CMD_MIC_RECORD_END-----"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLifeVoice"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    .line 3
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v0, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, La/a/b/l/d/b;->a(Z)V

    :goto_1
    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "-----MSG_CMD_MIC_RECORD_RECOG_START-----"

    aput-object v3, v1, v2

    const-string v3, "CarLifeVoice"

    const-string v4, "tag"

    .line 1
    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v3, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v1, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, La/a/b/l/d/b;

    sget-object v3, La/a/b/l/d/f;->c:La/a/a/a/c;

    invoke-direct {v1, v3}, La/a/b/l/d/b;-><init>(La/a/a/a/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sput-object v1, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    :cond_2
    sget-object v1, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, La/a/b/l/d/b;->a(Z)V

    .line 5
    iget-object v0, v1, La/a/b/l/d/b;->e:La/a/b/l/d/c;

    if-nez v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iput-boolean v2, v0, La/a/b/l/d/c;->f:Z

    :goto_1
    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "-----MSG_CMD_MIC_RECORD_WAKEUP_START-----"

    aput-object v3, v1, v2

    const-string v3, "CarLifeVoice"

    const-string v4, "tag"

    .line 1
    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v3, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object v1, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, La/a/b/l/d/b;

    sget-object v3, La/a/b/l/d/f;->c:La/a/a/a/c;

    invoke-direct {v1, v3}, La/a/b/l/d/b;-><init>(La/a/a/a/c;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sput-object v1, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    :cond_2
    sget-object v1, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, La/a/b/l/d/b;->a(Z)V

    .line 5
    iget-object v0, v1, La/a/b/l/d/b;->e:La/a/b/l/d/c;

    if-nez v0, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    iput-boolean v2, v0, La/a/b/l/d/c;->f:Z

    :goto_1
    return-void
.end method
