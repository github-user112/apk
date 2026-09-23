.class public final Lhc/d;
.super Lac/q0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Lhc/d;

.field public static final d:Lac/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lhc/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lac/s;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhc/d;->c:Lhc/d;

    .line 7
    .line 8
    sget-object v0, Lhc/l;->c:Lhc/l;

    .line 9
    .line 10
    sget v1, Lfc/t;->a:I

    .line 11
    .line 12
    const/16 v2, 0x40

    .line 13
    .line 14
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v1, 0x40

    .line 18
    .line 19
    :goto_0
    const/16 v2, 0xc

    .line 20
    .line 21
    const-string v3, "kotlinx.coroutines.io.parallelism"

    .line 22
    .line 23
    invoke-static {v3, v1, v2}, Lfc/a;->j(Ljava/lang/String;II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Lhc/l;->s(I)Lac/s;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lhc/d;->d:Lac/s;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "Cannot be invoked on Dispatchers.IO"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lw8/i;->a:Lw8/i;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lhc/d;->n(Lw8/h;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(Lw8/h;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lhc/d;->d:Lac/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lac/s;->n(Lw8/h;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(Lw8/h;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lhc/d;->d:Lac/s;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lac/s;->q(Lw8/h;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.IO"

    .line 2
    .line 3
    return-object v0
.end method
