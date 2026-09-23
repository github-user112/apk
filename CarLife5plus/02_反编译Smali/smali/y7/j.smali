.class public final Ly7/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly7/m;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;

.field public final synthetic e:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Ly7/m;Lf1/b1;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p5, p0, Ly7/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/j;->b:Ly7/m;

    .line 4
    .line 5
    iput-object p2, p0, Ly7/j;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, Ly7/j;->d:Lf1/b1;

    .line 8
    .line 9
    iput-object p4, p0, Ly7/j;->e:Lf1/b1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ly7/j;->a:I

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
    new-instance v0, Ly7/j;

    .line 31
    .line 32
    iget-object v4, p0, Ly7/j;->e:Lf1/b1;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    iget-object v1, p0, Ly7/j;->b:Ly7/m;

    .line 36
    .line 37
    iget-object v2, p0, Ly7/j;->c:Lf1/b1;

    .line 38
    .line 39
    iget-object v3, p0, Ly7/j;->d:Lf1/b1;

    .line 40
    .line 41
    invoke-direct/range {v0 .. v5}, Ly7/j;-><init>(Ly7/m;Lf1/b1;Lf1/b1;Lf1/b1;I)V

    .line 42
    .line 43
    .line 44
    const p2, -0x11429d33

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v0, p1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/16 v0, 0x30

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-static {v1, p2, p1, v0, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 56
    .line 57
    .line 58
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 59
    .line 60
    return-object p1

    .line 61
    :pswitch_0
    move-object v4, p1

    .line 62
    check-cast v4, Lf1/s;

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const-string p2, "com.android.permission.GET_INSTALLED_APPS"

    .line 71
    .line 72
    and-int/lit8 p1, p1, 0x3

    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_3
    :goto_2
    const p1, 0x34efe693

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, p1}, Lf1/s;->W(I)V

    .line 93
    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    :try_start_0
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    const-string v0, "\u5e94\u7528\u5217\u8868\u6743\u9650"

    .line 108
    .line 109
    const-string v1, "\u83b7\u53d6\u5e94\u7528\u5217\u8868\u6743\u9650"

    .line 110
    .line 111
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 120
    .line 121
    invoke-virtual {v0, p2}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ly6/a;

    .line 126
    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    new-instance v2, Lz6/e;

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-direct {v2, v3}, Ly6/a;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p2, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :goto_3
    invoke-static {v2}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const/16 v5, 0xc06

    .line 144
    .line 145
    const/4 v6, 0x4

    .line 146
    sget-object v0, Lu7/h;->a:Lu7/h;

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-virtual/range {v0 .. v6}, Lu7/h;->f(Ljava/util/List;Ljava/util/List;ZLf1/s;II)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :catch_0
    nop

    .line 154
    :goto_4
    invoke-virtual {v4, p1}, Lf1/s;->p(Z)V

    .line 155
    .line 156
    .line 157
    const p2, -0x615d173a

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, p2}, Lf1/s;->W(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iget-object v0, p0, Ly7/j;->c:Lf1/b1;

    .line 168
    .line 169
    sget-object v1, Lf1/n;->a:Lf1/w0;

    .line 170
    .line 171
    if-ne p2, v1, :cond_5

    .line 172
    .line 173
    new-instance p2, Ly7/i;

    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    iget-object v3, p0, Ly7/j;->d:Lf1/b1;

    .line 177
    .line 178
    invoke-direct {p2, v0, v3, v2}, Ly7/i;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    check-cast p2, Lf9/n;

    .line 185
    .line 186
    invoke-virtual {v4, p1}, Lf1/s;->p(Z)V

    .line 187
    .line 188
    .line 189
    const/4 v2, 0x6

    .line 190
    iget-object v3, p0, Ly7/j;->b:Ly7/m;

    .line 191
    .line 192
    invoke-virtual {v3, p2, v4, v2}, Ly7/m;->e(Lf9/n;Lf1/s;I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Ljava/lang/String;

    .line 200
    .line 201
    const v0, 0x4c5de2

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-ne v0, v1, :cond_6

    .line 212
    .line 213
    new-instance v0, La8/s0;

    .line 214
    .line 215
    const/16 v1, 0x19

    .line 216
    .line 217
    iget-object v2, p0, Ly7/j;->e:Lf1/b1;

    .line 218
    .line 219
    invoke-direct {v0, v2, v1}, La8/s0;-><init>(Lf1/b1;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    check-cast v0, Lf9/k;

    .line 226
    .line 227
    invoke-virtual {v4, p1}, Lf1/s;->p(Z)V

    .line 228
    .line 229
    .line 230
    const/16 p1, 0x30

    .line 231
    .line 232
    invoke-virtual {v3, p2, v0, v4, p1}, Ly7/m;->d(Ljava/lang/String;Lf9/k;Lf1/s;I)V

    .line 233
    .line 234
    .line 235
    :goto_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 236
    .line 237
    return-object p1

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
