.class public final Lj8/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll5/l;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Ll5/l;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lj8/i;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/i;->b:Ll5/l;

    .line 4
    .line 5
    iput-object p2, p0, Lj8/i;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lj8/i;->a:I

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
    new-instance p2, Lj8/i;

    .line 31
    .line 32
    iget-object v0, p0, Lj8/i;->c:Lf1/b1;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iget-object v2, p0, Lj8/i;->b:Ll5/l;

    .line 36
    .line 37
    invoke-direct {p2, v2, v0, v1}, Lj8/i;-><init>(Ll5/l;Lf1/b1;I)V

    .line 38
    .line 39
    .line 40
    const v0, -0x6b954c35

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/16 v0, 0x30

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-static {v1, p2, p1, v0, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 52
    .line 53
    .line 54
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 58
    .line 59
    check-cast p2, Ljava/lang/Number;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    and-int/lit8 p2, p2, 0x3

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    if-ne p2, v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :goto_2
    const p2, 0x4c5de2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 92
    .line 93
    if-ne p2, v0, :cond_4

    .line 94
    .line 95
    new-instance p2, La8/s0;

    .line 96
    .line 97
    const/16 v0, 0x12

    .line 98
    .line 99
    iget-object v1, p0, Lj8/i;->c:Lf1/b1;

    .line 100
    .line 101
    invoke-direct {p2, v1, v0}, La8/s0;-><init>(Lf1/b1;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    check-cast p2, Lf9/k;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Lf1/s;->p(Z)V

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x30

    .line 114
    .line 115
    iget-object v1, p0, Lj8/i;->b:Ll5/l;

    .line 116
    .line 117
    invoke-static {v1, p2, p1, v0}, Li2/c;->c(Ll5/l;Lf9/k;Lf1/s;I)V

    .line 118
    .line 119
    .line 120
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 121
    .line 122
    return-object p1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
