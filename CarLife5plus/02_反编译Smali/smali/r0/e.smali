.class public final Lr0/e;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/k;
.implements Lq2/p;


# instance fields
.field public q:Ly8/i;

.field public final r:Lf1/k1;


# direct methods
.method public constructor <init>(Lf9/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 2
    .line 3
    .line 4
    check-cast p1, Ly8/i;

    .line 5
    .line 6
    iput-object p1, p0, Lr0/e;->q:Ly8/i;

    .line 7
    .line 8
    sget-object p1, Lf1/w0;->c:Lf1/w0;

    .line 9
    .line 10
    new-instance v0, Lf1/k1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1, p1}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lr0/e;->r:Lf1/k1;

    .line 17
    .line 18
    new-instance p1, Lo7/g;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p1, v0, p0}, Lo7/g;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lk2/i0;->a(Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lk2/n0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final V(Lq2/h1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/e;->r:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
