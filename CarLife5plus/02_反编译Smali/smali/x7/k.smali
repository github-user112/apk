.class public abstract Lx7/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 19

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lx3/a;->a:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, [D

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-array v2, v3, [D

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    array-length v5, v2

    .line 34
    if-ne v5, v3, :cond_5

    .line 35
    .line 36
    int-to-double v5, v1

    .line 37
    const-wide v7, 0x406fe00000000000L    # 255.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    div-double/2addr v5, v7

    .line 43
    const-wide v9, 0x4003333333333333L    # 2.4

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-wide v17, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmpg-double v1, v5, v17

    .line 69
    .line 70
    if-gez v1, :cond_1

    .line 71
    .line 72
    div-double/2addr v5, v15

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    add-double/2addr v5, v13

    .line 75
    div-double/2addr v5, v11

    .line 76
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    :goto_0
    int-to-double v3, v4

    .line 81
    div-double/2addr v3, v7

    .line 82
    cmpg-double v1, v3, v17

    .line 83
    .line 84
    if-gez v1, :cond_2

    .line 85
    .line 86
    div-double/2addr v3, v15

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    add-double/2addr v3, v13

    .line 89
    div-double/2addr v3, v11

    .line 90
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    :goto_1
    int-to-double v0, v0

    .line 95
    div-double/2addr v0, v7

    .line 96
    cmpg-double v7, v0, v17

    .line 97
    .line 98
    if-gez v7, :cond_3

    .line 99
    .line 100
    div-double/2addr v0, v15

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    add-double/2addr v0, v13

    .line 103
    div-double/2addr v0, v11

    .line 104
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    :goto_2
    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    mul-double v7, v7, v5

    .line 114
    .line 115
    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    mul-double v9, v9, v3

    .line 121
    .line 122
    add-double/2addr v9, v7

    .line 123
    const-wide v7, 0x3fc71a9fbe76c8b4L    # 0.1805

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    mul-double v7, v7, v0

    .line 129
    .line 130
    add-double/2addr v7, v9

    .line 131
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 132
    .line 133
    mul-double v7, v7, v9

    .line 134
    .line 135
    const/4 v11, 0x0

    .line 136
    aput-wide v7, v2, v11

    .line 137
    .line 138
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    mul-double v7, v7, v5

    .line 144
    .line 145
    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    mul-double v12, v12, v3

    .line 151
    .line 152
    add-double/2addr v12, v7

    .line 153
    const-wide v7, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    mul-double v7, v7, v0

    .line 159
    .line 160
    add-double/2addr v7, v12

    .line 161
    mul-double v7, v7, v9

    .line 162
    .line 163
    const/4 v12, 0x1

    .line 164
    aput-wide v7, v2, v12

    .line 165
    .line 166
    const-wide v13, 0x3f93c36113404ea5L    # 0.0193

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    mul-double v5, v5, v13

    .line 172
    .line 173
    const-wide v13, 0x3fbe83e425aee632L    # 0.1192

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    mul-double v3, v3, v13

    .line 179
    .line 180
    add-double/2addr v3, v5

    .line 181
    const-wide v5, 0x3fee6a7ef9db22d1L    # 0.9505

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    mul-double v0, v0, v5

    .line 187
    .line 188
    add-double/2addr v0, v3

    .line 189
    mul-double v0, v0, v9

    .line 190
    .line 191
    const/4 v3, 0x2

    .line 192
    aput-wide v0, v2, v3

    .line 193
    .line 194
    div-double/2addr v7, v9

    .line 195
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 196
    .line 197
    cmpl-double v2, v7, v0

    .line 198
    .line 199
    if-lez v2, :cond_4

    .line 200
    .line 201
    return v12

    .line 202
    :cond_4
    return v11

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 204
    .line 205
    const-string v1, "outXyz must have a length of 3."

    .line 206
    .line 207
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0
.end method

.method public static b(Landroid/app/Activity;Lx7/j;)V
    .locals 6

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "state"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lx7/j;->h:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lx7/j;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-boolean v2, p1, Lx7/j;->k:Z

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p0, v2}, Li2/c;->K(Landroid/view/Window;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v4, Landroidx/lifecycle/z;

    .line 33
    .line 34
    const/16 v5, 0x18

    .line 35
    .line 36
    invoke-direct {v4, v5, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0, v3}, Li2/c;->K(Landroid/view/Window;Z)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v4, La2/d;

    .line 51
    .line 52
    invoke-direct {v4, v2}, La2/d;-><init>(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v5, 0x23

    .line 58
    .line 59
    if-lt v2, v5, :cond_1

    .line 60
    .line 61
    new-instance v2, Le4/v1;

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    invoke-direct {v2, p0, v4, v5}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/16 v5, 0x1e

    .line 69
    .line 70
    if-lt v2, v5, :cond_2

    .line 71
    .line 72
    new-instance v2, Le4/s1;

    .line 73
    .line 74
    const/4 v5, 0x1

    .line 75
    invoke-direct {v2, p0, v4, v5}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/16 v5, 0x1a

    .line 80
    .line 81
    if-lt v2, v5, :cond_3

    .line 82
    .line 83
    new-instance v2, Le4/u1;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-direct {v2, p0, v4, v5}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/16 v5, 0x17

    .line 91
    .line 92
    if-lt v2, v5, :cond_4

    .line 93
    .line 94
    new-instance v2, Le4/t1;

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-direct {v2, p0, v4, v5}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    new-instance v2, Le4/s1;

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-direct {v2, p0, v4, v5}, Le4/s1;-><init>(Landroid/view/Window;La2/d;I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v2}, Lm9/e0;->B0()V

    .line 108
    .line 109
    .line 110
    iget-boolean v4, p1, Lx7/j;->e:Z

    .line 111
    .line 112
    const/4 v5, 0x2

    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    invoke-virtual {v2, v5}, Lm9/e0;->C0(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {v2, v5}, Lm9/e0;->n0(I)V

    .line 120
    .line 121
    .line 122
    :goto_2
    iget-boolean p1, p1, Lx7/j;->b:Z

    .line 123
    .line 124
    if-eqz p1, :cond_6

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Lm9/e0;->C0(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    invoke-virtual {v2, v3}, Lm9/e0;->n0(I)V

    .line 131
    .line 132
    .line 133
    :goto_3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lx7/k;->a(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {v2, p1}, Lm9/e0;->A0(Z)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lx7/k;->a(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    invoke-virtual {v2, p0}, Lm9/e0;->z0(Z)V

    .line 159
    .line 160
    .line 161
    return-void
.end method
