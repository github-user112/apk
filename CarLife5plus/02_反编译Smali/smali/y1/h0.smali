.class public abstract Ly1/h0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ly1/g0;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly1/g0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/h0;->a:Ly1/g0;

    .line 7
    .line 8
    return-void
.end method

.method public static final A(Lx1/c;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Lx1/c;->a:F

    .line 4
    .line 5
    iget v2, p0, Lx1/c;->b:F

    .line 6
    .line 7
    iget v3, p0, Lx1/c;->c:F

    .line 8
    .line 9
    iget p0, p0, Lx1/c;->d:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final B(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_4

    .line 20
    .line 21
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v0, 0x1f

    .line 24
    .line 25
    if-lt p0, v0, :cond_3

    .line 26
    .line 27
    invoke-static {}, Lx2/f;->a()Landroid/graphics/Shader$TileMode;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_3
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_4
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final C(J)I
    .locals 1

    .line 1
    sget-object v0, Lz1/d;->a:[F

    .line 2
    .line 3
    sget-object v0, Lz1/d;->e:Lz1/q;

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Ly1/q;->a(JLz1/c;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    ushr-long/2addr p0, v0

    .line 12
    long-to-int p1, p0

    .line 13
    return p1
.end method

.method public static final D(I)Landroid/graphics/Bitmap$Config;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x1a

    .line 21
    .line 22
    if-lt v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-ne p0, v2, :cond_3

    .line 26
    .line 27
    invoke-static {}, Ls1/o;->c()Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_3
    if-lt v0, v1, :cond_4

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    if-ne p0, v0, :cond_4

    .line 36
    .line 37
    invoke-static {}, Ls1/o;->s()Landroid/graphics/Bitmap$Config;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_4
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 43
    .line 44
    return-object p0
.end method

.method public static final E(Landroid/graphics/Rect;)Lx1/c;
    .locals 4

    .line 1
    new-instance v0, Lx1/c;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    int-to-float v3, v3

    .line 12
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 13
    .line 14
    int-to-float p0, p0

    .line 15
    invoke-direct {v0, v1, v2, v3, p0}, Lx1/c;-><init>(FFFF)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static final F(Landroid/graphics/RectF;)Lx1/c;
    .locals 4

    .line 1
    new-instance v0, Lx1/c;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 6
    .line 7
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 8
    .line 9
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Lx1/c;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final G(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xc

    .line 77
    .line 78
    if-ne p0, v0, :cond_c

    .line 79
    .line 80
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xe

    .line 84
    .line 85
    if-ne p0, v0, :cond_d

    .line 86
    .line 87
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xf

    .line 91
    .line 92
    if-ne p0, v0, :cond_e

    .line 93
    .line 94
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_e
    const/16 v0, 0x10

    .line 98
    .line 99
    if-ne p0, v0, :cond_f

    .line 100
    .line 101
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_f
    const/16 v0, 0x11

    .line 105
    .line 106
    if-ne p0, v0, :cond_10

    .line 107
    .line 108
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_10
    const/16 v0, 0xd

    .line 112
    .line 113
    if-ne p0, v0, :cond_11

    .line 114
    .line 115
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 119
    .line 120
    return-object p0
.end method

.method public static H(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "Clear"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "Src"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "Dst"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "SrcOver"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "DstOver"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "SrcIn"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "DstIn"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    const-string p0, "SrcOut"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    const-string p0, "DstOut"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    const-string p0, "SrcAtop"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    const-string p0, "DstAtop"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    const-string p0, "Xor"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xc

    .line 77
    .line 78
    if-ne p0, v0, :cond_c

    .line 79
    .line 80
    const-string p0, "Plus"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xd

    .line 84
    .line 85
    if-ne p0, v0, :cond_d

    .line 86
    .line 87
    const-string p0, "Modulate"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xe

    .line 91
    .line 92
    if-ne p0, v0, :cond_e

    .line 93
    .line 94
    const-string p0, "Screen"

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_e
    const/16 v0, 0xf

    .line 98
    .line 99
    if-ne p0, v0, :cond_f

    .line 100
    .line 101
    const-string p0, "Overlay"

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_f
    const/16 v0, 0x10

    .line 105
    .line 106
    if-ne p0, v0, :cond_10

    .line 107
    .line 108
    const-string p0, "Darken"

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_10
    const/16 v0, 0x11

    .line 112
    .line 113
    if-ne p0, v0, :cond_11

    .line 114
    .line 115
    const-string p0, "Lighten"

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_11
    const/16 v0, 0x12

    .line 119
    .line 120
    if-ne p0, v0, :cond_12

    .line 121
    .line 122
    const-string p0, "ColorDodge"

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_12
    const/16 v0, 0x13

    .line 126
    .line 127
    if-ne p0, v0, :cond_13

    .line 128
    .line 129
    const-string p0, "ColorBurn"

    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_13
    const/16 v0, 0x14

    .line 133
    .line 134
    if-ne p0, v0, :cond_14

    .line 135
    .line 136
    const-string p0, "HardLight"

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_14
    const/16 v0, 0x15

    .line 140
    .line 141
    if-ne p0, v0, :cond_15

    .line 142
    .line 143
    const-string p0, "Softlight"

    .line 144
    .line 145
    return-object p0

    .line 146
    :cond_15
    const/16 v0, 0x16

    .line 147
    .line 148
    if-ne p0, v0, :cond_16

    .line 149
    .line 150
    const-string p0, "Difference"

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_16
    const/16 v0, 0x17

    .line 154
    .line 155
    if-ne p0, v0, :cond_17

    .line 156
    .line 157
    const-string p0, "Exclusion"

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_17
    const/16 v0, 0x18

    .line 161
    .line 162
    if-ne p0, v0, :cond_18

    .line 163
    .line 164
    const-string p0, "Multiply"

    .line 165
    .line 166
    return-object p0

    .line 167
    :cond_18
    const/16 v0, 0x19

    .line 168
    .line 169
    if-ne p0, v0, :cond_19

    .line 170
    .line 171
    const-string p0, "Hue"

    .line 172
    .line 173
    return-object p0

    .line 174
    :cond_19
    const/16 v0, 0x1a

    .line 175
    .line 176
    if-ne p0, v0, :cond_1a

    .line 177
    .line 178
    const-string p0, "Saturation"

    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_1a
    const/16 v0, 0x1b

    .line 182
    .line 183
    if-ne p0, v0, :cond_1b

    .line 184
    .line 185
    const-string p0, "Color"

    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_1b
    const/16 v0, 0x1c

    .line 189
    .line 190
    if-ne p0, v0, :cond_1c

    .line 191
    .line 192
    const-string p0, "Luminosity"

    .line 193
    .line 194
    return-object p0

    .line 195
    :cond_1c
    const-string p0, "Unknown"

    .line 196
    .line 197
    return-object p0
.end method

.method public static final I(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x2

    .line 8
    if-lt p0, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "colors must have length of at least 2 if colorStops is omitted."

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-ne p1, p0, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p1, "colors and colorStops arguments must have equal length."

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static final J(F[FI)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p0, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v0, p0

    .line 8
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v2, v0, v1

    .line 11
    .line 12
    if-lez v2, :cond_1

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :cond_1
    sub-float p0, v0, p0

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const v1, 0x358cedba    # 1.05E-6f

    .line 23
    .line 24
    .line 25
    cmpl-float p0, p0, v1

    .line 26
    .line 27
    if-lez p0, :cond_2

    .line 28
    .line 29
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 30
    .line 31
    :cond_2
    aput v0, p1, p2

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    xor-int/lit8 p0, p0, 0x1

    .line 38
    .line 39
    return p0
.end method

.method public static final a(Ly1/f;)Ly1/b;
    .locals 2

    .line 1
    sget-object v0, Ly1/c;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    new-instance v0, Ly1/b;

    .line 4
    .line 5
    invoke-direct {v0}, Ly1/b;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Canvas;

    .line 9
    .line 10
    invoke-static {p0}, Ly1/h0;->j(Ly1/f;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 18
    .line 19
    return-object v0
.end method

.method public static final b(FFFFLz1/c;)J
    .locals 21

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    invoke-virtual {v0}, Lz1/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    const/high16 v4, 0x3f000000    # 0.5f

    .line 12
    .line 13
    const/high16 v5, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    cmpg-float v0, p3, v6

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move/from16 v0, p3

    .line 25
    .line 26
    :goto_0
    cmpl-float v1, v0, v5

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    .line 33
    .line 34
    mul-float v0, v0, v1

    .line 35
    .line 36
    add-float/2addr v0, v4

    .line 37
    float-to-int v0, v0

    .line 38
    shl-int/lit8 v0, v0, 0x18

    .line 39
    .line 40
    cmpg-float v7, p0, v6

    .line 41
    .line 42
    if-gez v7, :cond_2

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move/from16 v7, p0

    .line 47
    .line 48
    :goto_1
    cmpl-float v8, v7, v5

    .line 49
    .line 50
    if-lez v8, :cond_3

    .line 51
    .line 52
    const/high16 v7, 0x3f800000    # 1.0f

    .line 53
    .line 54
    :cond_3
    mul-float v7, v7, v1

    .line 55
    .line 56
    add-float/2addr v7, v4

    .line 57
    float-to-int v7, v7

    .line 58
    shl-int/lit8 v2, v7, 0x10

    .line 59
    .line 60
    or-int/2addr v0, v2

    .line 61
    cmpg-float v2, p1, v6

    .line 62
    .line 63
    if-gez v2, :cond_4

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    move/from16 v2, p1

    .line 68
    .line 69
    :goto_2
    cmpl-float v7, v2, v5

    .line 70
    .line 71
    if-lez v7, :cond_5

    .line 72
    .line 73
    const/high16 v2, 0x3f800000    # 1.0f

    .line 74
    .line 75
    :cond_5
    mul-float v2, v2, v1

    .line 76
    .line 77
    add-float/2addr v2, v4

    .line 78
    float-to-int v2, v2

    .line 79
    shl-int/lit8 v2, v2, 0x8

    .line 80
    .line 81
    or-int/2addr v0, v2

    .line 82
    cmpg-float v2, p2, v6

    .line 83
    .line 84
    if-gez v2, :cond_6

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    move/from16 v6, p2

    .line 88
    .line 89
    :goto_3
    cmpl-float v2, v6, v5

    .line 90
    .line 91
    if-lez v2, :cond_7

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_7
    move v5, v6

    .line 95
    :goto_4
    mul-float v5, v5, v1

    .line 96
    .line 97
    add-float/2addr v5, v4

    .line 98
    float-to-int v1, v5

    .line 99
    or-int/2addr v0, v1

    .line 100
    int-to-long v0, v0

    .line 101
    shl-long/2addr v0, v3

    .line 102
    sget v2, Ly1/q;->n:I

    .line 103
    .line 104
    return-wide v0

    .line 105
    :cond_8
    iget-wide v7, v0, Lz1/c;->b:J

    .line 106
    .line 107
    sget v1, Lz1/b;->e:I

    .line 108
    .line 109
    shr-long/2addr v7, v3

    .line 110
    long-to-int v1, v7

    .line 111
    const/4 v7, 0x3

    .line 112
    if-ne v1, v7, :cond_9

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_9
    const-string v1, "Color only works with ColorSpaces with 3 components"

    .line 116
    .line 117
    invoke-static {v1}, Ly1/y;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_5
    iget v1, v0, Lz1/c;->c:I

    .line 121
    .line 122
    const/4 v7, -0x1

    .line 123
    if-eq v1, v7, :cond_a

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_a
    const-string v7, "Unknown color space, please use a color space in ColorSpaces"

    .line 127
    .line 128
    invoke-static {v7}, Ly1/y;->a(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_6
    const/4 v7, 0x0

    .line 132
    invoke-virtual {v0, v7}, Lz1/c;->b(I)F

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    invoke-virtual {v0, v7}, Lz1/c;->a(I)F

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    cmpg-float v10, p0, v8

    .line 141
    .line 142
    if-gez v10, :cond_b

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_b
    move/from16 v8, p0

    .line 146
    .line 147
    :goto_7
    cmpl-float v10, v8, v9

    .line 148
    .line 149
    if-lez v10, :cond_c

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_c
    move v9, v8

    .line 153
    :goto_8
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    ushr-int/lit8 v9, v8, 0x1f

    .line 158
    .line 159
    ushr-int/lit8 v10, v8, 0x17

    .line 160
    .line 161
    const/16 v11, 0xff

    .line 162
    .line 163
    and-int/2addr v10, v11

    .line 164
    const v12, 0x7fffff

    .line 165
    .line 166
    .line 167
    and-int v13, v8, v12

    .line 168
    .line 169
    const/high16 v14, 0x800000

    .line 170
    .line 171
    const/16 v15, -0xa

    .line 172
    .line 173
    const/16 v16, 0x31

    .line 174
    .line 175
    const/16 v17, 0x200

    .line 176
    .line 177
    const/16 v18, 0x10

    .line 178
    .line 179
    const/16 v2, 0x1f

    .line 180
    .line 181
    const/16 v19, 0x20

    .line 182
    .line 183
    const/4 v3, 0x1

    .line 184
    if-ne v10, v11, :cond_e

    .line 185
    .line 186
    if-eqz v13, :cond_d

    .line 187
    .line 188
    const/16 v8, 0x200

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_d
    const/4 v8, 0x0

    .line 192
    :goto_9
    const/16 v10, 0x1f

    .line 193
    .line 194
    goto :goto_c

    .line 195
    :cond_e
    add-int/lit8 v10, v10, -0x70

    .line 196
    .line 197
    if-lt v10, v2, :cond_f

    .line 198
    .line 199
    const/4 v8, 0x0

    .line 200
    const/16 v10, 0x31

    .line 201
    .line 202
    goto :goto_c

    .line 203
    :cond_f
    if-gtz v10, :cond_12

    .line 204
    .line 205
    if-lt v10, v15, :cond_11

    .line 206
    .line 207
    or-int v8, v13, v14

    .line 208
    .line 209
    rsub-int/lit8 v10, v10, 0x1

    .line 210
    .line 211
    shr-int/2addr v8, v10

    .line 212
    and-int/lit16 v10, v8, 0x1000

    .line 213
    .line 214
    if-eqz v10, :cond_10

    .line 215
    .line 216
    add-int/lit16 v8, v8, 0x2000

    .line 217
    .line 218
    :cond_10
    shr-int/lit8 v8, v8, 0xd

    .line 219
    .line 220
    :goto_a
    const/4 v10, 0x0

    .line 221
    goto :goto_c

    .line 222
    :cond_11
    const/4 v8, 0x0

    .line 223
    goto :goto_a

    .line 224
    :cond_12
    shr-int/lit8 v13, v13, 0xd

    .line 225
    .line 226
    and-int/lit16 v8, v8, 0x1000

    .line 227
    .line 228
    if-eqz v8, :cond_13

    .line 229
    .line 230
    shl-int/lit8 v8, v10, 0xa

    .line 231
    .line 232
    or-int/2addr v8, v13

    .line 233
    add-int/2addr v8, v3

    .line 234
    shl-int/lit8 v9, v9, 0xf

    .line 235
    .line 236
    or-int/2addr v8, v9

    .line 237
    :goto_b
    int-to-short v8, v8

    .line 238
    goto :goto_d

    .line 239
    :cond_13
    move v8, v13

    .line 240
    :goto_c
    shl-int/lit8 v9, v9, 0xf

    .line 241
    .line 242
    shl-int/lit8 v10, v10, 0xa

    .line 243
    .line 244
    or-int/2addr v9, v10

    .line 245
    or-int/2addr v8, v9

    .line 246
    goto :goto_b

    .line 247
    :goto_d
    invoke-virtual {v0, v3}, Lz1/c;->b(I)F

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    invoke-virtual {v0, v3}, Lz1/c;->a(I)F

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    cmpg-float v13, p1, v9

    .line 256
    .line 257
    if-gez v13, :cond_14

    .line 258
    .line 259
    goto :goto_e

    .line 260
    :cond_14
    move/from16 v9, p1

    .line 261
    .line 262
    :goto_e
    cmpl-float v13, v9, v10

    .line 263
    .line 264
    if-lez v13, :cond_15

    .line 265
    .line 266
    goto :goto_f

    .line 267
    :cond_15
    move v10, v9

    .line 268
    :goto_f
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    ushr-int/lit8 v10, v9, 0x1f

    .line 273
    .line 274
    ushr-int/lit8 v13, v9, 0x17

    .line 275
    .line 276
    and-int/2addr v13, v11

    .line 277
    and-int v20, v9, v12

    .line 278
    .line 279
    if-ne v13, v11, :cond_17

    .line 280
    .line 281
    if-eqz v20, :cond_16

    .line 282
    .line 283
    const/16 v9, 0x200

    .line 284
    .line 285
    goto :goto_10

    .line 286
    :cond_16
    const/4 v9, 0x0

    .line 287
    :goto_10
    const/16 v13, 0x1f

    .line 288
    .line 289
    goto :goto_13

    .line 290
    :cond_17
    add-int/lit8 v13, v13, -0x70

    .line 291
    .line 292
    if-lt v13, v2, :cond_18

    .line 293
    .line 294
    const/4 v9, 0x0

    .line 295
    const/16 v13, 0x31

    .line 296
    .line 297
    goto :goto_13

    .line 298
    :cond_18
    if-gtz v13, :cond_1b

    .line 299
    .line 300
    if-lt v13, v15, :cond_1a

    .line 301
    .line 302
    or-int v9, v20, v14

    .line 303
    .line 304
    rsub-int/lit8 v13, v13, 0x1

    .line 305
    .line 306
    shr-int/2addr v9, v13

    .line 307
    and-int/lit16 v13, v9, 0x1000

    .line 308
    .line 309
    if-eqz v13, :cond_19

    .line 310
    .line 311
    add-int/lit16 v9, v9, 0x2000

    .line 312
    .line 313
    :cond_19
    shr-int/lit8 v9, v9, 0xd

    .line 314
    .line 315
    :goto_11
    const/4 v13, 0x0

    .line 316
    goto :goto_13

    .line 317
    :cond_1a
    const/4 v9, 0x0

    .line 318
    goto :goto_11

    .line 319
    :cond_1b
    shr-int/lit8 v20, v20, 0xd

    .line 320
    .line 321
    and-int/lit16 v9, v9, 0x1000

    .line 322
    .line 323
    if-eqz v9, :cond_1c

    .line 324
    .line 325
    shl-int/lit8 v9, v13, 0xa

    .line 326
    .line 327
    or-int v9, v9, v20

    .line 328
    .line 329
    add-int/2addr v9, v3

    .line 330
    shl-int/lit8 v10, v10, 0xf

    .line 331
    .line 332
    or-int/2addr v9, v10

    .line 333
    :goto_12
    int-to-short v9, v9

    .line 334
    goto :goto_14

    .line 335
    :cond_1c
    move/from16 v9, v20

    .line 336
    .line 337
    :goto_13
    shl-int/lit8 v10, v10, 0xf

    .line 338
    .line 339
    shl-int/lit8 v13, v13, 0xa

    .line 340
    .line 341
    or-int/2addr v10, v13

    .line 342
    or-int/2addr v9, v10

    .line 343
    goto :goto_12

    .line 344
    :goto_14
    const/4 v10, 0x2

    .line 345
    invoke-virtual {v0, v10}, Lz1/c;->b(I)F

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    invoke-virtual {v0, v10}, Lz1/c;->a(I)F

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    cmpg-float v10, p2, v13

    .line 354
    .line 355
    if-gez v10, :cond_1d

    .line 356
    .line 357
    goto :goto_15

    .line 358
    :cond_1d
    move/from16 v13, p2

    .line 359
    .line 360
    :goto_15
    cmpl-float v10, v13, v0

    .line 361
    .line 362
    if-lez v10, :cond_1e

    .line 363
    .line 364
    goto :goto_16

    .line 365
    :cond_1e
    move v0, v13

    .line 366
    :goto_16
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    ushr-int/lit8 v10, v0, 0x1f

    .line 371
    .line 372
    ushr-int/lit8 v13, v0, 0x17

    .line 373
    .line 374
    and-int/2addr v13, v11

    .line 375
    and-int/2addr v12, v0

    .line 376
    if-ne v13, v11, :cond_20

    .line 377
    .line 378
    if-eqz v12, :cond_1f

    .line 379
    .line 380
    const/16 v7, 0x200

    .line 381
    .line 382
    :cond_1f
    move v0, v7

    .line 383
    const/16 v7, 0x1f

    .line 384
    .line 385
    goto :goto_18

    .line 386
    :cond_20
    add-int/lit8 v13, v13, -0x70

    .line 387
    .line 388
    if-lt v13, v2, :cond_21

    .line 389
    .line 390
    const/4 v0, 0x0

    .line 391
    const/16 v7, 0x31

    .line 392
    .line 393
    goto :goto_18

    .line 394
    :cond_21
    if-gtz v13, :cond_24

    .line 395
    .line 396
    if-lt v13, v15, :cond_23

    .line 397
    .line 398
    or-int v0, v12, v14

    .line 399
    .line 400
    rsub-int/lit8 v2, v13, 0x1

    .line 401
    .line 402
    shr-int/2addr v0, v2

    .line 403
    and-int/lit16 v2, v0, 0x1000

    .line 404
    .line 405
    if-eqz v2, :cond_22

    .line 406
    .line 407
    add-int/lit16 v0, v0, 0x2000

    .line 408
    .line 409
    :cond_22
    shr-int/lit8 v0, v0, 0xd

    .line 410
    .line 411
    goto :goto_18

    .line 412
    :cond_23
    const/4 v0, 0x0

    .line 413
    goto :goto_18

    .line 414
    :cond_24
    shr-int/lit8 v7, v12, 0xd

    .line 415
    .line 416
    and-int/lit16 v0, v0, 0x1000

    .line 417
    .line 418
    if-eqz v0, :cond_25

    .line 419
    .line 420
    shl-int/lit8 v0, v13, 0xa

    .line 421
    .line 422
    or-int/2addr v0, v7

    .line 423
    add-int/2addr v0, v3

    .line 424
    shl-int/lit8 v2, v10, 0xf

    .line 425
    .line 426
    or-int/2addr v0, v2

    .line 427
    :goto_17
    int-to-short v0, v0

    .line 428
    goto :goto_19

    .line 429
    :cond_25
    move v0, v7

    .line 430
    move v7, v13

    .line 431
    :goto_18
    shl-int/lit8 v2, v10, 0xf

    .line 432
    .line 433
    shl-int/lit8 v3, v7, 0xa

    .line 434
    .line 435
    or-int/2addr v2, v3

    .line 436
    or-int/2addr v0, v2

    .line 437
    goto :goto_17

    .line 438
    :goto_19
    cmpg-float v2, p3, v6

    .line 439
    .line 440
    if-gez v2, :cond_26

    .line 441
    .line 442
    goto :goto_1a

    .line 443
    :cond_26
    move/from16 v6, p3

    .line 444
    .line 445
    :goto_1a
    cmpl-float v2, v6, v5

    .line 446
    .line 447
    if-lez v2, :cond_27

    .line 448
    .line 449
    goto :goto_1b

    .line 450
    :cond_27
    move v5, v6

    .line 451
    :goto_1b
    const v2, 0x447fc000    # 1023.0f

    .line 452
    .line 453
    .line 454
    mul-float v5, v5, v2

    .line 455
    .line 456
    add-float/2addr v5, v4

    .line 457
    float-to-int v2, v5

    .line 458
    int-to-long v3, v8

    .line 459
    const-wide/32 v5, 0xffff

    .line 460
    .line 461
    .line 462
    and-long/2addr v3, v5

    .line 463
    const/16 v7, 0x30

    .line 464
    .line 465
    shl-long/2addr v3, v7

    .line 466
    int-to-long v7, v9

    .line 467
    and-long/2addr v7, v5

    .line 468
    shl-long v7, v7, v19

    .line 469
    .line 470
    or-long/2addr v3, v7

    .line 471
    int-to-long v7, v0

    .line 472
    and-long/2addr v5, v7

    .line 473
    shl-long v5, v5, v18

    .line 474
    .line 475
    or-long/2addr v3, v5

    .line 476
    int-to-long v5, v2

    .line 477
    const-wide/16 v7, 0x3ff

    .line 478
    .line 479
    and-long/2addr v5, v7

    .line 480
    const/4 v0, 0x6

    .line 481
    shl-long/2addr v5, v0

    .line 482
    or-long/2addr v3, v5

    .line 483
    int-to-long v0, v1

    .line 484
    const-wide/16 v5, 0x3f

    .line 485
    .line 486
    and-long/2addr v0, v5

    .line 487
    or-long/2addr v0, v3

    .line 488
    sget v2, Ly1/q;->n:I

    .line 489
    .line 490
    return-wide v0
.end method

.method public static final c(I)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    sget p0, Ly1/q;->n:I

    .line 6
    .line 7
    return-wide v0
.end method

.method public static final d(J)J
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shl-long/2addr p0, v0

    .line 4
    sget v0, Ly1/q;->n:I

    .line 5
    .line 6
    return-wide p0
.end method

.method public static e(III)J
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 2
    .line 3
    shl-int/lit8 p0, p0, 0x10

    .line 4
    .line 5
    const/high16 v0, -0x1000000

    .line 6
    .line 7
    or-int/2addr p0, v0

    .line 8
    and-int/lit16 p1, p1, 0xff

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x8

    .line 11
    .line 12
    or-int/2addr p0, p1

    .line 13
    and-int/lit16 p1, p2, 0xff

    .line 14
    .line 15
    or-int/2addr p0, p1

    .line 16
    invoke-static {p0}, Ly1/h0;->c(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method public static f(III)Ly1/f;
    .locals 4

    .line 1
    sget-object v0, Lz1/d;->e:Lz1/q;

    .line 2
    .line 3
    invoke-static {p2}, Ly1/h0;->D(I)Landroid/graphics/Bitmap$Config;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v3, 0x1a

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Ly1/h0;->D(I)Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {v0}, Ly1/t;->a(Lz1/c;)Landroid/graphics/ColorSpace;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, p1, p2, v0}, Ls1/o;->d(IILandroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    invoke-static {p2, p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 33
    .line 34
    .line 35
    :goto_0
    new-instance p1, Ly1/f;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Ly1/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public static final g(JJLjava/util/List;)Landroid/graphics/LinearGradient;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p4}, Ly1/h0;->I(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p4}, Ly1/h0;->l(Ljava/util/List;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 10
    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    shr-long v4, p0, v3

    .line 14
    .line 15
    long-to-int v5, v4

    .line 16
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const-wide v5, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr p0, v5

    .line 26
    long-to-int p1, p0

    .line 27
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    shr-long v7, p2, v3

    .line 32
    .line 33
    long-to-int p1, v7

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    and-long/2addr p2, v5

    .line 39
    long-to-int p3, p2

    .line 40
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {v1, p4}, Ly1/h0;->s(ILjava/util/List;)[I

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-static {v0, p4, v1}, Ly1/h0;->t(Ljava/util/ArrayList;Ljava/util/List;I)[F

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-static {p2}, Ly1/h0;->B(I)Landroid/graphics/Shader$TileMode;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    move v5, p1

    .line 58
    move v3, v4

    .line 59
    move v4, p0

    .line 60
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 61
    .line 62
    .line 63
    return-object v2
.end method

.method public static final h()Ld7/q;
    .locals 3

    .line 1
    new-instance v0, Ld7/q;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ld7/q;-><init>(Landroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final i(FFFFLz1/c;)J
    .locals 17

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Lz1/c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    const/16 v3, 0x10

    .line 10
    .line 11
    const/high16 v4, 0x3f000000    # 0.5f

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0x437f0000    # 255.0f

    .line 16
    .line 17
    mul-float v0, v0, v1

    .line 18
    .line 19
    add-float/2addr v0, v4

    .line 20
    float-to-int v0, v0

    .line 21
    shl-int/lit8 v0, v0, 0x18

    .line 22
    .line 23
    mul-float v5, p0, v1

    .line 24
    .line 25
    add-float/2addr v5, v4

    .line 26
    float-to-int v5, v5

    .line 27
    shl-int/lit8 v3, v5, 0x10

    .line 28
    .line 29
    or-int/2addr v0, v3

    .line 30
    mul-float v3, p1, v1

    .line 31
    .line 32
    add-float/2addr v3, v4

    .line 33
    float-to-int v3, v3

    .line 34
    shl-int/lit8 v3, v3, 0x8

    .line 35
    .line 36
    or-int/2addr v0, v3

    .line 37
    mul-float v1, v1, p2

    .line 38
    .line 39
    add-float/2addr v1, v4

    .line 40
    float-to-int v1, v1

    .line 41
    or-int/2addr v0, v1

    .line 42
    int-to-long v0, v0

    .line 43
    shl-long/2addr v0, v2

    .line 44
    sget v2, Ly1/q;->n:I

    .line 45
    .line 46
    return-wide v0

    .line 47
    :cond_0
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    ushr-int/lit8 v5, v1, 0x1f

    .line 52
    .line 53
    ushr-int/lit8 v6, v1, 0x17

    .line 54
    .line 55
    const/16 v7, 0xff

    .line 56
    .line 57
    and-int/2addr v6, v7

    .line 58
    const v8, 0x7fffff

    .line 59
    .line 60
    .line 61
    and-int v9, v1, v8

    .line 62
    .line 63
    const/high16 v10, 0x800000

    .line 64
    .line 65
    const/16 v11, -0xa

    .line 66
    .line 67
    const/16 v12, 0x31

    .line 68
    .line 69
    const/16 v13, 0x200

    .line 70
    .line 71
    const/4 v14, 0x0

    .line 72
    const/16 v15, 0x1f

    .line 73
    .line 74
    if-ne v6, v7, :cond_2

    .line 75
    .line 76
    if-eqz v9, :cond_1

    .line 77
    .line 78
    const/16 v1, 0x200

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 82
    :goto_0
    const/16 v6, 0x1f

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    add-int/lit8 v6, v6, -0x70

    .line 86
    .line 87
    if-lt v6, v15, :cond_3

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    const/16 v6, 0x31

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    if-gtz v6, :cond_6

    .line 94
    .line 95
    if-lt v6, v11, :cond_5

    .line 96
    .line 97
    or-int v1, v9, v10

    .line 98
    .line 99
    rsub-int/lit8 v6, v6, 0x1

    .line 100
    .line 101
    shr-int/2addr v1, v6

    .line 102
    and-int/lit16 v6, v1, 0x1000

    .line 103
    .line 104
    if-eqz v6, :cond_4

    .line 105
    .line 106
    add-int/lit16 v1, v1, 0x2000

    .line 107
    .line 108
    :cond_4
    shr-int/lit8 v1, v1, 0xd

    .line 109
    .line 110
    :goto_1
    const/4 v6, 0x0

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    const/4 v1, 0x0

    .line 113
    goto :goto_1

    .line 114
    :cond_6
    shr-int/lit8 v9, v9, 0xd

    .line 115
    .line 116
    and-int/lit16 v1, v1, 0x1000

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    shl-int/lit8 v1, v6, 0xa

    .line 121
    .line 122
    or-int/2addr v1, v9

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    shl-int/lit8 v5, v5, 0xf

    .line 126
    .line 127
    or-int/2addr v1, v5

    .line 128
    :goto_2
    int-to-short v1, v1

    .line 129
    goto :goto_4

    .line 130
    :cond_7
    move v1, v9

    .line 131
    :goto_3
    shl-int/lit8 v5, v5, 0xf

    .line 132
    .line 133
    shl-int/lit8 v6, v6, 0xa

    .line 134
    .line 135
    or-int/2addr v5, v6

    .line 136
    or-int/2addr v1, v5

    .line 137
    goto :goto_2

    .line 138
    :goto_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    ushr-int/lit8 v6, v5, 0x1f

    .line 143
    .line 144
    ushr-int/lit8 v9, v5, 0x17

    .line 145
    .line 146
    and-int/2addr v9, v7

    .line 147
    and-int v16, v5, v8

    .line 148
    .line 149
    if-ne v9, v7, :cond_9

    .line 150
    .line 151
    if-eqz v16, :cond_8

    .line 152
    .line 153
    const/16 v5, 0x200

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_8
    const/4 v5, 0x0

    .line 157
    :goto_5
    const/16 v9, 0x1f

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_9
    add-int/lit8 v9, v9, -0x70

    .line 161
    .line 162
    if-lt v9, v15, :cond_a

    .line 163
    .line 164
    const/4 v5, 0x0

    .line 165
    const/16 v9, 0x31

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_a
    if-gtz v9, :cond_d

    .line 169
    .line 170
    if-lt v9, v11, :cond_c

    .line 171
    .line 172
    or-int v5, v16, v10

    .line 173
    .line 174
    rsub-int/lit8 v9, v9, 0x1

    .line 175
    .line 176
    shr-int/2addr v5, v9

    .line 177
    and-int/lit16 v9, v5, 0x1000

    .line 178
    .line 179
    if-eqz v9, :cond_b

    .line 180
    .line 181
    add-int/lit16 v5, v5, 0x2000

    .line 182
    .line 183
    :cond_b
    shr-int/lit8 v5, v5, 0xd

    .line 184
    .line 185
    :goto_6
    const/4 v9, 0x0

    .line 186
    goto :goto_8

    .line 187
    :cond_c
    const/4 v5, 0x0

    .line 188
    goto :goto_6

    .line 189
    :cond_d
    shr-int/lit8 v16, v16, 0xd

    .line 190
    .line 191
    and-int/lit16 v5, v5, 0x1000

    .line 192
    .line 193
    if-eqz v5, :cond_e

    .line 194
    .line 195
    shl-int/lit8 v5, v9, 0xa

    .line 196
    .line 197
    or-int v5, v5, v16

    .line 198
    .line 199
    add-int/lit8 v5, v5, 0x1

    .line 200
    .line 201
    shl-int/lit8 v6, v6, 0xf

    .line 202
    .line 203
    or-int/2addr v5, v6

    .line 204
    :goto_7
    int-to-short v5, v5

    .line 205
    goto :goto_9

    .line 206
    :cond_e
    move/from16 v5, v16

    .line 207
    .line 208
    :goto_8
    shl-int/lit8 v6, v6, 0xf

    .line 209
    .line 210
    shl-int/lit8 v9, v9, 0xa

    .line 211
    .line 212
    or-int/2addr v6, v9

    .line 213
    or-int/2addr v5, v6

    .line 214
    goto :goto_7

    .line 215
    :goto_9
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    ushr-int/lit8 v9, v6, 0x1f

    .line 220
    .line 221
    const/16 v16, 0x20

    .line 222
    .line 223
    ushr-int/lit8 v2, v6, 0x17

    .line 224
    .line 225
    and-int/2addr v2, v7

    .line 226
    and-int/2addr v8, v6

    .line 227
    if-ne v2, v7, :cond_10

    .line 228
    .line 229
    if-eqz v8, :cond_f

    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_f
    const/4 v13, 0x0

    .line 233
    :goto_a
    move v14, v13

    .line 234
    const/16 v12, 0x1f

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_10
    add-int/lit8 v2, v2, -0x70

    .line 238
    .line 239
    if-lt v2, v15, :cond_11

    .line 240
    .line 241
    goto :goto_c

    .line 242
    :cond_11
    if-gtz v2, :cond_14

    .line 243
    .line 244
    if-lt v2, v11, :cond_13

    .line 245
    .line 246
    or-int v6, v8, v10

    .line 247
    .line 248
    rsub-int/lit8 v2, v2, 0x1

    .line 249
    .line 250
    shr-int v2, v6, v2

    .line 251
    .line 252
    and-int/lit16 v6, v2, 0x1000

    .line 253
    .line 254
    if-eqz v6, :cond_12

    .line 255
    .line 256
    add-int/lit16 v2, v2, 0x2000

    .line 257
    .line 258
    :cond_12
    shr-int/lit8 v2, v2, 0xd

    .line 259
    .line 260
    move v14, v2

    .line 261
    :cond_13
    const/4 v12, 0x0

    .line 262
    goto :goto_c

    .line 263
    :cond_14
    shr-int/lit8 v14, v8, 0xd

    .line 264
    .line 265
    and-int/lit16 v6, v6, 0x1000

    .line 266
    .line 267
    if-eqz v6, :cond_15

    .line 268
    .line 269
    shl-int/lit8 v2, v2, 0xa

    .line 270
    .line 271
    or-int/2addr v2, v14

    .line 272
    add-int/lit8 v2, v2, 0x1

    .line 273
    .line 274
    shl-int/lit8 v6, v9, 0xf

    .line 275
    .line 276
    or-int/2addr v2, v6

    .line 277
    :goto_b
    int-to-short v2, v2

    .line 278
    goto :goto_d

    .line 279
    :cond_15
    move v12, v2

    .line 280
    :goto_c
    shl-int/lit8 v2, v9, 0xf

    .line 281
    .line 282
    shl-int/lit8 v6, v12, 0xa

    .line 283
    .line 284
    or-int/2addr v2, v6

    .line 285
    or-int/2addr v2, v14

    .line 286
    goto :goto_b

    .line 287
    :goto_d
    const/high16 v6, 0x3f800000    # 1.0f

    .line 288
    .line 289
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    const/4 v6, 0x0

    .line 294
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    const v6, 0x447fc000    # 1023.0f

    .line 299
    .line 300
    .line 301
    mul-float v0, v0, v6

    .line 302
    .line 303
    add-float/2addr v0, v4

    .line 304
    float-to-int v0, v0

    .line 305
    move-object/from16 v4, p4

    .line 306
    .line 307
    iget v4, v4, Lz1/c;->c:I

    .line 308
    .line 309
    int-to-long v6, v1

    .line 310
    const-wide/32 v8, 0xffff

    .line 311
    .line 312
    .line 313
    and-long/2addr v6, v8

    .line 314
    const/16 v1, 0x30

    .line 315
    .line 316
    shl-long/2addr v6, v1

    .line 317
    int-to-long v10, v5

    .line 318
    and-long/2addr v10, v8

    .line 319
    shl-long v10, v10, v16

    .line 320
    .line 321
    or-long/2addr v6, v10

    .line 322
    int-to-long v1, v2

    .line 323
    and-long/2addr v1, v8

    .line 324
    shl-long/2addr v1, v3

    .line 325
    or-long/2addr v1, v6

    .line 326
    int-to-long v5, v0

    .line 327
    const-wide/16 v7, 0x3ff

    .line 328
    .line 329
    and-long/2addr v5, v7

    .line 330
    const/4 v0, 0x6

    .line 331
    shl-long/2addr v5, v0

    .line 332
    or-long/2addr v1, v5

    .line 333
    int-to-long v3, v4

    .line 334
    const-wide/16 v5, 0x3f

    .line 335
    .line 336
    and-long/2addr v3, v5

    .line 337
    or-long/2addr v1, v3

    .line 338
    sget v0, Ly1/q;->n:I

    .line 339
    .line 340
    return-wide v1
.end method

.method public static final j(Ly1/f;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    instance-of v0, p0, Ly1/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ly1/f;->a:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v0, "Unable to obtain android.graphics.Bitmap"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static final k(JJ)J
    .locals 9

    .line 1
    invoke-static {p2, p3}, Ly1/q;->f(J)Lz1/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Ly1/q;->a(JLz1/c;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {p2, p3}, Ly1/q;->d(J)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p0, p1}, Ly1/q;->d(J)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    sub-float/2addr v2, v1

    .line 20
    mul-float v3, v0, v2

    .line 21
    .line 22
    add-float/2addr v3, v1

    .line 23
    invoke-static {p0, p1}, Ly1/q;->h(J)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {p2, p3}, Ly1/q;->h(J)F

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    cmpg-float v7, v3, v6

    .line 33
    .line 34
    if-nez v7, :cond_0

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    mul-float v4, v4, v1

    .line 39
    .line 40
    mul-float v5, v5, v0

    .line 41
    .line 42
    mul-float v5, v5, v2

    .line 43
    .line 44
    add-float/2addr v5, v4

    .line 45
    div-float/2addr v5, v3

    .line 46
    :goto_0
    invoke-static {p0, p1}, Ly1/q;->g(J)F

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {p2, p3}, Ly1/q;->g(J)F

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    mul-float v4, v4, v1

    .line 59
    .line 60
    mul-float v8, v8, v0

    .line 61
    .line 62
    mul-float v8, v8, v2

    .line 63
    .line 64
    add-float/2addr v8, v4

    .line 65
    div-float/2addr v8, v3

    .line 66
    :goto_1
    invoke-static {p0, p1}, Ly1/q;->e(J)F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-static {p2, p3}, Ly1/q;->e(J)F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez v7, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    mul-float p0, p0, v1

    .line 78
    .line 79
    mul-float p1, p1, v0

    .line 80
    .line 81
    mul-float p1, p1, v2

    .line 82
    .line 83
    add-float/2addr p1, p0

    .line 84
    div-float v6, p1, v3

    .line 85
    .line 86
    :goto_2
    invoke-static {p2, p3}, Ly1/q;->f(J)Lz1/c;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v5, v8, v6, v3, p0}, Ly1/h0;->i(FFFFLz1/c;)J

    .line 91
    .line 92
    .line 93
    move-result-wide p0

    .line 94
    return-wide p0
.end method

.method public static final l(Ljava/util/List;)I
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-static {p0}, Lp9/x1;->u(Ljava/util/List;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ly1/q;

    .line 21
    .line 22
    iget-wide v3, v3, Ly1/q;->a:J

    .line 23
    .line 24
    invoke-static {v3, v4}, Ly1/q;->d(J)F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    cmpg-float v3, v3, v4

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return v2
.end method

.method public static m(La2/g;Ly1/h0;J)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Ly1/c0;

    .line 4
    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Ly1/c0;

    .line 15
    .line 16
    iget-object v0, v0, Ly1/c0;->e:Lx1/c;

    .line 17
    .line 18
    iget v1, v0, Lx1/c;->a:F

    .line 19
    .line 20
    iget v5, v0, Lx1/c;->b:F

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-long v6, v1

    .line 27
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-long v8, v1

    .line 32
    shl-long v4, v6, v4

    .line 33
    .line 34
    and-long/2addr v2, v8

    .line 35
    or-long/2addr v2, v4

    .line 36
    invoke-static {v0}, Ly1/h0;->w(Lx1/c;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const/4 v7, 0x3

    .line 41
    move-object/from16 v0, p0

    .line 42
    .line 43
    move-wide v3, v2

    .line 44
    move-wide/from16 v1, p2

    .line 45
    .line 46
    invoke-interface/range {v0 .. v7}, La2/g;->a0(JJJI)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    move-object/from16 v1, p0

    .line 51
    .line 52
    move-wide/from16 v5, p2

    .line 53
    .line 54
    instance-of v7, v0, Ly1/d0;

    .line 55
    .line 56
    sget-object v9, La2/j;->a:La2/j;

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    check-cast v0, Ly1/d0;

    .line 61
    .line 62
    iget-object v7, v0, Ly1/d0;->f:Ly1/h;

    .line 63
    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    invoke-interface {v1, v7, v5, v6, v9}, La2/g;->W(Ly1/e0;JLa2/h;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    iget-object v0, v0, Ly1/d0;->e:Lx1/d;

    .line 71
    .line 72
    iget-wide v7, v0, Lx1/d;->h:J

    .line 73
    .line 74
    shr-long/2addr v7, v4

    .line 75
    long-to-int v8, v7

    .line 76
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    iget v8, v0, Lx1/d;->a:F

    .line 81
    .line 82
    iget v10, v0, Lx1/d;->b:F

    .line 83
    .line 84
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    int-to-long v11, v8

    .line 89
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    int-to-long v13, v8

    .line 94
    shl-long v10, v11, v4

    .line 95
    .line 96
    and-long/2addr v13, v2

    .line 97
    or-long/2addr v10, v13

    .line 98
    invoke-virtual {v0}, Lx1/d;->b()F

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-virtual {v0}, Lx1/d;->a()F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    int-to-long v12, v8

    .line 111
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    int-to-long v14, v0

    .line 116
    shl-long/2addr v12, v4

    .line 117
    and-long/2addr v14, v2

    .line 118
    or-long/2addr v12, v14

    .line 119
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    int-to-long v14, v0

    .line 124
    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    int-to-long v7, v0

    .line 129
    shl-long/2addr v14, v4

    .line 130
    and-long/2addr v2, v7

    .line 131
    or-long v7, v14, v2

    .line 132
    .line 133
    move-object v0, v1

    .line 134
    move-wide v1, v5

    .line 135
    move-wide v3, v10

    .line 136
    move-wide v5, v12

    .line 137
    invoke-interface/range {v0 .. v9}, La2/g;->i0(JJJJLa2/h;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_2
    instance-of v2, v0, Ly1/b0;

    .line 142
    .line 143
    if-eqz v2, :cond_3

    .line 144
    .line 145
    check-cast v0, Ly1/b0;

    .line 146
    .line 147
    iget-object v0, v0, Ly1/b0;->e:Ly1/e0;

    .line 148
    .line 149
    invoke-interface {v1, v0, v5, v6, v9}, La2/g;->W(Ly1/e0;JLa2/h;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_3
    new-instance v0, Lac/p;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 156
    .line 157
    .line 158
    throw v0
.end method

.method public static n(Landroid/graphics/Canvas;Z)V
    .locals 12

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Ly1/a;->e(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Ly1/a;->h(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-boolean v1, Ly1/h0;->d:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_5

    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    const-string v3, "insertInorderBarrier"

    .line 25
    .line 26
    const-string v4, "insertReorderBarrier"

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    const-class v6, Landroid/graphics/Canvas;

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    :try_start_0
    const-class v0, Ljava/lang/Class;

    .line 34
    .line 35
    const-string v1, "getDeclaredMethod"

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    new-array v8, v7, [Ljava/lang/Class;

    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const/4 v9, 0x2

    .line 45
    new-array v10, v9, [Ljava/lang/Class;

    .line 46
    .line 47
    const-class v11, Ljava/lang/String;

    .line 48
    .line 49
    aput-object v11, v10, v7

    .line 50
    .line 51
    aput-object v8, v10, v5

    .line 52
    .line 53
    invoke-virtual {v0, v1, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-array v1, v7, [Ljava/lang/Class;

    .line 58
    .line 59
    new-array v8, v9, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v4, v8, v7

    .line 62
    .line 63
    aput-object v1, v8, v5

    .line 64
    .line 65
    invoke-virtual {v0, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/reflect/Method;

    .line 70
    .line 71
    sput-object v1, Ly1/h0;->b:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    new-array v1, v7, [Ljava/lang/Class;

    .line 74
    .line 75
    new-array v4, v9, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v3, v4, v7

    .line 78
    .line 79
    aput-object v1, v4, v5

    .line 80
    .line 81
    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/reflect/Method;

    .line 86
    .line 87
    sput-object v0, Ly1/h0;->c:Ljava/lang/reflect/Method;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v6, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Ly1/h0;->b:Ljava/lang/reflect/Method;

    .line 95
    .line 96
    invoke-virtual {v6, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Ly1/h0;->c:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    :goto_0
    sget-object v0, Ly1/h0;->b:Ljava/lang/reflect/Method;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 107
    .line 108
    .line 109
    :cond_3
    sget-object v0, Ly1/h0;->c:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    :catch_0
    :cond_4
    sput-boolean v5, Ly1/h0;->d:Z

    .line 117
    .line 118
    :cond_5
    if-eqz p1, :cond_6

    .line 119
    .line 120
    :try_start_1
    sget-object v0, Ly1/h0;->b:Ljava/lang/reflect/Method;

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_6
    if-nez p1, :cond_7

    .line 128
    .line 129
    sget-object p1, Ly1/h0;->c:Ljava/lang/reflect/Method;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    :catch_1
    :cond_7
    return-void
.end method

.method public static final p([F)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    aget v0, p0, v2

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    cmpg-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    aget v3, p0, v0

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    cmpg-float v3, v3, v4

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    aget v3, p0, v3

    .line 26
    .line 27
    cmpg-float v3, v3, v4

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    aget v3, p0, v3

    .line 33
    .line 34
    cmpg-float v3, v3, v4

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    aget v3, p0, v3

    .line 40
    .line 41
    cmpg-float v3, v3, v4

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const/4 v3, 0x5

    .line 46
    aget v3, p0, v3

    .line 47
    .line 48
    cmpg-float v3, v3, v1

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    const/4 v3, 0x6

    .line 53
    aget v3, p0, v3

    .line 54
    .line 55
    cmpg-float v3, v3, v4

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    const/4 v3, 0x7

    .line 60
    aget v3, p0, v3

    .line 61
    .line 62
    cmpg-float v3, v3, v4

    .line 63
    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    const/16 v3, 0x8

    .line 67
    .line 68
    aget v3, p0, v3

    .line 69
    .line 70
    cmpg-float v3, v3, v4

    .line 71
    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    const/16 v3, 0x9

    .line 75
    .line 76
    aget v3, p0, v3

    .line 77
    .line 78
    cmpg-float v3, v3, v4

    .line 79
    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    const/16 v3, 0xa

    .line 83
    .line 84
    aget v3, p0, v3

    .line 85
    .line 86
    cmpg-float v3, v3, v1

    .line 87
    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    const/16 v3, 0xb

    .line 91
    .line 92
    aget v3, p0, v3

    .line 93
    .line 94
    cmpg-float v3, v3, v4

    .line 95
    .line 96
    if-nez v3, :cond_1

    .line 97
    .line 98
    const/16 v3, 0xc

    .line 99
    .line 100
    aget v3, p0, v3

    .line 101
    .line 102
    cmpg-float v3, v3, v4

    .line 103
    .line 104
    if-nez v3, :cond_1

    .line 105
    .line 106
    const/16 v3, 0xd

    .line 107
    .line 108
    aget v3, p0, v3

    .line 109
    .line 110
    cmpg-float v3, v3, v4

    .line 111
    .line 112
    if-nez v3, :cond_1

    .line 113
    .line 114
    const/16 v3, 0xe

    .line 115
    .line 116
    aget v3, p0, v3

    .line 117
    .line 118
    cmpg-float v3, v3, v4

    .line 119
    .line 120
    if-nez v3, :cond_1

    .line 121
    .line 122
    const/16 v3, 0xf

    .line 123
    .line 124
    aget p0, p0, v3

    .line 125
    .line 126
    cmpg-float p0, p0, v1

    .line 127
    .line 128
    if-nez p0, :cond_1

    .line 129
    .line 130
    return v0

    .line 131
    :cond_1
    return v2
.end method

.method public static final q(FJJ)J
    .locals 9

    .line 1
    sget-object v0, Lz1/d;->x:Lz1/l;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Ly1/q;->a(JLz1/c;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-static {p3, p4, v0}, Ly1/q;->a(JLz1/c;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {p1, p2}, Ly1/q;->d(J)F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p1, p2}, Ly1/q;->h(J)F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-static {p1, p2}, Ly1/q;->g(J)F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-static {p1, p2}, Ly1/q;->e(J)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v1, v2}, Ly1/q;->d(J)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-static {v1, v2}, Ly1/q;->h(J)F

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-static {v1, v2}, Ly1/q;->g(J)F

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-static {v1, v2}, Ly1/q;->e(J)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    cmpg-float v8, p0, v2

    .line 45
    .line 46
    if-gez v8, :cond_0

    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    .line 51
    cmpl-float v8, p0, v2

    .line 52
    .line 53
    if-lez v8, :cond_1

    .line 54
    .line 55
    const/high16 p0, 0x3f800000    # 1.0f

    .line 56
    .line 57
    :cond_1
    invoke-static {v4, v6, p0}, Lm9/e0;->p0(FFF)F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v5, v7, p0}, Lm9/e0;->p0(FFF)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {p1, v1, p0}, Lm9/e0;->p0(FFF)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {v3, p2, p0}, Lm9/e0;->p0(FFF)F

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-static {v2, v4, p1, p0, v0}, Ly1/h0;->i(FFFFLz1/c;)J

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    invoke-static {p3, p4}, Ly1/q;->f(J)Lz1/c;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p0, p1, p2}, Ly1/q;->a(JLz1/c;)J

    .line 82
    .line 83
    .line 84
    move-result-wide p0

    .line 85
    return-wide p0
.end method

.method public static final r(J)F
    .locals 7

    .line 1
    invoke-static {p0, p1}, Ly1/q;->f(J)Lz1/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, v0, Lz1/c;->b:J

    .line 6
    .line 7
    sget-wide v3, Lz1/b;->a:J

    .line 8
    .line 9
    invoke-static {v1, v2, v3, v4}, Lz1/b;->a(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v2, v0, Lz1/c;->b:J

    .line 23
    .line 24
    invoke-static {v2, v3}, Lz1/b;->b(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Ly1/y;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    check-cast v0, Lz1/q;

    .line 39
    .line 40
    iget-object v0, v0, Lz1/q;->p:Lz1/m;

    .line 41
    .line 42
    invoke-static {p0, p1}, Ly1/q;->h(J)F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    float-to-double v1, v1

    .line 47
    invoke-virtual {v0, v1, v2}, Lz1/m;->b(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-static {p0, p1}, Ly1/q;->g(J)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    float-to-double v3, v3

    .line 56
    invoke-virtual {v0, v3, v4}, Lz1/m;->b(D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {p0, p1}, Ly1/q;->e(J)F

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    float-to-double p0, p0

    .line 65
    invoke-virtual {v0, p0, p1}, Lz1/m;->b(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    mul-double v1, v1, v5

    .line 75
    .line 76
    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    mul-double v3, v3, v5

    .line 82
    .line 83
    add-double/2addr v3, v1

    .line 84
    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    mul-double p0, p0, v0

    .line 90
    .line 91
    add-double/2addr p0, v3

    .line 92
    double-to-float p0, p0

    .line 93
    const/4 p1, 0x0

    .line 94
    cmpg-float v0, p0, p1

    .line 95
    .line 96
    if-gez v0, :cond_1

    .line 97
    .line 98
    const/4 p0, 0x0

    .line 99
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 100
    .line 101
    cmpl-float v0, p0, p1

    .line 102
    .line 103
    if-lez v0, :cond_2

    .line 104
    .line 105
    return p1

    .line 106
    :cond_2
    return p0
.end method

.method public static final s(ILjava/util/List;)[I
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    new-array v0, p0, [I

    .line 13
    .line 14
    :goto_0
    if-ge v2, p0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ly1/q;

    .line 21
    .line 22
    iget-wide v3, v1, Ly1/q;->a:J

    .line 23
    .line 24
    invoke-static {v3, v4}, Ly1/h0;->C(J)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    aput v1, v0, v2

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0

    .line 34
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, p0

    .line 39
    new-array p0, v0, [I

    .line 40
    .line 41
    invoke-static {p1}, Lp9/x1;->u(Ljava/util/List;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x0

    .line 50
    :goto_1
    if-ge v2, v1, :cond_5

    .line 51
    .line 52
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ly1/q;

    .line 57
    .line 58
    iget-wide v4, v4, Ly1/q;->a:J

    .line 59
    .line 60
    invoke-static {v4, v5}, Ly1/q;->d(J)F

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v7, 0x0

    .line 65
    cmpg-float v6, v6, v7

    .line 66
    .line 67
    if-nez v6, :cond_4

    .line 68
    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    add-int/lit8 v4, v3, 0x1

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Ly1/q;

    .line 79
    .line 80
    iget-wide v5, v5, Ly1/q;->a:J

    .line 81
    .line 82
    invoke-static {v7, v5, v6}, Ly1/q;->b(FJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    invoke-static {v5, v6}, Ly1/h0;->C(J)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    aput v5, p0, v3

    .line 91
    .line 92
    :goto_2
    move v3, v4

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    if-ne v2, v0, :cond_3

    .line 95
    .line 96
    add-int/lit8 v4, v3, 0x1

    .line 97
    .line 98
    add-int/lit8 v5, v2, -0x1

    .line 99
    .line 100
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Ly1/q;

    .line 105
    .line 106
    iget-wide v5, v5, Ly1/q;->a:J

    .line 107
    .line 108
    invoke-static {v7, v5, v6}, Ly1/q;->b(FJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    invoke-static {v5, v6}, Ly1/h0;->C(J)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    aput v5, p0, v3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    add-int/lit8 v4, v2, -0x1

    .line 120
    .line 121
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Ly1/q;

    .line 126
    .line 127
    iget-wide v4, v4, Ly1/q;->a:J

    .line 128
    .line 129
    add-int/lit8 v6, v3, 0x1

    .line 130
    .line 131
    invoke-static {v7, v4, v5}, Ly1/q;->b(FJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    invoke-static {v4, v5}, Ly1/h0;->C(J)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    aput v4, p0, v3

    .line 140
    .line 141
    add-int/lit8 v4, v2, 0x1

    .line 142
    .line 143
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Ly1/q;

    .line 148
    .line 149
    iget-wide v4, v4, Ly1/q;->a:J

    .line 150
    .line 151
    add-int/lit8 v3, v3, 0x2

    .line 152
    .line 153
    invoke-static {v7, v4, v5}, Ly1/q;->b(FJ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v4

    .line 157
    invoke-static {v4, v5}, Ly1/h0;->C(J)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    aput v4, p0, v6

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    add-int/lit8 v6, v3, 0x1

    .line 165
    .line 166
    invoke-static {v4, v5}, Ly1/h0;->C(J)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    aput v4, p0, v3

    .line 171
    .line 172
    move v3, v6

    .line 173
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_5
    return-object p0
.end method

.method public static final t(Ljava/util/ArrayList;Ljava/util/List;I)[F
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_2

    .line 3
    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-array p1, p1, [F

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    add-int/lit8 v1, v0, 0x1

    .line 33
    .line 34
    aput p2, p1, v0

    .line 35
    .line 36
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object p1

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v1, p2

    .line 46
    new-array p2, v1, [F

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/4 v2, 0x0

    .line 63
    :goto_1
    aput v2, p2, v0

    .line 64
    .line 65
    invoke-static {p1}, Lp9/x1;->u(Ljava/util/List;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v2, 0x1

    .line 70
    const/4 v3, 0x1

    .line 71
    :goto_2
    if-ge v2, v0, :cond_6

    .line 72
    .line 73
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ly1/q;

    .line 78
    .line 79
    iget-wide v4, v4, Ly1/q;->a:J

    .line 80
    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    int-to-float v6, v2

    .line 95
    invoke-static {p1}, Lp9/x1;->u(Ljava/util/List;)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    int-to-float v7, v7

    .line 100
    div-float/2addr v6, v7

    .line 101
    :goto_3
    add-int/lit8 v7, v3, 0x1

    .line 102
    .line 103
    aput v6, p2, v3

    .line 104
    .line 105
    invoke-static {v4, v5}, Ly1/q;->d(J)F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    cmpg-float v4, v4, v1

    .line 110
    .line 111
    if-nez v4, :cond_5

    .line 112
    .line 113
    add-int/lit8 v3, v3, 0x2

    .line 114
    .line 115
    aput v6, p2, v7

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    move v3, v7

    .line 119
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    if-eqz p0, :cond_7

    .line 123
    .line 124
    invoke-static {p1}, Lp9/x1;->u(Ljava/util/List;)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    goto :goto_5

    .line 139
    :cond_7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 140
    .line 141
    :goto_5
    aput p0, p2, v3

    .line 142
    .line 143
    return-object p2
.end method

.method public static final u(Landroid/graphics/Matrix;[F)V
    .locals 21

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v3, p1, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget v5, p1, v4

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    aget v7, p1, v6

    .line 12
    .line 13
    const/4 v8, 0x4

    .line 14
    aget v9, p1, v8

    .line 15
    .line 16
    const/4 v10, 0x5

    .line 17
    aget v11, p1, v10

    .line 18
    .line 19
    const/4 v12, 0x6

    .line 20
    aget v13, p1, v12

    .line 21
    .line 22
    const/4 v14, 0x7

    .line 23
    aget v15, p1, v14

    .line 24
    .line 25
    const/16 v16, 0x8

    .line 26
    .line 27
    aget v17, p1, v16

    .line 28
    .line 29
    const/16 v18, 0xc

    .line 30
    .line 31
    aget v18, p1, v18

    .line 32
    .line 33
    const/16 v19, 0xd

    .line 34
    .line 35
    aget v19, p1, v19

    .line 36
    .line 37
    const/16 v20, 0xf

    .line 38
    .line 39
    aget v20, p1, v20

    .line 40
    .line 41
    aput v1, p1, v0

    .line 42
    .line 43
    aput v9, p1, v2

    .line 44
    .line 45
    aput v18, p1, v4

    .line 46
    .line 47
    aput v3, p1, v6

    .line 48
    .line 49
    aput v11, p1, v8

    .line 50
    .line 51
    aput v19, p1, v10

    .line 52
    .line 53
    aput v7, p1, v12

    .line 54
    .line 55
    aput v15, p1, v14

    .line 56
    .line 57
    aput v20, p1, v16

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 60
    .line 61
    .line 62
    aput v1, p1, v0

    .line 63
    .line 64
    aput v3, p1, v2

    .line 65
    .line 66
    aput v5, p1, v4

    .line 67
    .line 68
    aput v7, p1, v6

    .line 69
    .line 70
    aput v9, p1, v8

    .line 71
    .line 72
    aput v11, p1, v10

    .line 73
    .line 74
    aput v13, p1, v12

    .line 75
    .line 76
    aput v15, p1, v14

    .line 77
    .line 78
    aput v17, p1, v16

    .line 79
    .line 80
    return-void
.end method

.method public static final v(Landroid/graphics/Matrix;[F)V
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget v1, p1, v0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget v3, p1, v2

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    aget v5, p1, v4

    .line 12
    .line 13
    const/4 v6, 0x3

    .line 14
    aget v7, p1, v6

    .line 15
    .line 16
    const/4 v8, 0x4

    .line 17
    aget v9, p1, v8

    .line 18
    .line 19
    const/4 v10, 0x5

    .line 20
    aget v11, p1, v10

    .line 21
    .line 22
    const/4 v12, 0x6

    .line 23
    aget v13, p1, v12

    .line 24
    .line 25
    const/4 v14, 0x7

    .line 26
    aget v15, p1, v14

    .line 27
    .line 28
    const/16 v16, 0x8

    .line 29
    .line 30
    aget v17, p1, v16

    .line 31
    .line 32
    aput v1, p1, v0

    .line 33
    .line 34
    aput v7, p1, v2

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    aput v0, p1, v4

    .line 38
    .line 39
    aput v13, p1, v6

    .line 40
    .line 41
    aput v3, p1, v8

    .line 42
    .line 43
    aput v9, p1, v10

    .line 44
    .line 45
    aput v0, p1, v12

    .line 46
    .line 47
    aput v15, p1, v14

    .line 48
    .line 49
    aput v0, p1, v16

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    aput v0, p1, v1

    .line 54
    .line 55
    const/16 v1, 0xa

    .line 56
    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    .line 59
    aput v2, p1, v1

    .line 60
    .line 61
    const/16 v1, 0xb

    .line 62
    .line 63
    aput v0, p1, v1

    .line 64
    .line 65
    const/16 v1, 0xc

    .line 66
    .line 67
    aput v5, p1, v1

    .line 68
    .line 69
    const/16 v1, 0xd

    .line 70
    .line 71
    aput v11, p1, v1

    .line 72
    .line 73
    const/16 v1, 0xe

    .line 74
    .line 75
    aput v0, p1, v1

    .line 76
    .line 77
    const/16 v0, 0xf

    .line 78
    .line 79
    aput v17, p1, v0

    .line 80
    .line 81
    return-void
.end method

.method public static final w(Lx1/c;)J
    .locals 6

    .line 1
    iget v0, p0, Lx1/c;->c:F

    .line 2
    .line 3
    iget v1, p0, Lx1/c;->a:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    iget v1, p0, Lx1/c;->d:F

    .line 7
    .line 8
    iget p0, p0, Lx1/c;->b:F

    .line 9
    .line 10
    sub-float/2addr v1, p0

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    int-to-long v2, p0

    .line 16
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-long v0, p0

    .line 21
    const/16 p0, 0x20

    .line 22
    .line 23
    shl-long/2addr v2, p0

    .line 24
    const-wide v4, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v0, v4

    .line 30
    or-long/2addr v0, v2

    .line 31
    return-wide v0
.end method

.method public static final x(I)Landroid/graphics/BlendMode;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lx/p1;->b()Landroid/graphics/BlendMode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lx/p1;->s()Landroid/graphics/BlendMode;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    const/4 v0, 0x2

    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lx/p1;->l()Landroid/graphics/BlendMode;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_2
    const/4 v0, 0x3

    .line 25
    if-ne p0, v0, :cond_3

    .line 26
    .line 27
    invoke-static {}, Lx/p1;->k()Landroid/graphics/BlendMode;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_3
    const/4 v0, 0x4

    .line 33
    if-ne p0, v0, :cond_4

    .line 34
    .line 35
    invoke-static {}, Lx/p1;->m()Landroid/graphics/BlendMode;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_4
    const/4 v0, 0x5

    .line 41
    if-ne p0, v0, :cond_5

    .line 42
    .line 43
    invoke-static {}, Lx/p1;->n()Landroid/graphics/BlendMode;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_5
    const/4 v0, 0x6

    .line 49
    if-ne p0, v0, :cond_6

    .line 50
    .line 51
    invoke-static {}, Lx/p1;->o()Landroid/graphics/BlendMode;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_6
    const/4 v0, 0x7

    .line 57
    if-ne p0, v0, :cond_7

    .line 58
    .line 59
    invoke-static {}, Lx/p1;->p()Landroid/graphics/BlendMode;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_7
    const/16 v0, 0x8

    .line 65
    .line 66
    if-ne p0, v0, :cond_8

    .line 67
    .line 68
    invoke-static {}, Lx/p1;->q()Landroid/graphics/BlendMode;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_8
    const/16 v0, 0x9

    .line 74
    .line 75
    if-ne p0, v0, :cond_9

    .line 76
    .line 77
    invoke-static {}, Lx/p1;->t()Landroid/graphics/BlendMode;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_9
    const/16 v0, 0xa

    .line 83
    .line 84
    if-ne p0, v0, :cond_a

    .line 85
    .line 86
    invoke-static {}, Lx/p1;->i()Landroid/graphics/BlendMode;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_a
    const/16 v0, 0xb

    .line 92
    .line 93
    if-ne p0, v0, :cond_b

    .line 94
    .line 95
    invoke-static {}, Lx/p1;->u()Landroid/graphics/BlendMode;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_b
    const/16 v0, 0xc

    .line 101
    .line 102
    if-ne p0, v0, :cond_c

    .line 103
    .line 104
    invoke-static {}, Lx/p1;->v()Landroid/graphics/BlendMode;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_c
    const/16 v0, 0xd

    .line 110
    .line 111
    if-ne p0, v0, :cond_d

    .line 112
    .line 113
    invoke-static {}, Ly1/a;->b()Landroid/graphics/BlendMode;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_d
    const/16 v0, 0xe

    .line 119
    .line 120
    if-ne p0, v0, :cond_e

    .line 121
    .line 122
    invoke-static {}, Ly1/a;->g()Landroid/graphics/BlendMode;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :cond_e
    const/16 v0, 0xf

    .line 128
    .line 129
    if-ne p0, v0, :cond_f

    .line 130
    .line 131
    invoke-static {}, Ly1/a;->i()Landroid/graphics/BlendMode;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_f
    const/16 v0, 0x10

    .line 137
    .line 138
    if-ne p0, v0, :cond_10

    .line 139
    .line 140
    invoke-static {}, Ly1/a;->j()Landroid/graphics/BlendMode;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_10
    const/16 v0, 0x11

    .line 146
    .line 147
    if-ne p0, v0, :cond_11

    .line 148
    .line 149
    invoke-static {}, Ly1/a;->k()Landroid/graphics/BlendMode;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_11
    const/16 v0, 0x12

    .line 155
    .line 156
    if-ne p0, v0, :cond_12

    .line 157
    .line 158
    invoke-static {}, Ly1/a;->l()Landroid/graphics/BlendMode;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :cond_12
    const/16 v0, 0x13

    .line 164
    .line 165
    if-ne p0, v0, :cond_13

    .line 166
    .line 167
    invoke-static {}, Lx/p1;->g()Landroid/graphics/BlendMode;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_13
    const/16 v0, 0x14

    .line 173
    .line 174
    if-ne p0, v0, :cond_14

    .line 175
    .line 176
    invoke-static {}, Lx/p1;->x()Landroid/graphics/BlendMode;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0

    .line 181
    :cond_14
    const/16 v0, 0x15

    .line 182
    .line 183
    if-ne p0, v0, :cond_15

    .line 184
    .line 185
    invoke-static {}, Lx/p1;->y()Landroid/graphics/BlendMode;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :cond_15
    const/16 v0, 0x16

    .line 191
    .line 192
    if-ne p0, v0, :cond_16

    .line 193
    .line 194
    invoke-static {}, Lx/p1;->z()Landroid/graphics/BlendMode;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :cond_16
    const/16 v0, 0x17

    .line 200
    .line 201
    if-ne p0, v0, :cond_17

    .line 202
    .line 203
    invoke-static {}, Lx/p1;->A()Landroid/graphics/BlendMode;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :cond_17
    const/16 v0, 0x18

    .line 209
    .line 210
    if-ne p0, v0, :cond_18

    .line 211
    .line 212
    invoke-static {}, Lx/p1;->B()Landroid/graphics/BlendMode;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :cond_18
    const/16 v0, 0x19

    .line 218
    .line 219
    if-ne p0, v0, :cond_19

    .line 220
    .line 221
    invoke-static {}, Lx/p1;->C()Landroid/graphics/BlendMode;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :cond_19
    const/16 v0, 0x1a

    .line 227
    .line 228
    if-ne p0, v0, :cond_1a

    .line 229
    .line 230
    invoke-static {}, Lx/p1;->D()Landroid/graphics/BlendMode;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :cond_1a
    const/16 v0, 0x1b

    .line 236
    .line 237
    if-ne p0, v0, :cond_1b

    .line 238
    .line 239
    invoke-static {}, Lx/p1;->h()Landroid/graphics/BlendMode;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    return-object p0

    .line 244
    :cond_1b
    const/16 v0, 0x1c

    .line 245
    .line 246
    if-ne p0, v0, :cond_1c

    .line 247
    .line 248
    invoke-static {}, Lx/p1;->j()Landroid/graphics/BlendMode;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0

    .line 253
    :cond_1c
    invoke-static {}, Lx/p1;->k()Landroid/graphics/BlendMode;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0
.end method

.method public static final y(Ln3/k;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Ln3/k;->a:I

    .line 4
    .line 5
    iget v2, p0, Ln3/k;->b:I

    .line 6
    .line 7
    iget v3, p0, Ln3/k;->c:I

    .line 8
    .line 9
    iget p0, p0, Ln3/k;->d:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final z(Lx1/c;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Lx1/c;->a:F

    .line 4
    .line 5
    float-to-int v1, v1

    .line 6
    iget v2, p0, Lx1/c;->b:F

    .line 7
    .line 8
    float-to-int v2, v2

    .line 9
    iget v3, p0, Lx1/c;->c:F

    .line 10
    .line 11
    float-to-int v3, v3

    .line 12
    iget p0, p0, Lx1/c;->d:F

    .line 13
    .line 14
    float-to-int p0, p0

    .line 15
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public abstract o()Lx1/c;
.end method
