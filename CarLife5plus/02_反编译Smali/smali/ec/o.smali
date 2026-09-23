.class public final Lec/o;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public e:I

.field public final synthetic f:[Ldc/d;

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic i:Lcc/h;


# direct methods
.method public constructor <init>([Ldc/d;ILjava/util/concurrent/atomic/AtomicInteger;Lcc/h;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/o;->f:[Ldc/d;

    .line 2
    .line 3
    iput p2, p0, Lec/o;->g:I

    .line 4
    .line 5
    iput-object p3, p0, Lec/o;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    iput-object p4, p0, Lec/o;->i:Lcc/h;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Ly8/i;-><init>(ILw8/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lac/w;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lec/o;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lec/o;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lec/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 6

    .line 1
    new-instance v0, Lec/o;

    .line 2
    .line 3
    iget-object v3, p0, Lec/o;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iget-object v4, p0, Lec/o;->i:Lcc/h;

    .line 6
    .line 7
    iget-object v1, p0, Lec/o;->f:[Ldc/d;

    .line 8
    .line 9
    iget v2, p0, Lec/o;->g:I

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lec/o;-><init>([Ldc/d;ILjava/util/concurrent/atomic/AtomicInteger;Lcc/h;Lw8/c;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lec/o;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lec/o;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iget-object v2, p0, Lec/o;->i:Lcc/h;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object p1, p0, Lec/o;->f:[Ldc/d;

    .line 30
    .line 31
    iget v0, p0, Lec/o;->g:I

    .line 32
    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    new-instance v4, Lec/n;

    .line 36
    .line 37
    invoke-direct {v4, v2, v0}, Lec/n;-><init>(Lcc/h;I)V

    .line 38
    .line 39
    .line 40
    iput v3, p0, Lec/o;->e:I

    .line 41
    .line 42
    invoke-interface {p1, v4, p0}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 47
    .line 48
    if-ne p1, v0, :cond_2

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    invoke-static {v2}, Li9/a;->h(Lcc/h;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 61
    .line 62
    return-object p1

    .line 63
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    invoke-static {v2}, Li9/a;->h(Lcc/h;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    throw p1
.end method
