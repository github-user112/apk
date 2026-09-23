.class public final synthetic La/a/b/l/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/a/b/l/b;


# direct methods
.method public synthetic constructor <init>(La/a/b/l/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/l/a;->b:La/a/b/l/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, La/a/b/l/a;->b:La/a/b/l/b;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    monitor-enter v0

    :try_start_0
    const-string v1, "CarLife_SDK"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "feedDelayed start"

    aput-object v5, v3, v4

    const-string v4, "tag"

    .line 3
    invoke-static {v1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    .line 5
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v1, v2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object v1, v0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/a/b;

    if-eqz v1, :cond_2

    iget-object v2, v0, La/a/b/l/b;->d:La/a/a/a/n/c;

    invoke-virtual {v2}, La/a/a/a/n/c;->a()I

    move-result v2

    invoke-virtual {v1}, La/a/a/a/a/a/b;->l()I

    move-result v3

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v0, La/a/b/l/b;->d:La/a/a/a/n/c;

    .line 7
    iget-object v5, v1, La/a/a/a/a/a/b;->i:[B

    .line 8
    invoke-virtual {v1}, La/a/a/a/a/a/b;->k()I

    move-result v6

    invoke-virtual {v1}, La/a/a/a/a/a/b;->l()I

    move-result v7

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    invoke-static/range {v4 .. v10}, La/a/a/a/n/c;->g(La/a/a/a/n/c;[BIIJI)I

    iget-object v2, v0, La/a/b/l/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    invoke-virtual {v1}, La/a/a/a/a/a/b;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
