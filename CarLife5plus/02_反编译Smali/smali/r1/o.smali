.class public abstract Lr1/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/l;


# instance fields
.field public a:Lr1/o;

.field public b:Lfc/c;

.field public c:I

.field public d:I

.field public e:Lr1/o;

.field public f:Lr1/o;

.field public g:Lq2/m1;

.field public h:Lq2/h1;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lk2/d;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lr1/o;->a:Lr1/o;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lr1/o;->d:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final m0()Lac/w;
    .locals 3

    .line 1
    iget-object v0, p0, Lr1/o;->b:Lfc/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lr2/u;

    .line 10
    .line 11
    invoke-virtual {v0}, Lr2/u;->getCoroutineContext()Lw8/h;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lr2/u;

    .line 20
    .line 21
    invoke-virtual {v1}, Lr2/u;->getCoroutineContext()Lw8/h;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lac/t;->b:Lac/t;

    .line 26
    .line 27
    invoke-interface {v1, v2}, Lw8/h;->m(Lw8/g;)Lw8/f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lac/v0;

    .line 32
    .line 33
    new-instance v2, Lac/x0;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lac/x0;-><init>(Lac/v0;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v2}, Lw8/h;->z(Lw8/h;)Lw8/h;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lr1/o;->b:Lfc/c;

    .line 47
    .line 48
    :cond_0
    return-object v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lx/l;

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public o0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "node attached multiple times"

    .line 6
    .line 7
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lr1/o;->h:Lq2/h1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "attach invoked on a node without a coordinator"

    .line 16
    .line 17
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lr1/o;->n:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lr1/o;->k:Z

    .line 24
    .line 25
    return-void
.end method

.method public p0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Cannot detach a node that is not attached"

    .line 6
    .line 7
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lr1/o;->k:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "Must run runAttachLifecycle() before markAsDetached()"

    .line 15
    .line 16
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p0, Lr1/o;->l:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v0, "Must run runDetachLifecycle() before markAsDetached()"

    .line 24
    .line 25
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lr1/o;->n:Z

    .line 30
    .line 31
    iget-object v0, p0, Lr1/o;->b:Lfc/c;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    new-instance v1, Lk2/z;

    .line 36
    .line 37
    const-string v2, "The Modifier.Node was detached"

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v1, v3, v2}, Lc0/c;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lac/z;->d(Lac/w;Ljava/util/concurrent/CancellationException;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lr1/o;->b:Lfc/c;

    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public q0()V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic r0()V
    .locals 0

    .line 1
    return-void
.end method

.method public s0()V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic t0()V
    .locals 0

    .line 1
    return-void
.end method

.method public u0()V
    .locals 0

    .line 1
    return-void
.end method

.method public v0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "reset() called on an unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lr1/o;->u0()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public w0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Must run markAsAttached() prior to runAttachLifecycle"

    .line 6
    .line 7
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Lr1/o;->k:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "Must run runAttachLifecycle() only once after markAsAttached()"

    .line 15
    .line 16
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lr1/o;->k:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lr1/o;->q0()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lr1/o;->l:Z

    .line 27
    .line 28
    return-void
.end method

.method public x0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr1/o;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "node detached multiple times"

    .line 6
    .line 7
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lr1/o;->h:Lq2/h1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "detach invoked on a node without a coordinator"

    .line 16
    .line 17
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-boolean v0, p0, Lr1/o;->l:Z

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    const-string v0, "Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()"

    .line 25
    .line 26
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lr1/o;->l:Z

    .line 31
    .line 32
    iget-object v0, p0, Lr1/o;->m:Lk2/d;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lk2/d;->invoke()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-virtual {p0}, Lr1/o;->s0()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public y0(Lr1/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/o;->a:Lr1/o;

    .line 2
    .line 3
    return-void
.end method

.method public z0(Lq2/h1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/o;->h:Lq2/h1;

    .line 2
    .line 3
    return-void
.end method
