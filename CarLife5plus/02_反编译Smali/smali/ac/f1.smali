.class public final Lac/f1;
.super Lw8/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lac/v0;


# static fields
.field public static final b:Lac/f1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lac/f1;

    .line 2
    .line 3
    sget-object v1, Lac/t;->b:Lac/t;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lw8/a;-><init>(Lw8/g;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lac/f1;->b:Lac/f1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final c(ZZLac/y0;)Lac/h0;
    .locals 0

    .line 1
    sget-object p1, Lac/g1;->a:Lac/g1;

    .line 2
    .line 3
    return-object p1
.end method

.method public final e(Ly8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "This job is always active"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public final i()Ljava/util/concurrent/CancellationException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v1, "This job is always active"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final o(Lac/c1;)Lac/l;
    .locals 0

    .line 1
    sget-object p1, Lac/g1;->a:Lac/g1;

    .line 2
    .line 3
    return-object p1
.end method

.method public final start()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NonCancellable"

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Lf9/k;)Lac/h0;
    .locals 0

    .line 1
    sget-object p1, Lac/g1;->a:Lac/g1;

    .line 2
    .line 3
    return-object p1
.end method
