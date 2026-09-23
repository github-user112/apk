.class public final Lac/d1;
.super Lac/j1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final d:Lw8/c;


# direct methods
.method public constructor <init>(Lw8/h;Lf9/n;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lac/a;-><init>(Lw8/h;Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p0, p0}, Lp9/x1;->k(Lf9/n;Lw8/c;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lac/d1;->d:Lw8/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lac/d1;->d:Lw8/c;

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lfc/a;->h(Ljava/lang/Object;Lw8/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Lac/a;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
