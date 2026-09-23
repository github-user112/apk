.class public final Ln7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Ln7/a;

.field public static final c:Ln7/a;

.field public static final d:Ln7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ln7/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ln7/a;->b:Ln7/a;

    .line 8
    .line 9
    new-instance v0, Ln7/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ln7/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ln7/a;->c:Ln7/a;

    .line 16
    .line 17
    new-instance v0, Ln7/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Ln7/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ln7/a;->d:Ln7/a;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln7/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Ln7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v7, p1

    .line 7
    check-cast v7, Lf1/s;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v7}, Lf1/s;->z()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v7}, Lf1/s;->Q()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const p1, 0x7f070061

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v7}, Lp9/p1;->B(ILf1/s;)Ld2/b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/16 p1, 0xc

    .line 39
    .line 40
    int-to-float p1, p1

    .line 41
    invoke-static {p1}, Lk0/e;->a(F)Lk0/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object p2, Lr1/m;->a:Lr1/m;

    .line 46
    .line 47
    invoke-static {p2, p1}, Lp9/x1;->f(Lr1/p;Ly1/l0;)Lr1/p;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/16 v8, 0x30

    .line 52
    .line 53
    const/16 v9, 0x78

    .line 54
    .line 55
    const-string v2, "\u70b9\u51fb\u626b\u7801\u52a0\u7fa4"

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-static/range {v1 .. v9}, Lp9/q;->b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V

    .line 61
    .line 62
    .line 63
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 67
    .line 68
    check-cast p2, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    and-int/lit8 p2, p2, 0x3

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    if-ne p2, v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-nez p2, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    const-string p2, "\u4ea4\u6d41\u53cd\u9988"

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    const/4 v2, 0x6

    .line 94
    invoke-static {p2, v1, p1, v2, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 95
    .line 96
    .line 97
    const-string p2, "\u70b9\u51fb\u626b\u7801\u52a0\u7fa4"

    .line 98
    .line 99
    invoke-static {p2, p1, v2}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 100
    .line 101
    .line 102
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 103
    .line 104
    return-object p1

    .line 105
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 106
    .line 107
    check-cast p2, Ljava/lang/Number;

    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    and-int/lit8 p2, p2, 0x3

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    if-ne p2, v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-nez p2, :cond_4

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    :goto_4
    const/4 p2, 0x0

    .line 130
    const/4 v1, 0x6

    .line 131
    const-string v2, "\u67e5\u770b"

    .line 132
    .line 133
    invoke-static {v2, p2, p1, v1, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 134
    .line 135
    .line 136
    const/4 p2, 0x0

    .line 137
    invoke-static {p2, p1}, Lg5/a;->d(ILf1/s;)V

    .line 138
    .line 139
    .line 140
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 141
    .line 142
    return-object p1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
