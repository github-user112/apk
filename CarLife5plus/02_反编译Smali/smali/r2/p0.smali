.class public final Lr2/p0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lac/w;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lg3/x;

.field public final c:Lac/w;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroid/view/View;Lg3/x;Lac/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/p0;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/p0;->b:Lg3/x;

    .line 7
    .line 8
    iput-object p3, p0, Lr2/p0;->c:Lac/w;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lr2/p0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lu0/o;Ly8/c;)V
    .locals 4

    .line 1
    instance-of v0, p2, Lr2/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lr2/o0;

    .line 7
    .line 8
    iget v1, v0, Lr2/o0;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lr2/o0;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lr2/o0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lr2/o0;-><init>(Lr2/p0;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lr2/o0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lr2/o0;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lc1/a1;

    .line 50
    .line 51
    const/16 v1, 0x8

    .line 52
    .line 53
    invoke-direct {p2, v1, p1, p0}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lb0/g;

    .line 57
    .line 58
    const/16 v1, 0xc

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-direct {p1, p0, v3, v1}, Lb0/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 62
    .line 63
    .line 64
    iput v2, v0, Lr2/o0;->f:I

    .line 65
    .line 66
    new-instance v1, Ldc/i;

    .line 67
    .line 68
    iget-object v2, p0, Lr2/p0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    .line 70
    invoke-direct {v1, p2, v2, p1, v3}, Ldc/i;-><init>(Lf9/k;Ljava/util/concurrent/atomic/AtomicReference;Lf9/n;Lw8/c;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 78
    .line 79
    if-ne p1, p2, :cond_3

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    :goto_1
    new-instance p1, Lac/p;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public final q()Lw8/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/p0;->c:Lac/w;

    .line 2
    .line 3
    invoke-interface {v0}, Lac/w;->q()Lw8/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
