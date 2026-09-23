.class public final Lj8/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;


# direct methods
.method public constructor <init>(Ljava/util/List;ILf1/b1;Lf1/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/u;->a:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lj8/u;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lj8/u;->c:Lf1/b1;

    .line 9
    .line 10
    iput-object p4, p0, Lj8/u;->d:Lf1/b1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget-object p1, p0, Lj8/u;->c:Lf1/b1;

    .line 27
    .line 28
    invoke-interface {p1}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    move-object v1, p2

    .line 33
    check-cast v1, Lj8/k0;

    .line 34
    .line 35
    const p2, -0x615d173a

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, p2}, Lf1/s;->W(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7}, Lf1/s;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 46
    .line 47
    if-ne p2, v0, :cond_2

    .line 48
    .line 49
    new-instance p2, Lc8/s0;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iget-object v2, p0, Lj8/u;->d:Lf1/b1;

    .line 53
    .line 54
    invoke-direct {p2, v2, p1, v0}, Lc8/s0;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    move-object v6, p2

    .line 61
    check-cast v6, Lf9/k;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {v7, p1}, Lf1/s;->p(Z)V

    .line 65
    .line 66
    .line 67
    const/high16 v8, 0x180000

    .line 68
    .line 69
    const/16 v9, 0x38

    .line 70
    .line 71
    iget-object v0, p0, Lj8/u;->a:Ljava/util/List;

    .line 72
    .line 73
    iget v2, p0, Lj8/u;->b:I

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-static/range {v0 .. v9}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 79
    .line 80
    .line 81
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 82
    .line 83
    return-object p1
.end method
