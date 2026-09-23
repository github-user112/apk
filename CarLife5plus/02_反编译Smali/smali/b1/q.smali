.class public final Lb1/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf9/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lb1/q;->a:Z

    .line 5
    .line 6
    check-cast p1, Lg9/n;

    .line 7
    .line 8
    iput-object p1, p0, Lb1/q;->b:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lv/d;->a(F)Lv/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lb1/q;->c:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lb1/q;->d:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(FF)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lb1/q;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lb1/q;->d(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lb1/q;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/core/widget/NestedScrollView;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, v2, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    .line 17
    .line 18
    .line 19
    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "ViewParent "

    .line 25
    .line 26
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " does not implement interface method onNestedPreFling"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "ViewParentCompat"

    .line 42
    .line 43
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    return v1
.end method

.method public b(IIII[II[I)Z
    .locals 14

    .line 1
    move-object/from16 v1, p5

    .line 2
    .line 3
    move/from16 v8, p6

    .line 4
    .line 5
    iget-object v0, p0, Lb1/q;->d:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v3, v0

    .line 8
    check-cast v3, Landroidx/core/widget/NestedScrollView;

    .line 9
    .line 10
    iget-boolean v0, p0, Lb1/q;->a:Z

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    if-eqz v0, :cond_a

    .line 14
    .line 15
    invoke-virtual {p0, v8}, Lb1/q;->d(I)Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const/4 v11, 0x1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    if-nez p3, :cond_2

    .line 29
    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-eqz v1, :cond_a

    .line 34
    .line 35
    aput v10, v1, v10

    .line 36
    .line 37
    aput v10, v1, v11

    .line 38
    .line 39
    return v10

    .line 40
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 43
    .line 44
    .line 45
    aget v0, v1, v10

    .line 46
    .line 47
    aget v4, v1, v11

    .line 48
    .line 49
    move v12, v0

    .line 50
    move v13, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    :goto_1
    if-nez p7, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lb1/q;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, [I

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    new-array v0, v0, [I

    .line 64
    .line 65
    iput-object v0, p0, Lb1/q;->e:Ljava/lang/Object;

    .line 66
    .line 67
    :cond_4
    iget-object v0, p0, Lb1/q;->e:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, [I

    .line 70
    .line 71
    aput v10, v0, v10

    .line 72
    .line 73
    aput v10, v0, v11

    .line 74
    .line 75
    move-object v9, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move-object/from16 v9, p7

    .line 78
    .line 79
    :goto_2
    instance-of v0, v2, Le4/m;

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    check-cast v2, Le4/m;

    .line 84
    .line 85
    move v4, p1

    .line 86
    move/from16 v5, p2

    .line 87
    .line 88
    move/from16 v6, p3

    .line 89
    .line 90
    move/from16 v7, p4

    .line 91
    .line 92
    invoke-interface/range {v2 .. v9}, Le4/m;->i(Landroidx/core/widget/NestedScrollView;IIIII[I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    aget v0, v9, v10

    .line 97
    .line 98
    add-int v0, v0, p3

    .line 99
    .line 100
    aput v0, v9, v10

    .line 101
    .line 102
    aget v0, v9, v11

    .line 103
    .line 104
    add-int v0, v0, p4

    .line 105
    .line 106
    aput v0, v9, v11

    .line 107
    .line 108
    instance-of v0, v2, Le4/l;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    check-cast v2, Le4/l;

    .line 113
    .line 114
    move v4, p1

    .line 115
    move/from16 v5, p2

    .line 116
    .line 117
    move/from16 v6, p3

    .line 118
    .line 119
    move/from16 v7, p4

    .line 120
    .line 121
    move/from16 v8, p6

    .line 122
    .line 123
    invoke-interface/range {v2 .. v8}, Le4/l;->a(Landroidx/core/widget/NestedScrollView;IIIII)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    if-nez p6, :cond_8

    .line 128
    .line 129
    move v4, p1

    .line 130
    move/from16 v5, p2

    .line 131
    .line 132
    move/from16 v6, p3

    .line 133
    .line 134
    move/from16 v7, p4

    .line 135
    .line 136
    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_0
    move-exception v0

    .line 141
    move-object p1, v0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v4, "ViewParent "

    .line 145
    .line 146
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, " does not implement interface method onNestedScroll"

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v2, "ViewParentCompat"

    .line 162
    .line 163
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 169
    .line 170
    .line 171
    aget p1, v1, v10

    .line 172
    .line 173
    sub-int/2addr p1, v12

    .line 174
    aput p1, v1, v10

    .line 175
    .line 176
    aget p1, v1, v11

    .line 177
    .line 178
    sub-int/2addr p1, v13

    .line 179
    aput p1, v1, v11

    .line 180
    .line 181
    :cond_9
    return v11

    .line 182
    :cond_a
    :goto_4
    return v10
.end method

.method public c(Lq2/j0;FJ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lb1/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lv/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lv/c;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    cmpl-float v2, v0, v2

    .line 19
    .line 20
    if-lez v2, :cond_1

    .line 21
    .line 22
    move-wide/from16 v2, p3

    .line 23
    .line 24
    invoke-static {v0, v2, v3}, Ly1/q;->b(FJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    iget-boolean v0, v1, Lb1/q;->a:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Lq2/j0;->g()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-static {v5, v6}, Lx1/e;->d(J)F

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    invoke-virtual/range {p1 .. p1}, Lq2/j0;->g()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-static {v5, v6}, Lx1/e;->b(J)F

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    move-object/from16 v2, p1

    .line 49
    .line 50
    iget-object v0, v2, Lq2/j0;->a:La2/c;

    .line 51
    .line 52
    iget-object v13, v0, La2/c;->b:La2/b;

    .line 53
    .line 54
    invoke-virtual {v13}, La2/b;->J()J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    invoke-virtual {v13}, La2/b;->z()Ly1/o;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ly1/o;->f()V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v0, v13, La2/b;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, La2/d;

    .line 68
    .line 69
    iget-object v0, v0, La2/d;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, La2/b;

    .line 72
    .line 73
    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v12, 0x1

    .line 80
    invoke-interface/range {v7 .. v12}, Ly1/o;->k(FFFFI)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v6, 0x0

    .line 84
    .line 85
    const/16 v8, 0x7c

    .line 86
    .line 87
    move/from16 v5, p2

    .line 88
    .line 89
    invoke-static/range {v2 .. v8}, La2/f;->s(La2/g;JFJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {v13, v14, v15}, Lp9/v;->w(La2/b;J)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    invoke-static {v13, v14, v15}, Lp9/v;->w(La2/b;J)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_0
    const-wide/16 v6, 0x0

    .line 102
    .line 103
    const/16 v8, 0x7c

    .line 104
    .line 105
    move-object/from16 v2, p1

    .line 106
    .line 107
    move/from16 v5, p2

    .line 108
    .line 109
    invoke-static/range {v2 .. v8}, La2/f;->s(La2/g;JFJI)V

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void
.end method

.method public d(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lb1/q;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/view/ViewParent;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    iget-object p1, p0, Lb1/q;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/view/ViewParent;

    .line 16
    .line 17
    return-object p1
.end method

.method public e(Lb0/j;Lac/w;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb1/q;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    instance-of v1, p1, Lb0/h;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of v2, p1, Lb0/i;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    check-cast v2, Lb0/i;

    .line 19
    .line 20
    iget-object v2, v2, Lb0/i;->a:Lb0/h;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    instance-of v2, p1, Lb0/d;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    instance-of v2, p1, Lb0/e;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    move-object v2, p1

    .line 39
    check-cast v2, Lb0/e;

    .line 40
    .line 41
    iget-object v2, v2, Lb0/e;->a:Lb0/d;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    instance-of v2, p1, Lb0/b;

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    instance-of v2, p1, Lb0/c;

    .line 56
    .line 57
    if-eqz v2, :cond_5

    .line 58
    .line 59
    move-object v2, p1

    .line 60
    check-cast v2, Lb0/c;

    .line 61
    .line 62
    iget-object v2, v2, Lb0/c;->a:Lb0/b;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    instance-of v2, p1, Lb0/a;

    .line 69
    .line 70
    if-eqz v2, :cond_10

    .line 71
    .line 72
    move-object v2, p1

    .line 73
    check-cast v2, Lb0/a;

    .line 74
    .line 75
    iget-object v2, v2, Lb0/a;->a:Lb0/b;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-static {v0}, Ls8/p;->l0(Ljava/util/List;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lb0/j;

    .line 85
    .line 86
    iget-object v2, p0, Lb1/q;->e:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Lb0/j;

    .line 89
    .line 90
    invoke-static {v2, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_10

    .line 95
    .line 96
    const/4 v2, 0x3

    .line 97
    const/4 v3, 0x2

    .line 98
    const/4 v4, 0x0

    .line 99
    if-eqz v0, :cond_c

    .line 100
    .line 101
    iget-object v5, p0, Lb1/q;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Lg9/n;

    .line 104
    .line 105
    invoke-interface {v5}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lb1/g;

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    iget p1, v5, Lb1/g;->c:F

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    instance-of v1, p1, Lb0/d;

    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    iget p1, v5, Lb1/g;->b:F

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    instance-of p1, p1, Lb0/b;

    .line 124
    .line 125
    if-eqz p1, :cond_8

    .line 126
    .line 127
    iget p1, v5, Lb1/g;->a:F

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    const/4 p1, 0x0

    .line 131
    :goto_1
    sget-object v1, Lb1/l;->a:Lv/v0;

    .line 132
    .line 133
    instance-of v5, v0, Lb0/h;

    .line 134
    .line 135
    if-eqz v5, :cond_9

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    instance-of v5, v0, Lb0/d;

    .line 139
    .line 140
    const/16 v6, 0x2d

    .line 141
    .line 142
    if-eqz v5, :cond_a

    .line 143
    .line 144
    new-instance v1, Lv/v0;

    .line 145
    .line 146
    sget-object v5, Lv/u;->b:Lb3/i0;

    .line 147
    .line 148
    invoke-direct {v1, v6, v5, v3}, Lv/v0;-><init>(ILv/t;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_a
    instance-of v5, v0, Lb0/b;

    .line 153
    .line 154
    if-eqz v5, :cond_b

    .line 155
    .line 156
    new-instance v1, Lv/v0;

    .line 157
    .line 158
    sget-object v5, Lv/u;->b:Lb3/i0;

    .line 159
    .line 160
    invoke-direct {v1, v6, v5, v3}, Lv/v0;-><init>(ILv/t;I)V

    .line 161
    .line 162
    .line 163
    :cond_b
    :goto_2
    new-instance v3, Lb1/p;

    .line 164
    .line 165
    invoke-direct {v3, p0, p1, v1, v4}, Lb1/p;-><init>(Lb1/q;FLv/j;Lw8/c;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p2, v4, v3, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_c
    iget-object p1, p0, Lb1/q;->e:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p1, Lb0/j;

    .line 175
    .line 176
    sget-object v1, Lb1/l;->a:Lv/v0;

    .line 177
    .line 178
    instance-of v5, p1, Lb0/h;

    .line 179
    .line 180
    if-eqz v5, :cond_d

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_d
    instance-of v5, p1, Lb0/d;

    .line 184
    .line 185
    if-eqz v5, :cond_e

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_e
    instance-of p1, p1, Lb0/b;

    .line 189
    .line 190
    if-eqz p1, :cond_f

    .line 191
    .line 192
    new-instance v1, Lv/v0;

    .line 193
    .line 194
    const/16 p1, 0x96

    .line 195
    .line 196
    sget-object v5, Lv/u;->b:Lb3/i0;

    .line 197
    .line 198
    invoke-direct {v1, p1, v5, v3}, Lv/v0;-><init>(ILv/t;I)V

    .line 199
    .line 200
    .line 201
    :cond_f
    :goto_3
    new-instance p1, Lb0/g;

    .line 202
    .line 203
    const/4 v3, 0x2

    .line 204
    invoke-direct {p1, p0, v1, v4, v3}, Lb0/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 205
    .line 206
    .line 207
    invoke-static {p2, v4, p1, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 208
    .line 209
    .line 210
    :goto_4
    iput-object v0, p0, Lb1/q;->e:Ljava/lang/Object;

    .line 211
    .line 212
    :cond_10
    return-void
.end method

.method public f(Landroid/support/v4/media/session/t;Lr2/u;Z)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lb1/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lk2/e;

    .line 6
    .line 7
    iget-object v2, v1, Lb1/q;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lq2/r;

    .line 10
    .line 11
    iget-boolean v3, v1, Lb1/q;->a:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    return v4

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    :try_start_0
    iput-boolean v3, v1, Lb1/q;->a:Z

    .line 19
    .line 20
    iget-object v5, v1, Lb1/q;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, La2/d;

    .line 23
    .line 24
    move-object/from16 v6, p1

    .line 25
    .line 26
    move-object/from16 v7, p2

    .line 27
    .line 28
    invoke-virtual {v5, v6, v7}, La2/d;->r(Landroid/support/v4/media/session/t;Lr2/u;)Lk2/i;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v6, v5, Lk2/i;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, Ls/q;

    .line 35
    .line 36
    invoke-virtual {v6}, Ls/q;->h()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const/4 v8, 0x0

    .line 41
    :goto_0
    if-ge v8, v7, :cond_3

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Ls/q;->i(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Lk2/w;

    .line 48
    .line 49
    iget-boolean v10, v9, Lk2/w;->d:Z

    .line 50
    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    iget-boolean v9, v9, Lk2/w;->h:Z

    .line 54
    .line 55
    if-eqz v9, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v7, 0x1

    .line 67
    :goto_2
    invoke-virtual {v6}, Ls/q;->h()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const/4 v9, 0x0

    .line 72
    :goto_3
    if-ge v9, v8, :cond_6

    .line 73
    .line 74
    invoke-virtual {v6, v9}, Ls/q;->i(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    check-cast v10, Lk2/w;

    .line 79
    .line 80
    if-nez v7, :cond_4

    .line 81
    .line 82
    invoke-static {v10}, Lk2/v;->a(Lk2/w;)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_5

    .line 87
    .line 88
    :cond_4
    iget-object v11, v1, Lb1/q;->b:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v12, v11

    .line 91
    check-cast v12, Lq2/h0;

    .line 92
    .line 93
    iget-wide v13, v10, Lk2/w;->c:J

    .line 94
    .line 95
    iget-object v11, v1, Lb1/q;->e:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v15, v11

    .line 98
    check-cast v15, Lq2/r;

    .line 99
    .line 100
    iget v11, v10, Lk2/w;->i:I

    .line 101
    .line 102
    const/16 v17, 0x1

    .line 103
    .line 104
    move/from16 v16, v11

    .line 105
    .line 106
    invoke-virtual/range {v12 .. v17}, Lq2/h0;->A(JLq2/r;IZ)V

    .line 107
    .line 108
    .line 109
    iget-object v11, v2, Lq2/r;->a:Ls/d0;

    .line 110
    .line 111
    invoke-virtual {v11}, Ls/d0;->g()Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_5

    .line 116
    .line 117
    iget-wide v11, v10, Lk2/w;->a:J

    .line 118
    .line 119
    invoke-static {v10}, Lk2/v;->a(Lk2/w;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-virtual {v0, v11, v12, v2, v10}, Lk2/e;->a(JLjava/util/List;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lq2/r;->clear()V

    .line 127
    .line 128
    .line 129
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move/from16 v2, p3

    .line 133
    .line 134
    invoke-virtual {v0, v5, v2}, Lk2/e;->d(Lk2/i;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-boolean v2, v5, Lk2/i;->a:Z

    .line 139
    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    :cond_7
    const/4 v2, 0x0

    .line 143
    goto :goto_5

    .line 144
    :cond_8
    invoke-virtual {v6}, Ls/q;->h()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/4 v5, 0x0

    .line 149
    :goto_4
    if-ge v5, v2, :cond_7

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ls/q;->i(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Lk2/w;

    .line 156
    .line 157
    invoke-static {v7, v3}, Lk2/v;->f(Lk2/w;Z)J

    .line 158
    .line 159
    .line 160
    move-result-wide v8

    .line 161
    const-wide/16 v10, 0x0

    .line 162
    .line 163
    invoke-static {v8, v9, v10, v11}, Lx1/b;->b(JJ)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_9

    .line 168
    .line 169
    invoke-virtual {v7}, Lk2/w;->b()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_9

    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :goto_5
    invoke-virtual {v6}, Ls/q;->h()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    const/4 v7, 0x0

    .line 185
    :goto_6
    if-ge v7, v5, :cond_b

    .line 186
    .line 187
    invoke-virtual {v6, v7}, Ls/q;->i(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Lk2/w;

    .line 192
    .line 193
    invoke-virtual {v8}, Lk2/w;->b()Z

    .line 194
    .line 195
    .line 196
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v8, :cond_a

    .line 198
    .line 199
    const/4 v5, 0x1

    .line 200
    goto :goto_7

    .line 201
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_b
    const/4 v5, 0x0

    .line 205
    :goto_7
    shl-int/2addr v2, v3

    .line 206
    or-int/2addr v0, v2

    .line 207
    shl-int/lit8 v2, v5, 0x2

    .line 208
    .line 209
    or-int/2addr v0, v2

    .line 210
    iput-boolean v4, v1, Lb1/q;->a:Z

    .line 211
    .line 212
    return v0

    .line 213
    :goto_8
    iput-boolean v4, v1, Lb1/q;->a:Z

    .line 214
    .line 215
    throw v0
.end method
