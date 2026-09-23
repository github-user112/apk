.class public Lf/a/i/j/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/i/j/c;


# direct methods
.method public constructor <init>(Lf/a/i/j/c;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/j/d;->a:Lf/a/i/j/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lf/a/i/j/d;->a:Lf/a/i/j/c;

    .line 1
    iget-object v1, v0, Lf/a/i/j/c;->a:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lf/a/i/j/c;->f:Lf/a/i/j/b;

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    iget-object v3, v2, Lf/a/i/j/b;->a:Lf/a/i/j/b$a;

    .line 4
    sget-object v4, Lf/a/i/j/c;->i:Ljava/lang/String;

    .line 5
    iput-object v4, v3, Lf/a/i/j/b$a;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {v2}, Lf/a/i/j/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf/a/i/m/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf/a/i/j/c;->i(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EcStatsManager sendStatsInfo exception: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
