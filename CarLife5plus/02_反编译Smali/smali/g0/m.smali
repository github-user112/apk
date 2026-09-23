.class public final Lg0/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/n0;


# instance fields
.field public final a:Lg0/o;

.field public final b:I

.field public final c:Z

.field public final d:F

.field public final e:Lo2/n0;

.field public final f:F

.field public final g:Z

.field public final h:Lac/w;

.field public final i:Ln3/c;

.field public final j:I

.field public final k:Lf9/k;

.field public final l:Lf9/k;

.field public final m:Ljava/lang/Object;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Lz/w0;

.field public final r:I

.field public final s:I


# direct methods
.method public constructor <init>(Lg0/o;IZFLo2/n0;FZLac/w;Ln3/c;ILf9/k;Lf9/k;Ljava/util/List;IIILz/w0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg0/m;->a:Lg0/o;

    .line 3
    iput p2, p0, Lg0/m;->b:I

    .line 4
    iput-boolean p3, p0, Lg0/m;->c:Z

    .line 5
    iput p4, p0, Lg0/m;->d:F

    .line 6
    iput-object p5, p0, Lg0/m;->e:Lo2/n0;

    .line 7
    iput p6, p0, Lg0/m;->f:F

    .line 8
    iput-boolean p7, p0, Lg0/m;->g:Z

    .line 9
    iput-object p8, p0, Lg0/m;->h:Lac/w;

    .line 10
    iput-object p9, p0, Lg0/m;->i:Ln3/c;

    .line 11
    iput p10, p0, Lg0/m;->j:I

    .line 12
    iput-object p11, p0, Lg0/m;->k:Lf9/k;

    .line 13
    iput-object p12, p0, Lg0/m;->l:Lf9/k;

    .line 14
    iput-object p13, p0, Lg0/m;->m:Ljava/lang/Object;

    .line 15
    iput p14, p0, Lg0/m;->n:I

    .line 16
    iput p15, p0, Lg0/m;->o:I

    move/from16 p1, p16

    .line 17
    iput p1, p0, Lg0/m;->p:I

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Lg0/m;->q:Lz/w0;

    move/from16 p1, p18

    .line 19
    iput p1, p0, Lg0/m;->r:I

    move/from16 p1, p19

    .line 20
    iput p1, p0, Lg0/m;->s:I

    return-void
.end method


# virtual methods
.method public final a(IZ)Lg0/m;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lg0/m;->g:Z

    .line 6
    .line 7
    if-nez v2, :cond_7

    .line 8
    .line 9
    iget-object v2, v0, Lg0/m;->m:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_7

    .line 16
    .line 17
    iget-object v3, v0, Lg0/m;->a:Lg0/o;

    .line 18
    .line 19
    if-eqz v3, :cond_7

    .line 20
    .line 21
    iget v3, v3, Lg0/o;->g:I

    .line 22
    .line 23
    iget v4, v0, Lg0/m;->b:I

    .line 24
    .line 25
    sub-int v5, v4, v1

    .line 26
    .line 27
    if-ltz v5, :cond_7

    .line 28
    .line 29
    if-ge v5, v3, :cond_7

    .line 30
    .line 31
    invoke-static {v2}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lg0/n;

    .line 36
    .line 37
    invoke-static {v2}, Ls8/p;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lg0/n;

    .line 42
    .line 43
    iget-boolean v6, v3, Lg0/n;->r:Z

    .line 44
    .line 45
    if-nez v6, :cond_7

    .line 46
    .line 47
    iget-boolean v6, v4, Lg0/n;->r:Z

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_0
    iget v6, v0, Lg0/m;->o:I

    .line 54
    .line 55
    iget v7, v0, Lg0/m;->n:I

    .line 56
    .line 57
    iget-object v8, v0, Lg0/m;->q:Lz/w0;

    .line 58
    .line 59
    if-gez v1, :cond_1

    .line 60
    .line 61
    invoke-static {v3, v8}, La/a;->K(Lg0/n;Lz/w0;)I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    iget v3, v3, Lg0/n;->l:I

    .line 66
    .line 67
    add-int/2addr v9, v3

    .line 68
    sub-int/2addr v9, v7

    .line 69
    invoke-static {v4, v8}, La/a;->K(Lg0/n;Lz/w0;)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iget v4, v4, Lg0/n;->l:I

    .line 74
    .line 75
    add-int/2addr v3, v4

    .line 76
    sub-int/2addr v3, v6

    .line 77
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    neg-int v4, v1

    .line 82
    if-le v3, v4, :cond_7

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v3, v8}, La/a;->K(Lg0/n;Lz/w0;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    sub-int/2addr v7, v3

    .line 90
    invoke-static {v4, v8}, La/a;->K(Lg0/n;Lz/w0;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sub-int/2addr v6, v3

    .line 95
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-le v3, v1, :cond_7

    .line 100
    .line 101
    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    :goto_1
    if-ge v6, v3, :cond_4

    .line 108
    .line 109
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Lg0/n;

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-boolean v9, v7, Lg0/n;->r:Z

    .line 119
    .line 120
    if-eqz v9, :cond_2

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_2
    iget-wide v9, v7, Lg0/n;->o:J

    .line 124
    .line 125
    const/16 v11, 0x20

    .line 126
    .line 127
    shr-long v12, v9, v11

    .line 128
    .line 129
    long-to-int v13, v12

    .line 130
    const-wide v14, 0xffffffffL

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    and-long/2addr v9, v14

    .line 136
    long-to-int v10, v9

    .line 137
    add-int/2addr v10, v1

    .line 138
    int-to-long v12, v13

    .line 139
    shl-long v11, v12, v11

    .line 140
    .line 141
    int-to-long v9, v10

    .line 142
    and-long/2addr v9, v14

    .line 143
    or-long/2addr v9, v11

    .line 144
    iput-wide v9, v7, Lg0/n;->o:J

    .line 145
    .line 146
    if-eqz p2, :cond_3

    .line 147
    .line 148
    iget-object v9, v7, Lg0/n;->e:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    const/4 v10, 0x0

    .line 155
    :goto_2
    if-ge v10, v9, :cond_3

    .line 156
    .line 157
    iget-object v11, v7, Lg0/n;->h:Landroidx/compose/foundation/lazy/layout/b;

    .line 158
    .line 159
    iget-object v12, v7, Lg0/n;->b:Ljava/lang/Object;

    .line 160
    .line 161
    invoke-virtual {v11, v10, v12}, Landroidx/compose/foundation/lazy/layout/b;->a(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    iget-boolean v3, v0, Lg0/m;->c:Z

    .line 171
    .line 172
    if-nez v3, :cond_6

    .line 173
    .line 174
    if-lez v1, :cond_5

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_5
    const/4 v6, 0x0

    .line 178
    goto :goto_5

    .line 179
    :cond_6
    :goto_4
    const/4 v4, 0x1

    .line 180
    const/4 v6, 0x1

    .line 181
    :goto_5
    int-to-float v7, v1

    .line 182
    new-instance v3, Lg0/m;

    .line 183
    .line 184
    iget-object v4, v0, Lg0/m;->a:Lg0/o;

    .line 185
    .line 186
    move-object/from16 v20, v8

    .line 187
    .line 188
    iget-object v8, v0, Lg0/m;->e:Lo2/n0;

    .line 189
    .line 190
    iget v9, v0, Lg0/m;->f:F

    .line 191
    .line 192
    iget-boolean v10, v0, Lg0/m;->g:Z

    .line 193
    .line 194
    iget-object v11, v0, Lg0/m;->h:Lac/w;

    .line 195
    .line 196
    iget-object v12, v0, Lg0/m;->i:Ln3/c;

    .line 197
    .line 198
    iget v13, v0, Lg0/m;->j:I

    .line 199
    .line 200
    iget-object v14, v0, Lg0/m;->k:Lf9/k;

    .line 201
    .line 202
    iget-object v15, v0, Lg0/m;->l:Lf9/k;

    .line 203
    .line 204
    iget v1, v0, Lg0/m;->n:I

    .line 205
    .line 206
    move/from16 v17, v1

    .line 207
    .line 208
    iget v1, v0, Lg0/m;->o:I

    .line 209
    .line 210
    move/from16 v18, v1

    .line 211
    .line 212
    iget v1, v0, Lg0/m;->p:I

    .line 213
    .line 214
    move/from16 v19, v1

    .line 215
    .line 216
    iget v1, v0, Lg0/m;->r:I

    .line 217
    .line 218
    move/from16 v21, v1

    .line 219
    .line 220
    iget v1, v0, Lg0/m;->s:I

    .line 221
    .line 222
    move/from16 v22, v1

    .line 223
    .line 224
    move-object/from16 v16, v2

    .line 225
    .line 226
    invoke-direct/range {v3 .. v22}, Lg0/m;-><init>(Lg0/o;IZFLo2/n0;FZLac/w;Ln3/c;ILf9/k;Lf9/k;Ljava/util/List;IIILz/w0;II)V

    .line 227
    .line 228
    .line 229
    return-object v3

    .line 230
    :cond_7
    :goto_6
    const/4 v1, 0x0

    .line 231
    return-object v1
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/m;->e:Lo2/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/n0;->b()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/m;->e:Lo2/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/n0;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Lf9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/m;->e:Lo2/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/n0;->d()Lf9/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()J
    .locals 7

    .line 1
    iget-object v0, p0, Lg0/m;->e:Lo2/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/n0;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0}, Lo2/n0;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v1, v1

    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    shl-long/2addr v1, v3

    .line 15
    int-to-long v3, v0

    .line 16
    const-wide v5, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v3, v5

    .line 22
    or-long/2addr v1, v3

    .line 23
    return-wide v1
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/m;->e:Lo2/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/n0;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/m;->e:Lo2/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lo2/n0;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
