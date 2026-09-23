.class public abstract Lw0/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/w2;

.field public static final b:Lw0/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu7/i;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lu7/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lf1/w2;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lf1/t1;-><init>(Lf9/a;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lw0/v;->a:Lf1/w2;

    .line 13
    .line 14
    new-instance v0, Lw0/u;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lw0/v;->b:Lw0/u;

    .line 20
    .line 21
    return-void
.end method

.method public static final a(Ln0/a;Landroid/content/Context;ZLjava/lang/CharSequence;Lb3/n0;Lw0/t;Lf9/k;)V
    .locals 12

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v5, 0x1c

    .line 10
    .line 11
    if-lt v4, v5, :cond_a

    .line 12
    .line 13
    if-eqz p3, :cond_a

    .line 14
    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    if-eqz v1, :cond_a

    .line 18
    .line 19
    instance-of v4, v1, Lw0/t;

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    iget-wide v4, v0, Lb3/n0;->a:J

    .line 26
    .line 27
    iget-object v6, v1, Lw0/t;->h:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v7, v1, Lw0/t;->e:Ljc/c;

    .line 30
    .line 31
    invoke-virtual {v7}, Ljc/c;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    const/4 v9, 0x0

    .line 36
    if-nez v8, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v1, v1, Lw0/t;->g:Lf1/k1;

    .line 40
    .line 41
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lw0/g1;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-wide v10, v1, Lw0/g1;->b:J

    .line 50
    .line 51
    invoke-static {v4, v5, v10, v11}, Lb3/n0;->b(JJ)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    iget-object v4, v1, Lw0/g1;->a:Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-static {p3, v4}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    iget-object v1, v1, Lw0/g1;->c:Landroid/view/textclassifier/TextClassification;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move-object v1, v9

    .line 69
    :goto_0
    invoke-virtual {v7, v9}, Ljc/c;->f(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v9, v1

    .line 73
    :goto_1
    if-nez v9, :cond_3

    .line 74
    .line 75
    invoke-interface {v2, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_3
    invoke-static {v9}, Ll8/e;->o(Landroid/view/textclassifier/TextClassification;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v4, 0x0

    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    new-instance v1, Lo0/h;

    .line 91
    .line 92
    invoke-direct {v1, v6, v9, v4}, Lo0/h;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Ln0/a;->a:Ls/d0;

    .line 96
    .line 97
    invoke-virtual {v5, v1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-static {v9}, Lq0/o;->d(Landroid/view/textclassifier/TextClassification;)Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    invoke-static {v9}, Lq0/o;->l(Landroid/view/textclassifier/TextClassification;)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_7

    .line 116
    .line 117
    :cond_5
    invoke-static {v9}, Lq0/o;->c(Landroid/view/textclassifier/TextClassification;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-nez v1, :cond_6

    .line 122
    .line 123
    invoke-static {v9}, Ls1/o;->e(Landroid/view/textclassifier/TextClassification;)Landroid/view/View$OnClickListener;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    :cond_6
    new-instance v1, Lo0/h;

    .line 130
    .line 131
    const/4 v5, -0x1

    .line 132
    invoke-direct {v1, v6, v9, v5}, Lo0/h;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    .line 133
    .line 134
    .line 135
    iget-object v5, p0, Ln0/a;->a:Ls/d0;

    .line 136
    .line 137
    invoke-virtual {v5, v1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    :goto_2
    invoke-interface {v2, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-static {v9}, Ll8/e;->o(Landroid/view/textclassifier/TextClassification;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    :goto_3
    if-ge v4, v2, :cond_9

    .line 152
    .line 153
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {v5}, Ls1/o;->q(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    if-lez v4, :cond_8

    .line 161
    .line 162
    new-instance v5, Lo0/h;

    .line 163
    .line 164
    invoke-direct {v5, v6, v9, v4}, Lo0/h;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    .line 165
    .line 166
    .line 167
    iget-object v7, p0, Ln0/a;->a:Ls/d0;

    .line 168
    .line 169
    invoke-virtual {v7, v5}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_9
    :goto_4
    iget-wide v4, v0, Lb3/n0;->a:J

    .line 176
    .line 177
    move-object v0, p0

    .line 178
    move-object v1, p1

    .line 179
    move v2, p2

    .line 180
    move-object v3, p3

    .line 181
    invoke-static/range {v0 .. v5}, Lm0/d;->a(Ln0/a;Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_a
    :goto_5
    invoke-interface {v2, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    if-eqz p3, :cond_b

    .line 189
    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    iget-wide v4, v0, Lb3/n0;->a:J

    .line 193
    .line 194
    move-object v0, p0

    .line 195
    move-object v1, p1

    .line 196
    move v2, p2

    .line 197
    move-object v3, p3

    .line 198
    invoke-static/range {v0 .. v5}, Lm0/d;->a(Ln0/a;Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    .line 199
    .line 200
    .line 201
    :cond_b
    return-void
.end method

.method public static final b(Lw0/x;Li3/b;Lf1/s;I)Lw0/t;
    .locals 6

    .line 1
    const v0, 0x19a9604b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1c

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, v2}, Lf1/s;->p(Z)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    sget-object v0, Lr2/n0;->b:Lf1/w2;

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/content/Context;

    .line 26
    .line 27
    sget-object v1, Lw0/v;->a:Lf1/w2;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lw8/h;

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p2, v0}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    or-int/2addr v3, v4

    .line 44
    and-int/lit8 v4, p3, 0x70

    .line 45
    .line 46
    xor-int/lit8 v4, v4, 0x30

    .line 47
    .line 48
    const/16 v5, 0x20

    .line 49
    .line 50
    if-le v4, v5, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lf1/s;->f(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    :cond_1
    and-int/lit8 p3, p3, 0x30

    .line 59
    .line 60
    if-ne p3, v5, :cond_3

    .line 61
    .line 62
    :cond_2
    const/4 p3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 p3, 0x0

    .line 65
    :goto_0
    or-int/2addr p3, v3

    .line 66
    invoke-virtual {p2}, Lf1/s;->K()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez p3, :cond_4

    .line 71
    .line 72
    sget-object p3, Lf1/n;->a:Lf1/w0;

    .line 73
    .line 74
    if-ne v3, p3, :cond_5

    .line 75
    .line 76
    :cond_4
    sget-object p3, Lw0/v;->b:Lw0/u;

    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v3, Lw0/t;

    .line 82
    .line 83
    invoke-direct {v3, v1, v0, p0, p1}, Lw0/t;-><init>(Lw8/h;Landroid/content/Context;Lw0/x;Li3/b;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v3}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    check-cast v3, Lw0/t;

    .line 90
    .line 91
    invoke-virtual {p2, v2}, Lf1/s;->p(Z)V

    .line 92
    .line 93
    .line 94
    return-object v3
.end method
