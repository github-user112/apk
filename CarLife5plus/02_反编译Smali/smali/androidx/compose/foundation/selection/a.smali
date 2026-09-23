.class public final Landroidx/compose/foundation/selection/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Lx/n0;

.field public final synthetic b:La3/a;

.field public final synthetic c:Z

.field public final synthetic d:Ly2/g;

.field public final synthetic e:Lf9/a;


# direct methods
.method public constructor <init>(La3/a;Lf9/a;Lx/n0;Ly2/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/compose/foundation/selection/a;->a:Lx/n0;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/selection/a;->b:La3/a;

    .line 7
    .line 8
    iput-boolean p5, p0, Landroidx/compose/foundation/selection/a;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/selection/a;->d:Ly2/g;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/compose/foundation/selection/a;->e:Lf9/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lr1/p;

    .line 2
    .line 3
    check-cast p2, Lf1/s;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    const p1, -0x5af0b3b9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lf1/s;->W(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p3, Lf1/n;->a:Lf1/w0;

    .line 21
    .line 22
    if-ne p1, p3, :cond_0

    .line 23
    .line 24
    invoke-static {p2}, Lp9/v;->n(Lf1/s;)Lb0/k;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_0
    move-object v2, p1

    .line 29
    check-cast v2, Lb0/k;

    .line 30
    .line 31
    sget-object p1, Lr1/m;->a:Lr1/m;

    .line 32
    .line 33
    iget-object p3, p0, Landroidx/compose/foundation/selection/a;->a:Lx/n0;

    .line 34
    .line 35
    invoke-static {p1, v2, p3}, Landroidx/compose/foundation/c;->a(Lr1/p;Lb0/k;Lx/n0;)Lr1/p;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Landroidx/compose/foundation/selection/TriStateToggleableElement;

    .line 40
    .line 41
    iget-object v5, p0, Landroidx/compose/foundation/selection/a;->d:Ly2/g;

    .line 42
    .line 43
    iget-object v6, p0, Landroidx/compose/foundation/selection/a;->e:Lf9/a;

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/compose/foundation/selection/a;->b:La3/a;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    iget-boolean v4, p0, Landroidx/compose/foundation/selection/a;->c:Z

    .line 49
    .line 50
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/selection/TriStateToggleableElement;-><init>(La3/a;Lb0/k;Lx/r0;ZLy2/g;Lf9/a;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-virtual {p2, p3}, Lf1/s;->p(Z)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method
