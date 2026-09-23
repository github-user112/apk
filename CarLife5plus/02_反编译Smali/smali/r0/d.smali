.class public final Lr0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ls0/e;


# instance fields
.field public final a:J

.field public final synthetic b:Lr0/e;


# direct methods
.method public constructor <init>(Lr0/e;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr0/d;->b:Lr0/e;

    .line 5
    .line 6
    iput-wide p2, p0, Lr0/d;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A(Lo2/w;)Lx1/c;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lr0/d;->C(Lo2/w;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lp9/p1;->d(JJ)Lx1/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final C(Lo2/w;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lr0/d;->b:Lr0/e;

    .line 2
    .line 3
    iget-object v0, v0, Lr0/e;->r:Lf1/k1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lo2/w;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v1, p0, Lr0/d;->a:J

    .line 14
    .line 15
    invoke-interface {p1, v0, v1, v2}, Lo2/w;->p(Lo2/w;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-string p1, "Tried to open context menu before the anchor was placed."

    .line 21
    .line 22
    invoke-static {p1}, Lc0/b;->d(Ljava/lang/String;)Ljava/lang/Void;

    .line 23
    .line 24
    .line 25
    new-instance p1, Lac/p;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final I()Lo0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/d;->b:Lr0/e;

    .line 2
    .line 3
    invoke-static {v0}, Lp9/l;->g(Lq2/l;)Lo0/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
