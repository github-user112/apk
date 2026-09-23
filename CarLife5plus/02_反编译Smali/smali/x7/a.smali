.class public final Lx7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Lx7/a;

.field public static final c:Lx7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lx7/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx7/a;->b:Lx7/a;

    .line 8
    .line 9
    new-instance v0, Lx7/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lx7/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lx7/a;->c:Lx7/a;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx7/a;->a:I

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
    .locals 9

    .line 1
    iget v0, p0, Lx7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v6, p1

    .line 7
    check-cast v6, Lf1/s;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    const/4 p2, 0x2

    .line 18
    if-ne p1, p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v6}, Lf1/s;->z()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v6}, Lf1/s;->Q()V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string p1, "\u6c89\u6d78\u6a21\u5f0f"

    .line 33
    .line 34
    const-string p2, "\u5185\u5bb9\u5ef6\u4f38\u5230\u7cfb\u7edf\u680f"

    .line 35
    .line 36
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    new-instance v2, Lr8/j;

    .line 47
    .line 48
    const-string p2, "IMMERSIVE_MODE"

    .line 49
    .line 50
    invoke-direct {v2, p2, p1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const p1, 0x6e3c21fe

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, p1}, Lf1/s;->W(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lf1/s;->K()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 64
    .line 65
    if-ne p2, v0, :cond_2

    .line 66
    .line 67
    new-instance p2, Lv/x0;

    .line 68
    .line 69
    const/16 v3, 0x19

    .line 70
    .line 71
    invoke-direct {p2, v3}, Lv/x0;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    move-object v4, p2

    .line 78
    check-cast v4, Lf9/k;

    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-virtual {v6, p2}, Lf1/s;->p(Z)V

    .line 82
    .line 83
    .line 84
    move-object v5, v6

    .line 85
    const/16 v6, 0xc36

    .line 86
    .line 87
    const/4 v7, 0x4

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-static/range {v1 .. v7}, Lc7/a;->e(Ljava/util/List;Lr8/j;ZLf9/k;Lf1/s;II)V

    .line 90
    .line 91
    .line 92
    const-string v1, "\u54c8\u66fc\u5168\u5c4f"

    .line 93
    .line 94
    const-string v2, "\u54c8\u66fc\u8f66\u673a\u5168\u5c4f\u663e\u793a"

    .line 95
    .line 96
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v5, p1}, Lf1/s;->W(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-ne v2, v0, :cond_3

    .line 112
    .line 113
    new-instance v2, Lv/x0;

    .line 114
    .line 115
    const/16 v3, 0x1a

    .line 116
    .line 117
    invoke-direct {v2, v3}, Lv/x0;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    check-cast v2, Lf9/k;

    .line 124
    .line 125
    invoke-virtual {v5, p2}, Lf1/s;->p(Z)V

    .line 126
    .line 127
    .line 128
    const/16 v7, 0x6036

    .line 129
    .line 130
    const/16 v8, 0xc

    .line 131
    .line 132
    move-object v6, v5

    .line 133
    move-object v5, v2

    .line 134
    const-string v2, "FULL_SCREEN_HARMAN"

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v4, 0x0

    .line 138
    invoke-static/range {v1 .. v8}, Lc7/a;->d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 139
    .line 140
    .line 141
    move-object v5, v6

    .line 142
    const-string v1, "\u54ea\u5412\u5168\u5c4f"

    .line 143
    .line 144
    const-string v2, "\u54ea\u5412\u7ad6\u5c4f\u8f66\u673a\u5168\u5c4f\u663e\u793a"

    .line 145
    .line 146
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v5, p1}, Lf1/s;->W(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Lf1/s;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-ne p1, v0, :cond_4

    .line 162
    .line 163
    new-instance p1, Lv/x0;

    .line 164
    .line 165
    const/16 v0, 0x1b

    .line 166
    .line 167
    invoke-direct {p1, v0}, Lv/x0;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, p1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    check-cast p1, Lf9/k;

    .line 174
    .line 175
    invoke-virtual {v5, p2}, Lf1/s;->p(Z)V

    .line 176
    .line 177
    .line 178
    const/16 v7, 0x61b6

    .line 179
    .line 180
    const/16 v8, 0x8

    .line 181
    .line 182
    const-string v2, "FULL_SCREEN_HOZON"

    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    const/4 v4, 0x0

    .line 186
    move-object v6, v5

    .line 187
    move-object v5, p1

    .line 188
    invoke-static/range {v1 .. v8}, Lc7/a;->d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 189
    .line 190
    .line 191
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 192
    .line 193
    return-object p1

    .line 194
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 195
    .line 196
    check-cast p2, Ljava/lang/Number;

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    and-int/lit8 p2, p2, 0x3

    .line 203
    .line 204
    const/4 v0, 0x2

    .line 205
    if-ne p2, v0, :cond_6

    .line 206
    .line 207
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-nez p2, :cond_5

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_5
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_6
    :goto_2
    const/4 p2, 0x0

    .line 219
    const/4 v1, 0x6

    .line 220
    const-string v2, "\u8bbe\u7f6e"

    .line 221
    .line 222
    invoke-static {v2, p2, p1, v1, v0}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 223
    .line 224
    .line 225
    const/4 p2, 0x0

    .line 226
    invoke-static {p2, p1}, Lg5/a;->d(ILf1/s;)V

    .line 227
    .line 228
    .line 229
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 230
    .line 231
    return-object p1

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
