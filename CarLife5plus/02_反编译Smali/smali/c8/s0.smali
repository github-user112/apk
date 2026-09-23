.class public final synthetic Lc8/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lc8/s0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc8/s0;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p2, p0, Lc8/s0;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lc8/s0;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Lc8/s0;->c:Lf1/b1;

    .line 6
    .line 7
    iget-object v3, p0, Lc8/s0;->b:Lf1/b1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lx1/b;

    .line 13
    .line 14
    const-string v0, "$center$delegate"

    .line 15
    .line 16
    invoke-static {v3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "$radius$delegate"

    .line 20
    .line 21
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p1, Lx1/b;->a:J

    .line 25
    .line 26
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lx1/b;

    .line 31
    .line 32
    iget-wide v4, p1, Lx1/b;->a:J

    .line 33
    .line 34
    invoke-static {v0, v1, v4, v5}, Lx1/b;->g(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Lx1/b;->e(J)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    float-to-double v4, p1

    .line 43
    invoke-static {v0, v1}, Lx1/b;->d(J)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    float-to-double v6, p1

    .line 48
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    double-to-float p1, v4

    .line 53
    const v4, 0x42652ee0

    .line 54
    .line 55
    .line 56
    mul-float v4, v4, p1

    .line 57
    .line 58
    neg-float v4, v4

    .line 59
    const/high16 v5, 0x43b40000    # 360.0f

    .line 60
    .line 61
    add-float/2addr v4, v5

    .line 62
    rem-float/2addr v4, v5

    .line 63
    invoke-static {v0, v1}, Lx1/b;->d(J)F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {v0, v1}, Lx1/b;->d(J)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    mul-float v6, v6, v5

    .line 72
    .line 73
    invoke-static {v0, v1}, Lx1/b;->e(J)F

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-static {v0, v1}, Lx1/b;->e(J)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    mul-float v0, v0, v5

    .line 82
    .line 83
    add-float/2addr v0, v6

    .line 84
    float-to-double v0, v0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    double-to-float v0, v0

    .line 90
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    div-float/2addr v0, v1

    .line 101
    const/high16 v1, 0x3f800000    # 1.0f

    .line 102
    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-interface {v2}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    mul-float v2, v2, v0

    .line 118
    .line 119
    float-to-double v5, p1

    .line 120
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide v7

    .line 124
    double-to-float p1, v7

    .line 125
    mul-float p1, p1, v2

    .line 126
    .line 127
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    double-to-float v5, v5

    .line 132
    mul-float v5, v5, v2

    .line 133
    .line 134
    invoke-static {p1, v5}, Lp9/q;->d(FF)J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    invoke-interface {v3}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lx1/b;

    .line 143
    .line 144
    iget-wide v2, p1, Lx1/b;->a:J

    .line 145
    .line 146
    invoke-static {v5, v6, v2, v3}, Lx1/b;->h(JJ)J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    const/16 p1, 0x18

    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    :try_start_0
    sget v6, Ly1/q;->n:I

    .line 154
    .line 155
    invoke-static {v4, v0, v1, v5, p1}, Ln6/a;->i(FFFFI)J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    new-instance v4, Ly1/q;

    .line 160
    .line 161
    invoke-direct {v4, v0, v1}, Ly1/q;-><init>(J)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lx1/b;

    .line 165
    .line 166
    invoke-direct {v0, v2, v3}, Lx1/b;-><init>(J)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Lr8/j;

    .line 170
    .line 171
    invoke-direct {v1, v4, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catch_0
    sget v0, Ly1/q;->n:I

    .line 176
    .line 177
    invoke-static {v5, v5, v5, v5, p1}, Ln6/a;->i(FFFFI)J

    .line 178
    .line 179
    .line 180
    move-result-wide v0

    .line 181
    new-instance p1, Ly1/q;

    .line 182
    .line 183
    invoke-direct {p1, v0, v1}, Ly1/q;-><init>(J)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Lx1/b;

    .line 187
    .line 188
    invoke-direct {v0, v2, v3}, Lx1/b;-><init>(J)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Lr8/j;

    .line 192
    .line 193
    invoke-direct {v1, p1, v0}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_0
    return-object v1

    .line 197
    :pswitch_0
    check-cast p1, Lj8/k0;

    .line 198
    .line 199
    const-string v0, "it"

    .line 200
    .line 201
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-interface {v3, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v2, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    return-object v1

    .line 213
    :pswitch_1
    check-cast p1, Lj8/k0;

    .line 214
    .line 215
    const-string v0, "option"

    .line 216
    .line 217
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p1, Lj8/k0;->b:Lj8/o0;

    .line 221
    .line 222
    invoke-interface {p1}, Lj8/o0;->b()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {v3, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 230
    .line 231
    invoke-interface {v2, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    return-object v1

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
