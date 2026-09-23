.class public final synthetic Ll0/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Ll0/s0;

.field public final synthetic b:Z

.field public final synthetic c:Lr2/t2;

.field public final synthetic d:Lw0/r1;

.field public final synthetic e:Lg3/w;

.field public final synthetic f:Lg3/q;


# direct methods
.method public synthetic constructor <init>(Ll0/s0;ZLr2/t2;Lw0/r1;Lg3/w;Lg3/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/v;->a:Ll0/s0;

    .line 5
    .line 6
    iput-boolean p2, p0, Ll0/v;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Ll0/v;->c:Lr2/t2;

    .line 9
    .line 10
    iput-object p4, p0, Ll0/v;->d:Lw0/r1;

    .line 11
    .line 12
    iput-object p5, p0, Ll0/v;->e:Lg3/w;

    .line 13
    .line 14
    iput-object p6, p0, Ll0/v;->f:Lg3/q;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Ll0/v;->a:Ll0/s0;

    .line 2
    .line 3
    iget-object v1, v0, Ll0/s0;->o:Lf1/k1;

    .line 4
    .line 5
    check-cast p1, Lo2/w;

    .line 6
    .line 7
    iput-object p1, v0, Ll0/s0;->h:Lo2/w;

    .line 8
    .line 9
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iput-object p1, v2, Ll0/q1;->b:Lo2/w;

    .line 16
    .line 17
    :cond_0
    iget-boolean p1, p0, Ll0/v;->b:Z

    .line 18
    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    invoke-virtual {v0}, Ll0/s0;->a()Ll0/i0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v2, Ll0/i0;->b:Ll0/i0;

    .line 26
    .line 27
    iget-object v3, p0, Ll0/v;->d:Lw0/r1;

    .line 28
    .line 29
    iget-object v5, p0, Ll0/v;->e:Lg3/w;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v6, 0x1

    .line 33
    if-ne p1, v2, :cond_2

    .line 34
    .line 35
    iget-object p1, v0, Ll0/s0;->l:Lf1/k1;

    .line 36
    .line 37
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Ll0/v;->c:Lr2/t2;

    .line 50
    .line 51
    check-cast p1, Lr2/v1;

    .line 52
    .line 53
    iget-object p1, p1, Lr2/v1;->a:Lf1/k1;

    .line 54
    .line 55
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v3}, Lw0/r1;->q()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v3}, Lw0/r1;->n()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-static {v3, v6}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object v2, v0, Ll0/s0;->m:Lf1/k1;

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3, v4}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget-object v2, v0, Ll0/s0;->n:Lf1/k1;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v2, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-wide v2, v5, Lg3/w;->b:J

    .line 101
    .line 102
    invoke-static {v2, v3}, Lb3/n0;->c(J)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v1, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {v0}, Ll0/s0;->a()Ll0/i0;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    sget-object v2, Ll0/i0;->c:Ll0/i0;

    .line 119
    .line 120
    if-ne p1, v2, :cond_3

    .line 121
    .line 122
    invoke-static {v3, v6}, Lw0/y0;->w(Lw0/r1;Z)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v1, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_1
    iget-object v6, p0, Ll0/v;->f:Lg3/q;

    .line 134
    .line 135
    invoke-static {v0, v5, v6}, Ll0/p0;->u(Ll0/s0;Lg3/w;Lg3/q;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    iget-object v1, v0, Ll0/s0;->e:Lg3/c0;

    .line 145
    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0}, Ll0/s0;->b()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    iget-object v0, p1, Ll0/q1;->b:Lo2/w;

    .line 155
    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    invoke-interface {v0}, Lo2/w;->isAttached()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_4

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iget-object v2, p1, Ll0/q1;->c:Lo2/w;

    .line 166
    .line 167
    if-eqz v2, :cond_5

    .line 168
    .line 169
    iget-object v7, p1, Ll0/q1;->a:Lb3/l0;

    .line 170
    .line 171
    new-instance v8, Lba/j;

    .line 172
    .line 173
    const/16 p1, 0xf

    .line 174
    .line 175
    invoke-direct {v8, p1, v0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lw0/y0;->y(Lo2/w;)Lx1/c;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-interface {v0, v2, v4}, Lo2/w;->h(Lo2/w;Z)Lx1/c;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    iget-object p1, v1, Lg3/c0;->a:Lg3/x;

    .line 187
    .line 188
    iget-object p1, p1, Lg3/x;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lg3/c0;

    .line 195
    .line 196
    invoke-static {p1, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_5

    .line 201
    .line 202
    iget-object v4, v1, Lg3/c0;->b:Lg3/r;

    .line 203
    .line 204
    invoke-interface/range {v4 .. v10}, Lg3/r;->a(Lg3/w;Lg3/q;Lb3/l0;Lba/j;Lx1/c;Lx1/c;)V

    .line 205
    .line 206
    .line 207
    :cond_5
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 208
    .line 209
    return-object p1
.end method
