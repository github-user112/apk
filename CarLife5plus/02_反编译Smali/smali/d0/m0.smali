.class public final synthetic Ld0/m0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p5, p0, Ld0/m0;->a:I

    iput-object p1, p0, Ld0/m0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ld0/m0;->d:Ljava/lang/Object;

    iput-object p3, p0, Ld0/m0;->e:Ljava/lang/Object;

    iput p4, p0, Ld0/m0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>([Lo2/v0;Ld0/n0;I[I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Ld0/m0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/m0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ld0/m0;->d:Ljava/lang/Object;

    iput p3, p0, Ld0/m0;->b:I

    iput-object p4, p0, Ld0/m0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Ld0/m0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld0/m0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ll0/k0;

    .line 9
    .line 10
    iget-object v1, p0, Ld0/m0;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lo2/o0;

    .line 13
    .line 14
    iget-object v2, p0, Ld0/m0;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lo2/v0;

    .line 17
    .line 18
    move-object v3, p1

    .line 19
    check-cast v3, Lo2/u0;

    .line 20
    .line 21
    iget v4, v0, Ll0/k0;->b:I

    .line 22
    .line 23
    iget-object p1, v0, Ll0/k0;->a:Ll0/o1;

    .line 24
    .line 25
    iget-object v5, v0, Ll0/k0;->c:Lg3/d0;

    .line 26
    .line 27
    iget-object v0, v0, Ll0/k0;->d:Lf9/a;

    .line 28
    .line 29
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ll0/q1;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, v0, Ll0/q1;->a:Lb3/l0;

    .line 38
    .line 39
    :goto_0
    move-object v6, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    invoke-interface {v1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Ln3/m;->b:Ln3/m;

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    if-ne v0, v1, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    const/4 v7, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const/4 v7, 0x0

    .line 56
    :goto_2
    iget v8, v2, Lo2/v0;->a:I

    .line 57
    .line 58
    invoke-static/range {v3 .. v8}, Ll0/p0;->i(Lo2/u0;ILg3/d0;Lb3/l0;ZI)Lx1/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lz/w0;->b:Lz/w0;

    .line 63
    .line 64
    iget v4, v2, Lo2/v0;->a:I

    .line 65
    .line 66
    iget v5, p0, Ld0/m0;->b:I

    .line 67
    .line 68
    invoke-virtual {p1, v1, v0, v5, v4}, Ll0/o1;->a(Lz/w0;Lx1/c;II)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Ll0/o1;->a:Lf1/g1;

    .line 72
    .line 73
    invoke-virtual {p1}, Lf1/g1;->f()F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    neg-float p1, p1

    .line 78
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-static {v3, v2, p1, v9}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_0
    iget-object v0, p0, Ld0/m0;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lf1/f0;

    .line 91
    .line 92
    iget-object v1, p0, Ld0/m0;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ln1/d;

    .line 95
    .line 96
    iget-object v2, p0, Ld0/m0;->e:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Ls/c0;

    .line 99
    .line 100
    if-eq p1, v0, :cond_4

    .line 101
    .line 102
    instance-of v0, p1, Lp1/z;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    iget v0, v1, Ln1/d;->a:I

    .line 107
    .line 108
    iget v1, p0, Ld0/m0;->b:I

    .line 109
    .line 110
    sub-int/2addr v0, v1

    .line 111
    invoke-virtual {v2, p1}, Ls/c0;->d(Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-ltz v1, :cond_2

    .line 116
    .line 117
    iget-object v3, v2, Ls/c0;->c:[I

    .line 118
    .line 119
    aget v1, v3, v1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_2
    const v1, 0x7fffffff

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {v2, v0, p1}, Ls/c0;->h(ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string v0, "A derived state calculation cannot read itself"

    .line 138
    .line 139
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :pswitch_1
    iget-object v0, p0, Ld0/m0;->c:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, [Lo2/v0;

    .line 146
    .line 147
    iget-object v1, p0, Ld0/m0;->d:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Ld0/n0;

    .line 150
    .line 151
    iget-object v2, p0, Ld0/m0;->e:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v2, [I

    .line 154
    .line 155
    check-cast p1, Lo2/u0;

    .line 156
    .line 157
    array-length v3, v0

    .line 158
    const/4 v4, 0x0

    .line 159
    const/4 v5, 0x0

    .line 160
    const/4 v6, 0x0

    .line 161
    :goto_4
    if-ge v5, v3, :cond_5

    .line 162
    .line 163
    aget-object v7, v0, v5

    .line 164
    .line 165
    add-int/lit8 v8, v6, 0x1

    .line 166
    .line 167
    invoke-static {v7}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Lo2/v0;->x()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iget-object v9, v1, Ld0/n0;->b:Lr1/g;

    .line 174
    .line 175
    iget v10, v7, Lo2/v0;->b:I

    .line 176
    .line 177
    iget v11, p0, Ld0/m0;->b:I

    .line 178
    .line 179
    sub-int/2addr v11, v10

    .line 180
    invoke-virtual {v9, v4, v11}, Lr1/g;->a(II)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    aget v6, v2, v6

    .line 185
    .line 186
    invoke-static {p1, v7, v6, v9}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 187
    .line 188
    .line 189
    add-int/lit8 v5, v5, 0x1

    .line 190
    .line 191
    move v6, v8

    .line 192
    goto :goto_4

    .line 193
    :cond_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 194
    .line 195
    return-object p1

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
