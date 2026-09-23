.class public final synthetic Lk3/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lk3/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lk3/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lk3/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lk3/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk3/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lz/f0;

    .line 9
    .line 10
    iget-object v1, p0, Lk3/a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ll2/d;

    .line 13
    .line 14
    check-cast p1, Lk2/w;

    .line 15
    .line 16
    check-cast p2, Lk2/w;

    .line 17
    .line 18
    check-cast p3, Lx1/b;

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    iput-wide v2, v0, Lz/f0;->x:J

    .line 23
    .line 24
    iget-object v4, v0, Lz/f0;->r:Lf9/k;

    .line 25
    .line 26
    invoke-interface {v4, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    iget-boolean v4, v0, Lz/f0;->w:Z

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    iget-object v4, v0, Lz/f0;->u:Lcc/h;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    const v4, 0x7fffffff

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x6

    .line 51
    invoke-static {v4, v6, v5}, Li2/c;->a(IILcc/a;)Lcc/h;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iput-object v4, v0, Lz/f0;->u:Lcc/h;

    .line 56
    .line 57
    :cond_0
    const/4 v4, 0x1

    .line 58
    iput-boolean v4, v0, Lz/f0;->w:Z

    .line 59
    .line 60
    invoke-virtual {v0}, Lr1/o;->m0()Lac/w;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v6, Lz/e0;

    .line 65
    .line 66
    invoke-direct {v6, v0, v5}, Lz/e0;-><init>(Lz/f0;Lw8/c;)V

    .line 67
    .line 68
    .line 69
    const/4 v7, 0x3

    .line 70
    invoke-static {v4, v5, v6, v7}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-static {v1, p1, v2, v3}, La/a;->l(Ll2/d;Lk2/w;J)V

    .line 74
    .line 75
    .line 76
    iget-wide p1, p2, Lk2/w;->c:J

    .line 77
    .line 78
    iget-wide v1, p3, Lx1/b;->a:J

    .line 79
    .line 80
    invoke-static {p1, p2, v1, v2}, Lx1/b;->g(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide p1

    .line 84
    iget-object p3, v0, Lz/f0;->u:Lcc/h;

    .line 85
    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    new-instance v0, Lz/m;

    .line 89
    .line 90
    invoke-direct {v0, p1, p2}, Lz/m;-><init>(J)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p3, v0}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 97
    .line 98
    return-object p1

    .line 99
    :pswitch_0
    iget-object v0, p0, Lk3/a;->b:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Landroid/text/Spannable;

    .line 102
    .line 103
    iget-object v1, p0, Lk3/a;->c:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Lj3/c;

    .line 106
    .line 107
    check-cast p1, Lb3/e0;

    .line 108
    .line 109
    check-cast p2, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    check-cast p3, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    new-instance v2, Le3/b;

    .line 122
    .line 123
    iget-object v3, p1, Lb3/e0;->f:Lf3/n;

    .line 124
    .line 125
    iget-object v4, p1, Lb3/e0;->c:Lf3/k;

    .line 126
    .line 127
    if-nez v4, :cond_3

    .line 128
    .line 129
    sget-object v4, Lf3/k;->c:Lf3/k;

    .line 130
    .line 131
    :cond_3
    iget-object v5, p1, Lb3/e0;->d:Lf3/i;

    .line 132
    .line 133
    if-eqz v5, :cond_4

    .line 134
    .line 135
    iget v5, v5, Lf3/i;->a:I

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    const/4 v5, 0x0

    .line 139
    :goto_0
    iget-object p1, p1, Lb3/e0;->e:Lf3/j;

    .line 140
    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    iget p1, p1, Lf3/j;->a:I

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    const p1, 0xffff

    .line 147
    .line 148
    .line 149
    :goto_1
    iget-object v1, v1, Lj3/c;->b:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v1, Lj3/d;

    .line 152
    .line 153
    iget-object v6, v1, Lj3/d;->e:Lf3/d;

    .line 154
    .line 155
    check-cast v6, Lf3/e;

    .line 156
    .line 157
    invoke-virtual {v6, v3, v4, v5, p1}, Lf3/e;->b(Lf3/n;Lf3/k;II)Lf3/p;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    instance-of v3, p1, Lf3/p;

    .line 162
    .line 163
    const-string v4, "null cannot be cast to non-null type android.graphics.Typeface"

    .line 164
    .line 165
    if-nez v3, :cond_6

    .line 166
    .line 167
    new-instance v3, La2/b;

    .line 168
    .line 169
    iget-object v5, v1, Lj3/d;->j:La2/b;

    .line 170
    .line 171
    invoke-direct {v3, p1, v5}, La2/b;-><init>(Lf3/p;La2/b;)V

    .line 172
    .line 173
    .line 174
    iput-object v3, v1, Lj3/d;->j:La2/b;

    .line 175
    .line 176
    iget-object p1, v3, La2/b;->d:Ljava/lang/Object;

    .line 177
    .line 178
    invoke-static {p1, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    check-cast p1, Landroid/graphics/Typeface;

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    iget-object p1, p1, Lf3/p;->a:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-static {p1, v4}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    check-cast p1, Landroid/graphics/Typeface;

    .line 190
    .line 191
    :goto_2
    const/4 v1, 0x1

    .line 192
    invoke-direct {v2, v1, p1}, Le3/b;-><init>(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    const/16 p1, 0x21

    .line 196
    .line 197
    invoke-interface {v0, v2, p2, p3, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    .line 199
    .line 200
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 201
    .line 202
    return-object p1

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
