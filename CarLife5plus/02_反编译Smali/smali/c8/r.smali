.class public final Lc8/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc8/v;


# direct methods
.method public synthetic constructor <init>(Lc8/v;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc8/r;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/r;->b:Lc8/v;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lc8/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/s;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    and-int/lit8 p2, p2, 0x3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    new-instance p2, Lc8/r;

    .line 31
    .line 32
    iget-object v0, p0, Lc8/r;->b:Lc8/v;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p2, v0, v1}, Lc8/r;-><init>(Lc8/v;I)V

    .line 36
    .line 37
    .line 38
    const v0, -0x3862ea82

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/16 v0, 0x30

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-static {v1, p2, p1, v0, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 50
    .line 51
    .line 52
    const/16 p2, 0x10

    .line 53
    .line 54
    invoke-static {p2, p1}, Lg5/a;->B(ILf1/s;)F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 59
    .line 60
    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 68
    .line 69
    return-object p1

    .line 70
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    and-int/lit8 p2, p2, 0x3

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    if-ne p2, v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    :goto_2
    const/4 p2, 0x0

    .line 95
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lc8/r;->b:Lc8/v;

    .line 97
    .line 98
    invoke-virtual {v1, p2, p1, v0}, Lc8/v;->d(Ljava/util/List;Lf1/s;I)V

    .line 99
    .line 100
    .line 101
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 102
    .line 103
    return-object p1

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
