.class public Lib/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/lifecycle/q0;
.implements Le4/r;
.implements Li3/c;


# static fields
.field public static b:Lib/d;

.field public static c:Z

.field public static d:Ljava/lang/reflect/Constructor;

.field public static e:Lib/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    iput v0, p0, Lib/d;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ls/s;

    invoke-direct {v1, v0}, Ls/s;-><init>(I)V

    .line 7
    sget-object v0, Ls/o0;->a:[J

    .line 8
    new-instance v0, Ls/h0;

    invoke-direct {v0}, Ls/h0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lib/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkb/l;)V
    .locals 3

    const/16 p1, 0xc

    iput p1, p0, Lib/d;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object p1, Lkb/l;->d:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {p1, v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public static d(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Lf3/k;->c:Lf3/k;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    iget p1, p1, Lf3/k;->a:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne p2, v1, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/support/v4/media/session/o;->d(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static e(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    sget-object v0, Lf3/k;->c:Lf3/k;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-static {p1, p2}, Li2/c;->r(Lf3/k;I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_3
    :goto_0
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static i(Ln4/b;Landroid/text/Editable;IIZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_19

    .line 3
    .line 4
    if-ltz p2, :cond_19

    .line 5
    .line 6
    if-gez p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_9

    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v1, v3, :cond_19

    .line 20
    .line 21
    if-eq v2, v3, :cond_19

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    goto/16 :goto_9

    .line 26
    .line 27
    :cond_1
    const/4 v4, 0x1

    .line 28
    if-eqz p4, :cond_16

    .line 29
    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-ltz v1, :cond_3

    .line 39
    .line 40
    if-ge p4, v1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-gez p2, :cond_4

    .line 44
    .line 45
    :cond_3
    :goto_0
    const/4 v1, -0x1

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_1
    const/4 p4, 0x0

    .line 48
    :goto_2
    if-nez p2, :cond_5

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    if-gez v1, :cond_7

    .line 54
    .line 55
    if-eqz p4, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    const/4 v1, 0x0

    .line 59
    goto :goto_3

    .line 60
    :cond_7
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz p4, :cond_9

    .line 65
    .line 66
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-nez p4, :cond_8

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_8
    add-int/lit8 p2, p2, -0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_a

    .line 81
    .line 82
    add-int/lit8 p2, p2, -0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    if-eqz p4, :cond_b

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_b
    const/4 p4, 0x1

    .line 93
    goto :goto_2

    .line 94
    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-ltz v2, :cond_d

    .line 103
    .line 104
    if-ge p3, v2, :cond_c

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_c
    if-gez p2, :cond_e

    .line 108
    .line 109
    :cond_d
    :goto_4
    const/4 p3, -0x1

    .line 110
    goto :goto_7

    .line 111
    :cond_e
    :goto_5
    const/4 p4, 0x0

    .line 112
    :goto_6
    if-nez p2, :cond_f

    .line 113
    .line 114
    move p3, v2

    .line 115
    goto :goto_7

    .line 116
    :cond_f
    if-lt v2, p3, :cond_10

    .line 117
    .line 118
    if-eqz p4, :cond_15

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz p4, :cond_12

    .line 126
    .line 127
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    if-nez p4, :cond_11

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_11
    add-int/lit8 p2, p2, -0x1

    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_12
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_13

    .line 144
    .line 145
    add-int/lit8 p2, p2, -0x1

    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    if-eqz p4, :cond_14

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 158
    .line 159
    const/4 p4, 0x1

    .line 160
    goto :goto_6

    .line 161
    :cond_15
    :goto_7
    if-eq v1, v3, :cond_19

    .line 162
    .line 163
    if-ne p3, v3, :cond_17

    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_16
    sub-int/2addr v1, p2

    .line 167
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    add-int/2addr v2, p3

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    :cond_17
    const-class p2, Ll4/w;

    .line 181
    .line 182
    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, [Ll4/w;

    .line 187
    .line 188
    if-eqz p2, :cond_19

    .line 189
    .line 190
    array-length p4, p2

    .line 191
    if-lez p4, :cond_19

    .line 192
    .line 193
    array-length p4, p2

    .line 194
    const/4 v2, 0x0

    .line 195
    :goto_8
    if-ge v2, p4, :cond_18

    .line 196
    .line 197
    aget-object v3, p2, v2

    .line 198
    .line 199
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    .line 212
    .line 213
    .line 214
    move-result p3

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 223
    .line 224
    .line 225
    move-result p4

    .line 226
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    .line 237
    .line 238
    .line 239
    return v4

    .line 240
    :cond_19
    :goto_9
    return v0
.end method

.method public static k(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lib/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/o0;
    .locals 1

    .line 1
    iget v0, p0, Lib/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lp9/q;->w(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    const-string v0, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lc3/k;)Landroid/text/StaticLayout;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lib/d;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-string v2, "unable to call constructor"

    .line 11
    .line 12
    sget-boolean v3, Lib/d;->c:Z

    .line 13
    .line 14
    const/16 v6, 0xa

    .line 15
    .line 16
    const/16 v7, 0x9

    .line 17
    .line 18
    const/16 v8, 0x8

    .line 19
    .line 20
    const/4 v9, 0x7

    .line 21
    const/4 v10, 0x6

    .line 22
    const/4 v11, 0x5

    .line 23
    const/4 v12, 0x4

    .line 24
    const/4 v13, 0x3

    .line 25
    const/4 v14, 0x2

    .line 26
    const/16 v15, 0xd

    .line 27
    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    const/16 v17, 0x1

    .line 31
    .line 32
    const/16 v18, 0xc

    .line 33
    .line 34
    const-string v4, "StaticLayoutFactory"

    .line 35
    .line 36
    const/16 v19, 0x0

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    sget-object v3, Lib/d;->d:Ljava/lang/reflect/Constructor;

    .line 41
    .line 42
    const/16 v20, 0xb

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sput-boolean v17, Lib/d;->c:Z

    .line 46
    .line 47
    :try_start_0
    const-class v3, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    const/16 v20, 0xb

    .line 50
    .line 51
    :try_start_1
    new-array v5, v15, [Ljava/lang/Class;

    .line 52
    .line 53
    const-class v21, Ljava/lang/CharSequence;

    .line 54
    .line 55
    aput-object v21, v5, v16

    .line 56
    .line 57
    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    aput-object v21, v5, v17

    .line 60
    .line 61
    aput-object v21, v5, v14

    .line 62
    .line 63
    const-class v22, Landroid/text/TextPaint;

    .line 64
    .line 65
    aput-object v22, v5, v13

    .line 66
    .line 67
    aput-object v21, v5, v12

    .line 68
    .line 69
    const-class v22, Landroid/text/Layout$Alignment;

    .line 70
    .line 71
    aput-object v22, v5, v11

    .line 72
    .line 73
    const-class v22, Landroid/text/TextDirectionHeuristic;

    .line 74
    .line 75
    aput-object v22, v5, v10

    .line 76
    .line 77
    sget-object v22, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v22, v5, v9

    .line 80
    .line 81
    aput-object v22, v5, v8

    .line 82
    .line 83
    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 84
    .line 85
    aput-object v22, v5, v7

    .line 86
    .line 87
    const-class v22, Landroid/text/TextUtils$TruncateAt;

    .line 88
    .line 89
    aput-object v22, v5, v6

    .line 90
    .line 91
    aput-object v21, v5, v20

    .line 92
    .line 93
    aput-object v21, v5, v18

    .line 94
    .line 95
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sput-object v3, Lib/d;->d:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    const/16 v20, 0xb

    .line 103
    .line 104
    :catch_1
    sput-object v19, Lib/d;->d:Ljava/lang/reflect/Constructor;

    .line 105
    .line 106
    const-string v3, "unable to collect necessary constructor."

    .line 107
    .line 108
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :goto_0
    sget-object v3, Lib/d;->d:Ljava/lang/reflect/Constructor;

    .line 112
    .line 113
    :goto_1
    if-eqz v3, :cond_1

    .line 114
    .line 115
    :try_start_2
    iget-object v5, v1, Lc3/k;->a:Ljava/lang/CharSequence;

    .line 116
    .line 117
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v21

    .line 121
    const/16 v22, 0xa

    .line 122
    .line 123
    iget v6, v1, Lc3/k;->b:I

    .line 124
    .line 125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    const/16 v23, 0x9

    .line 130
    .line 131
    iget-object v7, v1, Lc3/k;->c:Landroid/text/TextPaint;

    .line 132
    .line 133
    const/16 v24, 0x8

    .line 134
    .line 135
    iget v8, v1, Lc3/k;->d:I

    .line 136
    .line 137
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    const/16 v25, 0x7

    .line 142
    .line 143
    iget-object v9, v1, Lc3/k;->f:Landroid/text/Layout$Alignment;

    .line 144
    .line 145
    const/16 v26, 0x6

    .line 146
    .line 147
    iget-object v10, v1, Lc3/k;->e:Landroid/text/TextDirectionHeuristic;

    .line 148
    .line 149
    const/high16 v27, 0x3f800000    # 1.0f

    .line 150
    .line 151
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 152
    .line 153
    .line 154
    move-result-object v27

    .line 155
    const/16 v28, 0x0

    .line 156
    .line 157
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 158
    .line 159
    .line 160
    move-result-object v28

    .line 161
    const/16 v29, 0x5

    .line 162
    .line 163
    iget-boolean v11, v1, Lc3/k;->k:Z

    .line 164
    .line 165
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    const/16 v30, 0x4

    .line 170
    .line 171
    iget-object v12, v1, Lc3/k;->h:Landroid/text/TextUtils$TruncateAt;

    .line 172
    .line 173
    const/16 v31, 0x3

    .line 174
    .line 175
    iget v13, v1, Lc3/k;->i:I

    .line 176
    .line 177
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    const/16 v32, 0x2

    .line 182
    .line 183
    iget v14, v1, Lc3/k;->g:I

    .line 184
    .line 185
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    new-array v15, v15, [Ljava/lang/Object;

    .line 190
    .line 191
    aput-object v5, v15, v16

    .line 192
    .line 193
    aput-object v21, v15, v17

    .line 194
    .line 195
    aput-object v6, v15, v32

    .line 196
    .line 197
    aput-object v7, v15, v31

    .line 198
    .line 199
    aput-object v8, v15, v30

    .line 200
    .line 201
    aput-object v9, v15, v29

    .line 202
    .line 203
    aput-object v10, v15, v26

    .line 204
    .line 205
    aput-object v27, v15, v25

    .line 206
    .line 207
    aput-object v28, v15, v24

    .line 208
    .line 209
    aput-object v11, v15, v23

    .line 210
    .line 211
    aput-object v12, v15, v22

    .line 212
    .line 213
    aput-object v13, v15, v20

    .line 214
    .line 215
    aput-object v14, v15, v18

    .line 216
    .line 217
    invoke-virtual {v3, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    check-cast v3, Landroid/text/StaticLayout;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 222
    .line 223
    move-object/from16 v19, v3

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :catch_2
    sput-object v19, Lib/d;->d:Ljava/lang/reflect/Constructor;

    .line 227
    .line 228
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :catch_3
    sput-object v19, Lib/d;->d:Ljava/lang/reflect/Constructor;

    .line 233
    .line 234
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :catch_4
    sput-object v19, Lib/d;->d:Ljava/lang/reflect/Constructor;

    .line 239
    .line 240
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :cond_1
    :goto_2
    if-eqz v19, :cond_2

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_2
    new-instance v2, Landroid/text/StaticLayout;

    .line 247
    .line 248
    move-object v3, v2

    .line 249
    iget-object v2, v1, Lc3/k;->a:Ljava/lang/CharSequence;

    .line 250
    .line 251
    iget v4, v1, Lc3/k;->b:I

    .line 252
    .line 253
    iget-object v5, v1, Lc3/k;->c:Landroid/text/TextPaint;

    .line 254
    .line 255
    iget v6, v1, Lc3/k;->d:I

    .line 256
    .line 257
    iget-object v7, v1, Lc3/k;->f:Landroid/text/Layout$Alignment;

    .line 258
    .line 259
    iget-boolean v10, v1, Lc3/k;->k:Z

    .line 260
    .line 261
    iget-object v11, v1, Lc3/k;->h:Landroid/text/TextUtils$TruncateAt;

    .line 262
    .line 263
    iget v12, v1, Lc3/k;->i:I

    .line 264
    .line 265
    move-object v1, v3

    .line 266
    const/4 v3, 0x0

    .line 267
    const/high16 v8, 0x3f800000    # 1.0f

    .line 268
    .line 269
    const/4 v9, 0x0

    .line 270
    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 271
    .line 272
    .line 273
    move-object/from16 v19, v1

    .line 274
    .line 275
    :goto_3
    return-object v19

    .line 276
    :pswitch_0
    iget-object v2, v1, Lc3/k;->a:Ljava/lang/CharSequence;

    .line 277
    .line 278
    iget v3, v1, Lc3/k;->b:I

    .line 279
    .line 280
    iget-object v4, v1, Lc3/k;->c:Landroid/text/TextPaint;

    .line 281
    .line 282
    iget v5, v1, Lc3/k;->d:I

    .line 283
    .line 284
    invoke-static {v3, v5, v4, v2}, La7/a;->c(IILandroid/text/TextPaint;Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    iget-object v3, v1, Lc3/k;->e:Landroid/text/TextDirectionHeuristic;

    .line 289
    .line 290
    invoke-static {v2, v3}, Li7/a;->q(Landroid/text/StaticLayout$Builder;Landroid/text/TextDirectionHeuristic;)V

    .line 291
    .line 292
    .line 293
    iget-object v3, v1, Lc3/k;->f:Landroid/text/Layout$Alignment;

    .line 294
    .line 295
    invoke-static {v2, v3}, La7/a;->n(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)V

    .line 296
    .line 297
    .line 298
    iget v3, v1, Lc3/k;->g:I

    .line 299
    .line 300
    invoke-static {v2, v3}, La7/a;->w(Landroid/text/StaticLayout$Builder;I)V

    .line 301
    .line 302
    .line 303
    iget-object v3, v1, Lc3/k;->h:Landroid/text/TextUtils$TruncateAt;

    .line 304
    .line 305
    invoke-static {v2, v3}, La7/a;->o(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)V

    .line 306
    .line 307
    .line 308
    iget v3, v1, Lc3/k;->i:I

    .line 309
    .line 310
    invoke-static {v2, v3}, La7/a;->y(Landroid/text/StaticLayout$Builder;I)V

    .line 311
    .line 312
    .line 313
    invoke-static {v2}, La7/a;->v(Landroid/text/StaticLayout$Builder;)V

    .line 314
    .line 315
    .line 316
    iget-boolean v3, v1, Lc3/k;->k:Z

    .line 317
    .line 318
    invoke-static {v2, v3}, La7/a;->p(Landroid/text/StaticLayout$Builder;Z)V

    .line 319
    .line 320
    .line 321
    iget v3, v1, Lc3/k;->l:I

    .line 322
    .line 323
    invoke-static {v2, v3}, La7/a;->A(Landroid/text/StaticLayout$Builder;I)V

    .line 324
    .line 325
    .line 326
    iget v3, v1, Lc3/k;->o:I

    .line 327
    .line 328
    invoke-static {v2, v3}, La7/a;->m(Landroid/text/StaticLayout$Builder;I)V

    .line 329
    .line 330
    .line 331
    invoke-static {v2}, La7/a;->l(Landroid/text/StaticLayout$Builder;)V

    .line 332
    .line 333
    .line 334
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 335
    .line 336
    const/16 v4, 0x1a

    .line 337
    .line 338
    if-lt v3, v4, :cond_3

    .line 339
    .line 340
    iget v4, v1, Lc3/k;->j:I

    .line 341
    .line 342
    invoke-static {v2, v4}, La7/b;->u(Landroid/text/StaticLayout$Builder;I)V

    .line 343
    .line 344
    .line 345
    :cond_3
    const/16 v4, 0x1c

    .line 346
    .line 347
    if-lt v3, v4, :cond_4

    .line 348
    .line 349
    invoke-static {v2}, Landroid/support/v4/media/session/o;->r(Landroid/text/StaticLayout$Builder;)V

    .line 350
    .line 351
    .line 352
    :cond_4
    const/16 v4, 0x21

    .line 353
    .line 354
    if-lt v3, v4, :cond_5

    .line 355
    .line 356
    iget v4, v1, Lc3/k;->m:I

    .line 357
    .line 358
    iget v1, v1, Lc3/k;->n:I

    .line 359
    .line 360
    invoke-static {}, Lc/p;->b()Landroid/graphics/text/LineBreakConfig$Builder;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-static {v5, v4}, Lc/p;->c(Landroid/graphics/text/LineBreakConfig$Builder;I)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    invoke-static {v4, v1}, Lc/p;->y(Landroid/graphics/text/LineBreakConfig$Builder;I)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-static {v1}, Lc/p;->d(Landroid/graphics/text/LineBreakConfig$Builder;)Landroid/graphics/text/LineBreakConfig;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v2, v1}, Lc/p;->s(Landroid/text/StaticLayout$Builder;Landroid/graphics/text/LineBreakConfig;)V

    .line 377
    .line 378
    .line 379
    :cond_5
    const/16 v1, 0x23

    .line 380
    .line 381
    if-lt v3, v1, :cond_6

    .line 382
    .line 383
    invoke-static {v2}, Lc3/i;->a(Landroid/text/StaticLayout$Builder;)V

    .line 384
    .line 385
    .line 386
    :cond_6
    invoke-static {v2}, La7/a;->d(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    return-object v1

    .line 391
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;
    .locals 0

    .line 1
    iget p2, p0, Lib/d;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lib/d;->a(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1}, Lib/d;->a(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    throw p1

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lm9/c;Lu4/c;)Landroidx/lifecycle/o0;
    .locals 1

    .line 1
    iget v0, p0, Lib/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lib/d;->c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Landroidx/lifecycle/l0;

    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/lifecycle/l0;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lf3/m;Lf3/k;I)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    iget v0, p0, Lib/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p2, Lf3/k;->a:I

    .line 10
    .line 11
    div-int/lit8 p1, p1, 0x64

    .line 12
    .line 13
    const-string v0, "sans-serif"

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    if-ge p1, v1, :cond_0

    .line 19
    .line 20
    const-string p1, "sans-serif-thin"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v2, 0x4

    .line 24
    if-gt v1, p1, :cond_1

    .line 25
    .line 26
    if-ge p1, v2, :cond_1

    .line 27
    .line 28
    const-string p1, "sans-serif-light"

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-ne p1, v2, :cond_3

    .line 32
    .line 33
    :cond_2
    :goto_0
    move-object p1, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v1, 0x5

    .line 36
    if-ne p1, v1, :cond_4

    .line 37
    .line 38
    const-string p1, "sans-serif-medium"

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    const/4 v1, 0x6

    .line 42
    const/16 v2, 0x8

    .line 43
    .line 44
    if-gt v1, p1, :cond_5

    .line 45
    .line 46
    if-ge p1, v2, :cond_5

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_5
    if-gt v2, p1, :cond_2

    .line 50
    .line 51
    const/16 v1, 0xb

    .line 52
    .line 53
    if-ge p1, v1, :cond_2

    .line 54
    .line 55
    const-string p1, "sans-serif-black"

    .line 56
    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x0

    .line 62
    if-nez v1, :cond_6

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    invoke-static {p1, p2, p3}, Lib/d;->e(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 70
    .line 71
    invoke-static {p2, p3}, Li2/c;->r(Lf3/k;I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p1, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_7

    .line 84
    .line 85
    invoke-static {v2, p2, p3}, Lib/d;->e(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {p1, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_7

    .line 94
    .line 95
    move-object v2, p1

    .line 96
    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 97
    .line 98
    invoke-static {v0, p2, p3}, Lib/d;->e(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_8
    return-object v2

    .line 103
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string p1, "sans-serif"

    .line 107
    .line 108
    invoke-static {p1, p2, p3}, Lib/d;->d(Ljava/lang/String;Lf3/k;I)Landroid/graphics/Typeface;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public h(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 8
    .line 9
    return-object p1
.end method

.method public j(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public n()Li3/b;
    .locals 3

    .line 1
    new-instance v0, Li3/b;

    .line 2
    .line 3
    new-instance v1, Li3/a;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Li3/a;-><init>(Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Li3/b;-><init>(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public onScrollLimit(IIIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onScrollProgress(IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "und"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "The language tag "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " is not well-formed. Locale is resolved to Undetermined. Note that underscore \'_\' is not a valid subtags delimiter and must be replaced with \'-\'."

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "Locale"

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v0
.end method
