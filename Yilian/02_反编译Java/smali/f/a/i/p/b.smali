.class public Lf/a/i/p/b;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lf/a/i/p/c$a;

.field public final synthetic d:Lf/a/i/p/c;


# direct methods
.method public constructor <init>(Lf/a/i/p/c;[Ljava/lang/String;Ljava/io/File;Lf/a/i/p/c$a;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/p/b;->d:Lf/a/i/p/c;

    iput-object p2, p0, Lf/a/i/p/b;->a:[Ljava/lang/String;

    iput-object p3, p0, Lf/a/i/p/b;->b:Ljava/io/File;

    iput-object p4, p0, Lf/a/i/p/b;->c:Lf/a/i/p/c$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "GuardedProcess start begin"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lf/a/i/p/b;->d:Lf/a/i/p/c;

    .line 1
    iget-boolean v0, v0, Lf/a/i/p/c;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/i/p/b;->d:Lf/a/i/p/c;

    new-instance v1, Ljava/lang/ProcessBuilder;

    iget-object v2, p0, Lf/a/i/p/b;->a:[Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/a/i/p/b;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lf/a/i/p/c;->c:Ljava/lang/Process;

    const-string v0, "GuardedProcess start next"

    .line 4
    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lf/a/i/p/b;->c:Lf/a/i/p/c$a;

    invoke-interface {v0}, Lf/a/i/p/c$a;->onStart()V

    iget-object v0, p0, Lf/a/i/p/b;->d:Lf/a/i/p/c;

    .line 5
    iget-object v0, v0, Lf/a/i/p/c;->c:Ljava/lang/Process;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    const-string v0, "GuardedProcess start next1"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuardedProcess"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "GuardedProcess start end"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
