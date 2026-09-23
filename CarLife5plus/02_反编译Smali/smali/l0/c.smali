.class public final synthetic Ll0/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLy1/f;Ly1/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Ll0/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll0/c;->b:F

    iput-object p2, p0, Ll0/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll0/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lz/f2;FLf9/k;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Ll0/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/c;->c:Ljava/lang/Object;

    iput p2, p0, Ll0/c;->b:F

    iput-object p3, p0, Ll0/c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Ll0/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll0/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lz/f2;

    .line 9
    .line 10
    iget-object v1, p0, Ll0/c;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lf9/k;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v4, v0, Lz/f2;->b:J

    .line 21
    .line 22
    const-wide/high16 v6, -0x8000000000000000L

    .line 23
    .line 24
    cmp-long p1, v4, v6

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iput-wide v2, v0, Lz/f2;->b:J

    .line 29
    .line 30
    :cond_0
    new-instance v7, Lv/l;

    .line 31
    .line 32
    iget p1, v0, Lz/f2;->e:F

    .line 33
    .line 34
    invoke-direct {v7, p1}, Lv/l;-><init>(F)V

    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    iget v5, p0, Ll0/c;->b:F

    .line 39
    .line 40
    sget-object v8, Lz/f2;->f:Lv/l;

    .line 41
    .line 42
    cmpg-float v4, v5, v4

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    iget-object v4, v0, Lz/f2;->a:Lv/y0;

    .line 47
    .line 48
    new-instance v5, Lv/l;

    .line 49
    .line 50
    invoke-direct {v5, p1}, Lv/l;-><init>(F)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v0, Lz/f2;->c:Lv/l;

    .line 54
    .line 55
    invoke-interface {v4, v5, v8, p1}, Lv/y0;->g(Lv/p;Lv/p;Lv/p;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    :goto_0
    move-wide v5, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-wide v9, v0, Lz/f2;->b:J

    .line 62
    .line 63
    sub-long v9, v2, v9

    .line 64
    .line 65
    long-to-float p1, v9

    .line 66
    div-float/2addr p1, v5

    .line 67
    float-to-double v4, p1

    .line 68
    invoke-static {v4, v5}, Li9/a;->O(D)J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    goto :goto_0

    .line 73
    :goto_1
    iget-object v4, v0, Lz/f2;->a:Lv/y0;

    .line 74
    .line 75
    iget-object v9, v0, Lz/f2;->c:Lv/l;

    .line 76
    .line 77
    invoke-interface/range {v4 .. v9}, Lv/y0;->n(JLv/p;Lv/p;Lv/p;)Lv/p;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lv/l;

    .line 82
    .line 83
    iget p1, p1, Lv/l;->a:F

    .line 84
    .line 85
    iget-object v4, v0, Lz/f2;->a:Lv/y0;

    .line 86
    .line 87
    iget-object v9, v0, Lz/f2;->c:Lv/l;

    .line 88
    .line 89
    invoke-interface/range {v4 .. v9}, Lv/y0;->p(JLv/p;Lv/p;Lv/p;)Lv/p;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lv/l;

    .line 94
    .line 95
    iput-object v4, v0, Lz/f2;->c:Lv/l;

    .line 96
    .line 97
    iput-wide v2, v0, Lz/f2;->b:J

    .line 98
    .line 99
    iget v2, v0, Lz/f2;->e:F

    .line 100
    .line 101
    sub-float/2addr v2, p1

    .line 102
    iput p1, v0, Lz/f2;->e:F

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v1, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 112
    .line 113
    return-object p1

    .line 114
    :pswitch_0
    iget v0, p0, Ll0/c;->b:F

    .line 115
    .line 116
    iget-object v1, p0, Ll0/c;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Ly1/f;

    .line 119
    .line 120
    iget-object v2, p0, Ll0/c;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, Ly1/k;

    .line 123
    .line 124
    check-cast p1, Lq2/j0;

    .line 125
    .line 126
    invoke-virtual {p1}, Lq2/j0;->b()V

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Lq2/j0;->a:La2/c;

    .line 130
    .line 131
    iget-object v3, p1, La2/c;->b:La2/b;

    .line 132
    .line 133
    invoke-virtual {v3}, La2/b;->J()J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    invoke-virtual {v3}, La2/b;->z()Ly1/o;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-interface {v6}, Ly1/o;->f()V

    .line 142
    .line 143
    .line 144
    :try_start_0
    iget-object v6, v3, La2/b;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v6, La2/d;

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    invoke-virtual {v6, v0, v7}, La2/d;->y(FF)V

    .line 150
    .line 151
    .line 152
    iget-object v0, v6, La2/d;->b:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, La2/b;

    .line 155
    .line 156
    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-wide/16 v6, 0x0

    .line 161
    .line 162
    long-to-int v7, v6

    .line 163
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-interface {v0, v6, v8}, Ly1/o;->l(FF)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v0}, Ly1/o;->m()V

    .line 175
    .line 176
    .line 177
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    neg-float v6, v6

    .line 182
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    neg-float v7, v7

    .line 187
    invoke-interface {v0, v6, v7}, Ly1/o;->l(FF)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1, v2}, La2/c;->d(Ly1/f;Ly1/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-static {v3, v4, v5}, Lp9/v;->w(La2/b;J)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    move-object p1, v0

    .line 199
    invoke-static {v3, v4, v5}, Lp9/v;->w(La2/b;J)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
