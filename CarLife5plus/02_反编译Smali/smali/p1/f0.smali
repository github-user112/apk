.class public final Lp1/f0;
.super Lp1/f;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final e:Lp1/f;

.field public final f:Z

.field public final g:Z

.field public h:Lf9/k;

.field public final i:J


# direct methods
.method public constructor <init>(Lp1/f;Lf9/k;ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lp1/l;->a:Lm7/j;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    sget-object v2, Lp1/j;->e:Lp1/j;

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v2}, Lp1/f;-><init>(JLp1/j;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lp1/f0;->e:Lp1/f;

    .line 11
    .line 12
    iput-boolean p3, p0, Lp1/f0;->f:Z

    .line 13
    .line 14
    iput-boolean p4, p0, Lp1/f0;->g:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lp1/f;->e()Lf9/k;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    :cond_0
    sget-object p1, Lp1/l;->j:Lp1/a;

    .line 25
    .line 26
    iget-object p1, p1, Lp1/b;->e:Lf9/k;

    .line 27
    .line 28
    :cond_1
    invoke-static {p2, p1, p3}, Lp1/l;->l(Lf9/k;Lf9/k;Z)Lf9/k;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lp1/f0;->h:Lf9/k;

    .line 33
    .line 34
    invoke-static {}, Ln1/h;->b()J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    iput-wide p1, p0, Lp1/f0;->i:J

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp1/f;->c:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lp1/f0;->g:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lp1/f0;->e:Lp1/f;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lp1/f;->c()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final d()Lp1/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp1/f0;->v()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp1/f;->d()Lp1/j;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final e()Lf9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/f0;->h:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp1/f0;->v()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp1/f;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final g()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp1/f0;->v()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp1/f;->g()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final i()Lf9/k;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-static {}, Lp1/q;->h()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public final l()V
    .locals 1

    .line 1
    invoke-static {}, Lp1/q;->h()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public final m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp1/f0;->v()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp1/f;->m()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(Lp1/z;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp1/f0;->v()Lp1/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lp1/f;->n(Lp1/z;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u(Lf9/k;)Lp1/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/f0;->h:Lf9/k;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v0, v1}, Lp1/l;->l(Lf9/k;Lf9/k;Z)Lf9/k;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-boolean v0, p0, Lp1/f0;->f:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lp1/f0;->v()Lp1/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Lp1/f;->u(Lf9/k;)Lp1/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1, v1}, Lp1/l;->h(Lp1/f;Lf9/k;Z)Lp1/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lp1/f0;->v()Lp1/f;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lp1/f;->u(Lf9/k;)Lp1/f;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public final v()Lp1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/f0;->e:Lp1/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lp1/l;->j:Lp1/a;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method
