.class public final synthetic Ld0/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lo2/v0;

.field public final synthetic b:Lo2/l0;

.field public final synthetic c:Lo2/o0;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ld0/p;


# direct methods
.method public synthetic constructor <init>(Lo2/v0;Lo2/l0;Lo2/o0;IILd0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/n;->a:Lo2/v0;

    .line 5
    .line 6
    iput-object p2, p0, Ld0/n;->b:Lo2/l0;

    .line 7
    .line 8
    iput-object p3, p0, Ld0/n;->c:Lo2/o0;

    .line 9
    .line 10
    iput p4, p0, Ld0/n;->d:I

    .line 11
    .line 12
    iput p5, p0, Ld0/n;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Ld0/n;->f:Ld0/p;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lo2/u0;

    .line 3
    .line 4
    iget-object p1, p0, Ld0/n;->c:Lo2/o0;

    .line 5
    .line 6
    invoke-interface {p1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object p1, p0, Ld0/n;->f:Ld0/p;

    .line 11
    .line 12
    iget-object v6, p1, Ld0/p;->a:Lr1/h;

    .line 13
    .line 14
    iget-object v1, p0, Ld0/n;->a:Lo2/v0;

    .line 15
    .line 16
    iget-object v2, p0, Ld0/n;->b:Lo2/l0;

    .line 17
    .line 18
    iget v4, p0, Ld0/n;->d:I

    .line 19
    .line 20
    iget v5, p0, Ld0/n;->e:I

    .line 21
    .line 22
    invoke-static/range {v0 .. v6}, Ld0/m;->b(Lo2/u0;Lo2/v0;Lo2/l0;Ln3/m;IILr1/h;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 26
    .line 27
    return-object p1
.end method
