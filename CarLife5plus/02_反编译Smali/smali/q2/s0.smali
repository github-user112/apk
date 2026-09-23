.class public final Lq2/s0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Lq2/u0;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Lq2/u0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq2/s0;->a:Lq2/u0;

    .line 2
    .line 3
    iput-wide p2, p0, Lq2/s0;->b:J

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/s0;->a:Lq2/u0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/u0;->f:Lq2/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lq2/l0;->a()Lq2/h1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lq2/h1;->E0()Lq2/q0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lq2/s0;->b:J

    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Lo2/l0;->u(J)Lo2/v0;

    .line 19
    .line 20
    .line 21
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object v0
.end method
