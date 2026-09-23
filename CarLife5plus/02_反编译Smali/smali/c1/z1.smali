.class public final Lc1/z1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc1/i2;


# direct methods
.method public synthetic constructor <init>(Lc1/i2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc1/z1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc1/z1;->b:Lc1/i2;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lc1/z1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lx1/b;

    .line 7
    .line 8
    iget-wide v0, p1, Lx1/b;->a:J

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iget-object v0, p0, Lc1/z1;->b:Lc1/i2;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lc1/i2;->a(F)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Lc1/i2;->l:Lb1/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lb1/a;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object v0, p0, Lc1/z1;->b:Lc1/i2;

    .line 31
    .line 32
    iget-object v1, v0, Lc1/i2;->d:Lf1/g1;

    .line 33
    .line 34
    iget-object v2, v0, Lc1/i2;->c:Ll9/a;

    .line 35
    .line 36
    iget v3, v2, Ll9/a;->a:F

    .line 37
    .line 38
    iget v4, v2, Ll9/a;->b:F

    .line 39
    .line 40
    invoke-static {p1, v3, v4}, Li9/a;->m(FFF)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v3, v0, Lc1/i2;->a:I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x1

    .line 48
    if-lez v3, :cond_2

    .line 49
    .line 50
    add-int/2addr v3, v5

    .line 51
    if-ltz v3, :cond_2

    .line 52
    .line 53
    move v7, p1

    .line 54
    move v8, v7

    .line 55
    const/4 v6, 0x0

    .line 56
    :goto_0
    iget v9, v2, Ll9/a;->a:F

    .line 57
    .line 58
    iget v10, v2, Ll9/a;->b:F

    .line 59
    .line 60
    int-to-float v11, v6

    .line 61
    int-to-float v12, v3

    .line 62
    div-float/2addr v11, v12

    .line 63
    invoke-static {v9, v10, v11}, Lm9/e0;->p0(FFF)F

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    sub-float v10, v9, p1

    .line 68
    .line 69
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    cmpg-float v11, v11, v7

    .line 74
    .line 75
    if-gtz v11, :cond_0

    .line 76
    .line 77
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    move v8, v9

    .line 82
    :cond_0
    if-eq v6, v3, :cond_1

    .line 83
    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move p1, v8

    .line 88
    :cond_2
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    cmpg-float v2, p1, v2

    .line 93
    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    cmpg-float v1, p1, v1

    .line 102
    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object v1, v0, Lc1/i2;->e:Lf9/k;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {v1, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    invoke-virtual {v0, p1}, Lc1/i2;->c(F)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-object p1, v0, Lc1/i2;->b:Lf9/a;

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_6
    const/4 v4, 0x1

    .line 129
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :pswitch_1
    check-cast p1, Ln3/l;

    .line 135
    .line 136
    iget-wide v0, p1, Ln3/l;->a:J

    .line 137
    .line 138
    const/16 p1, 0x20

    .line 139
    .line 140
    shr-long/2addr v0, p1

    .line 141
    long-to-int p1, v0

    .line 142
    int-to-float p1, p1

    .line 143
    iget-object v0, p0, Lc1/z1;->b:Lc1/i2;

    .line 144
    .line 145
    iget-object v0, v0, Lc1/i2;->j:Lf1/g1;

    .line 146
    .line 147
    invoke-virtual {v0, p1}, Lf1/g1;->g(F)V

    .line 148
    .line 149
    .line 150
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 151
    .line 152
    return-object p1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
