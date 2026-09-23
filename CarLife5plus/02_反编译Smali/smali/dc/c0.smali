.class public final Ldc/c0;
.super Lec/d;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:J

.field public b:Lac/i;


# virtual methods
.method public final a(Lec/b;)Z
    .locals 5

    .line 1
    check-cast p1, Ldc/a0;

    .line 2
    .line 3
    iget-wide v0, p0, Ldc/c0;->a:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-wide v0, p1, Ldc/a0;->i:J

    .line 14
    .line 15
    iget-wide v2, p1, Ldc/a0;->j:J

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-gez v4, :cond_1

    .line 20
    .line 21
    iput-wide v0, p1, Ldc/a0;->j:J

    .line 22
    .line 23
    :cond_1
    iput-wide v0, p0, Ldc/c0;->a:J

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public final b(Lec/b;)[Lw8/c;
    .locals 4

    .line 1
    check-cast p1, Ldc/a0;

    .line 2
    .line 3
    iget-wide v0, p0, Ldc/c0;->a:J

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    iput-wide v2, p0, Ldc/c0;->a:J

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Ldc/c0;->b:Lac/i;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Ldc/a0;->t(J)[Lw8/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
