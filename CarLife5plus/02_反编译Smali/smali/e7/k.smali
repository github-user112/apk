.class public final Le7/k;
.super Le7/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Le7/k;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ld7/v;Ld7/v;)F
    .locals 7

    .line 1
    iget v0, p0, Le7/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p1, Ld7/v;->a:I

    .line 7
    .line 8
    iget p1, p1, Ld7/v;->b:I

    .line 9
    .line 10
    if-lez v0, :cond_4

    .line 11
    .line 12
    if-gtz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    int-to-float v1, v0

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    mul-float v1, v1, v2

    .line 19
    .line 20
    iget v3, p2, Ld7/v;->a:I

    .line 21
    .line 22
    iget p2, p2, Ld7/v;->b:I

    .line 23
    .line 24
    int-to-float v4, v3

    .line 25
    div-float/2addr v1, v4

    .line 26
    cmpg-float v4, v1, v2

    .line 27
    .line 28
    if-gez v4, :cond_1

    .line 29
    .line 30
    div-float v1, v2, v1

    .line 31
    .line 32
    :cond_1
    int-to-float p1, p1

    .line 33
    mul-float v4, p1, v2

    .line 34
    .line 35
    int-to-float p2, p2

    .line 36
    div-float/2addr v4, p2

    .line 37
    cmpg-float v5, v4, v2

    .line 38
    .line 39
    if-gez v5, :cond_2

    .line 40
    .line 41
    div-float v4, v2, v4

    .line 42
    .line 43
    :cond_2
    div-float v1, v2, v1

    .line 44
    .line 45
    div-float/2addr v1, v4

    .line 46
    int-to-float v0, v0

    .line 47
    mul-float v0, v0, v2

    .line 48
    .line 49
    div-float/2addr v0, p1

    .line 50
    int-to-float p1, v3

    .line 51
    mul-float p1, p1, v2

    .line 52
    .line 53
    div-float/2addr p1, p2

    .line 54
    div-float/2addr v0, p1

    .line 55
    cmpg-float p1, v0, v2

    .line 56
    .line 57
    if-gez p1, :cond_3

    .line 58
    .line 59
    div-float v0, v2, v0

    .line 60
    .line 61
    :cond_3
    div-float/2addr v2, v0

    .line 62
    div-float/2addr v2, v0

    .line 63
    div-float/2addr v2, v0

    .line 64
    mul-float v2, v2, v1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 68
    :goto_1
    return v2

    .line 69
    :pswitch_0
    iget v0, p1, Ld7/v;->a:I

    .line 70
    .line 71
    if-lez v0, :cond_7

    .line 72
    .line 73
    iget v0, p1, Ld7/v;->b:I

    .line 74
    .line 75
    if-gtz v0, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    invoke-virtual {p1, p2}, Ld7/v;->b(Ld7/v;)Ld7/v;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v1, v0, Ld7/v;->a:I

    .line 83
    .line 84
    int-to-float v1, v1

    .line 85
    const/high16 v2, 0x3f800000    # 1.0f

    .line 86
    .line 87
    mul-float v3, v1, v2

    .line 88
    .line 89
    iget p1, p1, Ld7/v;->a:I

    .line 90
    .line 91
    int-to-float p1, p1

    .line 92
    div-float/2addr v3, p1

    .line 93
    cmpl-float p1, v3, v2

    .line 94
    .line 95
    if-lez p1, :cond_6

    .line 96
    .line 97
    div-float p1, v2, v3

    .line 98
    .line 99
    float-to-double v3, p1

    .line 100
    const-wide v5, 0x3ff199999999999aL    # 1.1

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    double-to-float v3, v3

    .line 110
    :cond_6
    iget p1, p2, Ld7/v;->a:I

    .line 111
    .line 112
    int-to-float p1, p1

    .line 113
    mul-float p1, p1, v2

    .line 114
    .line 115
    div-float/2addr p1, v1

    .line 116
    iget p2, p2, Ld7/v;->b:I

    .line 117
    .line 118
    int-to-float p2, p2

    .line 119
    mul-float p2, p2, v2

    .line 120
    .line 121
    iget v0, v0, Ld7/v;->b:I

    .line 122
    .line 123
    int-to-float v0, v0

    .line 124
    div-float/2addr p2, v0

    .line 125
    mul-float p2, p2, p1

    .line 126
    .line 127
    div-float/2addr v2, p2

    .line 128
    div-float/2addr v2, p2

    .line 129
    div-float/2addr v2, p2

    .line 130
    mul-float v2, v2, v3

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    :goto_2
    const/4 v2, 0x0

    .line 134
    :goto_3
    return v2

    .line 135
    :pswitch_1
    iget v0, p1, Ld7/v;->a:I

    .line 136
    .line 137
    if-lez v0, :cond_a

    .line 138
    .line 139
    iget v0, p1, Ld7/v;->b:I

    .line 140
    .line 141
    if-gtz v0, :cond_8

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_8
    invoke-virtual {p1, p2}, Ld7/v;->a(Ld7/v;)Ld7/v;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget v1, v0, Ld7/v;->a:I

    .line 149
    .line 150
    int-to-float v1, v1

    .line 151
    const/high16 v2, 0x3f800000    # 1.0f

    .line 152
    .line 153
    mul-float v1, v1, v2

    .line 154
    .line 155
    iget p1, p1, Ld7/v;->a:I

    .line 156
    .line 157
    int-to-float p1, p1

    .line 158
    div-float p1, v1, p1

    .line 159
    .line 160
    cmpl-float v3, p1, v2

    .line 161
    .line 162
    if-lez v3, :cond_9

    .line 163
    .line 164
    div-float p1, v2, p1

    .line 165
    .line 166
    float-to-double v3, p1

    .line 167
    const-wide v5, 0x3ff199999999999aL    # 1.1

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    double-to-float p1, v3

    .line 177
    :cond_9
    iget v3, p2, Ld7/v;->a:I

    .line 178
    .line 179
    int-to-float v3, v3

    .line 180
    div-float/2addr v1, v3

    .line 181
    iget v0, v0, Ld7/v;->b:I

    .line 182
    .line 183
    int-to-float v0, v0

    .line 184
    mul-float v0, v0, v2

    .line 185
    .line 186
    iget p2, p2, Ld7/v;->b:I

    .line 187
    .line 188
    int-to-float p2, p2

    .line 189
    div-float/2addr v0, p2

    .line 190
    add-float/2addr v0, v1

    .line 191
    div-float/2addr v2, v0

    .line 192
    div-float/2addr v2, v0

    .line 193
    mul-float v2, v2, p1

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_a
    :goto_4
    const/4 v2, 0x0

    .line 197
    :goto_5
    return v2

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ld7/v;Ld7/v;)Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget v0, p0, Le7/k;->a:I

    .line 2
    .line 3
    const-string v1, "; Want: "

    .line 4
    .line 5
    const-string v2, "; Scaled: "

    .line 6
    .line 7
    const-string v3, "Preview: "

    .line 8
    .line 9
    const-string v4, "k"

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v0, p2, Ld7/v;->a:I

    .line 17
    .line 18
    iget p2, p2, Ld7/v;->b:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p1, v1, v1, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_0
    invoke-virtual {p1, p2}, Ld7/v;->b(Ld7/v;)Ld7/v;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget p1, v0, Ld7/v;->a:I

    .line 57
    .line 58
    iget v1, p2, Ld7/v;->a:I

    .line 59
    .line 60
    sub-int v1, p1, v1

    .line 61
    .line 62
    div-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    iget v0, v0, Ld7/v;->b:I

    .line 65
    .line 66
    iget p2, p2, Ld7/v;->b:I

    .line 67
    .line 68
    sub-int p2, v0, p2

    .line 69
    .line 70
    div-int/lit8 p2, p2, 0x2

    .line 71
    .line 72
    new-instance v2, Landroid/graphics/Rect;

    .line 73
    .line 74
    neg-int v3, v1

    .line 75
    neg-int v4, p2

    .line 76
    sub-int/2addr p1, v1

    .line 77
    sub-int/2addr v0, p2

    .line 78
    invoke-direct {v2, v3, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :pswitch_1
    invoke-virtual {p1, p2}, Ld7/v;->a(Ld7/v;)Ld7/v;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget p1, v0, Ld7/v;->a:I

    .line 114
    .line 115
    iget v1, p2, Ld7/v;->a:I

    .line 116
    .line 117
    sub-int v1, p1, v1

    .line 118
    .line 119
    div-int/lit8 v1, v1, 0x2

    .line 120
    .line 121
    iget v0, v0, Ld7/v;->b:I

    .line 122
    .line 123
    iget p2, p2, Ld7/v;->b:I

    .line 124
    .line 125
    sub-int p2, v0, p2

    .line 126
    .line 127
    div-int/lit8 p2, p2, 0x2

    .line 128
    .line 129
    new-instance v2, Landroid/graphics/Rect;

    .line 130
    .line 131
    neg-int v3, v1

    .line 132
    neg-int v4, p2

    .line 133
    sub-int/2addr p1, v1

    .line 134
    sub-int/2addr v0, p2

    .line 135
    invoke-direct {v2, v3, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
