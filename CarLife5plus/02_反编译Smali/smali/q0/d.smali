.class public final Lq0/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lq0/e;

.field public final b:Lq0/b;

.field public final c:Lq0/b;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lq0/e;Lq0/b;Lq0/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq0/d;->a:Lq0/e;

    .line 5
    .line 6
    iput-object p2, p0, Lq0/d;->b:Lq0/b;

    .line 7
    .line 8
    iput-object p3, p0, Lq0/d;->c:Lq0/b;

    .line 9
    .line 10
    iput-object p4, p0, Lq0/d;->d:Landroid/view/View;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Menu;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lq0/d;->b:Lq0/b;

    .line 6
    .line 7
    invoke-virtual {v2}, Lq0/b;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lo0/c;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    return v4

    .line 22
    :cond_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v2, v2, Lo0/c;->a:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    const/4 v8, 0x1

    .line 35
    :goto_0
    if-ge v6, v3, :cond_a

    .line 36
    .line 37
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    check-cast v9, Lo0/b;

    .line 42
    .line 43
    instance-of v10, v9, Lo0/d;

    .line 44
    .line 45
    const/4 v11, 0x2

    .line 46
    if-eqz v10, :cond_1

    .line 47
    .line 48
    add-int/lit8 v10, v7, 0x1

    .line 49
    .line 50
    check-cast v9, Lo0/d;

    .line 51
    .line 52
    iget-object v12, v9, Lo0/d;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v1, v8, v7, v7, v12}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 59
    .line 60
    .line 61
    new-instance v11, Lq0/c;

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    invoke-direct {v11, v12, v9, v0}, Lq0/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 68
    .line 69
    .line 70
    :goto_1
    move v7, v10

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_1
    instance-of v10, v9, Lo0/h;

    .line 74
    .line 75
    if-eqz v10, :cond_8

    .line 76
    .line 77
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    const/16 v12, 0x1c

    .line 80
    .line 81
    if-lt v10, v12, :cond_9

    .line 82
    .line 83
    add-int/lit8 v10, v7, 0x1

    .line 84
    .line 85
    iget-object v12, v0, Lq0/d;->d:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    check-cast v9, Lo0/h;

    .line 92
    .line 93
    iget-object v13, v9, Lo0/h;->b:Landroid/view/textclassifier/TextClassification;

    .line 94
    .line 95
    iget v9, v9, Lo0/h;->c:I

    .line 96
    .line 97
    const v14, 0x1020041

    .line 98
    .line 99
    .line 100
    if-gez v9, :cond_2

    .line 101
    .line 102
    invoke-static {v13}, Lq0/o;->l(Landroid/view/textclassifier/TextClassification;)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-interface {v1, v14, v14, v7, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 111
    .line 112
    .line 113
    invoke-static {v13}, Lq0/o;->d(Landroid/view/textclassifier/TextClassification;)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 118
    .line 119
    .line 120
    new-instance v9, Lq0/c;

    .line 121
    .line 122
    const/4 v11, 0x1

    .line 123
    invoke-direct {v9, v11, v12, v13}, Lq0/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    if-nez v9, :cond_3

    .line 131
    .line 132
    const/4 v15, 0x1

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    const/4 v15, 0x0

    .line 135
    :goto_2
    invoke-static {v13}, Ll8/e;->o(Landroid/view/textclassifier/TextClassification;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-static {v9}, Lq0/o;->b(Ljava/lang/Object;)Landroid/app/RemoteAction;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    if-eqz v15, :cond_4

    .line 148
    .line 149
    const v13, 0x1020041

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    const/4 v13, 0x0

    .line 154
    :goto_3
    invoke-static {v9}, Lq0/o;->j(Landroid/app/RemoteAction;)Ljava/lang/CharSequence;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-interface {v1, v14, v13, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-eqz v15, :cond_5

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    const/4 v11, 0x0

    .line 166
    :goto_4
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 167
    .line 168
    .line 169
    if-nez v15, :cond_6

    .line 170
    .line 171
    invoke-static {v9}, Ll8/e;->u(Landroid/app/RemoteAction;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_7

    .line 176
    .line 177
    :cond_6
    invoke-static {v9}, Lq0/o;->e(Landroid/app/RemoteAction;)Landroid/graphics/drawable/Icon;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-static {v7, v12}, Li7/a;->c(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 186
    .line 187
    .line 188
    :cond_7
    new-instance v7, Lq0/r;

    .line 189
    .line 190
    invoke-direct {v7, v9}, Lq0/r;-><init>(Landroid/app/RemoteAction;)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    instance-of v4, v9, Lo0/f;

    .line 198
    .line 199
    if-eqz v4, :cond_9

    .line 200
    .line 201
    add-int/lit8 v8, v8, 0x1

    .line 202
    .line 203
    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 204
    .line 205
    const/4 v4, 0x0

    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_a
    return v5
.end method
