.class public final La8/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, La8/b0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, La8/b0;->b:Ljava/lang/String;

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
    .locals 12

    .line 1
    iget v0, p0, La8/b0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v4, p0, La8/b0;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v9, p1

    .line 14
    check-cast v9, Lf1/s;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    and-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    if-ne p1, v5, :cond_1

    .line 25
    .line 26
    invoke-virtual {v9}, Lf1/s;->z()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v9}, Lf1/s;->Q()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    sget-object p1, Lr1/m;->a:Lr1/m;

    .line 38
    .line 39
    const/high16 p2, 0x40000000    # 2.0f

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/a;->c(Lr1/p;F)Lr1/p;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 p2, 0x12

    .line 46
    .line 47
    invoke-static {p2, v9}, Lg5/a;->B(ILf1/s;)F

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 v0, 0x1

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {p1, v1, p2, v0}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 58
    .line 59
    invoke-static {v4}, Ll8/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v6, Ly1/f;

    .line 64
    .line 65
    invoke-direct {v6, p1}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    .line 67
    .line 68
    const/16 v10, 0x30

    .line 69
    .line 70
    const/16 v11, 0xf8

    .line 71
    .line 72
    const-string v7, "\u4e8c\u7ef4\u7801"

    .line 73
    .line 74
    invoke-static/range {v6 .. v11}, Lp9/q;->c(Ly1/f;Ljava/lang/String;Lr1/p;Lf1/s;II)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-object v3

    .line 78
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 79
    .line 80
    check-cast p2, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    and-int/lit8 p2, p2, 0x3

    .line 87
    .line 88
    if-ne p2, v5, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    :goto_2
    invoke-static {v4, v1, p1, v2, v5}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2, p1}, Lg5/a;->d(ILf1/s;)V

    .line 105
    .line 106
    .line 107
    :goto_3
    return-object v3

    .line 108
    :pswitch_1
    check-cast p1, Lf1/s;

    .line 109
    .line 110
    check-cast p2, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    and-int/lit8 p2, p2, 0x3

    .line 117
    .line 118
    if-ne p2, v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_4

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_5
    :goto_4
    invoke-static {v4, v1, p1, v2, v5}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 132
    .line 133
    .line 134
    :goto_5
    return-object v3

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
