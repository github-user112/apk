.class public final synthetic Lw0/a1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln3/c;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Ln3/c;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/a1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/a1;->b:Ln3/c;

    .line 4
    .line 5
    iput-object p2, p0, Lw0/a1;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lw0/a1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ln3/h;

    .line 7
    .line 8
    iget-wide v0, p1, Ln3/h;->a:J

    .line 9
    .line 10
    invoke-static {v0, v1}, Ln3/h;->b(J)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lw0/a1;->b:Ln3/c;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ln3/c;->b0(F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-wide v2, p1, Ln3/h;->a:J

    .line 21
    .line 22
    invoke-static {v2, v3}, Ln3/h;->a(J)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-interface {v1, p1}, Ln3/c;->b0(F)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-long v0, v0

    .line 31
    const/16 v2, 0x20

    .line 32
    .line 33
    shl-long/2addr v0, v2

    .line 34
    int-to-long v2, p1

    .line 35
    const-wide v4, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v2, v4

    .line 41
    or-long/2addr v0, v2

    .line 42
    new-instance p1, Ln3/l;

    .line 43
    .line 44
    invoke-direct {p1, v0, v1}, Ln3/l;-><init>(J)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lw0/a1;->c:Lf1/b1;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_0
    check-cast p1, Lf9/a;

    .line 56
    .line 57
    new-instance v0, Lw0/b1;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-direct {v0, p1, v1}, Lw0/b1;-><init>(Lf9/a;I)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lw0/a1;

    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    iget-object v2, p0, Lw0/a1;->b:Ln3/c;

    .line 67
    .line 68
    iget-object v3, p0, Lw0/a1;->c:Lf1/b1;

    .line 69
    .line 70
    invoke-direct {p1, v2, v3, v1}, Lw0/a1;-><init>(Ln3/c;Lf1/b1;I)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lx/u0;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    const/16 v2, 0x1c

    .line 82
    .line 83
    if-ne v1, v2, :cond_0

    .line 84
    .line 85
    sget-object v1, Lx/h1;->b:Lx/h1;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    sget-object v1, Lx/h1;->c:Lx/h1;

    .line 89
    .line 90
    :goto_1
    invoke-static {v0, p1, v1}, Lx/u0;->b(Lf9/k;Lf9/k;Lx/f1;)Lr1/p;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 96
    .line 97
    const-string v0, "Magnifier is only supported on API level 28 and higher."

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :pswitch_1
    check-cast p1, Ln3/h;

    .line 104
    .line 105
    iget-wide v0, p1, Ln3/h;->a:J

    .line 106
    .line 107
    invoke-static {v0, v1}, Ln3/h;->b(J)F

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v1, p0, Lw0/a1;->b:Ln3/c;

    .line 112
    .line 113
    invoke-interface {v1, v0}, Ln3/c;->b0(F)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-wide v2, p1, Ln3/h;->a:J

    .line 118
    .line 119
    invoke-static {v2, v3}, Ln3/h;->a(J)F

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-interface {v1, p1}, Ln3/c;->b0(F)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    int-to-long v0, v0

    .line 128
    const/16 v2, 0x20

    .line 129
    .line 130
    shl-long/2addr v0, v2

    .line 131
    int-to-long v2, p1

    .line 132
    const-wide v4, 0xffffffffL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    and-long/2addr v2, v4

    .line 138
    or-long/2addr v0, v2

    .line 139
    new-instance p1, Ln3/l;

    .line 140
    .line 141
    invoke-direct {p1, v0, v1}, Ln3/l;-><init>(J)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lw0/a1;->c:Lf1/b1;

    .line 145
    .line 146
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :pswitch_2
    check-cast p1, Lf9/a;

    .line 151
    .line 152
    new-instance v0, Lw0/b1;

    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    invoke-direct {v0, p1, v1}, Lw0/b1;-><init>(Lf9/a;I)V

    .line 156
    .line 157
    .line 158
    new-instance p1, Lw0/a1;

    .line 159
    .line 160
    const/4 v1, 0x1

    .line 161
    iget-object v2, p0, Lw0/a1;->b:Ln3/c;

    .line 162
    .line 163
    iget-object v3, p0, Lw0/a1;->c:Lf1/b1;

    .line 164
    .line 165
    invoke-direct {p1, v2, v3, v1}, Lw0/a1;-><init>(Ln3/c;Lf1/b1;I)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lx/u0;->a()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    .line 176
    const/16 v2, 0x1c

    .line 177
    .line 178
    if-ne v1, v2, :cond_2

    .line 179
    .line 180
    sget-object v1, Lx/h1;->b:Lx/h1;

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_2
    sget-object v1, Lx/h1;->c:Lx/h1;

    .line 184
    .line 185
    :goto_2
    invoke-static {v0, p1, v1}, Lx/u0;->b(Lf9/k;Lf9/k;Lx/f1;)Lr1/p;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    return-object p1

    .line 190
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 191
    .line 192
    const-string v0, "Magnifier is only supported on API level 28 and higher."

    .line 193
    .line 194
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
