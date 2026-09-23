.class public final Lr8/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lr8/u;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static a(J)I
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    ushr-long v0, p0, v0

    .line 4
    .line 5
    xor-long/2addr p0, v0

    .line 6
    long-to-int p1, p0

    .line 7
    return p1
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lr8/u;

    .line 2
    .line 3
    iget-wide v0, p1, Lr8/u;->a:J

    .line 4
    .line 5
    iget-wide v2, p0, Lr8/u;->a:J

    .line 6
    .line 7
    const-wide/high16 v4, -0x8000000000000000L

    .line 8
    .line 9
    xor-long/2addr v2, v4

    .line 10
    xor-long/2addr v0, v4

    .line 11
    invoke-static {v2, v3, v0, v1}, Lg9/l;->g(JJ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lr8/u;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lr8/u;

    .line 7
    .line 8
    iget-wide v0, p1, Lr8/u;->a:J

    .line 9
    .line 10
    iget-wide v2, p0, Lr8/u;->a:J

    .line 11
    .line 12
    cmp-long p1, v2, v0

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lr8/u;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lr8/u;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iget-wide v2, p0, Lr8/u;->a:J

    .line 4
    .line 5
    const/16 v4, 0xa

    .line 6
    .line 7
    const-string v5, "toString(...)"

    .line 8
    .line 9
    cmp-long v6, v2, v0

    .line 10
    .line 11
    if-ltz v6, :cond_0

    .line 12
    .line 13
    invoke-static {v4}, Lp4/e;->h(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    ushr-long v6, v2, v0

    .line 26
    .line 27
    int-to-long v8, v4

    .line 28
    div-long/2addr v6, v8

    .line 29
    shl-long v0, v6, v0

    .line 30
    .line 31
    mul-long v6, v0, v8

    .line 32
    .line 33
    sub-long/2addr v2, v6

    .line 34
    cmp-long v6, v2, v8

    .line 35
    .line 36
    if-ltz v6, :cond_1

    .line 37
    .line 38
    sub-long/2addr v2, v8

    .line 39
    const-wide/16 v6, 0x1

    .line 40
    .line 41
    add-long/2addr v0, v6

    .line 42
    :cond_1
    invoke-static {v4}, Lp4/e;->h(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v4}, Lp4/e;->h(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1, v5}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
