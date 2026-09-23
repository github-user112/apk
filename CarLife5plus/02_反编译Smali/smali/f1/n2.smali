.class public final Lf1/n2;
.super Lp1/b0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lp1/b0;-><init>(J)V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lf1/n2;->c:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lp1/b0;)V
    .locals 2

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableLongStateImpl.LongStateStateRecord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/n2;

    .line 7
    .line 8
    iget-wide v0, p1, Lf1/n2;->c:J

    .line 9
    .line 10
    iput-wide v0, p0, Lf1/n2;->c:J

    .line 11
    .line 12
    return-void
.end method

.method public final b(J)Lp1/b0;
    .locals 3

    .line 1
    new-instance v0, Lf1/n2;

    .line 2
    .line 3
    iget-wide v1, p0, Lf1/n2;->c:J

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1, v2}, Lf1/n2;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
