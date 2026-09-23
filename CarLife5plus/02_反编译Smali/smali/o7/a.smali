.class public final Lo7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Lo7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo7/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lo7/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo7/a;->b:Lo7/a;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lo7/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo7/h;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lo7/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lo7/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    const/4 v4, 0x6

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lf1/s;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    and-int/lit8 p2, p2, 0x3

    .line 20
    .line 21
    if-ne p2, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    :goto_0
    const p2, 0x6e3c21fe

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lf1/s;->W(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object v0, Lf1/n;->a:Lf1/w0;

    .line 46
    .line 47
    if-ne p2, v0, :cond_2

    .line 48
    .line 49
    new-instance p2, Lm7/e;

    .line 50
    .line 51
    const/16 v0, 0xb

    .line 52
    .line 53
    invoke-direct {p2, v0}, Lm7/e;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    check-cast p2, Lf9/a;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Lf1/s;->p(Z)V

    .line 63
    .line 64
    .line 65
    sget v2, Lo7/h;->e:I

    .line 66
    .line 67
    const-string v2, "onDoubleTap"

    .line 68
    .line 69
    invoke-static {p2, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lo7/g;

    .line 73
    .line 74
    invoke-direct {v2, v0, p2}, Lo7/g;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance p2, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-direct {p2, v3, v5, v2, v4}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 81
    .line 82
    .line 83
    sget-object v2, Lr1/c;->a:Lr1/h;

    .line 84
    .line 85
    invoke-static {v2, v0}, Ld0/m;->d(Lr1/h;Z)Lo2/m0;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-wide v5, p1, Lf1/s;->T:J

    .line 90
    .line 91
    const/16 v2, 0x20

    .line 92
    .line 93
    ushr-long v7, v5, v2

    .line 94
    .line 95
    xor-long/2addr v5, v7

    .line 96
    long-to-int v2, v5

    .line 97
    invoke-virtual {p1}, Lf1/s;->l()Lf1/q1;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {p1, p2}, Lr1/a;->c(Lf1/s;Lr1/p;)Lr1/p;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    sget-object v6, Lq2/j;->d0:Lq2/i;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    sget-object v6, Lq2/i;->b:Lq2/a0;

    .line 111
    .line 112
    invoke-virtual {p1}, Lf1/s;->a0()V

    .line 113
    .line 114
    .line 115
    iget-boolean v7, p1, Lf1/s;->S:Z

    .line 116
    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    invoke-virtual {p1, v6}, Lf1/s;->k(Lf9/a;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p1}, Lf1/s;->k0()V

    .line 124
    .line 125
    .line 126
    :goto_1
    sget-object v6, Lq2/i;->e:Lq2/h;

    .line 127
    .line 128
    invoke-static {p1, v6, v0}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lq2/i;->d:Lq2/h;

    .line 132
    .line 133
    invoke-static {p1, v0, v5}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Lq2/i;->f:Lq2/h;

    .line 137
    .line 138
    iget-boolean v5, p1, Lf1/s;->S:Z

    .line 139
    .line 140
    if-nez v5, :cond_4

    .line 141
    .line 142
    invoke-virtual {p1}, Lf1/s;->K()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-nez v5, :cond_5

    .line 155
    .line 156
    :cond_4
    invoke-static {v2, p1, v2, v0}, Lp9/v;->u(ILf1/s;ILq2/h;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    sget-object v0, Lq2/i;->c:Lq2/h;

    .line 160
    .line 161
    invoke-static {p1, v0, p2}, Lf1/b;->w(Lf1/s;Lf9/n;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    sget-object p2, Lx7/f;->a:Lx7/f;

    .line 165
    .line 166
    invoke-virtual {p2, v4, p1}, Lx7/f;->a(ILf1/s;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lf1/s;->p(Z)V

    .line 170
    .line 171
    .line 172
    :goto_2
    return-object v3

    .line 173
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 174
    .line 175
    check-cast p2, Ljava/lang/Number;

    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    and-int/lit8 p2, p2, 0x3

    .line 182
    .line 183
    if-ne p2, v2, :cond_7

    .line 184
    .line 185
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-nez p2, :cond_6

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_7
    :goto_3
    sget-object p2, Lx7/f;->a:Lx7/f;

    .line 197
    .line 198
    invoke-virtual {p2, v4, p1}, Lx7/f;->a(ILf1/s;)V

    .line 199
    .line 200
    .line 201
    sget-object p1, Lcom/muyetuge/carlifevehicle/activity/MainActivity;->y:Lcom/muyetuge/carlifevehicle/activity/MainActivity;

    .line 202
    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 206
    .line 207
    .line 208
    :cond_8
    :goto_4
    return-object v3

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
