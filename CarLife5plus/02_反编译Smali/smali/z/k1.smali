.class public final Lz/k1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(JLw8/c;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lz/k1;->f:J

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lz/q1;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz/k1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz/k1;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lz/k1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    new-instance v0, Lz/k1;

    .line 2
    .line 3
    iget-wide v1, p0, Lz/k1;->f:J

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, p2}, Lz/k1;-><init>(JLw8/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lz/k1;->e:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lz/k1;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lz/q1;

    .line 7
    .line 8
    iget-object p1, p1, Lz/q1;->a:Lz/s1;

    .line 9
    .line 10
    iget-object v0, p1, Lz/s1;->k:Lz/c1;

    .line 11
    .line 12
    iget-wide v1, p0, Lz/k1;->f:J

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Lz/s1;->c(Lz/c1;JI)J

    .line 16
    .line 17
    .line 18
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 19
    .line 20
    return-object p1
.end method
