.class public final Lc1/f0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:J


# direct methods
.method public constructor <init>(FJ)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/f0;->a:F

    .line 2
    .line 3
    iput-wide p2, p0, Lc1/f0;->b:J

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
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, La2/g;

    .line 3
    .line 4
    iget p1, p0, Lc1/f0;->a:F

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x2

    .line 15
    int-to-float v2, v2

    .line 16
    div-float/2addr v1, v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v3, v1}, Lp9/q;->d(FF)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-interface {v0}, La2/g;->g()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    invoke-static {v5, v6}, Lx1/e;->d(J)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    div-float/2addr p1, v2

    .line 35
    invoke-static {v1, p1}, Lp9/q;->d(FF)J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    iget-wide v1, p0, Lc1/f0;->b:J

    .line 40
    .line 41
    invoke-interface/range {v0 .. v7}, La2/g;->w(JJJF)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 45
    .line 46
    return-object p1
.end method
