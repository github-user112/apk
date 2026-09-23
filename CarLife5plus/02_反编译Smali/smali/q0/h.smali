.class public final Lq0/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/q;


# static fields
.field public static final b:Lq0/h;

.field public static final c:Lq0/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq0/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lq0/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq0/h;->b:Lq0/h;

    .line 8
    .line 9
    new-instance v0, Lq0/h;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lq0/h;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lq0/h;->c:Lq0/h;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lq0/h;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq0/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lo0/g;

    .line 7
    .line 8
    check-cast p2, Ls0/e;

    .line 9
    .line 10
    check-cast p3, Lf9/a;

    .line 11
    .line 12
    check-cast p4, Lf1/s;

    .line 13
    .line 14
    check-cast p5, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    and-int/lit8 v0, p5, 0x6

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    and-int/lit8 v0, p5, 0x8

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p4, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p4, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v0, 0x2

    .line 42
    :goto_1
    or-int/2addr v0, p5

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v0, p5

    .line 45
    :goto_2
    and-int/lit8 v1, p5, 0x30

    .line 46
    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    and-int/lit8 v1, p5, 0x40

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p4, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p4, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_3
    if-eqz v1, :cond_4

    .line 63
    .line 64
    const/16 v1, 0x20

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    const/16 v1, 0x10

    .line 68
    .line 69
    :goto_4
    or-int/2addr v0, v1

    .line 70
    :cond_5
    and-int/lit16 p5, p5, 0x180

    .line 71
    .line 72
    if-nez p5, :cond_7

    .line 73
    .line 74
    invoke-virtual {p4, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p5

    .line 78
    if-eqz p5, :cond_6

    .line 79
    .line 80
    const/16 p5, 0x100

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_6
    const/16 p5, 0x80

    .line 84
    .line 85
    :goto_5
    or-int/2addr v0, p5

    .line 86
    :cond_7
    and-int/lit16 p5, v0, 0x493

    .line 87
    .line 88
    const/16 v1, 0x492

    .line 89
    .line 90
    if-eq p5, v1, :cond_8

    .line 91
    .line 92
    const/4 p5, 0x1

    .line 93
    goto :goto_6

    .line 94
    :cond_8
    const/4 p5, 0x0

    .line 95
    :goto_6
    and-int/lit8 v1, v0, 0x1

    .line 96
    .line 97
    invoke-virtual {p4, v1, p5}, Lf1/s;->N(IZ)Z

    .line 98
    .line 99
    .line 100
    move-result p5

    .line 101
    if-eqz p5, :cond_9

    .line 102
    .line 103
    and-int/lit16 p5, v0, 0x3fe

    .line 104
    .line 105
    check-cast p1, Ls0/b;

    .line 106
    .line 107
    invoke-static {p1, p2, p3, p4, p5}, Lq0/k;->c(Ls0/b;Ls0/e;Lf9/a;Lf1/s;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_9
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 112
    .line 113
    .line 114
    :goto_7
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 115
    .line 116
    return-object p1

    .line 117
    :pswitch_0
    check-cast p1, Lo0/g;

    .line 118
    .line 119
    check-cast p2, Ls0/e;

    .line 120
    .line 121
    check-cast p3, Lf9/a;

    .line 122
    .line 123
    check-cast p4, Lf1/s;

    .line 124
    .line 125
    check-cast p5, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    and-int/lit8 v0, p5, 0x6

    .line 132
    .line 133
    if-nez v0, :cond_c

    .line 134
    .line 135
    and-int/lit8 v0, p5, 0x8

    .line 136
    .line 137
    if-nez v0, :cond_a

    .line 138
    .line 139
    invoke-virtual {p4, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    goto :goto_8

    .line 144
    :cond_a
    invoke-virtual {p4, p1}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    :goto_8
    if-eqz v0, :cond_b

    .line 149
    .line 150
    const/4 v0, 0x4

    .line 151
    goto :goto_9

    .line 152
    :cond_b
    const/4 v0, 0x2

    .line 153
    :goto_9
    or-int/2addr v0, p5

    .line 154
    goto :goto_a

    .line 155
    :cond_c
    move v0, p5

    .line 156
    :goto_a
    and-int/lit8 v1, p5, 0x30

    .line 157
    .line 158
    if-nez v1, :cond_f

    .line 159
    .line 160
    and-int/lit8 v1, p5, 0x40

    .line 161
    .line 162
    if-nez v1, :cond_d

    .line 163
    .line 164
    invoke-virtual {p4, p2}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    goto :goto_b

    .line 169
    :cond_d
    invoke-virtual {p4, p2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    :goto_b
    if-eqz v1, :cond_e

    .line 174
    .line 175
    const/16 v1, 0x20

    .line 176
    .line 177
    goto :goto_c

    .line 178
    :cond_e
    const/16 v1, 0x10

    .line 179
    .line 180
    :goto_c
    or-int/2addr v0, v1

    .line 181
    :cond_f
    and-int/lit16 p5, p5, 0x180

    .line 182
    .line 183
    if-nez p5, :cond_11

    .line 184
    .line 185
    invoke-virtual {p4, p3}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p5

    .line 189
    if-eqz p5, :cond_10

    .line 190
    .line 191
    const/16 p5, 0x100

    .line 192
    .line 193
    goto :goto_d

    .line 194
    :cond_10
    const/16 p5, 0x80

    .line 195
    .line 196
    :goto_d
    or-int/2addr v0, p5

    .line 197
    :cond_11
    and-int/lit16 p5, v0, 0x493

    .line 198
    .line 199
    const/16 v1, 0x492

    .line 200
    .line 201
    if-eq p5, v1, :cond_12

    .line 202
    .line 203
    const/4 p5, 0x1

    .line 204
    goto :goto_e

    .line 205
    :cond_12
    const/4 p5, 0x0

    .line 206
    :goto_e
    and-int/lit8 v1, v0, 0x1

    .line 207
    .line 208
    invoke-virtual {p4, v1, p5}, Lf1/s;->N(IZ)Z

    .line 209
    .line 210
    .line 211
    move-result p5

    .line 212
    if-eqz p5, :cond_13

    .line 213
    .line 214
    and-int/lit16 p5, v0, 0x3fe

    .line 215
    .line 216
    check-cast p1, Ls0/b;

    .line 217
    .line 218
    invoke-static {p1, p2, p3, p4, p5}, Lq0/k;->c(Ls0/b;Ls0/e;Lf9/a;Lf1/s;I)V

    .line 219
    .line 220
    .line 221
    goto :goto_f

    .line 222
    :cond_13
    invoke-virtual {p4}, Lf1/s;->Q()V

    .line 223
    .line 224
    .line 225
    :goto_f
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 226
    .line 227
    return-object p1

    .line 228
    nop

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
