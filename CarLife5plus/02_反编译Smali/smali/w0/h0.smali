.class public final Lw0/h0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/w0;

.field public final synthetic c:Lw0/c1;

.field public final synthetic d:Ln1/c;


# direct methods
.method public constructor <init>(Lw0/c1;Ln1/c;Lw0/w0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lw0/h0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/h0;->c:Lw0/c1;

    iput-object p2, p0, Lw0/h0;->d:Ln1/c;

    iput-object p3, p0, Lw0/h0;->b:Lw0/w0;

    return-void
.end method

.method public constructor <init>(Lw0/w0;Lw0/c1;Ln1/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lw0/h0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/h0;->b:Lw0/w0;

    iput-object p2, p0, Lw0/h0;->c:Lw0/c1;

    iput-object p3, p0, Lw0/h0;->d:Ln1/c;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lw0/h0;->a:I

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
    and-int/lit8 v0, p2, 0x3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    and-int/2addr p2, v2

    .line 24
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    new-instance p2, Lw0/h0;

    .line 31
    .line 32
    iget-object v0, p0, Lw0/h0;->c:Lw0/c1;

    .line 33
    .line 34
    iget-object v1, p0, Lw0/h0;->d:Ln1/c;

    .line 35
    .line 36
    iget-object v2, p0, Lw0/h0;->b:Lw0/w0;

    .line 37
    .line 38
    invoke-direct {p2, v0, v1, v2}, Lw0/h0;-><init>(Lw0/c1;Ln1/c;Lw0/w0;)V

    .line 39
    .line 40
    .line 41
    const v0, -0x10fa1909

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p2, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/16 v0, 0x30

    .line 49
    .line 50
    invoke-static {v2, p2, p1, v0}, Ll0/p0;->c(Lw0/w0;Ln1/c;Lf1/s;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 55
    .line 56
    .line 57
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 61
    .line 62
    check-cast p2, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    and-int/lit8 v0, p2, 0x3

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    const/4 v2, 0x1

    .line 72
    if-eq v0, v1, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/4 v0, 0x0

    .line 77
    :goto_2
    and-int/2addr p2, v2

    .line 78
    invoke-virtual {p1, p2, v0}, Lf1/s;->N(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    sget-object p2, Lw0/d1;->a:Lf1/c0;

    .line 85
    .line 86
    iget-object v0, p0, Lw0/h0;->c:Lw0/c1;

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Lf1/c0;->a(Ljava/lang/Object;)Lf1/u1;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    new-instance v0, Lc8/s;

    .line 93
    .line 94
    iget-object v1, p0, Lw0/h0;->b:Lw0/w0;

    .line 95
    .line 96
    const/16 v2, 0x10

    .line 97
    .line 98
    iget-object v3, p0, Lw0/h0;->d:Ln1/c;

    .line 99
    .line 100
    invoke-direct {v0, v2, v3, v1}, Lc8/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    const v1, 0x24633bb7

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v0, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/16 v1, 0x38

    .line 111
    .line 112
    invoke-static {p2, v0, p1, v1}, Lf1/b;->a(Lf1/u1;Lf9/n;Lf1/s;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 117
    .line 118
    .line 119
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 120
    .line 121
    return-object p1

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
