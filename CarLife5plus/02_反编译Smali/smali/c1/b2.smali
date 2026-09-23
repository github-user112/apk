.class public final Lc1/b2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/m0;


# instance fields
.field public final synthetic a:Lc1/i2;


# direct methods
.method public constructor <init>(Lc1/i2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/b2;->a:Lc1/i2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic a(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->j(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final c(Lo2/o0;Ljava/util/List;J)Lo2/n0;
    .locals 22

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    :goto_0
    const-string v6, "Collection contains no element matching the predicate."

    .line 12
    .line 13
    if-ge v5, v3, :cond_3

    .line 14
    .line 15
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    check-cast v7, Lo2/l0;

    .line 20
    .line 21
    invoke-static {v7}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    sget-object v9, Lc1/n1;->a:Lc1/n1;

    .line 26
    .line 27
    if-ne v8, v9, :cond_2

    .line 28
    .line 29
    invoke-interface {v7, v1, v2}, Lo2/l0;->u(J)Lo2/v0;

    .line 30
    .line 31
    .line 32
    move-result-object v14

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_1
    if-ge v5, v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Lo2/l0;

    .line 45
    .line 46
    invoke-static {v7}, Landroidx/compose/ui/layout/a;->a(Lo2/l0;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    sget-object v9, Lc1/n1;->b:Lc1/n1;

    .line 51
    .line 52
    if-ne v8, v9, :cond_0

    .line 53
    .line 54
    iget v0, v14, Lo2/v0;->a:I

    .line 55
    .line 56
    neg-int v0, v0

    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-static {v0, v4, v3, v1, v2}, Ln3/b;->j(IIIJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v15

    .line 62
    const/16 v20, 0x0

    .line 63
    .line 64
    const/16 v21, 0xb

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    invoke-static/range {v15 .. v21}, Ln3/a;->a(JIIIII)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-interface {v7, v0, v1}, Lo2/l0;->u(J)Lo2/v0;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    iget v0, v14, Lo2/v0;->a:I

    .line 81
    .line 82
    iget v1, v11, Lo2/v0;->a:I

    .line 83
    .line 84
    add-int/2addr v0, v1

    .line 85
    iget v1, v11, Lo2/v0;->b:I

    .line 86
    .line 87
    iget v2, v14, Lo2/v0;->b:I

    .line 88
    .line 89
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iget v2, v11, Lo2/v0;->b:I

    .line 94
    .line 95
    int-to-float v2, v2

    .line 96
    move-object/from16 v7, p0

    .line 97
    .line 98
    iget-object v4, v7, Lc1/b2;->a:Lc1/i2;

    .line 99
    .line 100
    iget-object v5, v4, Lc1/i2;->i:Lf1/g1;

    .line 101
    .line 102
    invoke-virtual {v5, v2}, Lf1/g1;->g(F)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v4, Lc1/i2;->g:Lf1/h1;

    .line 106
    .line 107
    invoke-virtual {v2, v0}, Lf1/h1;->g(I)V

    .line 108
    .line 109
    .line 110
    iget v2, v14, Lo2/v0;->a:I

    .line 111
    .line 112
    div-int/lit8 v12, v2, 0x2

    .line 113
    .line 114
    iget v2, v11, Lo2/v0;->a:I

    .line 115
    .line 116
    int-to-float v2, v2

    .line 117
    invoke-virtual {v4}, Lc1/i2;->b()F

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    mul-float v4, v4, v2

    .line 122
    .line 123
    invoke-static {v4}, Li9/a;->N(F)I

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    iget v2, v11, Lo2/v0;->b:I

    .line 128
    .line 129
    sub-int v2, v1, v2

    .line 130
    .line 131
    div-int/lit8 v13, v2, 0x2

    .line 132
    .line 133
    iget v2, v14, Lo2/v0;->b:I

    .line 134
    .line 135
    sub-int v2, v1, v2

    .line 136
    .line 137
    div-int/lit8 v16, v2, 0x2

    .line 138
    .line 139
    new-instance v10, Lc1/a2;

    .line 140
    .line 141
    invoke-direct/range {v10 .. v16}, Lc1/a2;-><init>(Lo2/v0;IILo2/v0;II)V

    .line 142
    .line 143
    .line 144
    sget-object v2, Ls8/x;->a:Ls8/x;

    .line 145
    .line 146
    move-object/from16 v8, p1

    .line 147
    .line 148
    invoke-interface {v8, v0, v1, v2, v10}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :cond_0
    move-object/from16 v7, p0

    .line 154
    .line 155
    move-object/from16 v8, p1

    .line 156
    .line 157
    add-int/lit8 v5, v5, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_1
    move-object/from16 v7, p0

    .line 161
    .line 162
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 163
    .line 164
    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_2
    move-object/from16 v7, p0

    .line 169
    .line 170
    move-object/from16 v8, p1

    .line 171
    .line 172
    add-int/lit8 v5, v5, 0x1

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_3
    move-object/from16 v7, p0

    .line 177
    .line 178
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 179
    .line 180
    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0
.end method

.method public final synthetic f(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->e(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic h(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->c(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic j(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->h(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
