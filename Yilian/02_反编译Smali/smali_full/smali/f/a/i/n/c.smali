.class public Lf/a/i/n/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/n/c$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final c:[[B

.field public final d:[[B

.field public final e:[I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    const-class v0, B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lf/a/i/n/c;->e:[I

    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lf/a/i/n/c;->a:I

    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lf/a/i/n/c;->b:I

    const/4 p1, 0x2

    new-array v2, p1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lf/a/i/n/c;->c:[[B

    iget v2, p0, Lf/a/i/n/c;->b:I

    new-array v4, p1, [I

    aput v2, v4, v3

    aput p1, v4, v1

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lf/a/i/n/c;->d:[[B

    return-void
.end method


# virtual methods
.method public a([BIII)Lf/a/i/n/c$b;
    .locals 8

    iget v0, p0, Lf/a/i/n/c;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt p3, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v5, p0, Lf/a/i/n/c;->e:[I

    aget v6, v5, v0

    if-nez v6, :cond_1

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lf/a/i/n/c;->e:[I

    aget v6, v6, v0

    if-ne v6, v4, :cond_0

    monitor-exit v5

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lf/a/i/n/c;->e:[I

    aput v4, v1, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lf/a/i/n/c;->d:[[B

    aget-object v1, v1, v0

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lf/a/i/n/c$b;

    invoke-direct {p1, p0, v0, v2}, Lf/a/i/n/c$b;-><init>(Lf/a/i/n/c;ILf/a/i/n/c$a;)V

    .line 1
    iput p4, p1, Lf/a/i/n/c$b;->a:I

    .line 2
    iput p3, p1, Lf/a/i/n/c$b;->c:I

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lf/a/i/n/c;->a:I

    if-gt p3, v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_5

    iget-object v5, p0, Lf/a/i/n/c;->e:[I

    add-int/lit8 v6, v0, 0x2

    aget v7, v5, v6

    if-nez v7, :cond_4

    monitor-enter v5

    :try_start_2
    iget-object v7, p0, Lf/a/i/n/c;->e:[I

    aget v7, v7, v6

    if-ne v7, v4, :cond_3

    monitor-exit v5

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lf/a/i/n/c;->e:[I

    aput v4, v1, v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lf/a/i/n/c;->c:[[B

    aget-object v0, v1, v0

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lf/a/i/n/c$b;

    invoke-direct {p1, p0, v6, v2}, Lf/a/i/n/c$b;-><init>(Lf/a/i/n/c;ILf/a/i/n/c$a;)V

    .line 4
    iput p4, p1, Lf/a/i/n/c$b;->a:I

    .line 5
    iput p3, p1, Lf/a/i/n/c$b;->c:I

    return-object p1

    :catchall_1
    move-exception p1

    .line 6
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :try_start_4
    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lf/a/i/n/c$b;

    const/4 p2, -0x1

    invoke-direct {p1, p0, p2, v2}, Lf/a/i/n/c$b;-><init>(Lf/a/i/n/c;ILf/a/i/n/c$a;)V

    .line 7
    iput p4, p1, Lf/a/i/n/c$b;->a:I

    .line 8
    iput p3, p1, Lf/a/i/n/c$b;->c:I

    .line 9
    iput-object v0, p1, Lf/a/i/n/c$b;->d:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    :catchall_2
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2
.end method
