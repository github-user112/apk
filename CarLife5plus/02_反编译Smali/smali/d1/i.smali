.class public final Ld1/i;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lf1/b1;


# direct methods
.method public constructor <init>(FLf1/b1;)V
    .locals 0

    .line 1
    iput p1, p0, Ld1/i;->a:F

    .line 2
    .line 3
    iput-object p2, p0, Ld1/i;->b:Lf1/b1;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lx1/e;

    .line 2
    .line 3
    iget-wide v0, p1, Lx1/e;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Lx1/e;->d(J)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v2, p0, Ld1/i;->a:F

    .line 10
    .line 11
    mul-float p1, p1, v2

    .line 12
    .line 13
    invoke-static {v0, v1}, Lx1/e;->b(J)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    mul-float v0, v0, v2

    .line 18
    .line 19
    iget-object v1, p0, Ld1/i;->b:Lf1/b1;

    .line 20
    .line 21
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lx1/e;

    .line 26
    .line 27
    iget-wide v2, v2, Lx1/e;->a:J

    .line 28
    .line 29
    invoke-static {v2, v3}, Lx1/e;->d(J)F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    cmpg-float v2, v2, p1

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lx1/e;

    .line 42
    .line 43
    iget-wide v2, v2, Lx1/e;->a:J

    .line 44
    .line 45
    invoke-static {v2, v3}, Lx1/e;->b(J)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    cmpg-float v2, v2, v0

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1, v0}, Lp4/e;->b(FF)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    new-instance p1, Lx1/e;

    .line 59
    .line 60
    invoke-direct {p1, v2, v3}, Lx1/e;-><init>(J)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 67
    .line 68
    return-object p1
.end method
