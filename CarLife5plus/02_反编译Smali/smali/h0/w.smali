.class public final synthetic Lh0/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/util/DisplayMetrics;Lf1/g1;Lf1/b1;Lf1/g1;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lh0/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lh0/w;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh0/w;->d:Ljava/lang/Object;

    iput-object p4, p0, Lh0/w;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p6, p0, Lh0/w;->a:I

    iput-object p1, p0, Lh0/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lh0/w;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh0/w;->d:Ljava/lang/Object;

    iput-object p4, p0, Lh0/w;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lh0/w;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh0/w;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    iget-object v1, p0, Lh0/w;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lf1/g1;

    .line 13
    .line 14
    iget-object v2, p0, Lh0/w;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lf1/b1;

    .line 17
    .line 18
    iget-object v3, p0, Lh0/w;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Lf1/g1;

    .line 21
    .line 22
    check-cast p1, Lk2/w;

    .line 23
    .line 24
    check-cast p2, Lx1/b;

    .line 25
    .line 26
    const-string v4, "change"

    .line 27
    .line 28
    invoke-static {p1, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lk2/w;->a()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-wide v4, p2, Lx1/b;->a:J

    .line 39
    .line 40
    const/16 v6, 0x20

    .line 41
    .line 42
    shr-long/2addr v4, v6

    .line 43
    long-to-int v5, v4

    .line 44
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-float/2addr v4, p1

    .line 49
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .line 51
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ln3/l;

    .line 56
    .line 57
    iget-wide v7, v5, Ln3/l;->a:J

    .line 58
    .line 59
    shr-long v5, v7, v6

    .line 60
    .line 61
    long-to-int v6, v5

    .line 62
    sub-int/2addr p1, v6

    .line 63
    int-to-float p1, p1

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static {v4, v5, p1}, Li9/a;->m(FFF)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v1, p1}, Lf1/g1;->g(F)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lf1/g1;->f()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget-wide v6, p2, Lx1/b;->a:J

    .line 77
    .line 78
    const-wide v8, 0xffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    and-long/2addr v6, v8

    .line 84
    long-to-int p2, v6

    .line 85
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    add-float/2addr p2, p1

    .line 90
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    .line 92
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ln3/l;

    .line 97
    .line 98
    iget-wide v0, v0, Ln3/l;->a:J

    .line 99
    .line 100
    and-long/2addr v0, v8

    .line 101
    long-to-int v1, v0

    .line 102
    sub-int/2addr p1, v1

    .line 103
    int-to-float p1, p1

    .line 104
    invoke-static {p2, v5, p1}, Li9/a;->m(FFF)F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {v3, p1}, Lf1/g1;->g(F)V

    .line 109
    .line 110
    .line 111
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 112
    .line 113
    return-object p1

    .line 114
    :pswitch_0
    iget-object v0, p0, Lh0/w;->b:Ljava/lang/Object;

    .line 115
    .line 116
    move-object v1, v0

    .line 117
    check-cast v1, Lm7/n;

    .line 118
    .line 119
    iget-object v0, p0, Lh0/w;->c:Ljava/lang/Object;

    .line 120
    .line 121
    move-object v2, v0

    .line 122
    check-cast v2, Lr8/j;

    .line 123
    .line 124
    iget-object v0, p0, Lh0/w;->d:Ljava/lang/Object;

    .line 125
    .line 126
    move-object v3, v0

    .line 127
    check-cast v3, Lf9/k;

    .line 128
    .line 129
    iget-object v0, p0, Lh0/w;->e:Ljava/lang/Object;

    .line 130
    .line 131
    move-object v4, v0

    .line 132
    check-cast v4, Lf9/k;

    .line 133
    .line 134
    move-object v5, p1

    .line 135
    check-cast v5, Lf1/s;

    .line 136
    .line 137
    check-cast p2, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const/16 p1, 0xdb1

    .line 143
    .line 144
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    invoke-virtual/range {v1 .. v6}, Lm7/n;->e(Lr8/j;Lf9/k;Lf9/k;Lf1/s;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lh0/w;->b:Ljava/lang/Object;

    .line 153
    .line 154
    move-object v1, v0

    .line 155
    check-cast v1, Lf9/a;

    .line 156
    .line 157
    iget-object v0, p0, Lh0/w;->c:Ljava/lang/Object;

    .line 158
    .line 159
    move-object v2, v0

    .line 160
    check-cast v2, Lr1/p;

    .line 161
    .line 162
    iget-object v0, p0, Lh0/w;->d:Ljava/lang/Object;

    .line 163
    .line 164
    move-object v3, v0

    .line 165
    check-cast v3, Lh0/h0;

    .line 166
    .line 167
    iget-object v0, p0, Lh0/w;->e:Ljava/lang/Object;

    .line 168
    .line 169
    move-object v4, v0

    .line 170
    check-cast v4, Lf0/k;

    .line 171
    .line 172
    move-object v5, p1

    .line 173
    check-cast v5, Lf1/s;

    .line 174
    .line 175
    check-cast p2, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const/4 p1, 0x1

    .line 181
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-static/range {v1 .. v6}, Lh0/z;->a(Lf9/a;Lr1/p;Lh0/h0;Lf0/k;Lf1/s;I)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
