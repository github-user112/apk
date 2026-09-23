.class public final Lna/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lhb/a;
.implements Lhb/c;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f07004a

    const/high16 v1, 0x7f070000

    const v2, 0x7f07004c

    .line 9
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lna/d;->a:Ljava/lang/Object;

    const/4 v0, 0x7

    .line 10
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lna/d;->b:Ljava/lang/Object;

    .line 11
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lna/d;->c:Ljava/lang/Object;

    const v0, 0x7f07000f

    const v1, 0x7f070030

    const v2, 0x7f070031

    .line 12
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lna/d;->d:Ljava/lang/Object;

    const v0, 0x7f070043

    const v1, 0x7f07004d

    .line 13
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lna/d;->e:Ljava/lang/Object;

    const v0, 0x7f070004

    const v1, 0x7f07000a

    const v2, 0x7f070003

    const v3, 0x7f070009

    .line 14
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lna/d;->f:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x7f070018
        0x7f07003b
        0x7f07001f
        0x7f07001a
        0x7f07001b
        0x7f07001e
        0x7f07001d
    .end array-data

    :array_1
    .array-data 4
        0x7f070049
        0x7f07004b
        0x7f070011
        0x7f070045
        0x7f070046
        0x7f070047
        0x7f070048
    .end array-data
.end method

