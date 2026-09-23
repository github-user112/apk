.class public final Lj/h;
.super Lc/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lj/k;


# instance fields
.field public d:Lj/b0;

.field public final e:Lj/c0;

.field public final f:Lj/f;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lj/h;->f(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const v1, 0x7f030068

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance v2, Landroid/util/TypedValue;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v1, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, p2

    .line 27
    :goto_0
    invoke-direct {p0, p1, v2}, Lc/q;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lj/c0;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lj/c0;-><init>(Lj/h;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lj/h;->e:Lj/c0;

    .line 36
    .line 37
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    new-instance p2, Landroid/util/TypedValue;

    .line 44
    .line 45
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    .line 54
    .line 55
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 56
    .line 57
    :cond_1
    move-object p1, v2

    .line 58
    check-cast p1, Lj/b0;

    .line 59
    .line 60
    iput p2, p1, Lj/b0;->T:I

    .line 61
    .line 62
    invoke-virtual {v2}, Lj/q;->c()V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lj/f;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, p2, p0, v0}, Lj/f;-><init>(Landroid/content/Context;Lj/h;Landroid/view/Window;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lj/h;->f:Lj/f;

    .line 79
    .line 80
    return-void
.end method

.method public static f(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const v0, 0x7f030027

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/q;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lj/b0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lj/b0;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v2, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lj/b0;->m:Lj/x;

    .line 28
    .line 29
    iget-object p2, v0, Lj/b0;->l:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Lj/x;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final c()Lj/q;
    .locals 3

    .line 1
    iget-object v0, p0, Lj/h;->d:Lj/b0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lj/q;->a:Lj/o;

    .line 6
    .line 7
    new-instance v0, Lj/b0;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2, p0, p0}, Lj/b0;-><init>(Landroid/content/Context;Landroid/view/Window;Lj/k;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lj/h;->d:Lj/b0;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lj/h;->d:Lj/b0;

    .line 23
    .line 24
    return-object v0
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lj/q;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lj/h;->e:Lj/c0;

    .line 10
    .line 11
    invoke-static {v1, v0, p0, p1}, Lc7/a;->o(Le4/j;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lj/q;->a()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lc/q;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lj/q;->c()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lj/b0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj/b0;->u()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lj/b0;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final h(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lj/q;->j(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lj/b0;

    .line 6
    .line 7
    iget-object v1, v0, Lj/b0;->o:Lj/k0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lj/b0;->z()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lj/b0;->o:Lj/k0;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lj/b0;->A(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    invoke-virtual/range {p0 .. p1}, Lj/h;->e(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v1, v0, Lj/h;->f:Lj/f;

    .line 7
    .line 8
    iget v2, v1, Lj/f;->q:I

    .line 9
    .line 10
    iget-object v3, v1, Lj/f;->b:Lj/h;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Lj/h;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lj/f;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v3, v1, Lj/f;->c:Landroid/view/Window;

    .line 18
    .line 19
    const v4, 0x7f08007f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const v5, 0x7f0800bc

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const v7, 0x7f08004f

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const v9, 0x7f080043

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const v11, 0x7f080051

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/view/ViewGroup;

    .line 55
    .line 56
    const/high16 v11, 0x20000

    .line 57
    .line 58
    invoke-virtual {v3, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 59
    .line 60
    .line 61
    const/16 v11, 0x8

    .line 62
    .line 63
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-static {v5, v6}, Lj/f;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v7, v8}, Lj/f;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {v9, v10}, Lj/f;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const v8, 0x7f08008a

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 98
    .line 99
    iput-object v8, v1, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v8, v1, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 108
    .line 109
    .line 110
    const v8, 0x102000b

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    check-cast v8, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v8, v1, Lj/f;->m:Landroid/widget/TextView;

    .line 120
    .line 121
    const/4 v10, -0x1

    .line 122
    if-nez v8, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v8, v1, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 129
    .line 130
    iget-object v12, v1, Lj/f;->m:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-object v8, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 136
    .line 137
    if-eqz v8, :cond_1

    .line 138
    .line 139
    iget-object v8, v1, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 140
    .line 141
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Landroid/view/ViewGroup;

    .line 146
    .line 147
    iget-object v12, v1, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 148
    .line 149
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 154
    .line 155
    .line 156
    iget-object v13, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 157
    .line 158
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    invoke-direct {v14, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :goto_0
    const v8, 0x1020019

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Landroid/widget/Button;

    .line 178
    .line 179
    iput-object v8, v1, Lj/f;->f:Landroid/widget/Button;

    .line 180
    .line 181
    iget-object v12, v1, Lj/f;->w:Lj/a;

    .line 182
    .line 183
    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    const/4 v14, 0x1

    .line 192
    if-eqz v13, :cond_2

    .line 193
    .line 194
    iget-object v13, v1, Lj/f;->f:Landroid/widget/Button;

    .line 195
    .line 196
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    const/4 v13, 0x0

    .line 200
    goto :goto_1

    .line 201
    :cond_2
    iget-object v13, v1, Lj/f;->f:Landroid/widget/Button;

    .line 202
    .line 203
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    iget-object v13, v1, Lj/f;->f:Landroid/widget/Button;

    .line 207
    .line 208
    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    const/4 v13, 0x1

    .line 212
    :goto_1
    const v15, 0x102001a

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    check-cast v15, Landroid/widget/Button;

    .line 220
    .line 221
    iput-object v15, v1, Lj/f;->g:Landroid/widget/Button;

    .line 222
    .line 223
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    if-eqz v15, :cond_3

    .line 231
    .line 232
    iget-object v15, v1, Lj/f;->g:Landroid/widget/Button;

    .line 233
    .line 234
    invoke-virtual {v15, v11}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_3
    iget-object v15, v1, Lj/f;->g:Landroid/widget/Button;

    .line 239
    .line 240
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    iget-object v15, v1, Lj/f;->g:Landroid/widget/Button;

    .line 244
    .line 245
    invoke-virtual {v15, v9}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    or-int/lit8 v13, v13, 0x2

    .line 249
    .line 250
    :goto_2
    const v15, 0x102001b

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    check-cast v15, Landroid/widget/Button;

    .line 258
    .line 259
    iput-object v15, v1, Lj/f;->h:Landroid/widget/Button;

    .line 260
    .line 261
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    if-eqz v12, :cond_4

    .line 269
    .line 270
    iget-object v12, v1, Lj/f;->h:Landroid/widget/Button;

    .line 271
    .line 272
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_4
    iget-object v12, v1, Lj/f;->h:Landroid/widget/Button;

    .line 277
    .line 278
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    iget-object v12, v1, Lj/f;->h:Landroid/widget/Button;

    .line 282
    .line 283
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    .line 286
    or-int/lit8 v13, v13, 0x4

    .line 287
    .line 288
    :goto_3
    new-instance v12, Landroid/util/TypedValue;

    .line 289
    .line 290
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    const v15, 0x7f030025

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v15, v12, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 301
    .line 302
    .line 303
    iget v2, v12, Landroid/util/TypedValue;->data:I

    .line 304
    .line 305
    const/4 v12, 0x2

    .line 306
    if-eqz v2, :cond_7

    .line 307
    .line 308
    const/high16 v2, 0x3f000000    # 0.5f

    .line 309
    .line 310
    if-ne v13, v14, :cond_5

    .line 311
    .line 312
    iget-object v15, v1, Lj/f;->f:Landroid/widget/Button;

    .line 313
    .line 314
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 315
    .line 316
    .line 317
    move-result-object v16

    .line 318
    move-object/from16 v8, v16

    .line 319
    .line 320
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 321
    .line 322
    iput v14, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 323
    .line 324
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 325
    .line 326
    invoke-virtual {v15, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_5
    if-ne v13, v12, :cond_6

    .line 331
    .line 332
    iget-object v8, v1, Lj/f;->g:Landroid/widget/Button;

    .line 333
    .line 334
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 335
    .line 336
    .line 337
    move-result-object v15

    .line 338
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    .line 340
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 341
    .line 342
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 343
    .line 344
    invoke-virtual {v8, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_6
    const/4 v8, 0x4

    .line 349
    if-ne v13, v8, :cond_7

    .line 350
    .line 351
    iget-object v8, v1, Lj/f;->h:Landroid/widget/Button;

    .line 352
    .line 353
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 354
    .line 355
    .line 356
    move-result-object v15

    .line 357
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 358
    .line 359
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 360
    .line 361
    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 362
    .line 363
    invoke-virtual {v8, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .line 365
    .line 366
    :cond_7
    :goto_4
    if-eqz v13, :cond_8

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_8
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    :goto_5
    iget-object v2, v1, Lj/f;->n:Landroid/view/View;

    .line 373
    .line 374
    const v8, 0x7f0800ba

    .line 375
    .line 376
    .line 377
    if-eqz v2, :cond_9

    .line 378
    .line 379
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 380
    .line 381
    const/4 v13, -0x2

    .line 382
    invoke-direct {v2, v10, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 383
    .line 384
    .line 385
    iget-object v13, v1, Lj/f;->n:Landroid/view/View;

    .line 386
    .line 387
    invoke-virtual {v5, v13, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    :goto_6
    const/16 v16, 0x2

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_9
    const v2, 0x1020006

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    check-cast v2, Landroid/widget/ImageView;

    .line 408
    .line 409
    iput-object v2, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 410
    .line 411
    iget-object v2, v1, Lj/f;->d:Ljava/lang/CharSequence;

    .line 412
    .line 413
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-nez v2, :cond_b

    .line 418
    .line 419
    iget-boolean v2, v1, Lj/f;->u:Z

    .line 420
    .line 421
    if-eqz v2, :cond_b

    .line 422
    .line 423
    const v2, 0x7f08003c

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    check-cast v2, Landroid/widget/TextView;

    .line 431
    .line 432
    iput-object v2, v1, Lj/f;->l:Landroid/widget/TextView;

    .line 433
    .line 434
    iget-object v8, v1, Lj/f;->d:Ljava/lang/CharSequence;

    .line 435
    .line 436
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .line 438
    .line 439
    iget-object v2, v1, Lj/f;->j:Landroid/graphics/drawable/Drawable;

    .line 440
    .line 441
    if-eqz v2, :cond_a

    .line 442
    .line 443
    iget-object v8, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 444
    .line 445
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    .line 447
    .line 448
    goto :goto_6

    .line 449
    :cond_a
    iget-object v2, v1, Lj/f;->l:Landroid/widget/TextView;

    .line 450
    .line 451
    iget-object v8, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 452
    .line 453
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    .line 454
    .line 455
    .line 456
    move-result v8

    .line 457
    iget-object v13, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 458
    .line 459
    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    .line 460
    .line 461
    .line 462
    move-result v13

    .line 463
    iget-object v15, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 464
    .line 465
    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    .line 466
    .line 467
    .line 468
    move-result v15

    .line 469
    const/16 v16, 0x2

    .line 470
    .line 471
    iget-object v12, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 472
    .line 473
    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    .line 474
    .line 475
    .line 476
    move-result v12

    .line 477
    invoke-virtual {v2, v8, v13, v15, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 478
    .line 479
    .line 480
    iget-object v2, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 481
    .line 482
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    .line 484
    .line 485
    goto :goto_7

    .line 486
    :cond_b
    const/16 v16, 0x2

    .line 487
    .line 488
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 493
    .line 494
    .line 495
    iget-object v2, v1, Lj/f;->k:Landroid/widget/ImageView;

    .line 496
    .line 497
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 501
    .line 502
    .line 503
    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eq v2, v11, :cond_c

    .line 508
    .line 509
    const/4 v2, 0x1

    .line 510
    goto :goto_8

    .line 511
    :cond_c
    const/4 v2, 0x0

    .line 512
    :goto_8
    if-eqz v5, :cond_d

    .line 513
    .line 514
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    if-eq v4, v11, :cond_d

    .line 519
    .line 520
    const/4 v4, 0x1

    .line 521
    goto :goto_9

    .line 522
    :cond_d
    const/4 v4, 0x0

    .line 523
    :goto_9
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    if-eq v7, v11, :cond_e

    .line 528
    .line 529
    const/4 v7, 0x1

    .line 530
    goto :goto_a

    .line 531
    :cond_e
    const/4 v7, 0x0

    .line 532
    :goto_a
    if-nez v7, :cond_f

    .line 533
    .line 534
    const v8, 0x7f0800b5

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v8

    .line 541
    if-eqz v8, :cond_f

    .line 542
    .line 543
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    :cond_f
    if-eqz v4, :cond_12

    .line 547
    .line 548
    iget-object v8, v1, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 549
    .line 550
    if-eqz v8, :cond_10

    .line 551
    .line 552
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 553
    .line 554
    .line 555
    :cond_10
    iget-object v8, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 556
    .line 557
    if-eqz v8, :cond_11

    .line 558
    .line 559
    const v8, 0x7f0800b9

    .line 560
    .line 561
    .line 562
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    goto :goto_b

    .line 567
    :cond_11
    const/4 v5, 0x0

    .line 568
    :goto_b
    if-eqz v5, :cond_13

    .line 569
    .line 570
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 571
    .line 572
    .line 573
    goto :goto_c

    .line 574
    :cond_12
    const v5, 0x7f0800b6

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    if-eqz v5, :cond_13

    .line 582
    .line 583
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 584
    .line 585
    .line 586
    :cond_13
    :goto_c
    iget-object v5, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 587
    .line 588
    if-eqz v5, :cond_17

    .line 589
    .line 590
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    if-eqz v7, :cond_14

    .line 594
    .line 595
    if-nez v4, :cond_17

    .line 596
    .line 597
    :cond_14
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 598
    .line 599
    .line 600
    move-result v8

    .line 601
    if-eqz v4, :cond_15

    .line 602
    .line 603
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 604
    .line 605
    .line 606
    move-result v11

    .line 607
    goto :goto_d

    .line 608
    :cond_15
    iget v11, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 609
    .line 610
    :goto_d
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 611
    .line 612
    .line 613
    move-result v12

    .line 614
    if-eqz v7, :cond_16

    .line 615
    .line 616
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 617
    .line 618
    .line 619
    move-result v13

    .line 620
    goto :goto_e

    .line 621
    :cond_16
    iget v13, v5, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 622
    .line 623
    :goto_e
    invoke-virtual {v5, v8, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 624
    .line 625
    .line 626
    :cond_17
    if-nez v2, :cond_22

    .line 627
    .line 628
    iget-object v2, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 629
    .line 630
    if-eqz v2, :cond_18

    .line 631
    .line 632
    goto :goto_f

    .line 633
    :cond_18
    iget-object v2, v1, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 634
    .line 635
    :goto_f
    if-eqz v2, :cond_22

    .line 636
    .line 637
    if-eqz v7, :cond_19

    .line 638
    .line 639
    const/4 v9, 0x2

    .line 640
    :cond_19
    or-int/2addr v4, v9

    .line 641
    const v5, 0x7f080089

    .line 642
    .line 643
    .line 644
    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    const v7, 0x7f080088

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 656
    .line 657
    const/16 v8, 0x17

    .line 658
    .line 659
    if-lt v7, v8, :cond_1c

    .line 660
    .line 661
    sget-object v9, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 662
    .line 663
    if-lt v7, v8, :cond_1a

    .line 664
    .line 665
    const/4 v7, 0x3

    .line 666
    invoke-static {v2, v4, v7}, Le4/e0;->b(Landroid/view/View;II)V

    .line 667
    .line 668
    .line 669
    :cond_1a
    if-eqz v5, :cond_1b

    .line 670
    .line 671
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 672
    .line 673
    .line 674
    :cond_1b
    if-eqz v3, :cond_22

    .line 675
    .line 676
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 677
    .line 678
    .line 679
    goto :goto_11

    .line 680
    :cond_1c
    if-eqz v5, :cond_1d

    .line 681
    .line 682
    and-int/lit8 v2, v4, 0x1

    .line 683
    .line 684
    if-nez v2, :cond_1d

    .line 685
    .line 686
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 687
    .line 688
    .line 689
    const/4 v5, 0x0

    .line 690
    :cond_1d
    if-eqz v3, :cond_1e

    .line 691
    .line 692
    and-int/lit8 v2, v4, 0x2

    .line 693
    .line 694
    if-nez v2, :cond_1e

    .line 695
    .line 696
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 697
    .line 698
    .line 699
    const/4 v8, 0x0

    .line 700
    goto :goto_10

    .line 701
    :cond_1e
    move-object v8, v3

    .line 702
    :goto_10
    if-nez v5, :cond_1f

    .line 703
    .line 704
    if-eqz v8, :cond_22

    .line 705
    .line 706
    :cond_1f
    iget-object v2, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 707
    .line 708
    if-eqz v2, :cond_20

    .line 709
    .line 710
    new-instance v3, Lj/b;

    .line 711
    .line 712
    invoke-direct {v3, v5, v8}, Lj/b;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 716
    .line 717
    .line 718
    iget-object v2, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 719
    .line 720
    new-instance v3, Lb4/q;

    .line 721
    .line 722
    invoke-direct {v3, v1, v5, v8}, Lb4/q;-><init>(Lj/f;Landroid/view/View;Landroid/view/View;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 726
    .line 727
    .line 728
    goto :goto_11

    .line 729
    :cond_20
    if-eqz v5, :cond_21

    .line 730
    .line 731
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 732
    .line 733
    .line 734
    :cond_21
    if-eqz v8, :cond_22

    .line 735
    .line 736
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 737
    .line 738
    .line 739
    :cond_22
    :goto_11
    iget-object v2, v1, Lj/f;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 740
    .line 741
    if-eqz v2, :cond_23

    .line 742
    .line 743
    iget-object v3, v1, Lj/f;->o:Landroid/widget/ListAdapter;

    .line 744
    .line 745
    if-eqz v3, :cond_23

    .line 746
    .line 747
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 748
    .line 749
    .line 750
    iget v1, v1, Lj/f;->p:I

    .line 751
    .line 752
    if-le v1, v10, :cond_23

    .line 753
    .line 754
    invoke-virtual {v2, v1, v14}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 758
    .line 759
    .line 760
    :cond_23
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/h;->f:Lj/f;

    .line 2
    .line 3
    iget-object v0, v0, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->j(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/h;->f:Lj/f;

    .line 2
    .line 3
    iget-object v0, v0, Lj/f;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->j(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc/q;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lj/b0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lj/b0;->z()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lj/b0;->o:Lj/k0;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lj/k0;->x:Z

    .line 19
    .line 20
    iget-object v0, v0, Lj/k0;->w:Ln/j;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ln/j;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/q;->b()V

    .line 2
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj/q;->g(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/q;->b()V

    .line 4
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj/q;->h(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lc/q;->b()V

    .line 6
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lj/q;->i(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Lj/h;->c()Lj/q;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj/q;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lj/h;->h(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lj/h;->f:Lj/f;

    iput-object p1, v0, Lj/f;->d:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, v0, Lj/f;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
