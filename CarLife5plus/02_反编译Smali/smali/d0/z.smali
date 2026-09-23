.class public final synthetic Ld0/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p4, p0, Ld0/z;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ld0/z;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Ld0/z;->c:I

    .line 6
    .line 7
    iput p3, p0, Ld0/z;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ld0/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld0/z;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ly1/h;

    .line 9
    .line 10
    check-cast p1, Lb3/r;

    .line 11
    .line 12
    iget-object v1, p1, Lb3/r;->a:Lb3/a;

    .line 13
    .line 14
    iget v2, p0, Ld0/z;->c:I

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Lb3/r;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, p0, Ld0/z;->d:I

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Lb3/r;->d(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, v1, Lb3/a;->e:Ljava/lang/CharSequence;

    .line 27
    .line 28
    if-ltz v2, :cond_0

    .line 29
    .line 30
    if-gt v2, v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-gt v3, v5, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v6, "start("

    .line 42
    .line 43
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v6, ") or end("

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v6, ") is out of range [0.."

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, "], or start > end!"

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lh3/a;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    new-instance v4, Landroid/graphics/Path;

    .line 82
    .line 83
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v1, v1, Lb3/a;->d:Lc3/n;

    .line 87
    .line 88
    iget-object v5, v1, Lc3/n;->f:Landroid/text/Layout;

    .line 89
    .line 90
    invoke-virtual {v5, v2, v3, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 91
    .line 92
    .line 93
    iget v1, v1, Lc3/n;->h:I

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_1

    .line 103
    .line 104
    int-to-float v1, v1

    .line 105
    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 106
    .line 107
    .line 108
    :cond_1
    iget p1, p1, Lb3/r;->f:F

    .line 109
    .line 110
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    int-to-long v1, v1

    .line 115
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    int-to-long v5, p1

    .line 120
    const/16 p1, 0x20

    .line 121
    .line 122
    shl-long/2addr v1, p1

    .line 123
    const-wide v7, 0xffffffffL

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    and-long/2addr v5, v7

    .line 129
    or-long/2addr v1, v5

    .line 130
    new-instance v3, Landroid/graphics/Matrix;

    .line 131
    .line 132
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    .line 134
    .line 135
    shr-long v5, v1, p1

    .line 136
    .line 137
    long-to-int p1, v5

    .line 138
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    and-long/2addr v1, v7

    .line 143
    long-to-int v2, v1

    .line 144
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {v3, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, v0, Ly1/h;->a:Landroid/graphics/Path;

    .line 155
    .line 156
    const-wide/16 v0, 0x0

    .line 157
    .line 158
    long-to-int v1, v0

    .line 159
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {p1, v4, v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    .line 168
    .line 169
    .line 170
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 171
    .line 172
    return-object p1

    .line 173
    :pswitch_0
    iget-object v0, p0, Ld0/z;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Lo2/v0;

    .line 176
    .line 177
    iget v1, p0, Ld0/z;->d:I

    .line 178
    .line 179
    check-cast p1, Lo2/u0;

    .line 180
    .line 181
    iget v2, p0, Ld0/z;->c:I

    .line 182
    .line 183
    invoke-static {p1, v0, v2, v1}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :pswitch_1
    iget-object v0, p0, Ld0/z;->b:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Lo2/v0;

    .line 190
    .line 191
    iget v1, p0, Ld0/z;->d:I

    .line 192
    .line 193
    check-cast p1, Lo2/u0;

    .line 194
    .line 195
    iget v2, p0, Ld0/z;->c:I

    .line 196
    .line 197
    invoke-static {p1, v0, v2, v1}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
