.class public final Lf0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lh0/k0;


# instance fields
.field public final synthetic a:Lf0/u;


# direct methods
.method public constructor <init>(Lf0/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/d;->a:Lf0/u;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/d;->a:Lf0/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf0/u;->g()Lf0/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lf0/m;->o:Lz/w0;

    .line 8
    .line 9
    sget-object v2, Lz/w0;->a:Lz/w0;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lf0/u;->g()Lf0/m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lf0/m;->e()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide v2, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v0, v2

    .line 27
    :goto_0
    long-to-int v1, v0

    .line 28
    return v1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lf0/u;->g()Lf0/m;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lf0/m;->e()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const/16 v2, 0x20

    .line 38
    .line 39
    shr-long/2addr v0, v2

    .line 40
    goto :goto_0
.end method

.method public final b()F
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/d;->a:Lf0/u;

    .line 2
    .line 3
    iget-object v1, v0, Lf0/u;->e:Lf0/p;

    .line 4
    .line 5
    iget-object v1, v1, Lf0/p;->b:Lf1/h1;

    .line 6
    .line 7
    invoke-virtual {v1}, Lf1/h1;->f()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v0, v0, Lf0/u;->e:Lf0/p;

    .line 12
    .line 13
    iget-object v0, v0, Lf0/p;->c:Lf1/h1;

    .line 14
    .line 15
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-int/lit16 v1, v1, 0x1f4

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    int-to-float v0, v1

    .line 23
    return v0
.end method

.method public final c(ILb8/l;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/d;->a:Lf0/u;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lf0/u;->i(Lf0/u;ILy8/i;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    return-object p1
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/d;->a:Lf0/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf0/u;->g()Lf0/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Lf0/m;->l:I

    .line 8
    .line 9
    neg-int v1, v1

    .line 10
    invoke-virtual {v0}, Lf0/u;->g()Lf0/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Lf0/m;->p:I

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public final e()F
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/d;->a:Lf0/u;

    .line 2
    .line 3
    iget-object v1, v0, Lf0/u;->e:Lf0/p;

    .line 4
    .line 5
    iget-object v1, v1, Lf0/p;->b:Lf1/h1;

    .line 6
    .line 7
    invoke-virtual {v1}, Lf1/h1;->f()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lf0/u;->e:Lf0/p;

    .line 12
    .line 13
    iget-object v2, v2, Lf0/p;->c:Lf1/h1;

    .line 14
    .line 15
    invoke-virtual {v2}, Lf1/h1;->f()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Lf0/u;->c()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    mul-int/lit16 v1, v1, 0x1f4

    .line 26
    .line 27
    add-int/2addr v1, v2

    .line 28
    int-to-float v0, v1

    .line 29
    const/16 v1, 0x64

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    add-float/2addr v0, v1

    .line 33
    return v0

    .line 34
    :cond_0
    mul-int/lit16 v1, v1, 0x1f4

    .line 35
    .line 36
    add-int/2addr v1, v2

    .line 37
    int-to-float v0, v1

    .line 38
    return v0
.end method

.method public final f()Ly2/b;
    .locals 3

    .line 1
    new-instance v0, Ly2/b;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/d;->a:Lf0/u;

    .line 4
    .line 5
    invoke-virtual {v1}, Lf0/u;->g()Lf0/m;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Lf0/m;->n:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v1, v2}, Ly2/b;-><init>(II)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
