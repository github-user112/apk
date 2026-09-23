.class public final Lr7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Lr7/a;

.field public static final c:Lr7/a;

.field public static final d:Lr7/a;

.field public static final e:Lr7/a;

.field public static final f:Lr7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lr7/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr7/a;->b:Lr7/a;

    .line 8
    .line 9
    new-instance v0, Lr7/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lr7/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lr7/a;->c:Lr7/a;

    .line 16
    .line 17
    new-instance v0, Lr7/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lr7/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lr7/a;->d:Lr7/a;

    .line 24
    .line 25
    new-instance v0, Lr7/a;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lr7/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lr7/a;->e:Lr7/a;

    .line 32
    .line 33
    new-instance v0, Lr7/a;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Lr7/a;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lr7/a;->f:Lr7/a;

    .line 40
    .line 41
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr7/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lr7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/s;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    and-int/lit8 p2, p2, 0x3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 31
    const/4 v1, 0x6

    .line 32
    const-string v2, "\u8bbe\u7f6e"

    .line 33
    .line 34
    invoke-static {v2, p2, p1, v1, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-static {p2, p1}, Lg5/a;->d(ILf1/s;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 45
    .line 46
    check-cast p2, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    and-int/lit8 p2, p2, 0x3

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    if-ne p2, v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    :goto_2
    sget-object p2, Lr7/b;->c:Ln1/c;

    .line 69
    .line 70
    const/16 v0, 0x30

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-static {v2, p2, p1, v0, v1}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 75
    .line 76
    .line 77
    const/16 p2, 0x10

    .line 78
    .line 79
    invoke-static {p2, p1}, Lg5/a;->B(ILf1/s;)F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    sget-object v0, Lr1/m;->a:Lr1/m;

    .line 84
    .line 85
    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/c;->b(Lr1/p;F)Lr1/p;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p1, p2}, Ld0/c;->a(Lf1/s;Lr1/p;)V

    .line 90
    .line 91
    .line 92
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 93
    .line 94
    return-object p1

    .line 95
    :pswitch_1
    move-object v4, p1

    .line 96
    check-cast v4, Lf1/s;

    .line 97
    .line 98
    check-cast p2, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    and-int/lit8 p1, p1, 0x3

    .line 105
    .line 106
    const/4 p2, 0x2

    .line 107
    if-ne p1, p2, :cond_5

    .line 108
    .line 109
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    :goto_4
    const-string p1, "\u663e\u793a\u60ac\u6d6e\u7a97"

    .line 121
    .line 122
    const-string p2, "\u9700\u8981\u5f00\u542f\u663e\u793a\u60ac\u6d6e\u7a97\u6743\u9650"

    .line 123
    .line 124
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {}, Lw6/a;->h()Ly6/a;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const/16 v5, 0xd86

    .line 141
    .line 142
    const/4 v6, 0x0

    .line 143
    sget-object v0, Lu7/h;->a:Lu7/h;

    .line 144
    .line 145
    const/4 v3, 0x0

    .line 146
    invoke-virtual/range {v0 .. v6}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 147
    .line 148
    .line 149
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 150
    .line 151
    return-object p1

    .line 152
    :pswitch_2
    check-cast p1, Lf1/s;

    .line 153
    .line 154
    check-cast p2, Ljava/lang/Number;

    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    and-int/lit8 p2, p2, 0x3

    .line 161
    .line 162
    const/4 v0, 0x2

    .line 163
    if-ne p2, v0, :cond_7

    .line 164
    .line 165
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-nez p2, :cond_6

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_6
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 173
    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_7
    :goto_6
    const-string p2, "\u60ac\u6d6e\u8bbe\u7f6e"

    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    const/4 v2, 0x6

    .line 180
    invoke-static {p2, v1, p1, v2, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 181
    .line 182
    .line 183
    const-string p2, "\u60ac\u6d6e\u76f8\u5173\u8bbe\u7f6e"

    .line 184
    .line 185
    invoke-static {p2, p1, v2}, Lg5/a;->p(Ljava/lang/String;Lf1/s;I)V

    .line 186
    .line 187
    .line 188
    :goto_7
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 189
    .line 190
    return-object p1

    .line 191
    :pswitch_3
    check-cast p1, Lf1/s;

    .line 192
    .line 193
    check-cast p2, Ljava/lang/Number;

    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    and-int/lit8 p2, p2, 0x3

    .line 200
    .line 201
    const/4 v0, 0x2

    .line 202
    if-ne p2, v0, :cond_9

    .line 203
    .line 204
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-nez p2, :cond_8

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_8
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 212
    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_9
    :goto_8
    const/4 p2, 0x0

    .line 216
    const/4 v1, 0x6

    .line 217
    const-string v2, "\u8bbe\u7f6e"

    .line 218
    .line 219
    invoke-static {v2, p2, p1, v1, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 220
    .line 221
    .line 222
    const/4 p2, 0x0

    .line 223
    invoke-static {p2, p1}, Lg5/a;->d(ILf1/s;)V

    .line 224
    .line 225
    .line 226
    :goto_9
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 227
    .line 228
    return-object p1

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
