.class public final La/a/a/a/a/a/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lc/k/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/a/b$a;->a(ILjava/lang/Integer;I)La/a/a/a/a/a/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/Integer;I)La/a/a/a/a/a/b;
    .locals 7

    .line 1
    sget-object v0, La/a/a/a/a/a/b;->c:La/a/a/a/a/a/c;

    .line 2
    monitor-enter v0

    :try_start_0
    const-string v1, "CarLife_SDK"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CarLifeMessagePool recyclePoll obtain size "

    iget-object v5, v0, La/a/a/a/a/a/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

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
    const/4 v6, 0x2

    .line 5
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v6, v1, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object v1, v0, La/a/a/a/a/a/c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/a/b;

    if-nez v1, :cond_1

    new-instance v1, La/a/a/a/a/a/b;

    invoke-direct {v1, p1}, La/a/a/a/a/a/b;-><init>(I)V

    :cond_1
    const/4 v3, 0x0

    .line 7
    iput p1, v1, La/a/a/a/a/a/b;->e:I

    iput-object v3, v1, La/a/a/a/a/a/b;->k:La/c/a/x;

    invoke-virtual {v1, v5}, La/a/a/a/a/a/b;->u(I)V

    invoke-virtual {v1, p3}, La/a/a/a/a/a/b;->t(I)V

    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iget p2, v1, La/a/a/a/a/a/b;->e:I

    const/4 p3, 0x4

    if-eq p2, v2, :cond_2

    const/4 v2, 0x6

    if-eq p2, v2, :cond_2

    iget-object p2, v1, La/a/a/a/a/a/b;->i:[B

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v5, p3}, Lb/e/b/g;->v(I[BIII)V

    goto :goto_1

    :cond_2
    iget-object p2, v1, La/a/a/a/a/a/b;->i:[B

    invoke-static {p1, p2, p3, v5, p3}, Lb/e/b/g;->v(I[BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    :goto_1
    monitor-exit v0

    .line 11
    iget-object p1, v1, La/a/a/a/a/a/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object v1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method
