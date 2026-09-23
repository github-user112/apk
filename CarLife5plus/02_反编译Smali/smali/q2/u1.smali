.class public final Lq2/u1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/r1;


# instance fields
.field public a:Lo2/n0;

.field public final b:Lq2/p0;


# direct methods
.method public constructor <init>(Lo2/n0;Lq2/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/u1;->a:Lo2/n0;

    .line 5
    .line 6
    iput-object p2, p0, Lq2/u1;->b:Lq2/p0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/u1;->b:Lq2/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq2/p0;->l0()Lo2/w;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lo2/w;->isAttached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
