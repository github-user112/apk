.class public final Lc1/f2;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public synthetic e:J

.field public final synthetic f:Lc1/i2;


# direct methods
.method public constructor <init>(Lc1/i2;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/f2;->f:Lc1/i2;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Ly8/i;-><init>(ILw8/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lz/z0;

    .line 2
    .line 3
    check-cast p2, Lx1/b;

    .line 4
    .line 5
    iget-wide p1, p2, Lx1/b;->a:J

    .line 6
    .line 7
    check-cast p3, Lw8/c;

    .line 8
    .line 9
    new-instance v0, Lc1/f2;

    .line 10
    .line 11
    iget-object v1, p0, Lc1/f2;->f:Lc1/i2;

    .line 12
    .line 13
    invoke-direct {v0, v1, p3}, Lc1/f2;-><init>(Lc1/i2;Lw8/c;)V

    .line 14
    .line 15
    .line 16
    iput-wide p1, v0, Lc1/f2;->e:J

    .line 17
    .line 18
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lc1/f2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lc1/f2;->e:J

    .line 5
    .line 6
    iget-object p1, p0, Lc1/f2;->f:Lc1/i2;

    .line 7
    .line 8
    iget-boolean v2, p1, Lc1/i2;->h:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p1, Lc1/i2;->g:Lf1/h1;

    .line 13
    .line 14
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    invoke-static {v0, v1}, Lx1/b;->d(J)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-float/2addr v2, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0, v1}, Lx1/b;->d(J)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :goto_0
    iget-object v0, p1, Lc1/i2;->m:Lf1/g1;

    .line 30
    .line 31
    invoke-virtual {v0}, Lf1/g1;->f()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-float/2addr v2, v0

    .line 36
    iget-object p1, p1, Lc1/i2;->n:Lf1/g1;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lf1/g1;->g(F)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 42
    .line 43
    return-object p1
.end method
