.class public final synthetic Lb4/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb4/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lb4/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    check-cast p2, Landroid/view/View;

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lr2/q1;->d:Ls/h0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    check-cast p2, Landroid/graphics/Rect;

    .line 33
    .line 34
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    sub-int/2addr p1, p2

    .line 46
    sget p2, Lr2/q1;->c:I

    .line 47
    .line 48
    mul-int p1, p1, p2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget p1, Lr2/q1;->c:I

    .line 52
    .line 53
    mul-int p1, p1, v0

    .line 54
    .line 55
    :goto_0
    return p1

    .line 56
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 57
    .line 58
    check-cast p2, Landroid/view/View;

    .line 59
    .line 60
    if-ne p1, p2, :cond_2

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    sget-object v0, Lr2/q1;->d:Ls/h0;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    check-cast p1, Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {p2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    check-cast p2, Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 85
    .line 86
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    sub-int/2addr v0, v1

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 92
    .line 93
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    sub-int/2addr p1, p2

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move p1, v0

    .line 98
    :goto_1
    return p1

    .line 99
    :pswitch_1
    check-cast p1, Lq2/h0;

    .line 100
    .line 101
    check-cast p2, Lq2/h0;

    .line 102
    .line 103
    iget-object v0, p1, Lq2/h0;->F:Lq2/l0;

    .line 104
    .line 105
    iget-object v0, v0, Lq2/l0;->p:Lq2/y0;

    .line 106
    .line 107
    iget v0, v0, Lq2/y0;->D:F

    .line 108
    .line 109
    iget-object v1, p2, Lq2/h0;->F:Lq2/l0;

    .line 110
    .line 111
    iget-object v1, v1, Lq2/l0;->p:Lq2/y0;

    .line 112
    .line 113
    iget v1, v1, Lq2/y0;->D:F

    .line 114
    .line 115
    cmpg-float v2, v0, v1

    .line 116
    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1}, Lq2/h0;->w()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {p2}, Lq2/h0;->w()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-static {p1, p2}, Lg9/l;->f(II)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    :goto_2
    return p1

    .line 137
    :pswitch_2
    check-cast p1, Lh0/y;

    .line 138
    .line 139
    check-cast p2, Lh0/y;

    .line 140
    .line 141
    invoke-interface {p1}, Lh0/y;->getIndex()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-interface {p2}, Lh0/y;->getIndex()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    invoke-static {p1, p2}, Lg9/l;->f(II)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    return p1

    .line 154
    :pswitch_3
    check-cast p1, Lh0/u0;

    .line 155
    .line 156
    check-cast p2, Lh0/u0;

    .line 157
    .line 158
    iget p2, p2, Lh0/u0;->a:I

    .line 159
    .line 160
    iget p1, p1, Lh0/u0;->a:I

    .line 161
    .line 162
    invoke-static {p2, p1}, Lg9/l;->f(II)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :pswitch_4
    check-cast p1, Lf1/p0;

    .line 168
    .line 169
    check-cast p2, Lf1/p0;

    .line 170
    .line 171
    iget p1, p1, Lf1/p0;->b:I

    .line 172
    .line 173
    iget p2, p2, Lf1/p0;->b:I

    .line 174
    .line 175
    invoke-static {p1, p2}, Lg9/l;->f(II)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    return p1

    .line 180
    :pswitch_5
    check-cast p1, Lr8/j;

    .line 181
    .line 182
    check-cast p2, Lr8/j;

    .line 183
    .line 184
    iget-object v0, p1, Lr8/j;->b:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v0, Ljava/lang/Number;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iget-object p1, p1, Lr8/j;->a:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    sub-int/2addr v0, p1

    .line 201
    iget-object p1, p2, Lr8/j;->b:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p1, Ljava/lang/Number;

    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    iget-object p2, p2, Lr8/j;->a:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast p2, Ljava/lang/Number;

    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    sub-int/2addr p1, p2

    .line 218
    sub-int/2addr v0, p1

    .line 219
    return v0

    .line 220
    :pswitch_6
    check-cast p1, [B

    .line 221
    .line 222
    check-cast p2, [B

    .line 223
    .line 224
    array-length v0, p1

    .line 225
    array-length v1, p2

    .line 226
    if-eq v0, v1, :cond_5

    .line 227
    .line 228
    array-length p1, p1

    .line 229
    array-length p2, p2

    .line 230
    sub-int/2addr p1, p2

    .line 231
    goto :goto_4

    .line 232
    :cond_5
    const/4 v0, 0x0

    .line 233
    const/4 v1, 0x0

    .line 234
    :goto_3
    array-length v2, p1

    .line 235
    if-ge v1, v2, :cond_7

    .line 236
    .line 237
    aget-byte v2, p1, v1

    .line 238
    .line 239
    aget-byte v3, p2, v1

    .line 240
    .line 241
    if-eq v2, v3, :cond_6

    .line 242
    .line 243
    sub-int p1, v2, v3

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_7
    const/4 p1, 0x0

    .line 250
    :goto_4
    return p1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
