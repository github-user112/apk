.class public final Lv7/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lv7/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv7/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv7/l;->a:Lv7/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, -0x4b8d4cab

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "HUD\u6295\u5c4f"

    .line 33
    .line 34
    const-string v1, "\u5bfc\u822a\u540e\u663e\u793a"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    sget-object v0, Lv7/m;->n:Ldc/l0;

    .line 45
    .line 46
    invoke-static {v0, v4}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const v0, 0x6e3c21fe

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 61
    .line 62
    if-ne v0, v8, :cond_2

    .line 63
    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    move-object v9, v0

    .line 74
    check-cast v9, Lf1/b1;

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, La8/j;

    .line 81
    .line 82
    const/16 v1, 0x16

    .line 83
    .line 84
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 85
    .line 86
    .line 87
    const v1, 0x204c327e

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lv7/b;->i:Ln1/c;

    .line 95
    .line 96
    const v11, 0x4c5de2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-ne v2, v8, :cond_3

    .line 107
    .line 108
    new-instance v2, Lu7/e;

    .line 109
    .line 110
    const/4 v3, 0x4

    .line 111
    invoke-direct {v2, v9, v3}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    move-object v3, v2

    .line 118
    check-cast v3, Lf9/a;

    .line 119
    .line 120
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 121
    .line 122
    .line 123
    const/16 v5, 0xdb6

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-ne v1, v8, :cond_4

    .line 148
    .line 149
    new-instance v1, Lu7/e;

    .line 150
    .line 151
    const/4 v2, 0x5

    .line 152
    invoke-direct {v1, v9, v2}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    check-cast v1, Lf9/a;

    .line 159
    .line 160
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Lv7/k;

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    invoke-direct {v2, v7, v15, v3}, Lv7/k;-><init>(Lf1/v2;Ljava/util/List;I)V

    .line 167
    .line 168
    .line 169
    const v3, 0x7f7d633e

    .line 170
    .line 171
    .line 172
    invoke-static {v3, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    const/16 v12, 0x30

    .line 177
    .line 178
    const/16 v13, 0x3fc

    .line 179
    .line 180
    const-wide/16 v2, 0x0

    .line 181
    .line 182
    const/4 v4, 0x0

    .line 183
    const/4 v5, 0x0

    .line 184
    const/4 v6, 0x0

    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    move-object/from16 v11, p2

    .line 189
    .line 190
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 191
    .line 192
    .line 193
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    new-instance v1, Lv7/h;

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    move-object/from16 v3, p0

    .line 203
    .line 204
    invoke-direct {v1, v3, v15, v14, v2}, Lv7/h;-><init>(Lv7/l;Ljava/util/List;II)V

    .line 205
    .line 206
    .line 207
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 208
    .line 209
    return-void

    .line 210
    :cond_5
    move-object/from16 v3, p0

    .line 211
    .line 212
    return-void
.end method

.method public final b(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, -0x16d0646a

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "\u4e92\u8054\u6295\u5c4f"

    .line 33
    .line 34
    const-string v1, "\u8fde\u63a5\u540e\u663e\u793a"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    sget-object v0, Lv7/m;->n:Ldc/l0;

    .line 45
    .line 46
    invoke-static {v0, v4}, Lf1/b;->k(Ldc/j0;Lf1/s;)Lf1/b1;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const v0, 0x6e3c21fe

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v8, Lf1/n;->a:Lf1/w0;

    .line 61
    .line 62
    if-ne v0, v8, :cond_2

    .line 63
    .line 64
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    move-object v9, v0

    .line 74
    check-cast v9, Lf1/b1;

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, La8/j;

    .line 81
    .line 82
    const/16 v1, 0x17

    .line 83
    .line 84
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 85
    .line 86
    .line 87
    const v1, 0x7c845fcd

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lv7/b;->f:Ln1/c;

    .line 95
    .line 96
    const v11, 0x4c5de2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-ne v2, v8, :cond_3

    .line 107
    .line 108
    new-instance v2, Lu7/e;

    .line 109
    .line 110
    const/4 v3, 0x6

    .line 111
    invoke-direct {v2, v9, v3}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    move-object v3, v2

    .line 118
    check-cast v3, Lf9/a;

    .line 119
    .line 120
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 121
    .line 122
    .line 123
    const/16 v5, 0xc36

    .line 124
    .line 125
    const/4 v6, 0x4

    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v9}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v4, v11}, Lf1/s;->W(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-ne v1, v8, :cond_4

    .line 148
    .line 149
    new-instance v1, Lu7/e;

    .line 150
    .line 151
    const/4 v2, 0x7

    .line 152
    invoke-direct {v1, v9, v2}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    check-cast v1, Lf9/a;

    .line 159
    .line 160
    invoke-virtual {v4, v10}, Lf1/s;->p(Z)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Lv7/k;

    .line 164
    .line 165
    const/4 v3, 0x3

    .line 166
    invoke-direct {v2, v7, v15, v3}, Lv7/k;-><init>(Lf1/v2;Ljava/util/List;I)V

    .line 167
    .line 168
    .line 169
    const v3, 0x19dc770d

    .line 170
    .line 171
    .line 172
    invoke-static {v3, v2, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    const/16 v12, 0x30

    .line 177
    .line 178
    const/16 v13, 0x3fc

    .line 179
    .line 180
    const-wide/16 v2, 0x0

    .line 181
    .line 182
    const/4 v4, 0x0

    .line 183
    const/4 v5, 0x0

    .line 184
    const/4 v6, 0x0

    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    move-object/from16 v11, p2

    .line 189
    .line 190
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 191
    .line 192
    .line 193
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    new-instance v1, Lv7/h;

    .line 200
    .line 201
    const/4 v2, 0x2

    .line 202
    move-object/from16 v3, p0

    .line 203
    .line 204
    invoke-direct {v1, v3, v15, v14, v2}, Lv7/h;-><init>(Lv7/l;Ljava/util/List;II)V

    .line 205
    .line 206
    .line 207
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 208
    .line 209
    return-void

    .line 210
    :cond_5
    move-object/from16 v3, p0

    .line 211
    .line 212
    return-void
.end method

.method public final c(Ljava/util/List;Lf1/s;I)V
    .locals 16

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move/from16 v14, p3

    .line 4
    .line 5
    const v0, -0x31fabc6b

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4, v0}, Lf1/s;->Y(I)Lf1/s;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Lf1/s;->z()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Lf1/s;->Q()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    :goto_0
    const-string v0, "\u526f\u5c4f\u8bbe\u7f6e"

    .line 33
    .line 34
    const-string v1, "\u526f\u5c4f\u76f8\u5173\u8bbe\u7f6e\u6d4b\u8bd5"

    .line 35
    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v15

    .line 44
    const v0, 0x6e3c21fe

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v0}, Lf1/s;->W(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v7, Lf1/n;->a:Lf1/w0;

    .line 55
    .line 56
    if-ne v0, v7, :cond_2

    .line 57
    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-static {v0}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v4, v0}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    move-object v8, v0

    .line 68
    check-cast v8, Lf1/b1;

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 72
    .line 73
    .line 74
    new-instance v0, La8/j;

    .line 75
    .line 76
    const/16 v1, 0x18

    .line 77
    .line 78
    invoke-direct {v0, v1, v15}, La8/j;-><init>(ILjava/util/List;)V

    .line 79
    .line 80
    .line 81
    const v1, 0x33c6bf3e

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v0, v4}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v1, Lv7/b;->a:Ln1/c;

    .line 89
    .line 90
    const v10, 0x4c5de2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v10}, Lf1/s;->W(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-ne v2, v7, :cond_3

    .line 101
    .line 102
    new-instance v2, Lu7/e;

    .line 103
    .line 104
    const/4 v3, 0x2

    .line 105
    invoke-direct {v2, v8, v3}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v2}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    move-object v3, v2

    .line 112
    check-cast v3, Lf9/a;

    .line 113
    .line 114
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 115
    .line 116
    .line 117
    const/16 v5, 0xc36

    .line 118
    .line 119
    const/4 v6, 0x4

    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-static/range {v0 .. v6}, La/a;->e(Ln1/c;Lf9/n;ZLf9/a;Lf1/s;II)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v8}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {v4, v10}, Lf1/s;->W(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Lf1/s;->K()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-ne v1, v7, :cond_4

    .line 142
    .line 143
    new-instance v1, Lu7/e;

    .line 144
    .line 145
    const/4 v2, 0x3

    .line 146
    invoke-direct {v1, v8, v2}, Lu7/e;-><init>(Lf1/b1;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v1}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    check-cast v1, Lf9/a;

    .line 153
    .line 154
    invoke-virtual {v4, v9}, Lf1/s;->p(Z)V

    .line 155
    .line 156
    .line 157
    sget-object v6, Lv7/b;->c:Ln1/c;

    .line 158
    .line 159
    sget-object v10, Lv7/b;->e:Ln1/c;

    .line 160
    .line 161
    const v12, 0x180030

    .line 162
    .line 163
    .line 164
    const/16 v13, 0x3bc

    .line 165
    .line 166
    const-wide/16 v2, 0x0

    .line 167
    .line 168
    const/4 v4, 0x0

    .line 169
    const/4 v5, 0x0

    .line 170
    const/4 v7, 0x0

    .line 171
    const/4 v8, 0x0

    .line 172
    const/4 v9, 0x0

    .line 173
    move-object/from16 v11, p2

    .line 174
    .line 175
    invoke-static/range {v0 .. v13}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 176
    .line 177
    .line 178
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lf1/s;->r()Lf1/w1;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    new-instance v1, Lv7/h;

    .line 185
    .line 186
    const/4 v2, 0x0

    .line 187
    move-object/from16 v3, p0

    .line 188
    .line 189
    invoke-direct {v1, v3, v15, v14, v2}, Lv7/h;-><init>(Lv7/l;Ljava/util/List;II)V

    .line 190
    .line 191
    .line 192
    iput-object v1, v0, Lf1/w1;->d:Lf9/n;

    .line 193
    .line 194
    return-void

    .line 195
    :cond_5
    move-object/from16 v3, p0

    .line 196
    .line 197
    return-void
.end method
