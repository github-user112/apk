.class public final Lp1/r;
.super Lp1/b0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public c:Li1/d;

.field public d:I


# direct methods
.method public constructor <init>(JLi1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lp1/b0;-><init>(J)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lp1/r;->c:Li1/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lp1/b0;)V
    .locals 2

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord, V of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lp1/r;

    .line 7
    .line 8
    sget-object v0, Lp1/q;->b:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p1, Lp1/r;->c:Li1/d;

    .line 12
    .line 13
    iput-object v1, p0, Lp1/r;->c:Li1/d;

    .line 14
    .line 15
    iget p1, p1, Lp1/r;->d:I

    .line 16
    .line 17
    iput p1, p0, Lp1/r;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final b(J)Lp1/b0;
    .locals 2

    .line 1
    new-instance v0, Lp1/r;

    .line 2
    .line 3
    iget-object v1, p0, Lp1/r;->c:Li1/d;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Lp1/r;-><init>(JLi1/d;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
