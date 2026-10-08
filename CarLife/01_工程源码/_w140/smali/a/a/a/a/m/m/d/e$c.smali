.class public final La/a/a/a/m/m/d/e$c;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/m/m/d/e;->b(La/a/a/a/a/j/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Lc/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/m/m/d/e;

.field public final synthetic c:La/a/a/a/a/j/f/a;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/e;La/a/a/a/a/j/f/a;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/d/e$c;->b:La/a/a/a/m/m/d/e;

    iput-object p2, p0, La/a/a/a/m/m/d/e$c;->c:La/a/a/a/a/j/f/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, La/a/a/a/m/m/d/e$c;->b:La/a/a/a/m/m/d/e;

    iget-object v1, p0, La/a/a/a/m/m/d/e$c;->c:La/a/a/a/a/j/f/a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "communicator"

    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, La/a/a/a/m/m/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    const/4 v4, 0x6

    const-string v5, "args"

    const-string v6, "tag"

    const-string v7, "CarLife_SDK"

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "InstantConnectionSetup multiple bluetooth socket!!!"

    aput-object v1, v0, v8

    .line 3
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_0

    goto :goto_4

    .line 5
    :cond_0
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v7, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 6
    :cond_1
    iput-object v1, v0, La/a/a/a/m/m/d/e;->f:La/a/a/a/a/j/f/a;

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, La/a/a/a/a/j/f/a;->c()La/a/a/a/a/a/b;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, v1, v9}, La/a/a/a/m/m/d/e;->c(La/a/a/a/a/j/f/a;La/a/a/a/a/a/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v9}, La/a/a/a/a/a/b;->s()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v9

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v9, v2

    :goto_1
    :try_start_2
    new-array v10, v3, [Ljava/lang/Object;

    const-string v11, "InstantConnectionSetup process exception: "

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v8

    .line 7
    invoke-static {v7, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v10, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v7, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-nez v9, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v9}, La/a/a/a/a/a/b;->s()V

    :goto_3
    iget-object v1, v0, La/a/a/a/m/m/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v2, v0, La/a/a/a/m/m/d/e;->f:La/a/a/a/a/j/f/a;

    .line 11
    :goto_4
    sget-object v0, Lc/g;->a:Lc/g;

    return-object v0

    :goto_5
    if-nez v2, :cond_4

    goto :goto_6

    .line 12
    :cond_4
    invoke-virtual {v2}, La/a/a/a/a/a/b;->s()V

    :goto_6
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
