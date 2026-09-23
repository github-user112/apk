.class public final Ly/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# static fields
.field public static final a:Ly/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly/a;->a:Ly/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ly/c;

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
    move-result p3

    .line 11
    and-int/lit8 v0, p3, 0x6

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int/2addr p3, v0

    .line 25
    :cond_1
    and-int/lit8 v0, p3, 0x13

    .line 26
    .line 27
    const/16 v1, 0x12

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v0, v1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_1
    and-int/2addr p3, v3

    .line 37
    invoke-virtual {p2, p3, v0}, Lf1/s;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_3

    .line 42
    .line 43
    sget-object p3, Lr1/m;->a:Lr1/m;

    .line 44
    .line 45
    sget v0, Ly/f;->l:F

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-static {p3, v1, v0, v3}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    sget-object v0, Landroidx/compose/foundation/layout/c;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 53
    .line 54
    invoke-interface {p3, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    sget v0, Ly/f;->k:F

    .line 59
    .line 60
    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iget-wide v0, p1, Ly/c;->c:J

    .line 65
    .line 66
    sget-object p1, Ly1/h0;->a:Ly1/g0;

    .line 67
    .line 68
    invoke-static {p3, v0, v1, p1}, Landroidx/compose/foundation/a;->b(Lr1/p;JLy1/l0;)Lr1/p;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1, p2, v2}, Ld0/m;->a(Lr1/p;Lf1/s;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {p2}, Lf1/s;->Q()V

    .line 77
    .line 78
    .line 79
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 80
    .line 81
    return-object p1
.end method
