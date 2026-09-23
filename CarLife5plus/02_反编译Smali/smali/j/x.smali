.class public final Lj/x;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lj/b0;


# direct methods
.method public constructor <init>(Lj/b0;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/x;->e:Lj/b0;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Window callback may not be null"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lj/x;->b:Z

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lj/x;->b:Z

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v1, p0, Lj/x;->b:Z

    .line 13
    .line 14
    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Ln/l;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/x;->c:Z

    .line 2
    .line 3
    iget-object v1, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lj/x;->e:Lj/b0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lj/b0;->s(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_8

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lj/x;->e:Lj/b0;

    .line 15
    .line 16
    invoke-virtual {v2}, Lj/b0;->z()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lj/b0;->o:Lj/k0;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    iget-object v3, v3, Lj/k0;->m:Lj/j0;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v3, v3, Lj/j0;->e:Lo/m;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eq v5, v1, :cond_2

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v5, 0x0

    .line 51
    :goto_0
    invoke-virtual {v3, v5}, Lo/m;->setQwertyMode(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0, p1, v4}, Lo/m;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_1
    if-eqz v0, :cond_4

    .line 59
    .line 60
    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    iget-object v0, v2, Lj/b0;->M:Lj/a0;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2, v0, v3, p1}, Lj/b0;->E(Lj/a0;ILandroid/view/KeyEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object p1, v2, Lj/b0;->M:Lj/a0;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iput-boolean v1, p1, Lj/a0;->l:Z

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    iget-object v0, v2, Lj/b0;->M:Lj/a0;

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Lj/b0;->y(I)Lj/a0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v2, v0, p1}, Lj/b0;->F(Lj/a0;Landroid/view/KeyEvent;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v0, v3, p1}, Lj/b0;->E(Lj/a0;ILandroid/view/KeyEvent;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput-boolean v4, v0, Lj/a0;->k:Z

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/4 p1, 0x0

    .line 108
    :goto_3
    if-eqz p1, :cond_7

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_7
    return v4

    .line 112
    :cond_8
    :goto_4
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(Landroid/view/ActionMode$Callback;)Ln/e;
    .locals 10

    .line 1
    new-instance v0, Lba/a;

    .line 2
    .line 3
    iget-object v1, p0, Lj/x;->e:Lj/b0;

    .line 4
    .line 5
    iget-object v2, v1, Lj/b0;->k:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v2, p1}, Lba/a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Lj/b0;->u:Ln/a;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ln/a;->b()V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p1, Lu0/j;

    .line 18
    .line 19
    const/16 v3, 0xd

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {p1, v3, v1, v0, v4}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lj/b0;->z()V

    .line 26
    .line 27
    .line 28
    iget-object v3, v1, Lj/b0;->o:Lj/k0;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    iget-object v7, v3, Lj/k0;->m:Lj/j0;

    .line 35
    .line 36
    if-eqz v7, :cond_1

    .line 37
    .line 38
    invoke-virtual {v7}, Lj/j0;->b()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v7, v3, Lj/k0;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 42
    .line 43
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v7, v3, Lj/k0;->j:Landroidx/appcompat/widget/ActionBarContextView;

    .line 47
    .line 48
    invoke-virtual {v7}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 49
    .line 50
    .line 51
    new-instance v7, Lj/j0;

    .line 52
    .line 53
    iget-object v8, v3, Lj/k0;->j:Landroidx/appcompat/widget/ActionBarContextView;

    .line 54
    .line 55
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-direct {v7, v3, v8, p1}, Lj/j0;-><init>(Lj/k0;Landroid/content/Context;Lu0/j;)V

    .line 60
    .line 61
    .line 62
    iget-object v8, v7, Lj/j0;->e:Lo/m;

    .line 63
    .line 64
    invoke-virtual {v8}, Lo/m;->w()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    iget-object v9, v7, Lj/j0;->f:Lu0/j;

    .line 68
    .line 69
    iget-object v9, v9, Lu0/j;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, Lba/a;

    .line 72
    .line 73
    invoke-virtual {v9, v7, v8}, Lba/a;->F(Ln/a;Landroid/view/Menu;)Z

    .line 74
    .line 75
    .line 76
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v8}, Lo/m;->v()V

    .line 78
    .line 79
    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    iput-object v7, v3, Lj/k0;->m:Lj/j0;

    .line 83
    .line 84
    invoke-virtual {v7}, Lj/j0;->i()V

    .line 85
    .line 86
    .line 87
    iget-object v8, v3, Lj/k0;->j:Landroidx/appcompat/widget/ActionBarContextView;

    .line 88
    .line 89
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/ActionBarContextView;->c(Ln/a;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v6}, Lj/k0;->Q(Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move-object v7, v5

    .line 97
    :goto_0
    iput-object v7, v1, Lj/b0;->u:Ln/a;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    invoke-virtual {v8}, Lo/m;->v()V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_3
    :goto_1
    iget-object v3, v1, Lj/b0;->u:Ln/a;

    .line 106
    .line 107
    if-nez v3, :cond_10

    .line 108
    .line 109
    iget-object v3, v1, Lj/b0;->y:Le4/q0;

    .line 110
    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {v3}, Le4/q0;->b()V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v3, v1, Lj/b0;->u:Ln/a;

    .line 117
    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Ln/a;->b()V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object v3, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 124
    .line 125
    if-nez v3, :cond_a

    .line 126
    .line 127
    iget-boolean v3, v1, Lj/b0;->I:Z

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    new-instance v3, Landroid/util/TypedValue;

    .line 132
    .line 133
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const v8, 0x7f030009

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v8, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 144
    .line 145
    .line 146
    iget v8, v3, Landroid/util/TypedValue;->resourceId:I

    .line 147
    .line 148
    if-eqz v8, :cond_6

    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 159
    .line 160
    .line 161
    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    .line 162
    .line 163
    invoke-virtual {v8, v7, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 164
    .line 165
    .line 166
    new-instance v7, Ln/c;

    .line 167
    .line 168
    invoke-direct {v7, v2, v4}, Ln/c;-><init>(Landroid/content/Context;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ln/c;->getTheme()Landroid/content/res/Resources$Theme;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 176
    .line 177
    .line 178
    move-object v2, v7

    .line 179
    :cond_6
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    .line 180
    .line 181
    invoke-direct {v7, v2, v5}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    .line 183
    .line 184
    iput-object v7, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 185
    .line 186
    new-instance v7, Landroid/widget/PopupWindow;

    .line 187
    .line 188
    const v8, 0x7f030018

    .line 189
    .line 190
    .line 191
    invoke-direct {v7, v2, v5, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    .line 193
    .line 194
    iput-object v7, v1, Lj/b0;->w:Landroid/widget/PopupWindow;

    .line 195
    .line 196
    const/4 v8, 0x2

    .line 197
    invoke-static {v7, v8}, Li2/c;->N(Landroid/widget/PopupWindow;I)V

    .line 198
    .line 199
    .line 200
    iget-object v7, v1, Lj/b0;->w:Landroid/widget/PopupWindow;

    .line 201
    .line 202
    iget-object v8, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 203
    .line 204
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    iget-object v7, v1, Lj/b0;->w:Landroid/widget/PopupWindow;

    .line 208
    .line 209
    const/4 v8, -0x1

    .line 210
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    const v8, 0x7f030003

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v8, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 221
    .line 222
    .line 223
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v3, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    iget-object v3, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 238
    .line 239
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 240
    .line 241
    .line 242
    iget-object v2, v1, Lj/b0;->w:Landroid/widget/PopupWindow;

    .line 243
    .line 244
    const/4 v3, -0x2

    .line 245
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 246
    .line 247
    .line 248
    new-instance v2, Lj/r;

    .line 249
    .line 250
    invoke-direct {v2, v1, v6}, Lj/r;-><init>(Lj/b0;I)V

    .line 251
    .line 252
    .line 253
    iput-object v2, v1, Lj/b0;->x:Lj/r;

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_7
    iget-object v3, v1, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 257
    .line 258
    const v7, 0x7f080036

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    .line 266
    .line 267
    if-eqz v3, :cond_a

    .line 268
    .line 269
    invoke-virtual {v1}, Lj/b0;->z()V

    .line 270
    .line 271
    .line 272
    iget-object v7, v1, Lj/b0;->o:Lj/k0;

    .line 273
    .line 274
    if-eqz v7, :cond_8

    .line 275
    .line 276
    invoke-virtual {v7}, Lj/k0;->R()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    goto :goto_2

    .line 281
    :cond_8
    move-object v7, v5

    .line 282
    :goto_2
    if-nez v7, :cond_9

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_9
    move-object v2, v7

    .line 286
    :goto_3
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 298
    .line 299
    iput-object v2, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 300
    .line 301
    :cond_a
    :goto_4
    iget-object v2, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 302
    .line 303
    if-eqz v2, :cond_f

    .line 304
    .line 305
    iget-object v2, v1, Lj/b0;->y:Le4/q0;

    .line 306
    .line 307
    if-eqz v2, :cond_b

    .line 308
    .line 309
    invoke-virtual {v2}, Le4/q0;->b()V

    .line 310
    .line 311
    .line 312
    :cond_b
    iget-object v2, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 313
    .line 314
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 315
    .line 316
    .line 317
    new-instance v2, Ln/d;

    .line 318
    .line 319
    iget-object v3, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 320
    .line 321
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    iget-object v7, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 326
    .line 327
    invoke-direct {v2}, Ln/a;-><init>()V

    .line 328
    .line 329
    .line 330
    iput-object v3, v2, Ln/d;->d:Landroid/content/Context;

    .line 331
    .line 332
    iput-object v7, v2, Ln/d;->e:Landroidx/appcompat/widget/ActionBarContextView;

    .line 333
    .line 334
    iput-object p1, v2, Ln/d;->f:Lu0/j;

    .line 335
    .line 336
    new-instance v3, Lo/m;

    .line 337
    .line 338
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-direct {v3, v7}, Lo/m;-><init>(Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    iput v6, v3, Lo/m;->l:I

    .line 346
    .line 347
    iput-object v3, v2, Ln/d;->i:Lo/m;

    .line 348
    .line 349
    iput-object v2, v3, Lo/m;->e:Lo/k;

    .line 350
    .line 351
    iget-object p1, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast p1, Lba/a;

    .line 354
    .line 355
    invoke-virtual {p1, v2, v3}, Lba/a;->F(Ln/a;Landroid/view/Menu;)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-eqz p1, :cond_e

    .line 360
    .line 361
    invoke-virtual {v2}, Ln/d;->i()V

    .line 362
    .line 363
    .line 364
    iget-object p1, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 365
    .line 366
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->c(Ln/a;)V

    .line 367
    .line 368
    .line 369
    iput-object v2, v1, Lj/b0;->u:Ln/a;

    .line 370
    .line 371
    iget-boolean p1, v1, Lj/b0;->z:Z

    .line 372
    .line 373
    const/high16 v2, 0x3f800000    # 1.0f

    .line 374
    .line 375
    if-eqz p1, :cond_c

    .line 376
    .line 377
    iget-object p1, v1, Lj/b0;->A:Landroid/view/ViewGroup;

    .line 378
    .line 379
    if-eqz p1, :cond_c

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-eqz p1, :cond_c

    .line 386
    .line 387
    iget-object p1, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 388
    .line 389
    const/4 v3, 0x0

    .line 390
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 391
    .line 392
    .line 393
    iget-object p1, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 394
    .line 395
    invoke-static {p1}, Le4/k0;->a(Landroid/view/View;)Le4/q0;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {p1, v2}, Le4/q0;->a(F)V

    .line 400
    .line 401
    .line 402
    iput-object p1, v1, Lj/b0;->y:Le4/q0;

    .line 403
    .line 404
    new-instance v2, Lj/t;

    .line 405
    .line 406
    invoke-direct {v2, v6, v1}, Lj/t;-><init>(ILjava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1, v2}, Le4/q0;->d(Le4/r0;)V

    .line 410
    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_c
    iget-object p1, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 414
    .line 415
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 416
    .line 417
    .line 418
    iget-object p1, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 419
    .line 420
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    iget-object p1, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 424
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    instance-of p1, p1, Landroid/view/View;

    .line 430
    .line 431
    if-eqz p1, :cond_d

    .line 432
    .line 433
    iget-object p1, v1, Lj/b0;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 434
    .line 435
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    check-cast p1, Landroid/view/View;

    .line 440
    .line 441
    sget-object v2, Le4/k0;->a:Ljava/util/WeakHashMap;

    .line 442
    .line 443
    invoke-static {p1}, Le4/b0;->c(Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    :cond_d
    :goto_5
    iget-object p1, v1, Lj/b0;->w:Landroid/widget/PopupWindow;

    .line 447
    .line 448
    if-eqz p1, :cond_f

    .line 449
    .line 450
    iget-object p1, v1, Lj/b0;->l:Landroid/view/Window;

    .line 451
    .line 452
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    iget-object v2, v1, Lj/b0;->x:Lj/r;

    .line 457
    .line 458
    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 459
    .line 460
    .line 461
    goto :goto_6

    .line 462
    :cond_e
    iput-object v5, v1, Lj/b0;->u:Ln/a;

    .line 463
    .line 464
    :cond_f
    :goto_6
    invoke-virtual {v1}, Lj/b0;->H()V

    .line 465
    .line 466
    .line 467
    iget-object p1, v1, Lj/b0;->u:Ln/a;

    .line 468
    .line 469
    iput-object p1, v1, Lj/b0;->u:Ln/a;

    .line 470
    .line 471
    :cond_10
    invoke-virtual {v1}, Lj/b0;->H()V

    .line 472
    .line 473
    .line 474
    iget-object p1, v1, Lj/b0;->u:Ln/a;

    .line 475
    .line 476
    if-eqz p1, :cond_11

    .line 477
    .line 478
    invoke-virtual {v0, p1}, Lba/a;->u(Ln/a;)Ln/e;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    return-object p1

    .line 483
    :cond_11
    return-object v5
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/x;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p2, Lo/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lj/x;->b(ILandroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x6c

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, p2, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lj/x;->e:Lj/b0;

    .line 10
    .line 11
    invoke-virtual {p1}, Lj/b0;->z()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lj/b0;->o:Lj/k0;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p2, p1, Lj/k0;->q:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-boolean v1, p1, Lj/k0;->p:Z

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean v0, p1, Lj/k0;->p:Z

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-gtz p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/lang/ClassCastException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/x;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lj/x;->c(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x6c

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lj/x;->e:Lj/b0;

    .line 18
    .line 19
    if-ne p1, p2, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lj/b0;->z()V

    .line 22
    .line 23
    .line 24
    iget-object p1, v1, Lj/b0;->o:Lj/k0;

    .line 25
    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    iget-object p2, p1, Lj/k0;->q:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-boolean v1, p1, Lj/k0;->p:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput-boolean v0, p1, Lj/k0;->p:Z

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-gtz p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/lang/ClassCastException;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_3
    if-nez p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lj/b0;->y(I)Lj/a0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-boolean p2, p1, Lj/a0;->m:Z

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1, p1, v0}, Lj/b0;->q(Lj/a0;Z)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ln/m;->a(Landroid/view/Window$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Lo/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lo/m;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lo/m;->x:Z

    .line 20
    .line 21
    :cond_2
    iget-object v2, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 22
    .line 23
    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iput-boolean v1, v0, Lo/m;->x:Z

    .line 30
    .line 31
    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/x;->e:Lj/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lj/b0;->y(I)Lj/a0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lj/a0;->h:Lo/m;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lj/x;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lj/x;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Ln/k;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lj/x;->e(Landroid/view/ActionMode$Callback;)Ln/e;

    move-result-object p1

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lj/x;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Ln/k;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lj/x;->e(Landroid/view/ActionMode$Callback;)Ln/e;

    move-result-object p1

    return-object p1
.end method
