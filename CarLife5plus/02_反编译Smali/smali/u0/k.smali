.class public final Lu0/k;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/k;
.implements Lq2/p;
.implements Lq2/l;


# instance fields
.field public o:Lu0/b;

.field public p:Ll0/s0;

.field public q:Lw0/r1;

.field public final r:Lf1/k1;


# direct methods
.method public constructor <init>(Lu0/b;Ll0/s0;Lw0/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu0/k;->o:Lu0/b;

    .line 5
    .line 6
    iput-object p2, p0, Lu0/k;->p:Ll0/s0;

    .line 7
    .line 8
    iput-object p3, p0, Lu0/k;->q:Lw0/r1;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lu0/k;->r:Lf1/k1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final V(Lq2/h1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/k;->r:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu0/k;->o:Lu0/b;

    .line 2
    .line 3
    iget-object v1, v0, Lu0/b;->a:Lu0/k;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "Expected textInputModifierNode to be null"

    .line 9
    .line 10
    invoke-static {v1}, Lc0/b;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iput-object p0, v0, Lu0/b;->a:Lu0/k;

    .line 14
    .line 15
    return-void
.end method

.method public final s0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/k;->o:Lu0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lu0/b;->k(Lu0/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
