.class public final synthetic Ld0/x0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Ld0/y0;

.field public final synthetic b:I

.field public final synthetic c:Lo2/v0;

.field public final synthetic d:I

.field public final synthetic e:Lo2/o0;


# direct methods
.method public synthetic constructor <init>(Ld0/y0;ILo2/v0;ILo2/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/x0;->a:Ld0/y0;

    .line 5
    .line 6
    iput p2, p0, Ld0/x0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Ld0/x0;->c:Lo2/v0;

    .line 9
    .line 10
    iput p4, p0, Ld0/x0;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Ld0/x0;->e:Lo2/o0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lo2/u0;

    .line 2
    .line 3
    iget-object v0, p0, Ld0/x0;->a:Ld0/y0;

    .line 4
    .line 5
    iget-object v0, v0, Ld0/y0;->p:Lf9/n;

    .line 6
    .line 7
    iget-object v1, p0, Ld0/x0;->c:Lo2/v0;

    .line 8
    .line 9
    iget v2, v1, Lo2/v0;->a:I

    .line 10
    .line 11
    iget v3, p0, Ld0/x0;->b:I

    .line 12
    .line 13
    sub-int/2addr v3, v2

    .line 14
    iget v2, v1, Lo2/v0;->b:I

    .line 15
    .line 16
    iget v4, p0, Ld0/x0;->d:I

    .line 17
    .line 18
    sub-int/2addr v4, v2

    .line 19
    int-to-long v2, v3

    .line 20
    const/16 v5, 0x20

    .line 21
    .line 22
    shl-long/2addr v2, v5

    .line 23
    int-to-long v4, v4

    .line 24
    const-wide v6, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v4, v6

    .line 30
    or-long/2addr v2, v4

    .line 31
    new-instance v4, Ln3/l;

    .line 32
    .line 33
    invoke-direct {v4, v2, v3}, Ln3/l;-><init>(J)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Ld0/x0;->e:Lo2/o0;

    .line 37
    .line 38
    invoke-interface {v2}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v0, v4, v2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ln3/j;

    .line 47
    .line 48
    iget-wide v2, v0, Ln3/j;->a:J

    .line 49
    .line 50
    invoke-static {p1, v1, v2, v3}, Lo2/u0;->h(Lo2/u0;Lo2/v0;J)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 54
    .line 55
    return-object p1
.end method