.method public constructor <init>(Ly9/a0;Lba/a;Lkb/l;Laa/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lna/d;->a:Ljava/lang/Object;

    .line 3
    new-instance p4, Lba/j;

    const/16 v0, 0x15

    invoke-direct {p4, v0, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p4}, Lkb/l;->b(Lf9/k;)Lkb/f;

    move-result-object p3

    iput-object p3, p0, Lna/d;->b:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lna/d;->c:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lna/d;->d:Ljava/lang/Object;

    .line 6
    new-instance p3, Lu0/j;

    invoke-direct {p3, p1, p2}, Lu0/j;-><init>(Lv9/y;Lba/a;)V

    iput-object p3, p0, Lna/d;->e:Ljava/lang/Object;

    .line 7
    sget-object p1, Lra/e;->g:Lra/e;

    iput-object p1, p0, Lna/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lna/d;Lua/e;Ljava/lang/Object;)Lza/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lna/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ly9/a0;

    .line 4
    .line 5
    invoke-static {p2, p0}, Lza/h;->b(Ljava/lang/Object;Ly9/a0;)Lza/g;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "Unsupported annotation argument: "

    .line 14
    .line 15
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "message"

    .line 26
    .line 27
    invoke-static {p0, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lza/j;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lza/j;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    return-object p0
.end method

.method public static b([II)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    if-ne v3, p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    const v0, 0x7f030055

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lp/r2;->c(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f030053

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Lp/r2;->b(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0, p1}, Lx3/a;->b(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, p1}, Lx3/a;->b(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    new-array v2, v2, [[I

    .line 25
    .line 26
    sget-object v3, Lp/r2;->b:[I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    sget-object v3, Lp/r2;->d:[I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aput-object v3, v2, v4

    .line 35
    .line 36
    sget-object v3, Lp/r2;->c:[I

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    aput-object v3, v2, v4

    .line 40
    .line 41
    sget-object v3, Lp/r2;->f:[I

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    aput-object v3, v2, v4

    .line 45
    .line 46
    filled-new-array {p0, v1, v0, p1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public static synthetic e(Lna/d;Lhb/w;Lna/q;Ljava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    const/4 v5, 0x1

    .line 10
    :goto_0
    and-int/lit8 v0, p5, 0x10

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    :cond_1
    move-object v7, p3

    .line 16
    and-int/lit8 p3, p5, 0x20

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    move v8, p4

    .line 23
    :goto_1
    const/4 v6, 0x0

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    invoke-virtual/range {v2 .. v8}, Lna/d;->d(Lhb/w;Lna/q;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static g(Lva/a;Lra/f;Lra/g;IZ)Lna/q;
    .locals 6

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "kind"

    .line 12
    .line 13
    invoke-static {p3, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    instance-of v0, p0, Lpa/n;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object p3, Lta/g;->a:Lva/g;

    .line 22
    .line 23
    check-cast p0, Lpa/n;

    .line 24
    .line 25
    invoke-static {p0, p1, p2}, Lta/g;->a(Lpa/n;Lra/f;Lra/g;)Lta/e;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    invoke-static {p0}, Li2/c;->o(Lp9/p1;)Lna/q;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    instance-of v0, p0, Lpa/a0;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object p3, Lta/g;->a:Lva/g;

    .line 43
    .line 44
    check-cast p0, Lpa/a0;

    .line 45
    .line 46
    invoke-static {p0, p1, p2}, Lta/g;->c(Lpa/a0;Lra/f;Lra/g;)Lta/e;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_2
    invoke-static {p0}, Li2/c;->o(Lp9/p1;)Lna/q;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_3
    instance-of v0, p0, Lpa/i0;

    .line 60
    .line 61
    if-eqz v0, :cond_a

    .line 62
    .line 63
    move-object v0, p0

    .line 64
    check-cast v0, Lva/k;

    .line 65
    .line 66
    sget-object v2, Lsa/k;->d:Lva/m;

    .line 67
    .line 68
    const-string v3, "propertySignature"

    .line 69
    .line 70
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lsa/e;

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-static {p3}, Le1/d;->b(I)I

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    const/4 v2, 0x1

    .line 87
    if-eq p3, v2, :cond_9

    .line 88
    .line 89
    const/4 p0, 0x2

    .line 90
    if-eq p3, p0, :cond_7

    .line 91
    .line 92
    const/4 p0, 0x3

    .line 93
    if-eq p3, p0, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    iget p0, v0, Lsa/e;->b:I

    .line 97
    .line 98
    const/16 p2, 0x8

    .line 99
    .line 100
    and-int/2addr p0, p2

    .line 101
    if-ne p0, p2, :cond_6

    .line 102
    .line 103
    iget-object p0, v0, Lsa/e;->f:Lsa/c;

    .line 104
    .line 105
    const-string p2, "getSetter(...)"

    .line 106
    .line 107
    invoke-static {p0, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget p2, p0, Lsa/c;->c:I

    .line 111
    .line 112
    invoke-interface {p1, p2}, Lra/f;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iget p0, p0, Lsa/c;->d:I

    .line 117
    .line 118
    invoke-interface {p1, p0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    new-instance p1, Lna/q;

    .line 123
    .line 124
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {p1, p0}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_6
    return-object v1

    .line 133
    :cond_7
    iget p0, v0, Lsa/e;->b:I

    .line 134
    .line 135
    const/4 p2, 0x4

    .line 136
    and-int/2addr p0, p2

    .line 137
    if-ne p0, p2, :cond_8

    .line 138
    .line 139
    iget-object p0, v0, Lsa/e;->e:Lsa/c;

    .line 140
    .line 141
    const-string p2, "getGetter(...)"

    .line 142
    .line 143
    invoke-static {p0, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget p2, p0, Lsa/c;->c:I

    .line 147
    .line 148
    invoke-interface {p1, p2}, Lra/f;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iget p0, p0, Lsa/c;->d:I

    .line 153
    .line 154
    invoke-interface {p1, p0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance p1, Lna/q;

    .line 159
    .line 160
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-direct {p1, p0}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object p1

    .line 168
    :cond_8
    return-object v1

    .line 169
    :cond_9
    move-object v0, p0

    .line 170
    check-cast v0, Lpa/i0;

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    const/4 v4, 0x1

    .line 174
    move-object v1, p1

    .line 175
    move-object v2, p2

    .line 176
    move v5, p4

    .line 177
    invoke-static/range {v0 .. v5}, La/a;->v(Lpa/i0;Lra/f;Lra/g;ZZZ)Lna/q;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :cond_a
    :goto_0
    return-object v1
.end method

.method public static h(Lp/m2;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const v0, 0x7f07003f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lp/m2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f070040

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Lp/m2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v2, Landroid/graphics/Canvas;

    .line 59
    .line 60
    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    .line 76
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v2

    .line 80
    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 81
    .line 82
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    .line 85
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ne v2, p2, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-ne v2, p2, :cond_1

    .line 100
    .line 101
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    .line 106
    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Landroid/graphics/Canvas;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    .line 120
    .line 121
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    .line 123
    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 127
    .line 128
    const/4 v2, 0x3

    .line 129
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    aput-object v0, v2, v1

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    aput-object p0, v2, v0

    .line 135
    .line 136
    const/4 p0, 0x2

    .line 137
    aput-object p1, v2, p0

    .line 138
    .line 139
    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x1020000

    .line 143
    .line 144
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 145
    .line 146
    .line 147
    const p1, 0x102000f

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    .line 152
    .line 153
    const p1, 0x102000d

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 157
    .line 158
    .line 159
    return-object p2
.end method

.method public static o(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget-object p2, Lp/t;->b:Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lp/t;->b:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    const-class v0, Lp/t;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {p1, p2}, Lp/m2;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method


# virtual methods
.method public E0(Lpa/s0;Lra/f;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsa/k;->f:Lva/m;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "getExtension(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    invoke-static {p1, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lpa/h;

    .line 50
    .line 51
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lna/d;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lu0/j;

    .line 57
    .line 58
    invoke-virtual {v2, v1, p2}, Lu0/j;->j(Lpa/h;Lra/f;)Lw9/c;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-object v0
.end method

.method public G(Lhb/w;Lva/a;I)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "kind"

    .line 7
    .line 8
    invoke-static {p3, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lhb/w;->a:Lra/f;

    .line 12
    .line 13
    iget-object v1, p1, Lhb/w;->b:Lra/g;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p2, v0, v1, p3, v2}, Lna/d;->g(Lva/a;Lra/f;Lra/g;IZ)Lna/q;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance v2, Lna/q;

    .line 23
    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p2, Lna/q;->a:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "@0"

    .line 32
    .line 33
    invoke-static {p3, p2, v0}, Lp9/v;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {v2, p2}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/16 v5, 0x3c

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v0, p0

    .line 45
    move-object v1, p1

    .line 46
    invoke-static/range {v0 .. v5}, Lna/d;->e(Lna/d;Lhb/w;Lna/q;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_0
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 52
    .line 53
    return-object p1
.end method

.method public H(Lhb/w;Lpa/i0;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lna/b;->c:Lna/b;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lna/d;->n(Lhb/w;Lpa/i0;Lna/b;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public M(Lhb/w;Lpa/i0;Llb/w;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    sget-object v6, Lna/a;->c:Lna/a;

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v5, p3

    .line 13
    invoke-virtual/range {v1 .. v6}, Lna/d;->m(Lhb/w;Lpa/i0;ILlb/w;Lf9/n;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public d(Lhb/w;Lna/q;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 8

    .line 1
    iget-object v0, p0, Lna/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v6, v0

    .line 4
    check-cast v6, Laa/b;

    .line 5
    .line 6
    iget-object v0, p0, Lna/d;->f:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v7, v0

    .line 9
    check-cast v7, Lra/e;

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    move v2, p3

    .line 13
    move v3, p4

    .line 14
    move-object v4, p5

    .line 15
    move v5, p6

    .line 16
    invoke-static/range {v1 .. v7}, Lm9/e0;->m0(Lhb/w;ZZLjava/lang/Boolean;ZLaa/b;Lra/e;)Laa/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    instance-of p1, v1, Lhb/u;

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    move-object p1, v1

    .line 28
    check-cast p1, Lhb/u;

    .line 29
    .line 30
    iget-object p1, p1, Lhb/w;->c:Lv9/m0;

    .line 31
    .line 32
    instance-of p4, p1, Lna/p;

    .line 33
    .line 34
    if-eqz p4, :cond_0

    .line 35
    .line 36
    check-cast p1, Lna/p;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object p1, p3

    .line 40
    :goto_0
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p1, Lna/p;->a:Laa/c;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object p1, p3

    .line 46
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-object p3, p0, Lna/d;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p3, Lkb/f;

    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lna/c;

    .line 58
    .line 59
    iget-object p1, p1, Lna/c;->a:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/util/List;

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    :goto_2
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 70
    .line 71
    :cond_4
    return-object p1
.end method

.method public f(Lhb/w;Lpa/i0;Llb/w;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v4, 0x3

    .line 7
    sget-object v6, Lna/a;->b:Lna/a;

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v5, p3

    .line 13
    invoke-virtual/range {v1 .. v6}, Lna/d;->m(Lhb/w;Lpa/i0;ILlb/w;Lf9/n;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public f0(Lhb/w;Lva/a;IILpa/a1;)Ljava/util/List;
    .locals 9

    .line 1
    const-string p5, "callableProto"

    .line 2
    .line 3
    invoke-static {p2, p5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p5, "kind"

    .line 7
    .line 8
    invoke-static {p3, p5}, La2/f;->M(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p5, p1, Lhb/w;->a:Lra/f;

    .line 12
    .line 13
    iget-object v0, p1, Lhb/w;->b:Lra/g;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p2, p5, v0, p3, v1}, Lna/d;->g(Lva/a;Lra/f;Lra/g;IZ)Lna/q;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-eqz p3, :cond_7

    .line 21
    .line 22
    instance-of p5, p2, Lpa/a0;

    .line 23
    .line 24
    const/16 v0, 0x20

    .line 25
    .line 26
    const/16 v2, 0x40

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz p5, :cond_1

    .line 30
    .line 31
    check-cast p2, Lpa/a0;

    .line 32
    .line 33
    iget p2, p2, Lpa/a0;->c:I

    .line 34
    .line 35
    and-int/lit8 p5, p2, 0x20

    .line 36
    .line 37
    if-ne p5, v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    and-int/2addr p2, v2

    .line 41
    if-ne p2, v2, :cond_5

    .line 42
    .line 43
    :goto_0
    const/4 v1, 0x1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    instance-of p5, p2, Lpa/i0;

    .line 46
    .line 47
    if-eqz p5, :cond_3

    .line 48
    .line 49
    check-cast p2, Lpa/i0;

    .line 50
    .line 51
    iget p2, p2, Lpa/i0;->c:I

    .line 52
    .line 53
    and-int/lit8 p5, p2, 0x20

    .line 54
    .line 55
    if-ne p5, v0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    and-int/2addr p2, v2

    .line 59
    if-ne p2, v2, :cond_5

    .line 60
    .line 61
    :goto_1
    goto :goto_0

    .line 62
    :cond_3
    instance-of p5, p2, Lpa/n;

    .line 63
    .line 64
    if-eqz p5, :cond_6

    .line 65
    .line 66
    move-object p2, p1

    .line 67
    check-cast p2, Lhb/u;

    .line 68
    .line 69
    iget-object p5, p2, Lhb/u;->g:Lpa/j;

    .line 70
    .line 71
    sget-object v0, Lpa/j;->d:Lpa/j;

    .line 72
    .line 73
    if-ne p5, v0, :cond_4

    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    iget-boolean p2, p2, Lhb/u;->h:Z

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    :goto_2
    add-int/2addr p4, v1

    .line 83
    new-instance v5, Lna/q;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object p3, p3, Lna/q;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-direct {v5, p2}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    const/16 v8, 0x3c

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    move-object v3, p0

    .line 113
    move-object v4, p1

    .line 114
    invoke-static/range {v3 .. v8}, Lna/d;->e(Lna/d;Lhb/w;Lna/q;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 120
    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p4, "Unsupported message: "

    .line 124
    .line 125
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_7
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 144
    .line 145
    return-object p1
.end method

.method public i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    const v0, 0x7f070014

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const p2, 0x7f050015

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lm9/e0;->e0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const v0, 0x7f070042

    .line 15
    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    const p2, 0x7f050018

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lm9/e0;->e0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const v0, 0x7f070041

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-ne p2, v0, :cond_3

    .line 32
    .line 33
    const/4 p2, 0x3

    .line 34
    new-array v0, p2, [[I

    .line 35
    .line 36
    new-array p2, p2, [I

    .line 37
    .line 38
    const v2, 0x7f03005a

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v2}, Lp/r2;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x2

    .line 46
    const v5, 0x7f030054

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    sget-object v2, Lp/r2;->b:[I

    .line 59
    .line 60
    aput-object v2, v0, v1

    .line 61
    .line 62
    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aput v2, p2, v1

    .line 67
    .line 68
    sget-object v1, Lp/r2;->e:[I

    .line 69
    .line 70
    aput-object v1, v0, v6

    .line 71
    .line 72
    invoke-static {p1, v5}, Lp/r2;->c(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    aput p1, p2, v6

    .line 77
    .line 78
    sget-object p1, Lp/r2;->f:[I

    .line 79
    .line 80
    aput-object p1, v0, v4

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aput p1, p2, v4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v3, Lp/r2;->b:[I

    .line 90
    .line 91
    aput-object v3, v0, v1

    .line 92
    .line 93
    invoke-static {p1, v2}, Lp/r2;->b(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    aput v3, p2, v1

    .line 98
    .line 99
    sget-object v1, Lp/r2;->e:[I

    .line 100
    .line 101
    aput-object v1, v0, v6

    .line 102
    .line 103
    invoke-static {p1, v5}, Lp/r2;->c(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    aput v1, p2, v6

    .line 108
    .line 109
    sget-object v1, Lp/r2;->f:[I

    .line 110
    .line 111
    aput-object v1, v0, v4

    .line 112
    .line 113
    invoke-static {p1, v2}, Lp/r2;->c(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    aput p1, p2, v4

    .line 118
    .line 119
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_3
    const v0, 0x7f070008

    .line 126
    .line 127
    .line 128
    if-ne p2, v0, :cond_4

    .line 129
    .line 130
    const p2, 0x7f030053

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2}, Lp/r2;->c(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {p1, p2}, Lna/d;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_4
    const v0, 0x7f070002

    .line 143
    .line 144
    .line 145
    if-ne p2, v0, :cond_5

    .line 146
    .line 147
    invoke-static {p1, v1}, Lna/d;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_5
    const v0, 0x7f070007

    .line 153
    .line 154
    .line 155
    if-ne p2, v0, :cond_6

    .line 156
    .line 157
    const p2, 0x7f030051

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p2}, Lp/r2;->c(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {p1, p2}, Lna/d;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :cond_6
    const v0, 0x7f07003d

    .line 170
    .line 171
    .line 172
    if-eq p2, v0, :cond_c

    .line 173
    .line 174
    const v0, 0x7f07003e

    .line 175
    .line 176
    .line 177
    if-ne p2, v0, :cond_7

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    iget-object v0, p0, Lna/d;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, [I

    .line 183
    .line 184
    invoke-static {v0, p2}, Lna/d;->b([II)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    const p2, 0x7f030056

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p2}, Lp/r2;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :cond_8
    iget-object v0, p0, Lna/d;->e:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, [I

    .line 201
    .line 202
    invoke-static {v0, p2}, Lna/d;->b([II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    const p2, 0x7f050014

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p2}, Lm9/e0;->e0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :cond_9
    iget-object v0, p0, Lna/d;->f:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, [I

    .line 219
    .line 220
    invoke-static {v0, p2}, Lna/d;->b([II)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    const p2, 0x7f050013

    .line 227
    .line 228
    .line 229
    invoke-static {p1, p2}, Lm9/e0;->e0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    return-object p1

    .line 234
    :cond_a
    const v0, 0x7f07003a

    .line 235
    .line 236
    .line 237
    if-ne p2, v0, :cond_b

    .line 238
    .line 239
    const p2, 0x7f050016

    .line 240
    .line 241
    .line 242
    invoke-static {p1, p2}, Lm9/e0;->e0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_b
    const/4 p1, 0x0

    .line 248
    return-object p1

    .line 249
    :cond_c
    :goto_1
    const p2, 0x7f050017

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p2}, Lm9/e0;->e0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1
.end method

.method public j(Lua/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lua/b;->e()Lua/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Lua/b;->f()Lua/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "Container"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lna/d;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Laa/b;

    .line 28
    .line 29
    iget-object v2, p0, Lna/d;->f:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lra/e;

    .line 32
    .line 33
    invoke-static {v0, p1, v2}, Lg5/a;->F(Laa/b;Lua/b;Lra/e;)Laa/c;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    sget-object v0, Lr9/a;->a:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    iget-object p1, p1, Laa/c;->a:Ljava/lang/Class;

    .line 42
    .line 43
    const-string v0, "klass"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lg9/b;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lg9/b;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 69
    .line 70
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v4, Lea/x;->b:Lua/b;

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Lua/b;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_1

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    if-eqz v0, :cond_3

    .line 96
    .line 97
    return v3

    .line 98
    :cond_3
    :goto_1
    return v1
.end method

.method public k(Lua/b;Lv9/m0;Ljava/util/List;)Lp/h3;
    .locals 8

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lna/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ly9/a0;

    .line 9
    .line 10
    iget-object v1, p0, Lna/d;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lba/a;

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lv9/v;->f(Lv9/y;Lua/b;Lba/a;)Lv9/e;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v2, Lp/h3;

    .line 19
    .line 20
    move-object v3, p0

    .line 21
    move-object v5, p1

    .line 22
    move-object v7, p2

    .line 23
    move-object v6, p3

    .line 24
    invoke-direct/range {v2 .. v7}, Lp/h3;-><init>(Lna/d;Lv9/e;Lua/b;Ljava/util/List;Lv9/m0;)V

    .line 25
    .line 26
    .line 27
    return-object v2
.end method

.method public l(Lua/b;Laa/a;Ljava/util/List;)Lp/h3;
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lr9/a;->a:Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lna/d;->k(Lua/b;Lv9/m0;Ljava/util/List;)Lp/h3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public m(Lhb/w;Lpa/i0;ILlb/w;Lf9/n;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lra/d;->B:Lra/b;

    .line 2
    .line 3
    iget v1, p2, Lpa/i0;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    invoke-static {p2}, Lta/g;->d(Lpa/i0;)Z

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    iget-object v0, p0, Lna/d;->a:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v7, v0

    .line 16
    check-cast v7, Laa/b;

    .line 17
    .line 18
    iget-object v0, p0, Lna/d;->f:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v8, v0

    .line 21
    check-cast v8, Lra/e;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x1

    .line 25
    move-object v2, p1

    .line 26
    invoke-static/range {v2 .. v8}, Lm9/e0;->m0(Lhb/w;ZZLjava/lang/Boolean;ZLaa/b;Lra/e;)Laa/c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    instance-of p1, v2, Lhb/u;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    move-object p1, v2

    .line 38
    check-cast p1, Lhb/u;

    .line 39
    .line 40
    iget-object p1, p1, Lhb/w;->c:Lv9/m0;

    .line 41
    .line 42
    instance-of v1, p1, Lna/p;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    check-cast p1, Lna/p;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object p1, v0

    .line 50
    :goto_0
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p1, Lna/p;->a:Laa/c;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object p1, v0

    .line 56
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v1, p1, Laa/c;->b:Loa/b;

    .line 60
    .line 61
    iget-object v1, v1, Loa/b;->b:Lra/e;

    .line 62
    .line 63
    sget-object v3, Lna/f;->e:Lra/e;

    .line 64
    .line 65
    const-string v4, "version"

    .line 66
    .line 67
    invoke-static {v3, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v4, v3, Lra/a;->b:I

    .line 71
    .line 72
    iget v5, v3, Lra/a;->c:I

    .line 73
    .line 74
    iget v3, v3, Lra/a;->d:I

    .line 75
    .line 76
    invoke-virtual {v1, v4, v5, v3}, Lra/a;->a(III)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iget-object v3, v2, Lhb/w;->a:Lra/f;

    .line 81
    .line 82
    iget-object v2, v2, Lhb/w;->b:Lra/g;

    .line 83
    .line 84
    invoke-static {p2, v3, v2, p3, v1}, Lna/d;->g(Lva/a;Lra/f;Lra/g;IZ)Lna/q;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-nez p2, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget-object p3, p0, Lna/d;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p3, Lkb/f;

    .line 94
    .line 95
    invoke-virtual {p3, p1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p5, p1, p2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    :goto_2
    return-object v0

    .line 106
    :cond_5
    invoke-static {p4}, Ls9/t;->a(Llb/w;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_9

    .line 111
    .line 112
    check-cast p1, Lza/g;

    .line 113
    .line 114
    instance-of p2, p1, Lza/d;

    .line 115
    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    new-instance p2, Lza/y;

    .line 119
    .line 120
    check-cast p1, Lza/d;

    .line 121
    .line 122
    iget-object p1, p1, Lza/g;->a:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Ljava/lang/Number;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-direct {p2, p1}, Lza/y;-><init>(B)V

    .line 131
    .line 132
    .line 133
    return-object p2

    .line 134
    :cond_6
    instance-of p2, p1, Lza/v;

    .line 135
    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    new-instance p2, Lza/y;

    .line 139
    .line 140
    check-cast p1, Lza/v;

    .line 141
    .line 142
    iget-object p1, p1, Lza/g;->a:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    invoke-direct {p2, p1}, Lza/y;-><init>(S)V

    .line 151
    .line 152
    .line 153
    return-object p2

    .line 154
    :cond_7
    instance-of p2, p1, Lza/k;

    .line 155
    .line 156
    if-eqz p2, :cond_8

    .line 157
    .line 158
    new-instance p2, Lza/y;

    .line 159
    .line 160
    check-cast p1, Lza/k;

    .line 161
    .line 162
    iget-object p1, p1, Lza/g;->a:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Ljava/lang/Number;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-direct {p2, p1}, Lza/y;-><init>(I)V

    .line 171
    .line 172
    .line 173
    return-object p2

    .line 174
    :cond_8
    instance-of p2, p1, Lza/t;

    .line 175
    .line 176
    if-eqz p2, :cond_9

    .line 177
    .line 178
    new-instance p2, Lza/y;

    .line 179
    .line 180
    check-cast p1, Lza/t;

    .line 181
    .line 182
    iget-object p1, p1, Lza/g;->a:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p1, Ljava/lang/Number;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide p3

    .line 190
    invoke-direct {p2, p3, p4}, Lza/y;-><init>(J)V

    .line 191
    .line 192
    .line 193
    return-object p2

    .line 194
    :cond_9
    return-object p1
.end method

.method public m0(Lhb/w;Lva/a;I)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "kind"

    .line 7
    .line 8
    invoke-static {p3, v0}, La2/f;->M(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p3, v0, :cond_0

    .line 13
    .line 14
    check-cast p2, Lpa/i0;

    .line 15
    .line 16
    sget-object p3, Lna/b;->a:Lna/b;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lna/d;->n(Lhb/w;Lpa/i0;Lna/b;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    iget-object v0, p1, Lhb/w;->a:Lra/f;

    .line 24
    .line 25
    iget-object v1, p1, Lhb/w;->b:Lra/g;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p2, v0, v1, p3, v2}, Lna/d;->g(Lva/a;Lra/f;Lra/g;IZ)Lna/q;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_1
    const/4 v7, 0x0

    .line 38
    const/16 v8, 0x3c

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    move-object v3, p0

    .line 42
    move-object v4, p1

    .line 43
    invoke-static/range {v3 .. v8}, Lna/d;->e(Lna/d;Lhb/w;Lna/q;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public n(Lhb/w;Lpa/i0;Lna/b;)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p1, Lhb/w;->b:Lra/g;

    .line 2
    .line 3
    iget-object v1, p1, Lhb/w;->a:Lra/f;

    .line 4
    .line 5
    sget-object v2, Lra/d;->B:Lra/b;

    .line 6
    .line 7
    iget v3, p2, Lpa/i0;->d:I

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    invoke-static {p2}, Lta/g;->d(Lpa/i0;)Z

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    sget-object v2, Lna/b;->a:Lna/b;

    .line 18
    .line 19
    if-ne p3, v2, :cond_1

    .line 20
    .line 21
    const/16 p3, 0x28

    .line 22
    .line 23
    invoke-static {p2, v1, v0, p3}, La/a;->w(Lpa/i0;Lra/f;Lra/g;I)Lna/q;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v9, 0x8

    .line 31
    .line 32
    move-object v4, p0

    .line 33
    move-object v5, p1

    .line 34
    invoke-static/range {v4 .. v9}, Lna/d;->e(Lna/d;Lhb/w;Lna/q;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    move-object v5, p1

    .line 40
    const/16 p1, 0x30

    .line 41
    .line 42
    invoke-static {p2, v1, v0, p1}, La/a;->w(Lpa/i0;Lra/f;Lra/g;I)Lna/q;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object p1, v6, Lna/q;->a:Ljava/lang/String;

    .line 50
    .line 51
    const-string p2, "$delegate"

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {p1, p2, v0}, Lxb/i;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sget-object p2, Lna/b;->c:Lna/b;

    .line 59
    .line 60
    if-ne p3, p2, :cond_3

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    :cond_3
    if-eq p1, v0, :cond_4

    .line 64
    .line 65
    :goto_0
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_4
    move-object v9, v7

    .line 69
    const/4 v7, 0x1

    .line 70
    move v10, v8

    .line 71
    const/4 v8, 0x1

    .line 72
    move-object v4, p0

    .line 73
    invoke-virtual/range {v4 .. v10}, Lna/d;->d(Lhb/w;Lna/q;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public n0(Lhb/w;Lpa/i0;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lna/b;->b:Lna/b;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lna/d;->n(Lhb/w;Lpa/i0;Lna/b;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public q(Lpa/x0;Lra/f;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lsa/k;->h:Lva/m;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lva/k;->i(Lva/m;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "getExtension(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    invoke-static {p1, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lpa/h;

    .line 50
    .line 51
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lna/d;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lu0/j;

    .line 57
    .line 58
    invoke-virtual {v2, v1, p2}, Lu0/j;->j(Lpa/h;Lra/f;)Lw9/c;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-object v0
.end method

.method public r0(Lhb/u;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lhb/w;->c:Lv9/m0;

    .line 7
    .line 8
    instance-of v1, v0, Lna/p;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lna/p;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v2

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lna/p;->a:Laa/c;

    .line 20
    .line 21
    :cond_1
    if-eqz v2, :cond_4

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v2, Laa/c;->a:Ljava/lang/Class;

    .line 30
    .line 31
    const-string v1, "klass"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lg9/l;->h([Ljava/lang/Object;)Lg9/b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lg9/b;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lg9/b;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 55
    .line 56
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lc7/a;->r(Ljava/lang/annotation/Annotation;)Lm9/c;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Laa/a;

    .line 72
    .line 73
    invoke-direct {v4, v1}, Laa/a;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3, v4, p1}, Lna/d;->l(Lua/b;Laa/a;Ljava/util/List;)Lp/h3;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    invoke-static {v3, v1, v2}, Lg5/a;->W(Lna/m;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return-object p1

    .line 87
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v2, "Class for loading annotations is not found: "

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p1, Lhb/u;->f:Lua/b;

    .line 97
    .line 98
    invoke-virtual {p1}, Lua/b;->a()Lua/c;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0
.end method

.method public w(Lhb/w;Lpa/v;)Ljava/util/List;
    .locals 8

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lhb/w;->a:Lra/f;

    .line 7
    .line 8
    iget p2, p2, Lpa/v;->d:I

    .line 9
    .line 10
    invoke-interface {v0, p2}, Lra/f;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lhb/u;

    .line 16
    .line 17
    iget-object v0, v0, Lhb/u;->f:Lua/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lua/b;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lta/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "desc"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lna/q;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x23

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {v4, p2}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    const/16 v7, 0x3c

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    move-object v2, p0

    .line 62
    move-object v3, p1

    .line 63
    invoke-static/range {v2 .. v7}, Lna/d;->e(Lna/d;Lhb/w;Lna/q;Ljava/lang/Boolean;ZI)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method
