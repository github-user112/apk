.class public final Lq2/n0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Lq2/p0;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lq2/u1;


# direct methods
.method public constructor <init>(Lq2/p0;JJLq2/u1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq2/n0;->a:Lq2/p0;

    .line 2
    .line 3
    iput-wide p2, p0, Lq2/n0;->b:J

    .line 4
    .line 5
    iput-wide p4, p0, Lq2/n0;->c:J

    .line 6
    .line 7
    iput-object p6, p0, Lq2/n0;->d:Lq2/u1;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lq2/n0;->a:Lq2/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq2/p0;->r0()Lq2/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v1, Lq2/m0;->a:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Lq2/p0;->r0()Lq2/m0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-wide v2, p0, Lq2/n0;->b:J

    .line 15
    .line 16
    iput-wide v2, v1, Lq2/m0;->b:J

    .line 17
    .line 18
    invoke-virtual {v0}, Lq2/p0;->r0()Lq2/m0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-wide v2, p0, Lq2/n0;->c:J

    .line 23
    .line 24
    iput-wide v2, v1, Lq2/m0;->c:J

    .line 25
    .line 26
    iget-object v1, p0, Lq2/n0;->d:Lq2/u1;

    .line 27
    .line 28
    iget-object v1, v1, Lq2/u1;->a:Lo2/n0;

    .line 29
    .line 30
    invoke-interface {v1}, Lo2/n0;->d()Lf9/k;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lq2/p0;->r0()Lq2/m0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    return-object v0
.end method
