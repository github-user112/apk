.class public final Ly7/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# static fields
.field public static final b:Ly7/k;

.field public static final c:Ly7/k;

.field public static final d:Ly7/k;

.field public static final e:Ly7/k;

.field public static final f:Ly7/k;

.field public static final g:Ly7/k;

.field public static final h:Ly7/k;

.field public static final i:Ly7/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly7/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ly7/k;->b:Ly7/k;

    .line 8
    .line 9
    new-instance v0, Ly7/k;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ly7/k;->c:Ly7/k;

    .line 16
    .line 17
    new-instance v0, Ly7/k;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ly7/k;->d:Ly7/k;

    .line 24
    .line 25
    new-instance v0, Ly7/k;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Ly7/k;->e:Ly7/k;

    .line 32
    .line 33
    new-instance v0, Ly7/k;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Ly7/k;->f:Ly7/k;

    .line 40
    .line 41
    new-instance v0, Ly7/k;

    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Ly7/k;->g:Ly7/k;

    .line 48
    .line 49
    new-instance v0, Ly7/k;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Ly7/k;->h:Ly7/k;

    .line 56
    .line 57
    new-instance v0, Ly7/k;

    .line 58
    .line 59
    const/4 v1, 0x7

    .line 60
    invoke-direct {v0, v1}, Ly7/k;-><init>(I)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Ly7/k;->i:Ly7/k;

    .line 64
    .line 65
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ly7/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ly7/f0;)V
    .locals 0

    const/16 p1, 0x8

    iput p1, p0, Ly7/k;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p2, p0, Ly7/k;->a:I

    .line 2
    .line 3
    const-string v0, "TASKER_THEME_STATE"

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lz7/q1;

    .line 9
    .line 10
    instance-of p2, p1, Lz7/p1;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lz7/p1;

    .line 15
    .line 16
    iget-boolean p1, p1, Lz7/p1;->b:Z

    .line 17
    .line 18
    invoke-static {p1}, Ly7/f0;->d(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_0
    check-cast p1, Lm7/z;

    .line 25
    .line 26
    iget-object p1, p1, Lm7/z;->b:Lm7/a0;

    .line 27
    .line 28
    sget-object p2, Lm7/a0;->f:Lm7/a0;

    .line 29
    .line 30
    if-ne p1, p2, :cond_1

    .line 31
    .line 32
    sget-object p1, Lz7/g2;->c:Lz7/f2;

    .line 33
    .line 34
    sget-object p2, Ll8/d;->a:Lr8/o;

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-static {p2, v0}, Ll8/d;->b(ILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lz7/f2;->b(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_1
    check-cast p1, Lz7/q1;

    .line 51
    .line 52
    instance-of p2, p1, Lz7/j1;

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    sget-object p2, Lz7/g2;->c:Lz7/f2;

    .line 57
    .line 58
    check-cast p1, Lz7/j1;

    .line 59
    .line 60
    iget p1, p1, Lz7/j1;->b:I

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lz7/f2;->b(I)V

    .line 66
    .line 67
    .line 68
    sget-object p2, Ll8/d;->a:Lr8/o;

    .line 69
    .line 70
    invoke-static {p1, v0}, Ll8/d;->f(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_2
    check-cast p1, Lz7/q1;

    .line 77
    .line 78
    instance-of p2, p1, Lz7/u0;

    .line 79
    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    sget-object p2, Lz7/t1;->c:Lz7/s1;

    .line 83
    .line 84
    check-cast p1, Lz7/u0;

    .line 85
    .line 86
    iget p1, p1, Lz7/u0;->b:I

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lz7/s1;->a(I)V

    .line 92
    .line 93
    .line 94
    :cond_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 95
    .line 96
    return-object p1

    .line 97
    :pswitch_3
    check-cast p1, Lz7/q1;

    .line 98
    .line 99
    instance-of p2, p1, Lz7/i0;

    .line 100
    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    check-cast p1, Lz7/i0;

    .line 104
    .line 105
    iget-boolean p2, p1, Lz7/i0;->b:Z

    .line 106
    .line 107
    if-eqz p2, :cond_4

    .line 108
    .line 109
    sget-object p2, Ll8/o;->a:Lr8/o;

    .line 110
    .line 111
    iget-object p2, p1, Lz7/i0;->c:Ljava/lang/String;

    .line 112
    .line 113
    iget-object p1, p1, Lz7/i0;->d:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p2, p1}, Ll8/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    invoke-static {}, Ll8/o;->a()V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 123
    .line 124
    return-object p1

    .line 125
    :pswitch_4
    check-cast p1, Lz7/q1;

    .line 126
    .line 127
    instance-of p2, p1, Lz7/c0;

    .line 128
    .line 129
    if-eqz p2, :cond_6

    .line 130
    .line 131
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p1, Lz7/c0;

    .line 136
    .line 137
    iget p1, p1, Lz7/c0;->b:I

    .line 138
    .line 139
    invoke-interface {p2, p1}, Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;->setConnectType(I)V

    .line 140
    .line 141
    .line 142
    :cond_6
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 143
    .line 144
    return-object p1

    .line 145
    :pswitch_5
    check-cast p1, Lz7/q1;

    .line 146
    .line 147
    instance-of p2, p1, Lz7/p;

    .line 148
    .line 149
    if-eqz p2, :cond_7

    .line 150
    .line 151
    check-cast p1, Lz7/p;

    .line 152
    .line 153
    iget-object p2, p1, Lz7/p;->b:Ljava/lang/String;

    .line 154
    .line 155
    iget-boolean v0, p1, Lz7/p;->c:Z

    .line 156
    .line 157
    iget p1, p1, Lz7/p;->d:I

    .line 158
    .line 159
    invoke-static {p2, p1, v0}, Lb8/f;->a(Ljava/lang/String;IZ)V

    .line 160
    .line 161
    .line 162
    :cond_7
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 163
    .line 164
    return-object p1

    .line 165
    :pswitch_6
    check-cast p1, Lz7/q1;

    .line 166
    .line 167
    instance-of p2, p1, Lz7/m;

    .line 168
    .line 169
    if-eqz p2, :cond_b

    .line 170
    .line 171
    check-cast p1, Lz7/m;

    .line 172
    .line 173
    iget p1, p1, Lz7/m;->b:I

    .line 174
    .line 175
    const/4 p2, 0x1

    .line 176
    if-ne p1, p2, :cond_8

    .line 177
    .line 178
    sget-object p1, Lcom/muyetuge/carlifevehicle/activity/EmptyActivity;->y:Lr8/o;

    .line 179
    .line 180
    new-instance p1, Landroid/content/Intent;

    .line 181
    .line 182
    sget-object p2, Lcom/muyetuge/carlifevehicle/activity/EmptyActivity;->y:Lr8/o;

    .line 183
    .line 184
    invoke-virtual {p2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/content/Context;

    .line 189
    .line 190
    const-class v1, Lcom/muyetuge/carlifevehicle/activity/EmptyActivity;

    .line 191
    .line 192
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .line 194
    .line 195
    const/high16 v0, 0x10000000

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_8
    const/4 p2, 0x2

    .line 211
    if-ne p1, p2, :cond_9

    .line 212
    .line 213
    sget-boolean p1, Lcom/muyetuge/carlifevehicle/service/MainService;->a:Z

    .line 214
    .line 215
    invoke-static {}, Lm9/e0;->E0()V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_9
    const/4 p2, 0x3

    .line 220
    if-ne p1, p2, :cond_a

    .line 221
    .line 222
    sget-object p1, Ll8/c;->a:Lfc/c;

    .line 223
    .line 224
    invoke-static {}, Ll8/c;->d()V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_a
    sget-object p1, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->y:Lcom/muyetuge/carlifevehicle/activity/MainActivity;

    .line 229
    .line 230
    invoke-static {}, La/a;->M()V

    .line 231
    .line 232
    .line 233
    :cond_b
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 234
    .line 235
    return-object p1

    .line 236
    :pswitch_7
    check-cast p1, Lz7/q1;

    .line 237
    .line 238
    instance-of p2, p1, Lz7/g;

    .line 239
    .line 240
    if-eqz p2, :cond_c

    .line 241
    .line 242
    sget-object p2, Ll8/c;->a:Lfc/c;

    .line 243
    .line 244
    check-cast p1, Lz7/g;

    .line 245
    .line 246
    iget-object p2, p1, Lz7/g;->b:Ljava/lang/String;

    .line 247
    .line 248
    iget-object p1, p1, Lz7/g;->c:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {p2, p1}, Ll8/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_c
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 254
    .line 255
    return-object p1

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
