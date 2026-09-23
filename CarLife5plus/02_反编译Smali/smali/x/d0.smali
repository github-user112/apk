.class public final Lx/d0;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/d2;


# static fields
.field public static final p:Lx/a1;


# instance fields
.field public o:Ls0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx/a1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx/d0;->p:Lx/a1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A0(Lo2/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx/d0;->o:Ls0/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls0/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lq2/f;->j(Lq2/d2;)Lq2/d2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lx/d0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lx/d0;->A0(Lo2/w;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lx/d0;->p:Lx/a1;

    .line 2
    .line 3
    return-object v0
.end method
