.class public final Ll0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# static fields
.field public static final a:Ll0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll0/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll0/d;->a:Ll0/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

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
    const p3, -0x7ec5e7f9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lf1/s;->W(I)V

    .line 14
    .line 15
    .line 16
    sget-object p3, Lw0/x1;->a:Lf1/c0;

    .line 17
    .line 18
    invoke-virtual {p2, p3}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    check-cast p3, Lw0/w1;

    .line 23
    .line 24
    iget-wide v0, p3, Lw0/w1;->a:J

    .line 25
    .line 26
    invoke-virtual {p2, v0, v1}, Lf1/s;->e(J)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    sget-object p3, Lf1/n;->a:Lf1/w0;

    .line 37
    .line 38
    if-ne v2, p3, :cond_1

    .line 39
    .line 40
    :cond_0
    new-instance v2, Ldc/g;

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    invoke-direct {v2, p3, v0, v1}, Ldc/g;-><init>(IJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    check-cast v2, Lf9/k;

    .line 50
    .line 51
    sget-object p3, Lr1/m;->a:Lr1/m;

    .line 52
    .line 53
    invoke-static {p3, v2}, Landroidx/compose/ui/draw/a;->b(Lr1/p;Lf9/k;)Lr1/p;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-interface {p1, p3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-virtual {p2, p3}, Lf1/s;->p(Z)V

    .line 63
    .line 64
    .line 65
    return-object p1
.end method
